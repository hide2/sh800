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
    @c = Category.find(@m.category_id)
    if @c.parent_category_id
      @pc = Category.find(@c.parent_category_id)
    end
    @a = Area.find(@m.area_id)
  end
  
end
