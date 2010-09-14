class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_charset
  before_filter :configure_charsets

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