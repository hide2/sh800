require 'rubygems'
require 'nokogiri'
require 'open-uri'

ENV['RAILS_ENV'] = 'production'
require File.dirname(__FILE__)+'/../config/environment.rb'

# 二手电脑
list_url = 'http://beijing.baixing.com/diannao/?areaName=haidian'
list_page = Nokogiri::HTML(open(list_url))
break_count = 1
list_page.css("div#content li a").each do |a|
  pub_time = a.previous.text
  break if pub_time != Time.now.strftime('%m月%d日')
  break if break_count > 3
  message_url = 'http://beijing.baixing.com/diannao/' + a.attr('href')
  message_title = a.text
  _m = Message.find_by_site_url(message_url)
  if _m
    break_count += 1
    next
  end
  
  p message_title
  
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
  m.parent_category_id = 1
  m.category_id = 1001
  m.city_id = 1
  m.area_id = 1
  m.title = message_title
  now = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  m.publish_time = publish_time
  m.created_at = now
  m.other_attrs = other_attrs
  m.content = message_content
  m.save!
end