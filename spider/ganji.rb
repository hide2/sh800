require 'rubygems'
require 'nokogiri'
require 'open-uri'

ENV['RAILS_ENV'] = 'production'
require File.dirname(__FILE__)+'/../config/environment.rb'

SITE = "ganji"

CITY_SLUG = {
  "beijing" => "bj",
  "shanghai" => "sh",
  "tianjin" => "tj",
  "chongqing" => "cq",
  "shenyang" => "sy",
  "dalian" => "dl",
  "fushun" => "fushun",
  "jinzhou" => "jinzhou",
  "anshan" => "anshan",
  "huludao" => "huludao",
  "fuxin" => "fuxin",
  "yingkou" => "yingkou",
  "wuhan" => "wh",
  "yichang" => "yichang",
  "chengdu" => "cd",
  "mianyang" => "mianyang",
  "xian" => "xa",
  "shijiazhuang" => "sjz",
  "tangshan" => "tangshan",
  "baoding" => "baoding",
  "cangzhou" => "cangzhou",
  "langfang" => "langfang",
  "xingtai" => "xingtai",
  "handan" => "handan",
  "qinhuangdao" => "qinhuangdao",
  "hengshui" => "hengshui",
  "taiyuan" => "ty",
  "yuncheng" => "yuncheng",
  "jinzhong" => "jinzhong",
  "zhengzhou" => "zz",
  "luoyang" => "luoyang",
  "jiaozuo" => "jiaozuo",
  "xinxiang" => "xinxiang",
  "nanyang" => "nanyang",
  "changchun" => "cc",
  "jilin" => "jilin",
  "haerbin" => "hrb",
  "daqing" => "daqing",
  "qiqihaer" => "qiqihaer",
  "jiamusi" => "jiamusi",
  "jixi" => "jixi",
  "shuangyashan" => "shuangyashan",
  "huhehaote" => "nmg",
  "baotou" => "baotou",
  "nanjing" => "nj",
  "suzhou" => "su",
  "wuxi" => "wx",
  "xuzhou" => "xuzhou",
  "changzhou" => "changzhou",
  "huaian" => "huaian",
  "yangzhou" => "yangzhou",
  "nantong" => "nantong",
  "yancheng" => "yancheng",
  "lianyungang" => "lianyungang",
  "suqian" => "suqian",
  "tz" => "jstaizhou",
  "jinan" => "jn",
  "qingdao" => "qd",
  "zibo" => "zibo",
  "weifang" => "weifang",
  "yantai" => "yantai",
  "linyi" => "linyi",
  "jining" => "jining",
  "binzhou" => "binzhou",
  "dezhou" => "dezhou",
  "dongying" => "dongying",
  "zaozhuang" => "zaozhuang",
  "liaocheng" => "liaocheng",
  "taian" => "taian",
  "rizhao" => "rizhao",
  "heze" => "heze",
  "hefei" => "hf",
  "hangzhou" => "hz",
  "ningbo" => "nb",
  "jiaxing" => "jiaxiing",
  "wenzhou" => "wenzhou",
  "fuzhou" => "fz",
  "xiamen" => "xm",
  "quanzhou" => "quanzhou",
  "changsha" => "cs",
  "guangzhou" => "gz",
  "shenzhen" => "sz",
  "dongguan" => "dg",
  "zhuhai" => "zhuhai",
  "zhongshan" => "zhongshan",
  "foshan" => "foshan",
  "nanning" => "nn",
  "nanchang" => "nc",
  "guiyang" => "gy",
  "kunming" => "km",
  "lasa" => "xz",
  "haikou" => "hn",
  "lanzhou" => "lz",
  "yinchuan" => "yc",
  "xining" => "xn",
  "wulumuqi" => "xj"
}

CATEGORY_SLUG = {
  "diannao" => "ershoubijibendiannao",
  "dianqi" => "jiadian",
  "jiaju" => "jiaju",
  "qitazhuanrang" => "qitawupin",
  "ershouqiche" => "ershouche",
  "zhengzu" => "fang1",
  "hezu" => "fang3",
  "ershoufang" => "fang5",
  "shangpu" => "fang8",
  "jingyingzhuanrang" => "fang6",
  "chongwujiaoyi" => "gou",
  "dianyuan" => "zpyingyeyuan",
  "gongren" => "zpjigongyibangongren",
  "wenmi" => "zpwenmiwenyuan",
  "xiaoshou" => "zpshichangyingxiao",
  "qitazhaopin" => "xxxxxx",
  "nanzhaonv" => "jiaoyou7",
  "gerenzuche" => "zuche",
  "baomu" => "jiazheng",
  "jineng" => "zhiyepeixun",
  "zhuangxiu" => "zhuangxiu",
  "weixiu" => "jiadianweixiu",
  "jiajiaofuwu" => "jiajiao",
  "siyi" => "liyihunqing",
  "banjia" => "banjia",
  "sheji" => "sheji",
  "daibanzhuce" => "gongshangdaili",
  "jiameng" => "zhaoshangjiameng",
  "qitafuwu" => "xxxxxx"
}

def random_ip
  rand(99).to_s + "." + rand(99).to_s + "." + rand(99).to_s + "." + rand(99).to_s
end

def fake_ip_open(url)
  open(url, "X_FORWARDED_FOR" => random_ip)
end

def parse_messages(parent_category_id, category_id, category_slug, city_id, city_slug, area_id=nil, area_slug=nil)
  begin
    p Time.now.strftime('%Y-%m-%d %H:%M:%S') + " ============================================================"
    p city_id.to_s + "_" + city_slug + "_" + parent_category_id.to_s + "_" + category_id.to_s + "_" + category_slug
    list_url = "http://#{city_slug}.#{SITE}.com/#{category_slug}/"
    list_url += "#{area_slug}" if area_id && area_slug
    p list_url
    list_page = Nokogiri::HTML(fake_ip_open(list_url))
    ms = []
    lis1 = list_page.css("div#content div.list dl")
    if lis1.size > 0
      lis1.each do |li|
        a = li.at_css("a[target=_blank]")
        next if !a || a.text.size <= 12
        ms << a
      end
    end
    lis2 = list_page.css("div.wp div.list p")
    if lis2.size > 0
        lis2.each do |li|
        a = li.at_css("a[target=_blank]")
        next if !a || a.text.size <= 12
        ms << a
      end
    end
    dup_count = 0
    ms_count = 0
    ms.each do |a|
      message_url = "http://#{city_slug}.#{SITE}.com" + a.attr('href')
      message_title = a.text.gsub("\r\n", "").strip
      _m = Message.find_by_site_url(message_url)
      if _m
        dup_count += 1
        break if dup_count >= 10
        next
      end
      ms_count += 1
      break if ms_count >= 10
      p Time.now.strftime('%Y-%m-%d %H:%M:%S') + " " + message_title
      begin
        m = Message.new
        m.site = SITE
        m.site_url = message_url
        m.parent_category_id = parent_category_id
        m.category_id = category_id
        m.city_id = city_id
        m.area_id = area_id
        m.title = message_title
        now = Time.now.strftime("%Y-%m-%d %H:%M:%S")
        m.publish_time = now
        m.created_at = now
        m.save!
      rescue Exception => e
        p e.message
      end
    end
  rescue Exception => e
    p e.message
  end
end

def update_messages_count(city_id)
  now = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  Message.find_by_sql("select category_id, count(1) as messages_count from message where city_id = #{city_id} and is_deleted = 0 and is_archived = 0 group by category_id order by messages_count desc").each do |c|
    mc = MessagesCount.find_or_initialize_by_category_id_and_city_id(c.category_id, city_id)
    mc.messages_count = c.messages_count
    mc.created_at = now
    mc.save!
  end
end

city_type = ARGV[0]
if city_type == "premium"
  city_id = ARGV[1]
  city_slug = CITY_SLUG[ARGV[2]]
  Category.find_by_sql("select * from category where parent_category_id is not null and priority = 1").each do |ca|
    parent_category_id = ca.parent_category_id
    category_id = ca.id
    category_slug = CATEGORY_SLUG[ca.slug]
    Area.find_all_by_city_id(city_id).each do |a|
      area_id = a.id
      area_slug = a.slug
      parse_messages(parent_category_id, category_id, category_slug, city_id, city_slug, area_id, area_slug)
    end
  end
  update_messages_count(city_id)
elsif city_type == "non_premium"
  cities = City.find_by_sql("select distinct c.id, c.slug from city c, area a where a.city_id = c.id and c.province_id != 1").map{|c|[c.id, c.slug]}
  cities = [[3, 'tianjin'], [4, 'chongqing']] + cities
  cities.each do |c|
    city_id = c[0]
    city_slug = CITY_SLUG[c[1]]
    Category.find_by_sql("select * from category where parent_category_id is not null and priority = 1").each do |ca|
      parent_category_id = ca.parent_category_id
      category_id = ca.id
      category_slug = CATEGORY_SLUG[ca.slug]
      parse_messages(parent_category_id, category_id, category_slug, city_id, city_slug)
    end
    update_messages_count(city_id)
  end
end