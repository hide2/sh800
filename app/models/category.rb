class Category < ActiveRecord::Base
  set_table_name 'category'
  
  def sub_categories
    if self.parent_category_id.nil?
      return Category.find_by_sql("select * from category where parent_category_id = #{self.id}")
    else
      return []
    end
  end
end