class MessageController < ApplicationController
  
  def list
    @category = Category.find_by_slug(params[:category])
    @messages = Message.find_all_by_category_id_and_city_id(@category.id, @ct.id)
  end
  
end
