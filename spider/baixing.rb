require 'rubygems'
require 'nokogiri'
require 'open-uri'

ENV['RAILS_ENV'] = 'production'
require File.dirname(__FILE__)+'/../config/environment.rb'

def parse_messages(parent_category_id, category_id, category_slug, city_id, city_slug, sleep_time, m_count_limit)
  p Time.now.strftime('%Y-%m-%d %H:%M:%S') + " ============================================================"
  p parent_category_id.to_s + "_" + category_id.to_s + "_" + category_slug + "_" + city_id.to_s + "_" + city_slug
  list_url = "http://#{city_slug}.baixing.com/#{category_slug}/"
  p list_url
  list_page = Nokogiri::HTML(open(list_url))
  m_count = 0
  list_page.css("div#content ol li a").each do |a|
    pub_time = a.previous.text if a.previous
    next if !(pub_time =~ /\d+月\d+日/)
    break if pub_time != Date.today.month.to_s + '月'+ Date.today.day.to_s + '日'
    message_url = "http://#{city_slug}.baixing.com/#{category_slug}/" + a.attr('href')
    message_title = a.text
    _m = Message.find_by_site_url(message_url)
    if _m
      next
    end
    p Time.now.strftime('%Y-%m-%d %H:%M:%S') + " " + message_title
    m_count += 1
    break if m_count >= m_count_limit
    sleep(sleep_time)
    begin
      area_id = nil
      location_id = nil
      message_page = Nokogiri::HTML(open(message_url))
      content = message_page.at_css("div#content p").inner_html.gsub(/\r/i,'').gsub(/\n/i,'')
      attrs = content.split('<br><br>')[0]
      publish_time = Time.now.strftime('%Y-%m-%d ')
      other_attrs = []
      attrs.split('<br>').each do |line|
        if line.include?('发布时间：')
          publish_time += line.gsub('发布时间：','').gsub(' ', '')
        elsif line.include?('所在地：')
          area_name = line.gsub('所在地：','').split(',')[0]
          location_name = line.gsub('所在地：','').split(',')[1]
          area_name = area_name.gsub(' ', '') if !area_name.nil?
          location_name = location_name.gsub(' ', '') if !location_name.nil?
          area = Area.find_by_name(area_name)
          location = Location.find_by_name(location_name)
          area_id = area.id if area
          location_id = location.id if location
        else
          k = line.split('：')[0]
          v = line.split('：')[1]
          k = k.gsub(' ', '') if !k.nil?
          v = v.gsub(' ', '') if !v.nil?
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

city_type = ARGV[0]
# Keep running
999999.times.each do |i|
  cities = []
  # 4 premium_capital cities
  if city_type == "premium_capital"
    sleep_time = 1.5
    cities = City.find_by_sql("select * from city where province_id = 1")
  # 27 capital cities
  elsif city_type == "capital"
    sleep_time = 2.0
    cities = City.find_by_sql("select * from city where province_id != 1 and is_capital = 1")
  # 65 premium cities
  elsif city_type == "premium"
    sleep_time = 3.0
    cities = City.find_by_sql("select distinct c.id, c.slug from city c, area a where a.city_id = c.id and c.is_capital = 0")
  end
  
  exit if cities.blank?
  
  Category.find_by_sql("select * from category where parent_category_id is not null order by priority desc, id asc").each do |ca|
    parent_category_id = ca.parent_category_id
    category_id = ca.id
    category_slug = ca.slug
    category_priority = ca.priority
    cities.map{|c| [c.id, c.slug]}.each do |c|
      city_id = c[0]
      city_slug = c[1]
      parse_messages(parent_category_id, category_id, category_slug, city_id, city_slug, sleep_time, 10 * category_priority)
    end
  end
end

# Not run (251 cities)
# cities_small = City.find_by_sql("select * from city c where c.id not in(select distinct a.city_id from area a)").map{|c| [c.id, c.slug]}