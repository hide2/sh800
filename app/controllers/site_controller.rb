class SiteController < ApplicationController
  
  skip_before_filter :verify_authenticity_token
  
  def image_upload
    if request.get?
      render :layout => false
    else
      @img_path = ImageUtil.save_image(params[:image])
      render :template => "site/upload_done.html.erb", :layout => false
    end
  end
  
  def zhuce
    if request.post?
      if params[:login].size < 4
        flash[:error] = "用户名的长度要在4个字符以上！"
        return
      end
      u = User.find(:first, :conditions => ['login = ?', params[:login]])
      if !u.blank?
        flash[:error] = "用户名已经存在，请重选一个用户名！"
        return
      end
      user = User.new
      user.login = params[:login]
      user.password = params[:password]
      user.created_at = Time.now.strftime("%Y-%m-%d %H:%M:%S")
      user.save!
      session[:user_id] = user.id
      redirect_to user_path(user)
    end
  end
  
  def denglu
    if request.post?
      begin
        session[:user_id] = User.authenticate(params[:login], params[:password]).id
      rescue Exception => e
        flash[:error] = e.message
        return
      end
      redirect_to "/"
    end
  end
  
  def tuichu
    session[:user_id] = nil
    redirect_to "/"
  end
  
end
