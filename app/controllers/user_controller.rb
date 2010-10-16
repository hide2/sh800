class UserController < ApplicationController

  def show
    @user = User.find params[:id]
    @ms = Message.find_by_sql("select * from message where is_deleted = 0 and is_archived = 0 and user_id = #{@user.id} order by publish_time desc limit 0, 100")
  end
  
  def edit
    @user = User.find params[:id]
    raise "Wrong user!" if !login? || @user.id != login_user.id
  end
  
  def update
    u = login_user
    u.password = params[:password]
    u.save!
    flash[:notice] = "密码更改成功！"
    redirect_to edit_user_path(u)
  end
end
