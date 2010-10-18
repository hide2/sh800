require 'rubygems'
require 'nokogiri'
require 'open-uri'

ENV['RAILS_ENV'] = 'production'
require File.dirname(__FILE__)+'/../config/environment.rb'


def parse_messages(parent_category_id, category_id, category_name, city_id, city_name, area_id, area_name)
  p "======================================="
  p parent_category_id.to_s + "_" + category_id.to_s + "_" + category_name + "_" + city_id.to_s + "_" + city_name + "_" + area_id.to_s + "_" + area_name
  list_url = "http://#{city_name}.baixing.com/#{category_name}/?areaName=#{area_name}"
  p list_url
  list_page = Nokogiri::HTML(open(list_url))
  list_page.css("div#content ol li a").each do |a|
    pub_time = a.previous.text if a.previous
    next if !(pub_time =~ /\d\d月\d\d日/)
    break if pub_time != Time.now.strftime('%m月%d日')
    message_url = "http://#{city_name}.baixing.com/#{category_name}/" + a.attr('href')
    message_title = a.text
    _m = Message.find_by_site_url(message_url)
    break if _m
    p message_title
    begin
      sleep(0.5)
      message_page = Nokogiri::HTML(open(message_url))
      content = message_page.at_css("div#content p").inner_html.gsub(/\r/i,'').gsub(/\n/i,'')
      attrs = content.split('<br><br>')[0]
      publish_time = Time.now.strftime('%Y-%m-%d ')
      other_attrs = []
      attrs.split('<br>').each do |line|
        if line.include?('发布时间')
          publish_time += line.gsub('发布时间：','')
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
      
      m = Message.new
      m.site = 'baixing'
      m.site_url = message_url
      m.parent_category_id = parent_category_id
      m.category_id = category_id
      m.city_id = city_id
      m.area_id = area_id
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

Category.find_by_sql("select * from category where parent_category_id is null").each do |pc|
  parent_category_id = pc.id
  Category.find_all_by_parent_category_id(parent_category_id).each do |ca|
    category_id = ca.id
    category_name = ca.slug
    
    # Run each 2 hour (31 cities)
    cities_capital = City.find_by_sql("select * from city where is_capital = 1").map{|c| [c.id, c.slug]}
    cities_capital.each do |c|
      city_id = c[0]
      city_name = c[1]
      areas = Area.find_all_by_city_id(city_id).map{|a| [a.id, a.slug]}
      areas.each do |a|
        area_id = a[0]
        area_name = a[1]
        parse_messages(parent_category_id, category_id, category_name, city_id, city_name, area_id, area_name)
      end
    end
    
  end
end

# Run each 4 hour (65 cities)
# cities_premium = City.find_by_sql("select distinct c.id, c.slug from city c, area a where a.city_id = c.id and c.is_capital = 0").map{|c| [c.id, c.slug]}

# Run each 6 hour (251 cities)
# cities_non_premium = City.find_by_sql("select * from city c where c.id not in(select distinct a.city_id from area a)").map{|c| [c.id, c.slug]}