insert into `category`(`id`,`parent_category_id`,`name`,`slug`) values
(1,NULL,'物品交易','ershou'),
(2,NULL,'二手车买卖','cheliang'),
(3,NULL,'房屋租售','fang'),
(4,NULL,'宠物','chongwu'),
(5,NULL,'招聘','zhaopin'),
(6,NULL,'兼职','jianzhi'),
(7,NULL,'求职','qiuzhi'),
(8,NULL,'交友活动','jiaoyou'),
(9,NULL,'生活服务','fuwu');

insert into `category`(`id`,`parent_category_id`,`name`,`slug`) values
(1001,1,'二手电脑','diannao');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(1,'二手手机','shouji'),
(1,'手机号码交易','shoujihaoma'),
(1,'二手照相机/DV','zhaoxiangji'),
(1,'MP3/MP4/游戏机','shuma'),
(1,'二手家电','dianqi'),
(1,'二手家具','jiaju'),
(1,'二手日用品','riyongpin'),
(1,'服装饰品','fushi'),
(1,'女鞋/男鞋/箱包','xiemao'),
(1,'母婴/幼儿/玩具','yinger'),
(1,'化妆品','huazhuangpin'),
(1,'书报杂志/音像制品','shu'),
(1,'二手乐器/文具','yueqi'),
(1,'运动器材','yundongqicai'),
(1,'收藏品/工艺品','shoucang'),
(1,'打折卡/票券/积分','quan'),
(1,'火车票/汽车票','huochepiao'),
(1,'其他转让物品','qitazhuanrang'),
(1,'求购','wupinqiugou');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(2,'二手轿车','ershoujiaoche'),
(2,'二手货车/面包车','ershouhuoche'),
(2,'二手摩托车/燃气车','ershoumotuoche'),
(2,'二手电动车','ershoudiandongche'),
(2,'二手自行车','ershouzixingche'),
(2,'车辆求购','cheliangqiugou');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(3,'房屋出租(非合租)','zhengzu'),
(3,'房屋合租','hezu'),
(3,'二手房出售','ershoufang'),
(3,'写字楼租售','xiezilou'),
(3,'店铺/公司转让','jingyingzhuanrang'),
(3,'家庭旅馆/日租/短租','duanzu'),
(3,'中介房源','zhongjie'),
(3,'求租/求购','qiufang');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(4,'宠物/用品','chongwuxiangguan'),
(4,'宠物配种','chongwupeizhong');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(5,'营业员/店员招聘','dianyuan'),
(5,'工人/技工招聘','gongren'),
(5,'文员/行政/助理招聘','wenmi'),
(5,'人事/人力资源','renshi'),
(5,'销售/业务员招聘','xiaoshou'),
(5,'保姆/钟点工招聘','bangyong'),
(5,'保安/仓管招聘','baoan'),
(5,'快递员/送货员','kuaidiyuan'),
(5,'服务员招聘','fuwuyuan'),
(5,'客服招聘','kefu'),
(5,'司机招聘','siji'),
(5,'厨师/配菜','chushi'),
(5,'老师/家教招聘','laoshi'),
(5,'会计/翻译/编辑','kuaiji'),
(5,'计算机/编程/网管','chengxuyuan'),
(5,'美工/设计师','meigong'),
(5,'美容师/保健师','meirongshi'),
(5,'KTV/酒吧','ktvjiuba'),
(5,'其他招聘','qitazhaopin'),
(5,'工作中介','zhiyezhongjie');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(6,'促销/派发兼职','cuxiao'),
(6,'模特/演员/司仪兼职','mote'),
(6,'其他兼职','qitajianzhi');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(7,'司机求职','sijiqiuzhi'),
(7,'兼职求职','jianzhiqiuzhi'),
(7,'其他求职','qitaqiuzhi');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(8,'女找男','nvzhaonan'),
(8,'男找女','nanzhaonv'),
(8,'征婚','zhenghun'),
(8,'一起运动/旅游','yiqilvyou'),
(8,'拼车/顺风车','pinche'),
(8,'寻人/寻物','xunrenqishi');

insert into `category`(`parent_category_id`,`name`,`slug`) values
(9,'汽车出租','qichechuzu'),
(9,'驾校/陪驾/代驾','jiaxiaofuwu'),
(9,'验车/上牌年检/保险','qichefuwu'),
(9,'家政服务','baomu'),
(9,'电脑外语/技能培训','jineng'),
(9,'学历教育','xuelifuwu'),
(9,'装修服务','zhuangxiu'),
(9,'维修服务','weixiu'),
(9,'家教服务','jiajiaofuwu'),
(9,'物品回收','huishou'),
(9,'婚庆/摄影/司仪','siyi'),
(9,'搬家/快递','banjia'),
(9,'旅游/活动/聚会','lvxingshe'),
(9,'网页/平面设计/印刷','sheji'),
(9,'会计/翻译/律师服务','kuaijifuwu'),
(9,'公司注册/年检','daibanzhuce'),
(9,'招商加盟/代理','jiameng'),
(9,'其他服务','qitafuwu');

insert into `province`(`id`,`name`) values
(1,'直辖市'),
(2,'辽宁'),
(3,'湖北'),
(4,'四川'),
(5,'陕西'),
(6,'河北'),
(7,'山西'),
(8,'河南'),
(9,'吉林'),
(10,'黑龙江'),
(11,'内蒙古'),
(12,'江苏'),
(13,'山东'),
(14,'安徽'),
(15,'浙江'),
(16,'福建'),
(17,'湖南'),
(18,'广东'),
(19,'广西'),
(20,'江西'),
(21,'贵州'),
(22,'云南'),
(23,'西藏'),
(24,'海南'),
(25,'甘肃'),
(26,'宁夏'),
(27,'青海'),
(28,'新疆');

insert into `city`(`id`,`province_id`,`name`,`slug`,`is_capital`) values
(1,1,'北京','beijing',1),
(2,1,'上海','shanghai',1),
(3,1,'天津','tianjin',1),
(4,1,'重庆','chongqing',1);

insert into `city`(`province_id`,`name`,`slug`,`is_capital`) values
(2,'沈阳','shenyang',1),
(2,'大连','dalian',0),
(2,'抚顺','fushun',0),
(2,'锦州','jinzhou',0),
(2,'鞍山','anshan',0),
(2,'葫芦岛','huludao',0),
(2,'阜新','fuxin',0),
(2,'营口','yingkou',0),
(2,'本溪','benxi',0),
(2,'朝阳','chaoyang',0),
(2,'铁岭','tieling',0),
(2,'辽阳','liaoyang',0),
(2,'盘锦','panjin',0),
(2,'丹东','dandong',0),
(3,'武汉','wuhan',1),
(3,'宜昌','yichang',0),
(3,'襄樊','xiangfan',0),
(3,'荆州','jingzhou',0),
(3,'十堰','shiyan',0),
(3,'黄冈','huanggang',0),
(3,'荆门','jingmen',0),
(3,'随州','suizhou',0),
(3,'恩施','enshi',0),
(3,'孝感','xiaogan',0),
(3,'黄石','huangshi',0),
(3,'鄂州','ezhou',0),
(3,'咸宁','xianning',0),
(3,'天门','tianmen',0),
(3,'仙桃','xiantao',0),
(3,'潜江','qianjiang',0),
(3,'神农架','shennongjia',0),
(4,'成都','chengdu',1),
(4,'绵阳','mianyang',0),
(4,'泸州','luzhou',0),
(4,'南充','nanchong',0),
(4,'德阳','deyang',0),
(4,'乐山','leshan',0),
(4,'达州','dazhou',0),
(4,'广安','guangan',0),
(4,'攀枝花','panzhihua',0),
(4,'遂宁','suining',0),
(4,'自贡','zigong',0),
(4,'内江','neijiang',0),
(4,'广元','guangyuan',0),
(4,'巴中','bazhong',0),
(4,'宜宾','yibin',0),
(4,'眉山','meishan',0),
(4,'资阳','ziyang',0),
(4,'雅安','yaan',0),
(4,'凉山','liangshan',0),
(4,'阿坝','aba',0),
(4,'甘孜','ganzi',0),
(5,'西安','xian',1),
(5,'宝鸡','baoji',0),
(5,'咸阳','xianyang',0),
(5,'渭南','weinan',0),
(5,'汉中','hanzhong',0),
(5,'安康','ankang',0),
(5,'榆林','yulin',0),
(5,'延安','yanan',0),
(5,'铜川','tongchuan',0),
(5,'商洛','shangluo',0),
(6,'石家庄','shijiazhuang',1),
(6,'唐山','tangshan',0),
(6,'保定','baoding',0),
(6,'沧州','cangzhou',0),
(6,'廊坊','langfang',0),
(6,'邢台','xingtai',0),
(6,'邯郸','handan',0),
(6,'秦皇岛','qinhuangdao',0),
(6,'衡水','hengshui',0),
(6,'张家口','zhangjiakou',0),
(6,'承德','chengde',0),
(7,'太原','taiyuan',1),
(7,'长治','changzhi',0),
(7,'运城','yuncheng',0),
(7,'临汾','linfen',0),
(7,'晋中','jinzhong',0),
(7,'大同','datong',0),
(7,'忻州','xinzhou',0),
(7,'吕梁','lvliang',0),
(7,'朔州','shuozhou',0),
(7,'阳泉','yangquan',0),
(7,'晋城','jincheng',0),
(8,'郑州','zhengzhou',1),
(8,'洛阳','luoyang',0),
(8,'焦作','jiaozuo',0),
(8,'平顶山','pingdingshan',0),
(8,'驻马店','zhumadian',0),
(8,'新乡','xinxiang',0),
(8,'南阳','nanyang',0),
(8,'信阳','xinyang',0),
(8,'开封','kaifeng',0),
(8,'漯河','luohe',0),
(8,'安阳','anyang',0),
(8,'商丘','shangqiu',0),
(8,'周口','zhoukou',0),
(8,'许昌','xuchang',0),
(8,'濮阳','puyang',0),
(8,'三门峡','sanmenxia',0),
(8,'鹤壁','hebi',0),
(8,'济源','jiyuan',0),
(9,'长春','changchun',1),
(9,'吉林','jilin',0),
(9,'四平','siping',0),
(9,'白山','baishan',0),
(9,'白城','baicheng',0),
(9,'延边','yanbian',0),
(9,'通化','tonghua',0),
(9,'松原','songyuan',0),
(9,'辽源','liaoyuan',0),
(10,'哈尔滨','haerbin',1),
(10,'大庆','daqing',0),
(10,'齐齐哈尔','qiqihaer',0),
(10,'佳木斯','jiamusi',0),
(10,'鸡西','jixi',0),
(10,'双鸭山','shuangyashan',0),
(10,'鹤岗','hegang',0),
(10,'牡丹江','mudanjiang',0),
(10,'绥化','suihua',0),
(10,'七台河','qitaihe',0),
(10,'伊春','yichun',0),
(10,'黑河','heihe',0),
(11,'呼和浩特','huhehaote',1),
(11,'包头','baotou',0),
(11,'呼伦贝尔','hulunbeier',0),
(11,'鄂尔多斯','eerduosi',0),
(11,'赤峰','chifeng',0),
(11,'通辽','tongliao',0),
(11,'巴彦淖尔','bayannaoer',0),
(11,'兴安','xingan',0),
(11,'乌海','wuhai',0),
(11,'乌兰察布','wulanchabu',0),
(11,'锡林郭勒','xilinguole',0),
(11,'阿拉善','alashan',0),
(12,'南京','nanjing',1),
(12,'苏州','suzhou',0),
(12,'无锡','wuxi',0),
(12,'徐州','xuzhou',0),
(12,'常州','changzhou',0),
(12,'淮安','huaian',0),
(12,'扬州','yangzhou',0),
(12,'南通','nantong',0),
(12,'盐城','yancheng',0),
(12,'连云港','lianyungang',0),
(12,'宿迁','suqian',0),
(12,'泰州','taizhou',0),
(12,'镇江','zhenjiang',0),
(13,'济南','jinan',1),
(13,'青岛','qingdao',0),
(13,'淄博','zibo',0),
(13,'潍坊','weifang',0),
(13,'烟台','yantai',0),
(13,'临沂','linyi',0),
(13,'济宁','jining',0),
(13,'滨州','binzhou',0),
(13,'德州','dezhou',0),
(13,'东营','dongying',0),
(13,'枣庄','zaozhuang',0),
(13,'聊城','liaocheng',0),
(13,'泰安','taian',0),
(13,'日照','rizhao',0),
(13,'菏泽','heze',0),
(13,'威海','weihai',0),
(13,'莱芜','laiwu',0),
(14,'合肥','hefei',1),
(14,'芜湖','wuhu',0),
(14,'淮南','huainan',0),
(14,'蚌埠','bengbu',0),
(14,'阜阳','fuyang',0),
(14,'安庆','anqing',0),
(14,'巢湖','chaohu',0),
(14,'滁州','chuzhou',0),
(14,'六安','liuan',0),
(14,'铜陵','tongling',0),
(14,'淮北','huaibei',0),
(14,'宣城','xuancheng',0),
(14,'黄山','huangshan',0),
(14,'宿州','suzhou',0),
(14,'亳州','bozhou',0),
(14,'马鞍山','maanshan',0),
(14,'池州','chizhou',0),
(15,'杭州','hangzhou',1),
(15,'宁波','ningbo',0),
(15,'嘉兴','jiaxing',0),
(15,'温州','wenzhou',0),
(15,'金华','jinhua',0),
(15,'台州','taizhou',0),
(15,'绍兴','shaoxing',0),
(15,'湖州','huzhou',0),
(15,'衢州','quzhou',0),
(15,'丽水','lishui',0),
(15,'舟山','zhoushan',0),
(16,'福州','fuzhou',1),
(16,'厦门','xiamen',0),
(16,'泉州','quanzhou',0),
(16,'莆田','putian',0),
(16,'漳州','zhangzhou',0),
(16,'龙岩','longyan',0),
(16,'三明','sanming',0),
(16,'南平','nanping',0),
(16,'宁德','ningde',0),
(17,'长沙','changsha',1),
(17,'株洲','zhuzhou',0),
(17,'衡阳','hengyang',0),
(17,'岳阳','yueyang',0),
(17,'湘潭','xiangtan',0),
(17,'常德','changde',0),
(17,'益阳','yiyang',0),
(17,'永州','yongzhou',0),
(17,'娄底','loudi',0),
(17,'邵阳','shaoyang',0),
(17,'怀化','huaihua',0),
(17,'郴州','chenzhou',0),
(17,'湘西','xiangxi',0),
(17,'张家界','zhangjiajie',0),
(18,'广州','guangzhou',1),
(18,'深圳','shenzhen',0),
(18,'东莞','dongguan',0),
(18,'珠海','zhuhai',0),
(18,'中山','zhongshan',0),
(18,'佛山','foshan',0),
(18,'惠州','huizhou',0),
(18,'江门','jiangmen',0),
(18,'汕头','shantou',0),
(18,'清远','qingyuan',0),
(18,'肇庆','zhaoqing',0),
(18,'阳江','yangjiang',0),
(18,'茂名','maoming',0),
(18,'湛江','zhanjiang',0),
(18,'梅州','meizhou',0),
(18,'揭阳','jieyang',0),
(18,'河源','heyuan',0),
(18,'汕尾','shanwei',0),
(18,'云浮','yunfu',0),
(18,'潮州','chaozhou',0),
(18,'韶关','shaoguan',0),
(19,'南宁','nanning',1),
(19,'柳州','liuzhou',0),
(19,'桂林','guilin',0),
(19,'玉林','yulin',0),
(19,'贵港','guigang',0),
(19,'北海','beihai',0),
(19,'河池','hechi',0),
(19,'百色','baise',0),
(19,'梧州','wuzhou',0),
(19,'贺州','hezhou',0),
(19,'钦州','qinzhou',0),
(19,'防城港','fangchenggang',0),
(19,'来宾','laibin',0),
(19,'崇左','chongzuo',0),
(20,'南昌','nanchang',1),
(20,'赣州','ganzhou',0),
(20,'九江','jiujiang',0),
(20,'吉安','jian',0),
(20,'上饶','shangrao',0),
(20,'萍乡','pingxiang',0),
(20,'鹰潭','yingtan',0),
(20,'宜春','yichun',0),
(20,'景德镇','jingdezhen',0),
(20,'抚州','fuzhou',0),
(20,'新余','xinyu',0),
(21,'贵阳','guiyang',1),
(21,'遵义','zunyi',0),
(21,'黔东南','qiandongnan',0),
(21,'安顺','anshun',0),
(21,'黔南','qiannan',0),
(21,'毕节','bijie',0),
(21,'铜仁','tongren',0),
(21,'六盘水','liupanshui',0),
(21,'黔西南','qianxinan',0),
(22,'昆明','kunming',1),
(22,'红河','honghe',0),
(22,'文山','wenshan',0),
(22,'曲靖','qujing',0),
(22,'玉溪','yuxi',0),
(22,'丽江','lijiang',0),
(22,'大理','dali',0),
(22,'楚雄','chuxiong',0),
(22,'保山','baoshan',0),
(22,'昭通','zhaotong',0),
(22,'德宏','dehong',0),
(22,'临沧','lincang',0),
(22,'西双版纳','xishuangbanna',0),
(22,'普洱','puer',0),
(22,'怒江','nujiang',0),
(22,'迪庆','diqing',0),
(23,'拉萨','lasa',1),
(23,'林芝','linzhi',0),
(23,'日喀则','rikaze',0),
(23,'山南','shannan',0),
(23,'那曲','naqu',0),
(23,'阿里','ali',0),
(23,'昌都','changdu',0),
(24,'海口','haikou',1),
(24,'三亚','sanya',0),
(24,'儋州','danzhou',0),
(24,'琼海','qionghai',0),
(24,'五指山','wuzhishan',0),
(24,'文昌','wenchang',0),
(24,'万宁','wanning',0),
(24,'东方','dongfang',0),
(25,'兰州','lanzhou',1),
(25,'张掖','zhangye',0),
(25,'天水','tianshui',0),
(25,'庆阳','qingyang',0),
(25,'平凉','pingliang',0),
(25,'酒泉','jiuquan',0),
(25,'白银','baiyin',0),
(25,'武威','wuwei',0),
(25,'金昌','jinchang',0),
(25,'陇南','longnan',0),
(25,'嘉峪关','jiayuguan',0),
(25,'临夏','linxia',0),
(25,'定西','dingxi',0),
(25,'甘南','gannan',0),
(26,'银川','yinchuan',1),
(26,'石嘴山','shizuishan',0),
(26,'固原','guyuan',0),
(26,'吴忠','wuzhong',0),
(26,'中卫','zhongwei',0),
(27,'西宁','xining',1),
(27,'海南','hainan',0),
(27,'海西','haixi',0),
(27,'玉树','yushu',0),
(27,'海东','haidong',0),
(27,'海北','haibei',0),
(27,'黄南','huangnan',0),
(27,'果洛','guoluo',0),
(28,'乌鲁木齐','wulumuqi',1),
(28,'伊犁','yili',0),
(28,'阿克苏','akesu',0),
(28,'喀什','kashi',0),
(28,'石河子','shihezi',0),
(28,'巴音郭楞','bayinguoleng',0),
(28,'昌吉','changji',0),
(28,'哈密','hami',0),
(28,'博尔塔拉','boertala',0),
(28,'克拉玛依','kelamayi',0),
(28,'阿勒泰','aletai',0),
(28,'塔城','tacheng',0),
(28,'吐鲁番','tulufan',0),
(28,'和田','hetian',0);

insert into `area`(`id`,`city_id`,`name`,`slug`) values
(1,1,'海淀','haidian'),
(2,1,'朝阳','chaoyang'),
(3,1,'东城','dongcheng'),
(4,1,'西城','xicheng'),
(5,1,'崇文','chongwen'),
(6,1,'宣武','xuanwu'),
(7,1,'丰台','fengtai'),
(8,1,'石景山','shijingshan'),
(9,1,'房山','fangshan'),
(10,1,'大兴','daxing'),
(11,1,'通州','tongzhou'),
(12,1,'顺义','shunyi'),
(13,1,'昌平','changping'),
(14,1,'密云','miyun'),
(15,1,'怀柔','huairou'),
(16,1,'延庆','yanqing'),
(17,1,'平谷','pinggu'),
(18,1,'门头沟','mentougou'),
(21,2,'黄浦','huangpu'),
(22,2,'静安','jingan'),
(23,2,'卢湾','luwan'),
(24,2,'徐汇','xuhui'),
(25,2,'长宁','changning'),
(26,2,'闸北','zhabei'),
(27,2,'普陀','putuo'),
(28,2,'虹口','hongkou'),
(29,2,'杨浦','yangpu'),
(30,2,'浦东','pudong'),
(31,2,'闵行','minxing'),
(32,2,'松江','songjiang'),
(33,2,'宝山','baoshan'),
(34,2,'嘉定','jiading'),
(35,2,'青浦','qingpu'),
(36,2,'奉贤','fengxian'),
(37,2,'南汇','nanhui'),
(38,2,'金山','jinshan'),
(39,2,'崇明','chongming');

insert into `area`(`city_id`,`name`,`slug`) values
(3,'和平','heping'),
(3,'河东','hedong'),
(3,'河西','hexi'),
(3,'南开','nankai'),
(3,'河北','hebei'),
(3,'红桥','hongqiao'),
(3,'塘沽','tanggu'),
(3,'汉沽','hangu'),
(3,'大港','dagang'),
(3,'东丽','dongli'),
(3,'西青','xiqing'),
(3,'北辰','beichen'),
(3,'津南','jinnan'),
(3,'武清','wuqing'),
(3,'宝坻','baodi'),
(3,'静海','jinghai'),
(3,'宁河','ninghe'),
(3,'蓟县','jixian'),
(3,'开发区','kaifaqu'),
(4,'万州','wanzhou'),
(4,'涪陵','fuling'),
(4,'渝中','yuzhong'),
(4,'大渡口','dadukou'),
(4,'江北','jiangbei'),
(4,'沙坪坝','shapingba'),
(4,'九龙坡','jiulongpo'),
(4,'南岸','nanan'),
(4,'北碚','beibei'),
(4,'万盛','wansheng'),
(4,'双桥','shuangqiao'),
(4,'渝北','yubei'),
(4,'巴南','banan'),
(4,'黔江','qianjiang'),
(4,'长寿','changshou'),
(4,'江津','jiangjin'),
(4,'合川','hechuan'),
(4,'永川','yongchuan'),
(4,'南川','nanchuan'),
(4,'綦江','qijiang'),
(4,'潼南','tongnan'),
(4,'铜梁','tongliang'),
(4,'开县','kaixian'),
(4,'大足','dazu'),
(4,'荣昌','rongchang'),
(4,'璧山','bishan'),
(4,'梁平','liangping'),
(4,'城口','chengkou'),
(4,'丰都','fengdu'),
(4,'垫江','dianjiang'),
(4,'武隆','wulong'),
(4,'忠县','zhongxian'),
(4,'云阳','yunyang'),
(4,'奉节','fengjie'),
(4,'巫山','wushan'),
(4,'巫溪','wuxi'),
(4,'石柱','shizhu'),
(4,'秀山','xiushan'),
(4,'酉阳','youyang'),
(4,'彭水','pengshui');


insert into `location`(`area_id`,`name`) values
(1, '清河'),
(1, '上地'),
(1, '马连洼'),
(1, '西二旗'),
(1, '西三旗'),
(1, '中关村'),
(1, '五道口'),
(1, '二里庄'),
(1, '万柳'),
(1, '万泉河'),
(1, '世纪城'),
(1, '四季青'),
(1, '学院路'),
(1, '知春路'),
(1, '双榆树'),
(1, '蓟门桥'),
(1, '北太平庄'),
(1, '牡丹园'),
(1, '魏公村'),
(1, '皂君庙'),
(1, '紫竹桥'),
(1, '航天桥'),
(1, '甘家口'),
(1, '定慧寺'),
(1, '永定路'),
(1, '五棵松'),
(1, '公主坟'),
(1, '军博'),
(1, '西北旺'),
(1, '西苑'),
(1, '香山'),
(1, '苏州街'),
(1, '人民大学'),
(1, '万寿寺'),
(1, '白石桥'),
(1, '花园桥'),
(1, '田村'),
(1, '万寿路'),
(1, '北京大学'),
(1, '大钟寺'),
(1, '苏州桥'),
(1, '清华大学'),
(1, '八里庄'),
(2, 'CBD'),
(2, '安贞'),
(2, '百子湾'),
(2, '北沙滩'),
(2, '北苑'),
(2, '常营'),
(2, '朝阳公园'),
(2, '大山子'),
(2, '定福庄'),
(2, '东坝'),
(2, '东大桥'),
(2, '豆各庄'),
(2, '垡头'),
(2, '高碑店'),
(2, '工体'),
(2, '管庄'),
(2, '国贸'),
(2, '国展'),
(2, '红庙'),
(2, '花家地'),
(2, '劲松'),
(2, '酒仙桥'),
(2, '来广营'),
(2, '柳芳'),
(2, '潘家园'),
(2, '三元桥'),
(2, '芍药居'),
(2, '十八里店'),
(2, '十里堡'),
(2, '石佛营'),
(2, '双井'),
(2, '团结湖'),
(2, '望京'),
(2, '西坝河'),
(2, '小红门'),
(2, '亚运村'),
(2, '燕莎'),
(2, '左家庄'),
(2, '小营'),
(2, '奥运村'),
(2, '呼家楼'),
(2, '三里屯'),
(2, '太阳宫'),
(2, '四惠'),
(2, '朝青板块'),
(2, '大屯'),
(2, '水碓子'),
(2, '和平街'),
(2, '小关'),
(2, '首都机场'),
(2, '甜水园'),
(2, '朝外大街'),
(2, '建外大街'),
(3, '和平里'),
(3, '安定门'),
(3, '雍和宫'),
(3, '北新桥'),
(3, '东直门'),
(3, '东四十条'),
(3, '交道口'),
(3, '灯市口'),
(3, '东四'),
(3, '东单'),
(3, '建国门'),
(3, '海运仓'),
(3, '景山'),
(3, '沙滩'),
(3, '朝阳门'),
(4, '西直门'),
(4, '新街口'),
(4, '积水潭'),
(4, '德胜门'),
(4, '什刹海'),
(4, '六铺炕'),
(4, '车公庄'),
(4, '官园'),
(4, '阜成门'),
(4, '三里河'),
(4, '月坛'),
(4, '南礼士路'),
(4, '复兴门'),
(4, '金融街'),
(4, '西单'),
(4, '西便门'),
(4, '小西天'),
(4, '百万庄'),
(4, '木樨地'),
(4, '西四'),
(4, '地安门'),
(4, '后海'),
(4, '马甸'),
(4, '鼓楼'),
(5, '前门'),
(5, '崇文门'),
(5, '天坛'),
(5, '龙潭湖'),
(5, '光明楼'),
(5, '广渠门'),
(5, '体育馆路'),
(5, '法华寺'),
(5, '永定门'),
(5, '磁器口'),
(6, '长椿街'),
(6, '宣武门'),
(6, '马连道'),
(6, '牛街'),
(6, '虎坊桥'),
(6, '南菜园'),
(6, '右安门'),
(6, '和平门'),
(6, '红莲'),
(6, '广安门'),
(6, '菜市口'),
(6, '白纸坊'),
(6, '陶然亭'),
(6, '天宁寺'),
(6, '大栅栏'),
(6, '大观园'),
(6, '白广路'),
(6, '珠市口'),
(7, '六里桥'),
(7, '西客站'),
(7, '刘家窑'),
(7, '赵公口'),
(7, '方庄'),
(7, '左安门'),
(7, '青塔'),
(7, '岳各庄'),
(7, '草桥'),
(7, '马家堡'),
(7, '角门'),
(7, '洋桥'),
(7, '西罗园'),
(7, '木樨园'),
(7, '大红门'),
(7, '成寿寺'),
(7, '长辛店'),
(7, '卢沟桥'),
(7, '北大地'),
(7, '丰台体育馆'),
(7, '丽泽桥'),
(7, '菜户营'),
(7, '花乡'),
(7, '科技园区'),
(7, '蒲黄榆'),
(7, '宋家庄'),
(7, '丰台路'),
(7, '新发地'),
(7, '南苑'),
(7, '世界公园'),
(7, '云岗'),
(7, '嘉园'),
(7, '东高地'),
(7, '玉泉营'),
(8, '模式口'),
(8, '金顶街'),
(8, '苹果园'),
(8, '杨庄'),
(8, '古城'),
(8, '八角'),
(8, '鲁谷'),
(8, '老山'),
(8, '五里坨'),
(8, '衙门口'),
(8, '玉泉路'),
(8, '八宝山'),
(8, '八大处'),
(8, '永乐'),
(9, '房山城关'),
(9, '良乡'),
(9, '窦店'),
(9, '长阳'),
(9, '韩村河'),
(9, '阎村'),
(9, '迎风'),
(10, '黄村'),
(10, '西红门'),
(10, '旧宫'),
(10, '亦庄'),
(10, '庞各庄'),
(11, '新华大街'),
(11, '果园'),
(11, '梨园'),
(11, '临河里'),
(11, '玉桥'),
(11, '乔庄'),
(11, '九棵树'),
(11, '武夷花园'),
(11, '土桥'),
(11, '马驹桥'),
(11, '北关'),
(11, '潞城'),
(11, '通州北苑'),
(11, '运河大街'),
(12, '后沙峪'),
(12, '机场'),
(12, '胜利'),
(12, '光明'),
(12, '石园'),
(12, '仁和'),
(12, '杨镇'),
(12, '天竺'),
(12, '李桥'),
(12, '新国展'),
(12, '马坡'),
(12, '南彩'),
(13, '回龙观'),
(13, '霍营'),
(13, '小汤山'),
(13, '北七家'),
(13, '天通苑'),
(13, '立水桥'),
(13, '昌平县城'),
(13, '南口'),
(13, '阳坊'),
(13, '龙泽'),
(13, '城北'),
(13, '沙河'),
(13, '百善'),
(13, '城南'),
(14, '密云城区'),
(14, '十里堡镇'),
(14, '古北口'),
(14, '不老屯'),
(14, '溪翁庄'),
(14, '太师屯'),
(14, '新城子'),
(14, '穆家峪'),
(15, '泉河'),
(15, '庙城'),
(15, '雁栖'),
(15, '杨宋'),
(15, '北房'),
(15, '怀北'),
(15, '渤海镇'),
(15, '九渡河'),
(15, '汤河口'),
(15, '桥梓'),
(16, '延庆城区'),
(16, '康庄'),
(16, '八达岭'),
(16, '大榆树'),
(16, '永宁'),
(17, '滨河'),
(17, '兴谷'),
(17, '渔阳'),
(17, '峪口'),
(17, '金海湖'),
(17, '平谷镇'),
(17, '马昌营'),
(17, '东高村'),
(17, '镇罗店'),
(17, '王辛庄'),
(17, '刘家店'),
(17, '黄松峪'),
(17, '熊儿寨'),
(18, '大峪'),
(18, '城子街道'),
(18, '东辛房'),
(18, '龙泉'),
(18, '永定'),
(18, '军庄'),
(18, '潭柘寺'),
(18, '妙峰山'),
(18, '清水'),
(21, '南京东路'),
(21, '外滩'),
(21, '人民广场'),
(21, '豫园'),
(21, '老西门'),
(21, '董家渡'),
(21, '蓬莱公园'),
(21, '半淞园路'),
(21, '黄浦滨江'),
(22, '曹家渡'),
(22, '江宁路'),
(22, '西康路'),
(22, '新闸路'),
(22, '北京西路'),
(22, '静安寺'),
(22, '南京西路'),
(23, '淮海中路'),
(23, '新天地'),
(23, '复兴公园'),
(23, '打浦桥'),
(23, '鲁班路'),
(23, '五里桥'),
(23, '卢湾滨江'),
(24, '湖南路'),
(24, '枫林路'),
(24, '淮海西路'),
(24, '斜土路'),
(24, '徐家汇'),
(24, '肇嘉浜路'),
(24, '复兴中路'),
(24, '万体馆'),
(24, '田林'),
(24, '康健'),
(24, '漕河泾'),
(24, '上海交大'),
(24, '华东理工'),
(24, '上师大'),
(24, '漕宝路地铁'),
(24, '凌云路'),
(24, '植物园'),
(24, '龙华'),
(24, '长桥'),
(24, '华泾'),
(24, '上海南站'),
(25, '中山公园'),
(25, '江苏路地铁'),
(25, '仙霞新村'),
(25, '天山路'),
(25, '古北'),
(25, '上海影城'),
(25, '虹桥'),
(25, '镇宁路'),
(25, '北新泾'),
(25, '动物园'),
(25, '新华路'),
(25, '周家桥'),
(25, '程家桥'),
(26, '彭浦'),
(26, '汶水路'),
(26, '共和新路'),
(26, '大宁路'),
(26, '延长路'),
(26, '闸北公园'),
(26, '西藏北路'),
(26, '新客站'),
(26, '天目西路'),
(26, '老北站'),
(26, '和田'),
(26, '芷江西路'),
(27, '光新路'),
(27, '中远两湾城'),
(27, '长寿路'),
(27, '曹杨新村'),
(27, '华东师大'),
(27, '宜川路'),
(27, '真如'),
(27, '金沙江路'),
(27, '万里城'),
(27, '武宁路'),
(27, '长风新村'),
(27, '真光新村'),
(27, '长征'),
(27, '桃浦'),
(27, '石泉路'),
(27, '甘泉路'),
(28, '凉城'),
(28, '江湾'),
(28, '大柏树'),
(28, '广中路'),
(28, '曲阳路'),
(28, '鲁迅公园'),
(28, '四川北路'),
(28, '和平公园'),
(28, '四平路'),
(28, '周家嘴路'),
(28, '临平路'),
(28, '提蓝桥'),
(28, '北外滩'),
(29, '新江湾城'),
(29, '五角场'),
(29, '中原社区'),
(29, '复旦大学'),
(29, '同济大学'),
(29, '控江路'),
(29, '杨浦公园'),
(29, '长白新村'),
(29, '长阳路'),
(29, '新华医院'),
(29, '周家嘴路'),
(29, '平凉路'),
(29, '黄兴'),
(29, '鞍山'),
(29, '东外滩'),
(29, '杨浦大桥'),
(30, '外高桥'),
(30, '浦东外环'),
(30, '曹路'),
(30, '高行'),
(30, '高桥'),
(30, '陆家嘴'),
(30, '金杨新村'),
(30, '金桥'),
(30, '碧云'),
(30, '洋泾'),
(30, '源深'),
(30, '竹园'),
(30, '东昌路地铁'),
(30, '世博滨江'),
(30, '潍坊'),
(30, '花木'),
(30, '张江'),
(30, '川沙'),
(30, '唐镇'),
(30, '东方路地铁'),
(30, '梅园'),
(30, '塘桥'),
(30, '杨东'),
(30, '世纪公园'),
(30, '联洋'),
(30, '南码头'),
(30, '北蔡'),
(30, '周家渡'),
(30, '上南新村'),
(30, '上钢新村'),
(30, '六里'),
(30, '东明路'),
(30, '三林'),
(31, '航华'),
(31, '龙柏'),
(31, '七宝'),
(31, '静安新城'),
(31, '莘庄'),
(31, '古美罗阳'),
(31, '华漕'),
(31, '梅陇'),
(31, '春申'),
(31, '浦江'),
(31, '颛桥'),
(31, '马桥'),
(31, '吴泾'),
(31, '虹桥镇'),
(31, '漕宝路'),
(31, '老闵行'),
(31, '江川路'),
(32, '岳阳'),
(32, '永丰'),
(32, '方松'),
(32, '中山'),
(32, '泗泾'),
(32, '佘山'),
(32, '新桥'),
(32, '洞泾'),
(32, '九亭'),
(32, '松江工业区'),
(32, '松江科技园'),
(32, '松江老城'),
(32, '松江新城'),
(32, '松江大学城'),
(32, '莘闵'),
(33, '友谊路'),
(33, '泗塘新村'),
(33, '通河新村'),
(33, '罗泾'),
(33, '罗店'),
(33, '大场'),
(33, '杨行'),
(33, '月浦'),
(33, '淞宝'),
(33, '顾村'),
(33, '张庙'),
(33, '高境'),
(33, '庙行'),
(33, '淞南'),
(33, '大华'),
(33, '上海大学'),
(33, '共康'),
(33, '东城区'),
(33, '西城区'),
(33, '共富'),
(34, '真新新村'),
(34, '菊园新区'),
(34, '嘉定城区'),
(34, '新城'),
(34, '南翔'),
(34, '安亭'),
(34, '马陆'),
(34, '江桥'),
(34, '丰庄'),
(35, '朱家角'),
(35, '赵巷'),
(35, '徐泾'),
(35, '重固'),
(35, '青浦新城'),
(35, '白鹤'),
(35, '青浦北部'),
(36, '南桥'),
(36, '奉城'),
(36, '庄行'),
(36, '金汇'),
(36, '柘林'),
(36, '海湾'),
(36, '海湾旅游区'),
(37, '惠南'),
(37, '周浦'),
(37, '新场'),
(37, '康桥'),
(37, '航头'),
(37, '祝桥'),
(37, '泥城'),
(37, '临港新城'),
(38, '金山中部'),
(38, '石化'),
(38, '朱泾'),
(38, '枫泾'),
(38, '亭林'),
(38, '漕泾'),
(38, '金山卫'),
(38, '金山新城'),
(39, '城桥'),
(39, '堡镇'),
(39, '陈家镇');