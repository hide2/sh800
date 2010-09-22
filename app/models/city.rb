class City < ActiveRecord::Base
  set_table_name 'city'
  
  RELATED_CITY = {
    'beijing' => ['shijiazhuang','langfang','baoding','shenyang','jinan','zhengzhou','tangshan','guangzhou','taiyuan','qingdao','xian','cangzhou','weifang','dalian','xingtai','shenzhen','wuhan','changchun','handan','haerbin'],
    'shanghai' => ['suzhou','nanjing','hangzhou','wuxi','jiaxing','guangzhou','hefei','shenzhen','nantong','changzhou','wuhan','zhengzhou','wenzhou','ningbo','yancheng','xuzhou','xian','jinan','shenyang','dalian'],
    'tianjin' => ['tangshan','cangzhou','shijiazhuang','langfang','jinan','baoding','shenyang','qinhuangdao','dezhou','hengshui','guangzhou','dalian','xingtai','qingdao','wuhan','handan','zhengzhou','xian','taiyuan','haerbin'],
    'chongqing' => ['chengdu','guangzhou','shenzhen','wuhan','dongguan','guiyang','xian','kunming','suzhou','hangzhou','nanjing','zhengzhou','changsha','mianyang','dazhou','wenzhou','nanchong','foshan','shenyang','yichang']
  }
end