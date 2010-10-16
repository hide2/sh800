class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :redirect_by_ip
  before_filter :set_charset
  before_filter :configure_charsets
  helper_method :login?, :login_user
  
  def login?
    session[:user_id]
  end
  
  def login_user
    User.find session[:user_id]
  end
  
  def redirect_by_ip
    return if request.fullpath == "/city/list"
    if request.subdomain == "" || request.subdomain == "www"
      ip = request.remote_ip
      ct = "beijing"
      r = IP_LIB.find ip
      addr = r.country.to_s
      ALL_CITIES.each do |c|
        if addr.include?(c.name)
          ct = c.slug
        end
      end
      redirect_to "http://" + ct + "." + SITE_DOMAIN + request.fullpath
    else
      @ct = City.find_by_slug(request.subdomain)
    end
  end

  def set_charset
    headers["Content-Type"] = "text/html; charset=utf-8"
  end

  def configure_charsets
    response.headers["Content-Type"] = "text/html; charset=utf-8"
    suppress(ActiveRecord::StatementInvalid) do
      ActiveRecord::Base.connection.execute 'SET NAMES UTF8'
    end
  end
  
end