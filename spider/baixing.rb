require 'rubygems'
require 'nokogiri'
require 'open-uri'

ENV['RAILS_ENV'] = 'production'
require File.dirname(__FILE__)+'/../config/environment.rb'

def parse_messages(parent_category_id, category_id, category_slug, city_id, city_slug)
  p Time.now.strftime('%Y-%m-%d %H:%M:%S') + " ============================================================"
  p parent_category_id.to_s + "_" + category_id.to_s + "_" + category_slug + "_" + city_id.to_s + "_" + city_slug
  list_url = "http://#{city_slug}.baixing.com/#{category_slug}/"
  p list_url
  list_page = Nokogiri::HTML(open(list_url))
  as = list_page.css("div#content ol li a")
  ms = []
  as.each do |a|
    pub_time = a.previous.text if a.previous
    next if !(pub_time =~ /\d+月\d+日/)
    break if pub_time != Date.today.month.to_s + '月'+ Date.today.day.to_s + '日'
    ms << a
  end
  ms.reverse.each do |a|
    message_url = "http://#{city_slug}.baixing.com/#{category_slug}/" + a.attr('href')
    message_title = a.text
    _m = Message.find_by_site_url(message_url)
    if _m
      next
    end
    p Time.now.strftime('%Y-%m-%d %H:%M:%S') + " " + message_title
    begin
      m = Message.new
      m.site = 'baixing'
      m.site_url = message_url
      m.parent_category_id = parent_category_id
      m.category_id = category_id
      m.city_id = city_id
      m.title = message_title
      now = Time.now.strftime("%Y-%m-%d %H:%M:%S")
      m.publish_time = now
      m.created_at = now
      m.save!
    rescue Exception => e
      p e.message
    end
  end
end

city_type = ARGV[0]
# Keep running
cities = []
# 4 premium_capital cities
if city_type == "premium_capital"
  cities = City.find_by_sql("select * from city where province_id = 1")
# 27 capital cities
elsif city_type == "capital"
  cities = City.find_by_sql("select * from city where province_id != 1 and is_capital = 1")
# 65 premium cities
elsif city_type == "premium"
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
    parse_messages(parent_category_id, category_id, category_slug, city_id, city_slug)
  end
end

# Not run (251 cities)
# cities_small = City.find_by_sql("select * from city c where c.id not in(select distinct a.city_id from area a)").map{|c| [c.id, c.slug]}