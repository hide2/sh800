require 'rubygems'
require 'nokogiri'
require 'open-uri'

ENV['RAILS_ENV'] = 'production'
require File.dirname(__FILE__)+'/../config/environment.rb'

MESSAGE_SLEEP_TIME = 1
CATEGORY_SLEEP_TIME = 0.5
CITY_SLEEP_TIME = 1

def parse_messages(city_id, city_slug, parent_category_id, category_id, category_slug)
  p Time.now.strftime('%Y-%m-%d %H:%M:%S') + " ============================================================"
  p city_id.to_s + "_" + city_slug + "_" + parent_category_id.to_s + "_" + category_id.to_s + "_" + category_slug
  list_url = "http://#{city_slug}.baixing.com/#{category_slug}/"
  p list_url
  list_page = Nokogiri::HTML(open(list_url))
  dup_count = 0
  list_page.css("div#content ol li a").each do |a|
    pub_time = a.previous.text if a.previous
    next if !(pub_time =~ /\d\d月\d\d日/)
    break if pub_time != Time.now.strftime('%m月%d日')
    message_url = "http://#{city_slug}.baixing.com/#{category_slug}/" + a.attr('href')
    message_title = a.text
    _m = Message.find_by_site_url(message_url)
    if _m
      dup_count += 1
      break if dup_count >= 10
      next
    end
    p Time.now.strftime('%Y-%m-%d %H:%M:%S') + " " + message_title
    sleep(MESSAGE_SLEEP_TIME)
    begin
      area_id = nil
      location_id = nil
      message_page = Nokogiri::HTML(open(message_url))
      content = message_page.at_css("div#content p").inner_html.gsub(/\r/i,'').gsub(/\n/i,'')
      attrs = content.split('<br><br>')[0]
      publish_time = Time.now.strftime('%Y-%m-%d ')
      other_attrs = []
      attrs.split('<br>').each do |line|
        if line.include?('发布时间')
          publish_time += line.gsub('发布时间：','')
        end
        if line.include?('所在地')
          area_name = line.gsub('所在地：','').split(',')[0]
          location_name = line.gsub('所在地：','').split(',')[1]
          area = Area.find_by_name(area_name)
          location = Location.find_by_name(location_name)
          area_id = area.id if area
          location_id = location.id if location
        end
        if !line.include?('发布时间') && !line.include?('所在地')
          k = line.split('：')[0]
          v = line.split('：')[1]
          other_attrs << k + Message::KVS + v
        end
      end
      other_attrs = other_attrs.join(Message::PS)
      message_content = content.split('<br><br>')
      message_content.shift
      message_content = message_content.join('<br><br>')
      message_content = message_content.gsub(/<br>/i, '<br/>')
      message_content = message_content.gsub('<br/>联系我时请说明是在百姓网看到的，谢谢！', '')
      message_content = message_content.gsub('<br/>联系时，别忘了询问百姓网用户有什么特别优惠。', '')
      
      m = Message.new
      m.site = 'baixing'
      m.site_url = message_url
      m.parent_category_id = parent_category_id
      m.category_id = category_id
      m.city_id = city_id
      m.area_id = area_id
      m.location_id = location_id
      m.title = message_title
      now = Time.now.strftime("%Y-%m-%d %H:%M:%S")
      m.publish_time = publish_time
      m.created_at = now
      m.other_attrs = other_attrs
      m.content = message_content
      m.save!
    rescue Exception => e
      p e.message
    end
  end
end

# Run each 1 hour (4 cities)
cities_capital = City.find_by_sql("select * from city where province_id = 1").map{|c| [c.id, c.slug]}
cities_capital.each do |c|
  city_id = c[0]
  city_slug = c[1]
  Category.find_by_sql("select * from category where parent_category_id is null").each do |pc|
    parent_category_id = pc.id
    Category.find_all_by_parent_category_id(parent_category_id).each do |ca|
      category_id = ca.id
      category_slug = ca.slug
      parse_messages(city_id, city_slug, parent_category_id, category_id, category_slug)
      sleep(CATEGORY_SLEEP_TIME)
    end
  end
  sleep(CITY_SLEEP_TIME)
end

# Run each 2 hour (27 cities)
# cities_capital = City.find_by_sql("select * from city where province_id != 1 and is_capital = 1").map{|c| [c.id, c.slug]}

# Run each 4 hour (65 cities)
# cities_premium = City.find_by_sql("select distinct c.id, c.slug from city c, area a where a.city_id = c.id and c.is_capital = 0").map{|c| [c.id, c.slug]}

# Not run (251 cities)
# cities_small = City.find_by_sql("select * from city c where c.id not in(select distinct a.city_id from area a)").map{|c| [c.id, c.slug]}