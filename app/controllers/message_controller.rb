class MessageController < ApplicationController
  require 'md5'
  
  def list
    @c = Category.find_by_slug(params[:category])
    if @c.parent_category_id
      @pc = Category.find(@c.parent_category_id)
    end
    @cc = Category.find_all_by_parent_category_id(@c.id)
    
    @a = Area.find_by_slug(params[:area])
    if @pc
      @total = Message.count(:conditions => "is_deleted = 0 and is_archived = 0 and category_id = #{@c.id} and city_id = #{@ct.id}"+ (@a ? " and area_id = #{@a.id}" : ""))
    else
      @total = Message.count(:conditions => "is_deleted = 0 and is_archived = 0 and parent_category_id = #{@c.id} and city_id = #{@ct.id}"+ (@a ? " and area_id = #{@a.id}" : ""))
    end
    @page = (params[:page] || 1).to_i
    offset = (@page-1)*100
    limit = 100
    @has_prev_page = @page > 1
    @has_next_page = @total > offset+limit
    if @pc
      @ms = Message.find_by_sql("select * from message where is_deleted = 0 and is_archived = 0 and category_id = #{@c.id} and city_id = #{@ct.id}" + (@a ? " and area_id = #{@a.id}" : "") + " order by publish_time desc limit #{offset}, #{limit}")
    else
      @ms = Message.find_by_sql("select * from message where is_deleted = 0 and is_archived = 0 and parent_category_id = #{@c.id} and city_id = #{@ct.id}" + (@a ? " and area_id = #{@a.id}" : "") + " order by publish_time desc limit #{offset}, #{limit}")
    end
  end
  
  def show
    @m = Message.find(params[:id])
    @m.views_count += 1
    @m.save!
    @c = Category.find(@m.category_id)
    if @c.parent_category_id
      @pc = Category.find(@c.parent_category_id)
    end
    @a = Area.find(@m.area_id)
  end
  
  def new
  end

  def edit
    @m = Message.find params[:id]
    raise "Wrong password!" if !login? && params[:token] != MD5.hexdigest(@m.password) || login? && @m.user_id != login_user.id
    @c = Category.find(@m.category_id)
    @pc = Category.find(@c.parent_category_id)
  end
  
  def create
    other_attrs = []
    params.each do |k,v|
      if k.include?("other_attrs_")
        attr = k.gsub("other_attrs_", "")
        other_attrs << attr + Message::KVS + v if !v.blank?
      end
    end
    other_attrs = other_attrs.join(Message::PS)
    images_path = params[:images].join(Message::IMGS) if params["images"]
    _now = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    
    if login?
      m = Message.create!(:parent_category_id=>params[:parent_category_id], :category_id=>params[:category_id], :city_id=>@ct.id, :area_id=>params[:area_id], :location_id=>params[:location_id], :title=>params[:title], :other_attrs => other_attrs, :content=>params[:content], :images_path=>images_path, :publish_time => _now, :created_at => _now, :user_id=>login_user.id, :ip=>request.remote_ip)
    else
      m = Message.create!(:parent_category_id=>params[:parent_category_id], :category_id=>params[:category_id], :city_id=>@ct.id, :area_id=>params[:area_id], :location_id=>params[:location_id], :title=>params[:title], :other_attrs => other_attrs, :content=>params[:content], :images_path=>images_path, :publish_time => _now, :created_at => _now, :password=>params[:password], :ip=>request.remote_ip)
    end
    redirect_to message_path(m)
  end
  
  def update
    other_attrs = []
    params.each do |k,v|
      if k.include?("other_attrs_")
        attr = k.gsub("other_attrs_", "")
        other_attrs << attr + Message::KVS + v if !v.blank?
      end
    end
    other_attrs = other_attrs.join(Message::PS)
    images_path = params[:images].join(Message::IMGS) if params["images"]
    
    m = Message.find params[:id]
    m.area_id = params[:area_id]
    m.location_id = params[:location_id]
    m.title = params[:title]
    m.other_attrs = other_attrs
    m.content = params[:content]
    m.images_path = images_path
    m.save!
    redirect_to message_path(m)
  end
  
  def delete
    @m = Message.find params[:id]
    raise "Wrong user!" if !login? || @m.user_id != login_user.id
    @m.is_deleted = 1
    @m.save!
    redirect_to user_path(login_user)
    flash[:deleted_message] = @m.title
  end
  
  def find_message
    if !params[:keyword].blank?
      @ms = Message.find_by_sql("select * from message where is_deleted = 0 and is_archived = 0 and city_id = #{@ct.id} and (title like '%#{params[:keyword]}%' or content like '%#{params[:keyword]}%') order by publish_time desc limit 0, 100")
    end
  end
  
  def validate_message
    @m = Message.find params[:id]
    if request.post?
      if @m.password == params[:password]
        if params[:rd_action] == "edit"
          token = MD5.hexdigest(@m.password)
          redirect_to edit_message_path(@m, :token => token)
        elsif params[:rd_action] == "delete"
          @m.is_deleted = 1
          @m.save!
          redirect_to "/message/find_message"
          flash[:deleted_message] = @m.title
        end
      else
        @password_wrong = true
      end
    end
  end
  
end
