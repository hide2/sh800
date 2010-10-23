module ApplicationHelper

  ALLOWED_TAGS = %w(a br) unless defined?(ALLOWED_TAGS)

  def whitelist(html)
    html.gsub!(/\r\n/, '<br/>')
    if html.index("<")
      tokenizer = HTML::Tokenizer.new(html)
      new_text = ""

      while token = tokenizer.next
        node = HTML::Node.parse(nil, 0, 0, token, false)
        new_text << case node
                    when HTML::Tag
                      if ALLOWED_TAGS.include?(node.name)
                        node.to_s
                      else
                        node.to_s.gsub(/</, "&LT;")
                      end
                    else
                      node.to_s.gsub(/</, "&LT;")
                    end
      end

      html = new_text
    end
    html
  end
  
  require 'open-uri'
  
  def random_ip
    rand(99).to_s + "." + rand(99).to_s + "." + rand(99).to_s + "." + rand(99).to_s
  end
  
  def fake_ip_open(url)
    open(url, "X_FORWARDED_FOR" => random_ip, "USER_AGENT" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; zh-CN; rv:1.9.2.11) Gecko/20101012 Firefox/3.6.11")
  end
  
end