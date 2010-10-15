class MessageController < ApplicationController
  
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
    
    if session[:user_id]
      m = Message.create!(:parent_category_id=>params[:parent_category_id], :category_id=>params[:category_id], :city_id=>@ct.id, :area_id=>params[:area_id], :location_id=>params[:location_id], :title=>params[:title], :other_attrs => other_attrs, :content=>params[:content], :images_path=>images_path, :user_id=>session[:user_id], :ip=>request.remote_ip)
    else
      m = Message.create!(:parent_category_id=>params[:parent_category_id], :category_id=>params[:category_id], :city_id=>@ct.id, :area_id=>params[:area_id], :location_id=>params[:location_id], :title=>params[:title], :other_attrs => other_attrs, :content=>params[:content], :images_path=>images_path, :password=>params[:password], :ip=>request.remote_ip)
    end
    redirect_to message_path(m)
  end
  
end
