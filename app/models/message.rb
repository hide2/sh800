class Message < ActiveRecord::Base
  set_table_name 'message'
  
  KVS = '#$%'
  PS = '^&*'
  IMGS = ';'
  
  def other_attr(a)
    return '' if self.other_attrs.blank?
    self.other_attrs.split(PS).each do |p|
      k = p.split(KVS)[0]
      v = p.split(KVS)[1]
      if k == a
        return v
      end
    end
    return ''
  end
  
end