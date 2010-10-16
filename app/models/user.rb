class User < ActiveRecord::Base
  set_table_name 'user'
  
  def password=(pass)
    salt = [Array.new(6){rand(256).chr}.join].pack("m").chomp
    self.salt, self.crypted_password = salt, Digest::SHA256.hexdigest(pass + salt)
  end

  def self.authenticate(login, password)
    user = User.find(:first, :conditions => ['login = ?', login])
    if user.blank?
      raise "用户名不存在！"
    elsif Digest::SHA256.hexdigest(password + user.salt) != user.crypted_password
      raise "密码错误！"
    end
    user
  end

end