# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Sh800::Application.initialize!

SITE_DOMAIN = "800shenghuo.com"
IP_LIB = QQWry::QQWryFile.new
ALL_CITIES = City.find(:all)