class Message < ActiveRecord::Base
  set_table_name 'message'
  
  KVS = '#$%'
  PS = '^&*'
  IMGS = ';'
end