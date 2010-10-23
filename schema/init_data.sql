-- init parent category
insert into `category`(`id`,`parent_category_id`,`name`,`slug`) values
(1,NULL,'物品交易','ershou'),
(2,NULL,'二手车买卖','cheliang'),
(3,NULL,'房屋租售','fang'),
(4,NULL,'宠物','chongwuleimu'),
(5,NULL,'招聘','gongzuo'),
(6,NULL,'兼职','jianzhi'),
(7,NULL,'求职','qiuzhi'),
(8,NULL,'交友活动','huodong'),
(9,NULL,'生活服务','fuwu');

-- init sub-category 物品交易
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
(1,'求购','qiumai');

-- init sub-category 二手车买卖
insert into `category`(`parent_category_id`,`name`,`slug`) values
(2,'二手轿车','ershouqiche'),
(2,'二手货车/面包车','ershoukache'),
(2,'二手摩托车/燃气车','ershoumotuoche'),
(2,'二手电动车','ershoudiandongche'),
(2,'二手自行车','ershouzixingche'),
(2,'车辆求购','cheliangqiugou');

-- init sub-category 房屋租售
insert into `category`(`parent_category_id`,`name`,`slug`) values
(3,'房屋出租(非合租)','zhengzu'),
(3,'房屋合租','hezu'),
(3,'二手房出售','ershoufang'),
(3,'写字楼出售','shoufang'),
(3,'写字楼出租','shangpu'),
(3,'店铺/公司转让','jingyingzhuanrang'),
(3,'家庭旅馆/日租/短租','duanzu'),
(3,'求租/求购','qiufang');

-- init sub-category 宠物
insert into `category`(`parent_category_id`,`name`,`slug`) values
(4,'宠物出售','chongwujiaoyi'),
(4,'宠物免费赠送','chongwulingyang'),
(4,'宠物用品/食品','chongwuyongpin'),
(4,'宠物服务/配种','chongwupeizhong'),
(4,'求购','chongwuqiugou');

-- init sub-category 招聘
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
(5,'其他招聘','qitazhaopin');

-- init sub-category 兼职
insert into `category`(`parent_category_id`,`name`,`slug`) values
(6,'促销/派发兼职','cuxiao'),
(6,'模特/演员/司仪兼职','mote'),
(6,'其他兼职','qitajianzhi');

-- init sub-category 求职
insert into `category`(`parent_category_id`,`name`,`slug`) values
(7,'司机求职','sijiqiuzhi'),
(7,'兼职求职','jianzhiqiuzhi'),
(7,'其他求职','qiuzhijianli');

-- init sub-category 交友活动
insert into `category`(`parent_category_id`,`name`,`slug`) values
(8,'美女','nvzhaonan'),
(8,'帅哥','nanzhaonv'),
(8,'征婚','zhenghun'),
(8,'一起运动/旅游','daqiu'),
(8,'拼车/顺风车','pinche'),
(8,'寻人/寻物','xunrenqishi');

-- init sub-category 生活服务
insert into `category`(`parent_category_id`,`name`,`slug`) values
(9,'汽车出租','gerenzuche'),
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
(9,'搬家/快递/送货','banjia'),
(9,'旅游/活动/聚会','lvxingshe'),
(9,'网页/平面设计/印刷','sheji'),
(9,'会计/翻译/律师服务','kuaijifuwu'),
(9,'公司注册/年检','daibanzhuce'),
(9,'招商加盟/代理','jiameng'),
(9,'其他服务','qitafuwu');

update category set priority  = 1;
update category set priority = 2 where id in (1061,1080,1002,1085,1003,1016,1049,1050,1083,1064,1048,1024,1034,1053,1068,1067,1033,1076,1046,1047,1017,1072,1052,1011,1045,1018,1057,1051,1009,1022,1063);
update category set priority = 3 where id in (1025,1010,1055,1005,1043,1004,1023,1054,1014,1069,1056,1073,1013,1030,1015,1012,1062,1059,1036,1037,1038,1060,1020,1008,1070,1065,1026,1039);

-- init province
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

-- init city
insert into `city`(`id`,`province_id`,`name`,`slug`,`is_capital`) values
(1,1,'北京','beijing',1),
(2,1,'上海','shanghai',1),
(3,1,'天津','tianjin',1),
(4,1,'重庆','chongqing',1),
(5,2,'沈阳','shenyang',1),
(6,2,'大连','dalian',0),
(7,2,'抚顺','fushun',0),
(8,2,'锦州','jinzhou',0),
(9,2,'鞍山','anshan',0),
(10,2,'葫芦岛','huludao',0),
(11,2,'阜新','fuxin',0),
(12,2,'营口','yingkou',0),
(13,2,'本溪','benxi',0),
(14,2,'朝阳','chaoyang',0),
(15,2,'铁岭','tieling',0),
(16,2,'辽阳','liaoyang',0),
(17,2,'盘锦','panjin',0),
(18,2,'丹东','dandong',0),
(19,3,'武汉','wuhan',1),
(20,3,'宜昌','yichang',0),
(21,3,'襄樊','xiangfan',0),
(22,3,'荆州','jingzhou',0),
(23,3,'十堰','shiyan',0),
(24,3,'黄冈','huanggang',0),
(25,3,'荆门','jingmen',0),
(26,3,'随州','suizhou',0),
(27,3,'恩施','enshi',0),
(28,3,'孝感','xiaogan',0),
(29,3,'黄石','huangshi',0),
(30,3,'鄂州','ezhou',0),
(31,3,'咸宁','xianning',0),
(32,3,'天门','tianmen',0),
(33,3,'仙桃','xiantao',0),
(34,3,'潜江','qianjiang',0),
(35,3,'神农架','shennongjia',0),
(36,4,'成都','chengdu',1),
(37,4,'绵阳','mianyang',0),
(38,4,'泸州','luzhou',0),
(39,4,'南充','nanchong',0),
(40,4,'德阳','deyang',0),
(41,4,'乐山','leshan',0),
(42,4,'达州','dazhou',0),
(43,4,'广安','guangan',0),
(44,4,'攀枝花','panzhihua',0),
(45,4,'遂宁','suining',0),
(46,4,'自贡','zigong',0),
(47,4,'内江','neijiang',0),
(48,4,'广元','guangyuan',0),
(49,4,'巴中','bazhong',0),
(50,4,'宜宾','yibin',0),
(51,4,'眉山','meishan',0),
(52,4,'资阳','ziyang',0),
(53,4,'雅安','yaan',0),
(54,4,'凉山','liangshan',0),
(55,4,'阿坝','aba',0),
(56,4,'甘孜','ganzi',0),
(57,5,'西安','xian',1),
(58,5,'宝鸡','baoji',0),
(59,5,'咸阳','xianyang',0),
(60,5,'渭南','weinan',0),
(61,5,'汉中','hanzhong',0),
(62,5,'安康','ankang',0),
(63,5,'榆林','yulin',0),
(64,5,'延安','yanan',0),
(65,5,'铜川','tongchuan',0),
(66,5,'商洛','shangluo',0),
(67,6,'石家庄','shijiazhuang',1),
(68,6,'唐山','tangshan',0),
(69,6,'保定','baoding',0),
(70,6,'沧州','cangzhou',0),
(71,6,'廊坊','langfang',0),
(72,6,'邢台','xingtai',0),
(73,6,'邯郸','handan',0),
(74,6,'秦皇岛','qinhuangdao',0),
(75,6,'衡水','hengshui',0),
(76,6,'张家口','zhangjiakou',0),
(77,6,'承德','chengde',0),
(78,7,'太原','taiyuan',1),
(79,7,'长治','changzhi',0),
(80,7,'运城','yuncheng',0),
(81,7,'临汾','linfen',0),
(82,7,'晋中','jinzhong',0),
(83,7,'大同','datong',0),
(84,7,'忻州','xinzhou',0),
(85,7,'吕梁','lvliang',0),
(86,7,'朔州','shuozhou',0),
(87,7,'阳泉','yangquan',0),
(88,7,'晋城','jincheng',0),
(89,8,'郑州','zhengzhou',1),
(90,8,'洛阳','luoyang',0),
(91,8,'焦作','jiaozuo',0),
(92,8,'平顶山','pingdingshan',0),
(93,8,'驻马店','zhumadian',0),
(94,8,'新乡','xinxiang',0),
(95,8,'南阳','nanyang',0),
(96,8,'信阳','xinyang',0),
(97,8,'开封','kaifeng',0),
(98,8,'漯河','luohe',0),
(99,8,'安阳','anyang',0),
(100,8,'商丘','shangqiu',0),
(101,8,'周口','zhoukou',0),
(102,8,'许昌','xuchang',0),
(103,8,'濮阳','puyang',0),
(104,8,'三门峡','sanmenxia',0),
(105,8,'鹤壁','hebi',0),
(106,8,'济源','jiyuan',0),
(107,9,'长春','changchun',1),
(108,9,'吉林','jilin',0),
(109,9,'四平','siping',0),
(110,9,'白山','baishan',0),
(111,9,'白城','baicheng',0),
(112,9,'延边','yanbian',0),
(113,9,'通化','tonghua',0),
(114,9,'松原','songyuan',0),
(115,9,'辽源','liaoyuan',0),
(116,10,'哈尔滨','haerbin',1),
(117,10,'大庆','daqing',0),
(118,10,'齐齐哈尔','qiqihaer',0),
(119,10,'佳木斯','jiamusi',0),
(120,10,'鸡西','jixi',0),
(121,10,'双鸭山','shuangyashan',0),
(122,10,'鹤岗','hegang',0),
(123,10,'牡丹江','mudanjiang',0),
(124,10,'绥化','suihua',0),
(125,10,'七台河','qitaihe',0),
(126,10,'伊春','yichun',0),
(127,10,'黑河','heihe',0),
(128,11,'呼和浩特','huhehaote',1),
(129,11,'包头','baotou',0),
(130,11,'呼伦贝尔','hulunbeier',0),
(131,11,'鄂尔多斯','eerduosi',0),
(132,11,'赤峰','chifeng',0),
(133,11,'通辽','tongliao',0),
(134,11,'巴彦淖尔','bayannaoer',0),
(135,11,'兴安','xingan',0),
(136,11,'乌海','wuhai',0),
(137,11,'乌兰察布','wulanchabu',0),
(138,11,'锡林郭勒','xilinguole',0),
(139,11,'阿拉善','alashan',0),
(140,12,'南京','nanjing',1),
(141,12,'苏州','suzhou',0),
(142,12,'无锡','wuxi',0),
(143,12,'徐州','xuzhou',0),
(144,12,'常州','changzhou',0),
(145,12,'淮安','huaian',0),
(146,12,'扬州','yangzhou',0),
(147,12,'南通','nantong',0),
(148,12,'盐城','yancheng',0),
(149,12,'连云港','lianyungang',0),
(150,12,'宿迁','suqian',0),
(151,12,'泰州','tz',0),
(152,12,'镇江','zhenjiang',0),
(153,13,'济南','jinan',1),
(154,13,'青岛','qingdao',0),
(155,13,'淄博','zibo',0),
(156,13,'潍坊','weifang',0),
(157,13,'烟台','yantai',0),
(158,13,'临沂','linyi',0),
(159,13,'济宁','jining',0),
(160,13,'滨州','binzhou',0),
(161,13,'德州','dezhou',0),
(162,13,'东营','dongying',0),
(163,13,'枣庄','zaozhuang',0),
(164,13,'聊城','liaocheng',0),
(165,13,'泰安','taian',0),
(166,13,'日照','rizhao',0),
(167,13,'菏泽','heze',0),
(168,13,'威海','weihai',0),
(169,13,'莱芜','laiwu',0),
(170,14,'合肥','hefei',1),
(171,14,'芜湖','wuhu',0),
(172,14,'淮南','huainan',0),
(173,14,'蚌埠','bengbu',0),
(174,14,'阜阳','fuyang',0),
(175,14,'安庆','anqing',0),
(176,14,'巢湖','chaohu',0),
(177,14,'滁州','chuzhou',0),
(178,14,'六安','liuan',0),
(179,14,'铜陵','tongling',0),
(180,14,'淮北','huaibei',0),
(181,14,'宣城','xuancheng',0),
(182,14,'黄山','huangshan',0),
(183,14,'宿州','suzhou',0),
(184,14,'亳州','bozhou',0),
(185,14,'马鞍山','maanshan',0),
(186,14,'池州','chizhou',0),
(187,15,'杭州','hangzhou',1),
(188,15,'宁波','ningbo',0),
(189,15,'嘉兴','jiaxing',0),
(190,15,'温州','wenzhou',0),
(191,15,'金华','jinhua',0),
(192,15,'台州','taizhou',0),
(193,15,'绍兴','shaoxing',0),
(194,15,'湖州','huzhou',0),
(195,15,'衢州','quzhou',0),
(196,15,'丽水','lishui',0),
(197,15,'舟山','zhoushan',0),
(198,16,'福州','fuzhou',1),
(199,16,'厦门','xiamen',0),
(200,16,'泉州','quanzhou',0),
(201,16,'莆田','putian',0),
(202,16,'漳州','zhangzhou',0),
(203,16,'龙岩','longyan',0),
(204,16,'三明','sanming',0),
(205,16,'南平','nanping',0),
(206,16,'宁德','ningde',0),
(207,17,'长沙','changsha',1),
(208,17,'株洲','zhuzhou',0),
(209,17,'衡阳','hengyang',0),
(210,17,'岳阳','yueyang',0),
(211,17,'湘潭','xiangtan',0),
(212,17,'常德','changde',0),
(213,17,'益阳','yiyang',0),
(214,17,'永州','yongzhou',0),
(215,17,'娄底','loudi',0),
(216,17,'邵阳','shaoyang',0),
(217,17,'怀化','huaihua',0),
(218,17,'郴州','chenzhou',0),
(219,17,'湘西','xiangxi',0),
(220,17,'张家界','zhangjiajie',0),
(221,18,'广州','guangzhou',1),
(222,18,'深圳','shenzhen',0),
(223,18,'东莞','dongguan',0),
(224,18,'珠海','zhuhai',0),
(225,18,'中山','zhongshan',0),
(226,18,'佛山','foshan',0),
(227,18,'惠州','huizhou',0),
(228,18,'江门','jiangmen',0),
(229,18,'汕头','shantou',0),
(230,18,'清远','qingyuan',0),
(231,18,'肇庆','zhaoqing',0),
(232,18,'阳江','yangjiang',0),
(233,18,'茂名','maoming',0),
(234,18,'湛江','zhanjiang',0),
(235,18,'梅州','meizhou',0),
(236,18,'揭阳','jieyang',0),
(237,18,'河源','heyuan',0),
(238,18,'汕尾','shanwei',0),
(239,18,'云浮','yunfu',0),
(240,18,'潮州','chaozhou',0),
(241,18,'韶关','shaoguan',0),
(242,19,'南宁','nanning',1),
(243,19,'柳州','liuzhou',0),
(244,19,'桂林','guilin',0),
(245,19,'玉林','yulin',0),
(246,19,'贵港','guigang',0),
(247,19,'北海','beihai',0),
(248,19,'河池','hechi',0),
(249,19,'百色','baise',0),
(250,19,'梧州','wuzhou',0),
(251,19,'贺州','hezhou',0),
(252,19,'钦州','qinzhou',0),
(253,19,'防城港','fangchenggang',0),
(254,19,'来宾','laibin',0),
(255,19,'崇左','chongzuo',0),
(256,20,'南昌','nanchang',1),
(257,20,'赣州','ganzhou',0),
(258,20,'九江','jiujiang',0),
(259,20,'吉安','jian',0),
(260,20,'上饶','shangrao',0),
(261,20,'萍乡','pingxiang',0),
(262,20,'鹰潭','yingtan',0),
(263,20,'宜春','yichun',0),
(264,20,'景德镇','jingdezhen',0),
(265,20,'抚州','fuzhou',0),
(266,20,'新余','xinyu',0),
(267,21,'贵阳','guiyang',1),
(268,21,'遵义','zunyi',0),
(269,21,'黔东南','qiandongnan',0),
(270,21,'安顺','anshun',0),
(271,21,'黔南','qiannan',0),
(272,21,'毕节','bijie',0),
(273,21,'铜仁','tongren',0),
(274,21,'六盘水','liupanshui',0),
(275,21,'黔西南','qianxinan',0),
(276,22,'昆明','kunming',1),
(277,22,'红河','honghe',0),
(278,22,'文山','wenshan',0),
(279,22,'曲靖','qujing',0),
(280,22,'玉溪','yuxi',0),
(281,22,'丽江','lijiang',0),
(282,22,'大理','dali',0),
(283,22,'楚雄','chuxiong',0),
(284,22,'保山','baoshan',0),
(285,22,'昭通','zhaotong',0),
(286,22,'德宏','dehong',0),
(287,22,'临沧','lincang',0),
(288,22,'西双版纳','xishuangbanna',0),
(289,22,'普洱','puer',0),
(290,22,'怒江','nujiang',0),
(291,22,'迪庆','diqing',0),
(292,23,'拉萨','lasa',1),
(293,23,'林芝','linzhi',0),
(294,23,'日喀则','rikaze',0),
(295,23,'山南','shannan',0),
(296,23,'那曲','naqu',0),
(297,23,'阿里','ali',0),
(298,23,'昌都','changdu',0),
(299,24,'海口','haikou',1),
(300,24,'三亚','sanya',0),
(301,24,'儋州','danzhou',0),
(302,24,'琼海','qionghai',0),
(303,24,'五指山','wuzhishan',0),
(304,24,'文昌','wenchang',0),
(305,24,'万宁','wanning',0),
(306,24,'东方','dongfang',0),
(307,25,'兰州','lanzhou',1),
(308,25,'张掖','zhangye',0),
(309,25,'天水','tianshui',0),
(310,25,'庆阳','qingyang',0),
(311,25,'平凉','pingliang',0),
(312,25,'酒泉','jiuquan',0),
(313,25,'白银','baiyin',0),
(314,25,'武威','wuwei',0),
(315,25,'金昌','jinchang',0),
(316,25,'陇南','longnan',0),
(317,25,'嘉峪关','jiayuguan',0),
(318,25,'临夏','linxia',0),
(319,25,'定西','dingxi',0),
(320,25,'甘南','gannan',0),
(321,26,'银川','yinchuan',1),
(322,26,'石嘴山','shizuishan',0),
(323,26,'固原','guyuan',0),
(324,26,'吴忠','wuzhong',0),
(325,26,'中卫','zhongwei',0),
(326,27,'西宁','xining',1),
(327,27,'海南','hainan',0),
(328,27,'海西','haixi',0),
(329,27,'玉树','yushu',0),
(330,27,'海东','haidong',0),
(331,27,'海北','haibei',0),
(332,27,'黄南','huangnan',0),
(333,27,'果洛','guoluo',0),
(334,28,'乌鲁木齐','wulumuqi',1),
(335,28,'伊犁','yili',0),
(336,28,'阿克苏','akesu',0),
(337,28,'喀什','kashi',0),
(338,28,'石河子','shihezi',0),
(339,28,'巴音郭楞','bayinguoleng',0),
(340,28,'昌吉','changji',0),
(341,28,'哈密','hami',0),
(342,28,'博尔塔拉','boertala',0),
(343,28,'克拉玛依','kelamayi',0),
(344,28,'阿勒泰','aletai',0),
(345,28,'塔城','tacheng',0),
(346,28,'吐鲁番','tulufan',0),
(347,28,'和田','hetian',0);

-- init area 北京
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
(18,1,'门头沟','mentougou');

-- init area 上海
insert into `area`(`id`,`city_id`,`name`,`slug`) values
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

-- init area 天津
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
(3,'开发区','kaifaqu');

-- init area 重庆
insert into `area`(`city_id`,`name`,`slug`) values
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

-- init area 沈阳
insert into `area`(`city_id`,`name`,`slug`) values
(5,'和平区','hepingqu'),
(5,'沈河区','shenhequ'),
(5,'大东区','dadongqu'),
(5,'皇姑区','huangguqu'),
(5,'铁西区','tiexiqu'),
(5,'苏家屯区','sujiatunqu'),
(5,'东陵区','donglingqu'),
(5,'沈北新区','shenbeixinqu'),
(5,'于洪区','yuhongqu'),
(5,'辽中县','liaozhongxian'),
(5,'康平县','kangpingxian'),
(5,'法库县','fakuxian'),
(5,'新民市','xinminshi'),
(5,'浑南新区','hunnanxinqu'),
(5,'新城子','xinchengzi');

-- init area 大连
insert into `area`(`city_id`,`name`,`slug`) values
(6,'中山','zhongshan'),
(6,'西岗','xigang'),
(6,'沙河口','shahekou'),
(6,'甘井子','ganjingzi'),
(6,'旅顺口','lvshunkou'),
(6,'金州','jinzhou'),
(6,'开发区','kaifaqu'),
(6,'高新园区','gaoxinyuanqu'),
(6,'保税区','baoshuiqu'),
(6,'长兴岛','changxingdao'),
(6,'花园口','huayuankou'),
(6,'瓦房店','wafangdian'),
(6,'普兰店','pulandian'),
(6,'庄河','zhuanghe'),
(6,'长海','changhai');

-- init area 抚顺
insert into `area`(`city_id`,`name`,`slug`) values
(7,'新抚','xinfu'),
(7,'东洲','dongzhou'),
(7,'望花','wanghua'),
(7,'顺城','shuncheng'),
(7,'抚顺县','fushunxian'),
(7,'新宾','xinbin'),
(7,'清原','qingyuan');

-- init area 锦州
insert into `area`(`city_id`,`name`,`slug`) values
(8,'古塔','guta'),
(8,'凌河','linghe'),
(8,'太和','taihe'),
(8,'黑山','heishan'),
(8,'义县','yixian'),
(8,'凌海','linghai'),
(8,'北宁','beining');

-- init area 鞍山
insert into `area`(`city_id`,`name`,`slug`) values
(9,'铁东','tiedong'),
(9,'铁西','tiexi'),
(9,'立山','lishan'),
(9,'千山','qianshan'),
(9,'台安','taian'),
(9,'岫岩','xiuyan'),
(9,'海城','haicheng');

-- init area 葫芦岛
insert into `area`(`city_id`,`name`,`slug`) values
(10,'连山','lianshan'),
(10,'龙港','longgang'),
(10,'南票','nanpiao'),
(10,'绥中','suizhong'),
(10,'建昌','jianchang'),
(10,'兴城','xingcheng');

-- init area 阜新
insert into `area`(`city_id`,`name`,`slug`) values
(11,'海州','haizhou'),
(11,'新邱','xinqiu'),
(11,'太平','taiping'),
(11,'清河门','qinghemen'),
(11,'细河','xihe'),
(11,'阜新县','fuxinxian'),
(11,'彰武','zhangwu');

-- init area 营口
insert into `area`(`city_id`,`name`,`slug`) values
(12,'站前','zhanqian'),
(12,'西市','xishi'),
(12,'鲅鱼圈','bayuquan'),
(12,'老边','laobian'),
(12,'盖州','gaizhou'),
(12,'大石桥','dashiqiao');

-- init area 本溪
-- init area 朝阳
-- init area 铁岭
-- init area 辽阳
-- init area 盘锦
-- init area 丹东

-- init area 武汉
insert into `area`(`city_id`,`name`,`slug`) values
(19,'江汉','jianghan'),
(19,'江岸','jiangan'),
(19,'硚口','qiaokou'),
(19,'青山','qingshan'),
(19,'武昌','wuchang'),
(19,'洪山','hongshan'),
(19,'汉阳','hanyang'),
(19,'东西湖','dongxihu'),
(19,'江夏','jiangxia'),
(19,'新洲','xinzhou'),
(19,'黄陂','huangpi'),
(19,'蔡甸','caidian'),
(19,'汉南','hannan');

-- init area 宜昌
insert into `area`(`city_id`,`name`,`slug`) values
(20,'葛洲坝','gezhouba'),
(20,'三峡坝区','sanxiabaqu'),
(20,'西陵区','xilingqu'),
(20,'伍家岗区','wujiagangqu'),
(20,'点军区','dianjunqu'),
(20,'猇亭区','xiaotingqu'),
(20,'夷陵区','yilingqu'),
(20,'秭归县','ziguixian'),
(20,'当阳市','dangyangshi'),
(20,'枝江市','zhijiangshi'),
(20,'远安县','yuananxian'),
(20,'长阳县','changyangxian'),
(20,'宜都市','yidushi'),
(20,'兴山区','xingshanqu'),
(20,'五峰县','wufengxian');

-- init area 襄樊
-- init area 荆州
-- init area 十堰
-- init area 黄冈
-- init area 荆门
-- init area 随州
-- init area 恩施
-- init area 孝感
-- init area 黄石
-- init area 鄂州
-- init area 咸宁
-- init area 天门
-- init area 仙桃
-- init area 潜江
-- init area 神农架

-- init area 成都
insert into `area`(`city_id`,`name`,`slug`) values
(36,'青羊区','qingyangqu'),
(36,'锦江区','jinjiangqu'),
(36,'金牛区','jinniuqu'),
(36,'武侯区','wuhouqu'),
(36,'成华区','chenghuaqu'),
(36,'龙泉驿区','longquanyiqu'),
(36,'青白江区','qingbaijiangqu'),
(36,'新都区','xinduqu'),
(36,'温江区','wenjiangqu'),
(36,'都江堰','dujiangyan'),
(36,'大邑县','dayixian'),
(36,'彭州市','pengzhoushi'),
(36,'蒲江县','pujiangxian'),
(36,'双流县','shuangliuxian'),
(36,'新津县','xinjinxian'),
(36,'崇州市','chongzhoushi'),
(36,'金堂县','jintangxian'),
(36,'郫县','pixian'),
(36,'邛崃市','qionglaishi'),
(36,'高新区','gaoxinqu');

-- init area 绵阳
insert into `area`(`city_id`,`name`,`slug`) values
(37,'北川','beichuan'),
(37,'安县','anxian'),
(37,'平武','pingwu'),
(37,'涪城','fucheng'),
(37,'高新区','gaoxinqu'),
(37,'游仙','youxian'),
(37,'科学城','kexuecheng'),
(37,'江油','jiangyou'),
(37,'盐亭','yanting'),
(37,'三台','santai'),
(37,'梓潼','zitong');

-- init area 泸州
-- init area 南充
-- init area 德阳
-- init area 乐山
-- init area 达州
-- init area 广安
-- init area 攀枝花
-- init area 遂宁
-- init area 自贡
-- init area 内江
-- init area 广元
-- init area 巴中
-- init area 宜宾
-- init area 眉山
-- init area 资阳
-- init area 雅安
-- init area 凉山
-- init area 阿坝
-- init area 甘孜

-- init area 西安
insert into `area`(`city_id`,`name`,`slug`) values
(57,'莲湖','lianhu'),
(57,'新城','xincheng'),
(57,'碑林','beilin'),
(57,'雁塔','yanta'),
(57,'高新','gaoxin'),
(57,'长安','changan'),
(57,'灞桥','baqiao'),
(57,'未央','weiyang'),
(57,'阎良','yanliang'),
(57,'临潼','lintong'),
(57,'户县','huxian'),
(57,'高陵','gaoling'),
(57,'周至','zhouzhi'),
(57,'蓝田','lantian');

-- init area 宝鸡
-- init area 咸阳
-- init area 渭南
-- init area 汉中
-- init area 安康
-- init area 榆林
-- init area 延安
-- init area 铜川
-- init area 商洛

-- init area 石家庄
insert into `area`(`city_id`,`name`,`slug`) values
(67,'长安','changan'),
(67,'桥东','qiaodong'),
(67,'桥西','qiaoxi'),
(67,'新华','xinhua'),
(67,'裕华','yuhua'),
(67,'井陉矿区','jingxingkuangqu'),
(67,'辛集市','xinjishi'),
(67,'藁城市','gaochengshi'),
(67,'晋州市','jinzhoushi'),
(67,'新乐市','xinleshi'),
(67,'鹿泉市','luquanshi'),
(67,'井陉县','jingxingxian'),
(67,'正定县','zhengdingxian'),
(67,'栾城县','luanchengxian'),
(67,'行唐县','xingtangxian'),
(67,'灵寿县','lingshouxian'),
(67,'高邑县','gaoyixian'),
(67,'深泽县','shenzexian'),
(67,'赞皇县','zanhuangxian'),
(67,'无极县','wujixian'),
(67,'平山县','pingshanxian'),
(67,'元氏县','yuanshixian'),
(67,'赵县','zhaoxian'),
(67,'开发区','kaifaqu');

-- init area 唐山
insert into `area`(`city_id`,`name`,`slug`) values
(68,'路北区','lubeiqu'),
(68,'路南区','lunanqu'),
(68,'古冶区','guyequ'),
(68,'开平区','kaipingqu'),
(68,'丰南区','fengnanqu'),
(68,'丰润区','fengrunqu'),
(68,'遵化市','zunhuashi'),
(68,'滦县','luanxian'),
(68,'滦南县','luannanxian'),
(68,'乐亭县','letingxian'),
(68,'迁西县','qianxixian'),
(68,'玉田县','yutianxian'),
(68,'唐海县','tanghaixian'),
(68,'迁安','qianan');

-- init area 保定
insert into `area`(`city_id`,`name`,`slug`) values
(69,'新市','xinshi'),
(69,'北市','beishi'),
(69,'南市','nanshi'),
(69,'满城','mancheng'),
(69,'清苑','qingyuan'),
(69,'涞水','laishui'),
(69,'阜平','fuping'),
(69,'徐水','xushui'),
(69,'定兴','dingxing'),
(69,'唐县','tangxian'),
(69,'高阳','gaoyang'),
(69,'容城','rongcheng'),
(69,'涞源','laiyuan'),
(69,'望都','wangdu'),
(69,'安新','anxin'),
(69,'易县','yixian'),
(69,'曲阳','quyang'),
(69,'蠡县','lixian'),
(69,'顺平','shunping'),
(69,'博野','boye'),
(69,'雄县','xiongxian'),
(69,'涿州','zhuozhou'),
(69,'定州','dingzhou'),
(69,'安国','anguo'),
(69,'高碑店','gaobeidian');

-- init area 沧州
insert into `area`(`city_id`,`name`,`slug`) values
(70,'运河区','yunhequ'),
(70,'新华区','xinhuaqu'),
(70,'渤海新区','bohaixinqu'),
(70,'泊头','botou'),
(70,'任丘','renqiu'),
(70,'黄骅','huanghua'),
(70,'河间','hejian'),
(70,'沧县','cangxian'),
(70,'青县','qingxian'),
(70,'东光县','dongguangxian'),
(70,'海兴县','haixingxian'),
(70,'盐山县','yanshanxian'),
(70,'肃宁县','suningxian'),
(70,'南皮县','nanpixian'),
(70,'吴桥县','wuqiaoxian'),
(70,'献县','xianxian'),
(70,'孟村','mengcun');

-- init area 廊坊
insert into `area`(`city_id`,`name`,`slug`) values
(71,'安次','anci'),
(71,'广阳','guangyang'),
(71,'固安','guan'),
(71,'永清','yongqing'),
(71,'香河','xianghe'),
(71,'大城','dacheng'),
(71,'文安','wenan'),
(71,'大厂','dachang'),
(71,'霸州','bazhou'),
(71,'三河','sanhe');

-- init area 邢台
insert into `area`(`city_id`,`name`,`slug`) values
(72,'桥东','qiaodong'),
(72,'桥西','qiaoxi'),
(72,'邢台县','xingtaixian'),
(72,'临城','lincheng'),
(72,'内丘','neiqiu'),
(72,'柏乡','baixiang'),
(72,'隆尧','longyao'),
(72,'任县','renxian'),
(72,'南和','nanhe'),
(72,'宁晋','ningjin'),
(72,'巨鹿','julu'),
(72,'新河','xinhe'),
(72,'广宗','guangzong'),
(72,'平乡','pingxiang'),
(72,'威县','weixian'),
(72,'清河','qinghe'),
(72,'临西','linxi'),
(72,'南宫','nangong'),
(72,'沙河','shahe');

-- init area 邯郸
insert into `area`(`city_id`,`name`,`slug`) values
(73,'邯山','hanshan'),
(73,'丛台','congtai'),
(73,'复兴','fuxing'),
(73,'峰峰矿','fengfengkuang'),
(73,'邯郸县','handanxian'),
(73,'临漳','linzhang'),
(73,'成安','chengan'),
(73,'大名','daming'),
(73,'涉县','shexian'),
(73,'磁县','cixian'),
(73,'肥乡','feixiang'),
(73,'永年','yongnian'),
(73,'邱县','qiuxian'),
(73,'鸡泽','jize'),
(73,'广平','guangping'),
(73,'馆陶','guantao'),
(73,'魏县','weixian'),
(73,'曲周','quzhou'),
(73,'武安','wuan');

-- init area 秦皇岛
insert into `area`(`city_id`,`name`,`slug`) values
(74,'海港','haigang'),
(74,'山海关','shanhaiguan'),
(74,'北戴河','beidaihe'),
(74,'青龙','qinglong'),
(74,'昌黎','changli'),
(74,'抚宁','funing'),
(74,'卢龙','lulong');

-- init area 衡水
insert into `area`(`city_id`,`name`,`slug`) values
(75,'桃城','taocheng'),
(75,'枣强','zaoqiang'),
(75,'武邑','wuyi'),
(75,'武强','wuqiang'),
(75,'饶阳','raoyang'),
(75,'安平','anping'),
(75,'故城','gucheng'),
(75,'景县','jingxian'),
(75,'阜城','fucheng'),
(75,'冀州','jizhou'),
(75,'深州','shenzhou');

-- init area 张家口
-- init area 承德

-- init area 太原
insert into `area`(`city_id`,`name`,`slug`) values
(78,'杏花岭','xinghualing'),
(78,'小店','xiaodian'),
(78,'迎泽','yingze'),
(78,'尖草坪','jiancaoping'),
(78,'万柏林','wanbailin'),
(78,'晋源','jinyuan'),
(78,'古交','gujiao'),
(78,'清徐县','qingxuxian'),
(78,'阳曲县','yangquxian'),
(78,'娄烦县','loufanxian');

-- init area 运城
insert into `area`(`city_id`,`name`,`slug`) values
(80,'盐湖','yanhu'),
(80,'临猗','linyi'),
(80,'万荣','wanrong'),
(80,'闻喜','wenxi'),
(80,'稷山','jishan'),
(80,'新绛','xinjiang'),
(80,'绛县','jiangxian'),
(80,'垣曲','yuanqu'),
(80,'夏县','xiaxian'),
(80,'平陆','pinglu'),
(80,'芮城','ruicheng'),
(80,'永济','yongji'),
(80,'河津','hejin');

-- init area 晋中
insert into `area`(`city_id`,`name`,`slug`) values
(82,'榆次','yuci'),
(82,'榆社','yushe'),
(82,'左权','zuoquan'),
(82,'和顺','heshun'),
(82,'昔阳','xiyang'),
(82,'寿阳','shouyang'),
(82,'太谷','taigu'),
(82,'祁县','qixian'),
(82,'平遥','pingyao'),
(82,'灵石','lingshi'),
(82,'介休','jiexiu');

-- init area 长治
-- init area 临汾
-- init area 大同
-- init area 忻州
-- init area 吕梁
-- init area 朔州
-- init area 阳泉
-- init area 晋城

-- init area 郑州
insert into `area`(`city_id`,`name`,`slug`) values
(89,'金水','jinshui'),
(89,'中原','zhongyuan'),
(89,'二七','erqi'),
(89,'管城','guancheng'),
(89,'惠济','huiji'),
(89,'郑东','zhengdong'),
(89,'巩义市','gongyishi'),
(89,'新郑市','xinzhengshi'),
(89,'新密市','xinmishi'),
(89,'荥阳市','xingyangshi'),
(89,'登封市','dengfengshi'),
(89,'上街','shangjie'),
(89,'中牟县','zhongmouxian'),
(89,'高新区','gaoxinqu');

-- init area 洛阳
insert into `area`(`city_id`,`name`,`slug`) values
(90,'西工区','xigongqu'),
(90,'涧西区','jianxiqu'),
(90,'老城区','laochengqu'),
(90,'瀍河区','chanhequ'),
(90,'洛龙区','luolongqu'),
(90,'吉利区','jiliqu'),
(90,'偃师区','yanshiqu'),
(90,'新安县','xinanxian'),
(90,'伊川县','yichuanxian'),
(90,'汝阳县','ruyangxian'),
(90,'洛宁县','luoningxian'),
(90,'孟津县','mengjinxian'),
(90,'宜阳县','yiyangxian'),
(90,'嵩县','songxian'),
(90,'栾川县','luanchuanxian');

-- init area 焦作
insert into `area`(`city_id`,`name`,`slug`) values
(91,'解放区','jiefangqu'),
(91,'山阳区','shanyangqu'),
(91,'马村区','macunqu'),
(91,'中站区','zhongzhanqu'),
(91,'高新区','gaoxinqu'),
(91,'沁阳市','qinyangshi'),
(91,'博爱县','boaixian'),
(91,'修武县','xiuwuxian'),
(91,'武陟县','wuzhixian'),
(91,'孟州市','mengzhoushi'),
(91,'温县','wenxian'),
(91,'济源市','jiyuanshi');

-- init area 新乡
insert into `area`(`city_id`,`name`,`slug`) values
(94,'红旗','hongqi'),
(94,'卫滨','weibin'),
(94,'凤泉','fengquan'),
(94,'牧野','muye'),
(94,'新乡县','xinxiangxian'),
(94,'获嘉','huojia'),
(94,'原阳','yuanyang'),
(94,'延津','yanjin'),
(94,'封丘','fengqiu'),
(94,'长垣','changyuan'),
(94,'卫辉','weihui'),
(94,'辉县','huixian');

-- init area 南阳
insert into `area`(`city_id`,`name`,`slug`) values
(95,'卧龙','wolong'),
(95,'宛城','wancheng'),
(95,'邓州','dengzhou'),
(95,'南召','nanzhao'),
(95,'方城','fangcheng'),
(95,'西峡','xixia'),
(95,'镇平','zhenping'),
(95,'内乡','neixiang'),
(95,'淅川','xichuan'),
(95,'社旗','sheqi'),
(95,'唐河','tanghe'),
(95,'新野','xinye'),
(95,'桐柏','tongbai');

-- init area 平顶山
-- init area 驻马店
-- init area 信阳
-- init area 开封
-- init area 漯河
-- init area 安阳
-- init area 商丘
-- init area 周口
-- init area 许昌
-- init area 濮阳
-- init area 三门峡
-- init area 鹤壁
-- init area 济源

-- init area 长春
insert into `area`(`city_id`,`name`,`slug`) values
(107,'朝阳','zhaoyang'),
(107,'宽城','kuancheng'),
(107,'二道','erdao'),
(107,'南关','nanguan'),
(107,'绿园','lvyuan'),
(107,'双阳','shuangyang'),
(107,'德惠市','dehuishi'),
(107,'九台市','jiutaishi'),
(107,'榆树市','yushushi'),
(107,'农安县','nonganxian');

-- init area 吉林
insert into `area`(`city_id`,`name`,`slug`) values
(108,'昌邑','changyi'),
(108,'龙潭','longtan'),
(108,'船营','chuanying'),
(108,'丰满','fengman'),
(108,'永吉','yongji'),
(108,'蛟河','jiaohe'),
(108,'桦甸','huadian'),
(108,'舒兰','shulan'),
(108,'磐石','panshi');

-- init area 四平
-- init area 白山
-- init area 白城
-- init area 延边
-- init area 通化
-- init area 松原
-- init area 辽源

-- init area 哈尔滨
insert into `area`(`city_id`,`name`,`slug`) values
(116,'道里','daoli'),
(116,'南岗','nangang'),
(116,'道外','daowai'),
(116,'平房','pingfang'),
(116,'松北','songbei'),
(116,'香坊','xiangfang'),
(116,'呼兰','hulan'),
(116,'阿城','acheng'),
(116,'依兰','yilan'),
(116,'方正','fangzheng'),
(116,'宾县','binxian'),
(116,'巴彦','bayan'),
(116,'木兰','mulan'),
(116,'通河','tonghe'),
(116,'延寿','yanshou'),
(116,'双城','shuangcheng'),
(116,'尚志','shangzhi'),
(116,'五常','wuchang'),
(116,'外县','waixian');

-- init area 大庆
insert into `area`(`city_id`,`name`,`slug`) values
(117,'萨尔图','saertu'),
(117,'龙凤','longfeng'),
(117,'让胡路','ranghulu'),
(117,'红岗','honggang'),
(117,'大同','datong'),
(117,'肇州','zhaozhou'),
(117,'肇源','zhaoyuan'),
(117,'林甸','lindian'),
(117,'杜尔伯特','duerbote');

-- init area 齐齐哈尔
insert into `area`(`city_id`,`name`,`slug`) values
(118,'龙沙','longsha'),
(118,'建华','jianhua'),
(118,'铁锋','tiefeng'),
(118,'昂昂溪','angangxi'),
(118,'富拉尔基','fulaerji'),
(118,'碾子山','nianzishan'),
(118,'梅里斯达斡尔族','meilisidawoerzu'),
(118,'龙江','longjiang'),
(118,'依安','yian'),
(118,'泰来','tailai'),
(118,'甘南','gannan'),
(118,'富裕','fuyu'),
(118,'克山','keshan'),
(118,'克东','kedong'),
(118,'拜泉','baiquan'),
(118,'讷河','nehe');

-- init area 佳木斯
insert into `area`(`city_id`,`name`,`slug`) values
(119,'永红','yonghong'),
(119,'向阳','xiangyang'),
(119,'前进','qianjin'),
(119,'东风','dongfeng'),
(119,'郊区','jiaoqu'),
(119,'桦南','huanan'),
(119,'桦川','huachuan'),
(119,'汤原','tangyuan'),
(119,'抚远','fuyuan'),
(119,'同江','tongjiang'),
(119,'富锦','fujin');

-- init area 鸡西
insert into `area`(`city_id`,`name`,`slug`) values
(120,'鸡冠','jiguan'),
(120,'恒山','hengshan'),
(120,'滴道','didao'),
(120,'梨树','lishu'),
(120,'城子河','chengzihe'),
(120,'麻山','mashan'),
(120,'鸡东','jidong'),
(120,'虎林','hulin'),
(120,'密山','mishan');

-- init area 双鸭山
insert into `area`(`city_id`,`name`,`slug`) values
(121,'尖山','jianshan'),
(121,'岭东','lingdong'),
(121,'四方台','sifangtai'),
(121,'宝山','baoshan'),
(121,'集贤','jixian'),
(121,'友谊','youyi'),
(121,'宝清','baoqing'),
(121,'饶河','raohe');

-- init area 鹤岗
-- init area 牡丹江
-- init area 绥化
-- init area 七台河
-- init area 伊春
-- init area 黑河

-- init area 呼和浩特
insert into `area`(`city_id`,`name`,`slug`) values
(128,'新城','xincheng'),
(128,'回民','huimin'),
(128,'塞罕','saihan'),
(128,'玉泉','yuquan'),
(128,'托县','tuoxian'),
(128,'土左','tuzuo'),
(128,'武川','wuchuan'),
(128,'清水河','qingshuihe'),
(128,'和林','helin'),
(128,'开发区','kaifaqu');

-- init area 包头
insert into `area`(`city_id`,`name`,`slug`) values
(129,'昆都仑区','kundulunqu'),
(129,'东河区','donghequ'),
(129,'青山区','qingshanqu'),
(129,'石拐区','shiguaiqu'),
(129,'白云矿区','baiyunkuangqu'),
(129,'九原区','jiuyuanqu'),
(129,'土默特右旗','tumoteyouqi'),
(129,'固阳县','guyangxian'),
(129,'达茂旗','damaoqi');

-- init area 呼伦贝尔
-- init area 鄂尔多斯
-- init area 赤峰
-- init area 通辽
-- init area 巴彦淖尔
-- init area 兴安
-- init area 乌海
-- init area 乌兰察布
-- init area 锡林郭勒
-- init area 阿拉善

-- init area 南京
insert into `area`(`city_id`,`name`,`slug`) values
(140,'玄武','xuanwu'),
(140,'鼓楼','gulou'),
(140,'建邺','jianye'),
(140,'白下','baixia'),
(140,'秦淮','qinhuai'),
(140,'下关','xiaguan'),
(140,'雨花台','yuhuatai'),
(140,'浦口','pukou'),
(140,'栖霞','qixia'),
(140,'江宁','jiangning'),
(140,'溧水','lishui'),
(140,'高淳','gaochun'),
(140,'六合','liuhe');

-- init area 苏州
insert into `area`(`city_id`,`name`,`slug`) values
(141,'园区','yuanqu'),
(141,'高新区','gaoxinqu'),
(141,'平江区','pingjiangqu'),
(141,'沧浪区','canglangqu'),
(141,'金阊区','jinchangqu'),
(141,'吴江区','wujiangqu'),
(141,'吴中区','wuzhongqu'),
(141,'昆山','kunshan'),
(141,'常熟','changshu'),
(141,'太仓','taicang'),
(141,'张家港','zhangjiagang'),
(141,'相城区','xiangchengqu');

-- init area 无锡
insert into `area`(`city_id`,`name`,`slug`) values
(142,'崇安区','chonganqu'),
(142,'南长区','nanchangqu'),
(142,'北塘区','beitangqu'),
(142,'滨湖区','binhuqu'),
(142,'锡山区','xishanqu'),
(142,'惠山区','huishanqu'),
(142,'新区','xinqu'),
(142,'江阴','jiangyin'),
(142,'宜兴','yixing');

-- init area 徐州
insert into `area`(`city_id`,`name`,`slug`) values
(143,'云龙','yunlong'),
(143,'鼓楼','gulou'),
(143,'九里','jiuli'),
(143,'贾汪','jiawang'),
(143,'泉山','quanshan'),
(143,'丰县','fengxian'),
(143,'沛县','peixian'),
(143,'铜山','tongshan'),
(143,'睢宁','suining'),
(143,'新沂','xinyi'),
(143,'邳州','pizhou');

-- init area 常州
insert into `area`(`city_id`,`name`,`slug`) values
(144,'钟楼','zhonglou'),
(144,'天宁','tianning'),
(144,'戚墅堰','qishuyan'),
(144,'新北','xinbei'),
(144,'武进','wujin'),
(144,'金坛','jintan'),
(144,'溧阳','liyang');

-- init area 淮安
insert into `area`(`city_id`,`name`,`slug`) values
(145,'清河区','qinghequ'),
(145,'清浦区','qingpuqu'),
(145,'楚州区','chuzhouqu'),
(145,'淮阴区','huaiyinqu'),
(145,'涟水县','lianshuixian'),
(145,'洪泽县','hongzexian'),
(145,'盱眙县','xuyixian'),
(145,'金湖县','jinhuxian'),
(145,'开发区','kaifaqu');

-- init area 扬州
insert into `area`(`city_id`,`name`,`slug`) values
(146,'广陵','guangling'),
(146,'邗江','hanjiang'),
(146,'维扬','weiyang'),
(146,'宝应','baoying'),
(146,'仪征','yizheng'),
(146,'高邮','gaoyou'),
(146,'江都','jiangdu');

-- init area 南通
insert into `area`(`city_id`,`name`,`slug`) values
(147,'崇川','chongchuan'),
(147,'港闸','gangzha'),
(147,'海安','haian'),
(147,'如东','rudong'),
(147,'启东','qidong'),
(147,'如皋','rugao'),
(147,'通州','tongzhou'),
(147,'海门','haimen');

-- init area 盐城
insert into `area`(`city_id`,`name`,`slug`) values
(148,'亭湖','tinghu'),
(148,'盐都','yandu'),
(148,'响水','xiangshui'),
(148,'滨海','binhai'),
(148,'阜宁','funing'),
(148,'射阳','sheyang'),
(148,'建湖','jianhu'),
(148,'东台','dongtai'),
(148,'大丰','dafeng');

-- init area 连云港
insert into `area`(`city_id`,`name`,`slug`) values
(149,'连云','lianyun'),
(149,'新浦','xinpu'),
(149,'海州','haizhou'),
(149,'赣榆','ganyu'),
(149,'东海','donghai'),
(149,'灌云','guanyun'),
(149,'灌南','guannan');

-- init area 宿迁
insert into `area`(`city_id`,`name`,`slug`) values
(150,'宿城','sucheng'),
(150,'宿豫','suyu'),
(150,'沭阳','shuyang'),
(150,'泗阳','siyang'),
(150,'泗洪','sihong');

-- init area 泰州
insert into `area`(`city_id`,`name`,`slug`) values
(151,'海陵','hailing'),
(151,'高港','gaogang'),
(151,'兴化','xinghua'),
(151,'靖江','jingjiang'),
(151,'泰兴','taixing'),
(151,'姜堰','jiangyan');

-- init area 镇江

-- init area 济南
insert into `area`(`city_id`,`name`,`slug`) values
(153,'历下','lixia'),
(153,'市中','shizhong'),
(153,'槐荫','huaiyin'),
(153,'天桥','tianqiao'),
(153,'历城','licheng'),
(153,'长清','changqing'),
(153,'章丘','zhangqiu'),
(153,'平阴','pingyin'),
(153,'济阳','jiyang'),
(153,'商河','shanghe');

-- init area 青岛
insert into `area`(`city_id`,`name`,`slug`) values
(154,'市南','shinan'),
(154,'市北','shibei'),
(154,'四方','sifang'),
(154,'李沧','licang'),
(154,'黄岛','huangdao'),
(154,'胶南','jiaonan'),
(154,'胶州','jiaozhou'),
(154,'平度','pingdu'),
(154,'莱西','laixi'),
(154,'即墨','jimo'),
(154,'崂山','laoshan'),
(154,'城阳','chengyang');

-- init area 淄博
insert into `area`(`city_id`,`name`,`slug`) values
(155,'张店区','zhangdianqu'),
(155,'临淄区','linziqu'),
(155,'淄川区','zichuanqu'),
(155,'周村区','zhoucunqu'),
(155,'博山区','boshanqu'),
(155,'桓台县','huantaixian'),
(155,'高青县','gaoqingxian'),
(155,'沂源县','yiyuanxian');

-- init area 潍坊
insert into `area`(`city_id`,`name`,`slug`) values
(156,'潍城','weicheng'),
(156,'寒亭','hanting'),
(156,'坊子','fangzi'),
(156,'奎文','kuiwen'),
(156,'临朐','linqu'),
(156,'昌乐','changle'),
(156,'青州','qingzhou'),
(156,'诸城','zhucheng'),
(156,'寿光','shouguang'),
(156,'安丘','anqiu'),
(156,'高密','gaomi'),
(156,'昌邑','changyi'),
(156,'高新开发区','gaoxinkaifaqu'),
(156,'滨海开发区','binhaikaifaqu'),
(156,'经济开发区','jingjikaifaqu');

-- init area 烟台
insert into `area`(`city_id`,`name`,`slug`) values
(157,'芝罘','zhifu'),
(157,'福山','fushan'),
(157,'牟平','mouping'),
(157,'莱山','laishan'),
(157,'龙口','longkou'),
(157,'莱阳','laiyang'),
(157,'莱州','laizhou'),
(157,'蓬莱','penglai'),
(157,'招远','zhaoyuan'),
(157,'栖霞','qixia'),
(157,'海阳','haiyang'),
(157,'长岛','changdao');

-- init area 临沂
insert into `area`(`city_id`,`name`,`slug`) values
(158,'兰山','lanshan'),
(158,'罗庄','luozhuang'),
(158,'河东','hedong'),
(158,'沂南','yinan'),
(158,'郯城','tancheng'),
(158,'沂水','yishui'),
(158,'苍山','cangshan'),
(158,'费县','feixian'),
(158,'平邑','pingyi'),
(158,'莒南','junan'),
(158,'蒙阴','mengyin'),
(158,'临沭','linshu');

-- init area 济宁
insert into `area`(`city_id`,`name`,`slug`) values
(159,'市中区','shizhongqu'),
(159,'高新区','gaoxinqu'),
(159,'任城','rencheng'),
(159,'兖州','yanzhou'),
(159,'曲阜','qufu'),
(159,'泗水','sishui'),
(159,'邹城','zoucheng'),
(159,'微山','weishan'),
(159,'鱼台','yutai'),
(159,'金乡','jinxiang'),
(159,'嘉祥','jiaxiang'),
(159,'梁山','liangshan'),
(159,'汶上','wenshang');

-- init area 滨州
insert into `area`(`city_id`,`name`,`slug`) values
(160,'滨城','bincheng'),
(160,'惠民','huimin'),
(160,'阳信','yangxin'),
(160,'无棣','wudi'),
(160,'沾化','zhanhua'),
(160,'博兴','boxing'),
(160,'邹平','zouping');

-- init area 德州
insert into `area`(`city_id`,`name`,`slug`) values
(161,'德城区','dechengqu'),
(161,'乐陵','leling'),
(161,'禹城','yucheng'),
(161,'陵县','lingxian'),
(161,'平原','pingyuan'),
(161,'夏津','xiajin'),
(161,'武城','wucheng'),
(161,'齐河','qihe'),
(161,'临邑','linyi'),
(161,'宁津','ningjin'),
(161,'庆云','qingyun');

-- init area 东营
insert into `area`(`city_id`,`name`,`slug`) values
(162,'东营','dongying'),
(162,'河口','hekou'),
(162,'垦利','kenli'),
(162,'利津','lijin'),
(162,'广饶','guangrao');

-- init area 枣庄
insert into `area`(`city_id`,`name`,`slug`) values
(163,'市中','shizhong'),
(163,'薛城','xuecheng'),
(163,'峄城','yicheng'),
(163,'台儿庄','taierzhuang'),
(163,'山亭','shanting'),
(163,'滕州','tengzhou');

-- init area 聊城
insert into `area`(`city_id`,`name`,`slug`) values
(164,'东昌府','dongchangfu'),
(164,'阳谷','yanggu'),
(164,'莘县','shenxian'),
(164,'茌平','chiping'),
(164,'东阿','donga'),
(164,'冠县','guanxian'),
(164,'高唐','gaotang'),
(164,'临清','linqing');

-- init area 泰安
insert into `area`(`city_id`,`name`,`slug`) values
(165,'泰山','taishan'),
(165,'岱岳','daiyue'),
(165,'宁阳','ningyang'),
(165,'东平','dongping'),
(165,'新泰','xintai'),
(165,'肥城','feicheng');

-- init area 日照
insert into `area`(`city_id`,`name`,`slug`) values
(166,'东港','donggang'),
(166,'岚山','lanshan'),
(166,'五莲','wulian'),
(166,'莒县','juxian');

-- init area 菏泽
insert into `area`(`city_id`,`name`,`slug`) values
(167,'牡丹','mudan'),
(167,'曹县','caoxian'),
(167,'单县','danxian'),
(167,'成武','chengwu'),
(167,'巨野','juye'),
(167,'郓城','yuncheng'),
(167,'鄄城','juancheng'),
(167,'定陶','dingtao'),
(167,'东明','dongming');

-- init area 威海
-- init area 莱芜

-- init area 合肥
insert into `area`(`city_id`,`name`,`slug`) values
(170,'庐阳','luyang'),
(170,'瑶海','yaohai'),
(170,'蜀山','shushan'),
(170,'包河','baohe'),
(170,'高新开发区','gaoxinkaifaqu'),
(170,'新站区','xinzhanqu'),
(170,'经济技术开发区','jingjijishukaifaqu'),
(170,'滨湖新区','binhuxinqu'),
(170,'政务区','zhengwuqu'),
(170,'长丰','changfeng'),
(170,'肥东','feidong'),
(170,'肥西','feixi');

-- init area 芜湖
-- init area 淮南
-- init area 蚌埠
-- init area 阜阳
-- init area 安庆
-- init area 巢湖
-- init area 滁州
-- init area 六安
-- init area 铜陵
-- init area 淮北
-- init area 宣城
-- init area 黄山
-- init area 宿州
-- init area 亳州
-- init area 马鞍山
-- init area 池州

-- init area 杭州
insert into `area`(`city_id`,`name`,`slug`) values
(187,'拱墅','gongshu'),
(187,'西湖','xihu'),
(187,'上城','shangcheng'),
(187,'下城','xiacheng'),
(187,'江干','jianggan'),
(187,'滨江','binjiang'),
(187,'余杭','yuhang'),
(187,'萧山','xiaoshan'),
(187,'建德','jiande'),
(187,'富阳','fuyang'),
(187,'临安','linan'),
(187,'桐庐','tonglu'),
(187,'淳安','chunan');

-- init area 宁波
insert into `area`(`city_id`,`name`,`slug`) values
(188,'海曙区','haishuqu'),
(188,'江东区','jiangdongqu'),
(188,'江北区','jiangbeiqu'),
(188,'北仑区','beilunqu'),
(188,'镇海区','zhenhaiqu'),
(188,'鄞州区','yinzhouqu'),
(188,'余姚市','yuyaoshi'),
(188,'慈溪市','cixishi'),
(188,'奉化市','fenghuashi'),
(188,'象山县','xiangshanxian'),
(188,'宁海县','ninghaixian');

-- init area 嘉兴
insert into `area`(`city_id`,`name`,`slug`) values
(189,'南湖区','nanhuqu'),
(189,'秀洲区','xiuzhouqu'),
(189,'海宁市','hainingshi'),
(189,'平湖市','pinghushi'),
(189,'桐乡市','tongxiangshi'),
(189,'嘉善县','jiashanxian'),
(189,'海盐县','haiyanxian');

-- init area 温州
insert into `area`(`city_id`,`name`,`slug`) values
(190,'鹿城区','luchengqu'),
(190,'龙湾区','longwanqu'),
(190,'瓯海区','ouhaiqu'),
(190,'瑞安市','ruianshi'),
(190,'乐清市','leqingshi'),
(190,'洞头县','dongtouxian'),
(190,'永嘉县','yongjiaxian'),
(190,'平阳县','pingyangxian'),
(190,'苍南县','cangnanxian'),
(190,'文成县','wenchengxian'),
(190,'泰顺县','taishunxian');

-- init area 金华
-- init area 台州
-- init area 绍兴
-- init area 湖州
-- init area 衢州
-- init area 丽水
-- init area 舟山

-- init area 福州
insert into `area`(`city_id`,`name`,`slug`) values
(198,'鼓楼','gulou'),
(198,'台江','taijiang'),
(198,'仓山','cangshan'),
(198,'马尾','mawei'),
(198,'晋安','jinan'),
(198,'福清','fuqing'),
(198,'长乐','changle'),
(198,'闽侯','minhou'),
(198,'连江','lianjiang'),
(198,'罗源','luoyuan'),
(198,'闽清','minqing'),
(198,'永泰','yongtai'),
(198,'平潭','pingtan');

-- init area 厦门
insert into `area`(`city_id`,`name`,`slug`) values
(199,'思明','siming'),
(199,'湖里','huli'),
(199,'集美','jimei'),
(199,'海沧','haicang'),
(199,'同安','tongan'),
(199,'翔安','xiangan');

-- init area 泉州
insert into `area`(`city_id`,`name`,`slug`) values
(200,'鲤城区','lichengqu'),
(200,'丰泽区','fengzequ'),
(200,'洛江区','luojiangqu'),
(200,'泉港区','quangangqu'),
(200,'经济技术开发区','jingjijishukaifaqu'),
(200,'晋江市','jinjiangshi'),
(200,'南安市','nananshi'),
(200,'石狮市','shishishi'),
(200,'惠安县','huianxian'),
(200,'安溪县','anxixian'),
(200,'永春县','yongchunxian'),
(200,'德化县','dehuaxian'),
(200,'金门县','jinmenxian');

-- init area 莆田
-- init area 漳州
-- init area 龙岩
-- init area 三明
-- init area 南平
-- init area 宁德

-- init area 长沙
insert into `area`(`city_id`,`name`,`slug`) values
(207,'岳麓','yuelu'),
(207,'芙蓉','furong'),
(207,'天心','tianxin'),
(207,'开福','kaifu'),
(207,'雨花','yuhua'),
(207,'浏阳市','liuyangshi'),
(207,'长沙县','changshaxian'),
(207,'望城县','wangchengxian'),
(207,'宁乡县','ningxiangxian');

-- init area 株洲
-- init area 衡阳
-- init area 岳阳
-- init area 湘潭
-- init area 常德
-- init area 益阳
-- init area 永州
-- init area 娄底
-- init area 邵阳
-- init area 怀化
-- init area 郴州
-- init area 湘西
-- init area 张家界

-- init area 广州
insert into `area`(`city_id`,`name`,`slug`) values
(221,'荔湾区','liwanqu'),
(221,'越秀区','yuexiuqu'),
(221,'南沙区','nanshaqu'),
(221,'天河区','tianhequ'),
(221,'海珠区','haizhuqu'),
(221,'黄埔区','huangpuqu'),
(221,'萝岗区','luogangqu'),
(221,'白云区','baiyunqu'),
(221,'番禺区','fanyuqu'),
(221,'花都区','huaduqu'),
(221,'增城区','zengchengqu'),
(221,'从化区','conghuaqu'),
(221,'近郊','jinjiao');

-- init area 深圳
insert into `area`(`city_id`,`name`,`slug`) values
(222,'福田','futian'),
(222,'罗湖','luohu'),
(222,'南山','nanshan'),
(222,'盐田','yantian'),
(222,'宝安','baoan'),
(222,'龙岗','longgang'),
(222,'光明新区','guangmingxinqu');

-- init area 东莞
insert into `area`(`city_id`,`name`,`slug`) values
(223,'南城','nancheng'),
(223,'莞城','guancheng'),
(223,'石龙','shilong'),
(223,'虎门','humen'),
(223,'万江','wanjiang'),
(223,'东城','dongcheng'),
(223,'篁村','huangcun'),
(223,'中堂','zhongtang'),
(223,'望牛墩','wangniudun'),
(223,'麻涌','mayong'),
(223,'石碣','shijie'),
(223,'高埗','gaobu'),
(223,'道滘','daojiao'),
(223,'沙田','shatian'),
(223,'厚街','houjie'),
(223,'长安','changan'),
(223,'洪梅','hongmei'),
(223,'寮步','liaobu'),
(223,'大朗','dalang'),
(223,'大岭山','dalingshan'),
(223,'黄江','huangjiang'),
(223,'樟木头','zhangmutou'),
(223,'清溪','qingxi'),
(223,'塘厦','tangsha'),
(223,'凤岗','fenggang'),
(223,'常平','changping'),
(223,'谢岗','xiegang'),
(223,'桥头','qiaotou'),
(223,'横沥','hengli'),
(223,'东坑','dongkeng'),
(223,'企石','qishi'),
(223,'石排','shipai'),
(223,'茶山','chashan');

-- init area 珠海
insert into `area`(`city_id`,`name`,`slug`) values
(224,'香洲区','xiangzhouqu'),
(224,'斗门区','doumenqu'),
(224,'金湾区','jinwanqu');

-- init area 中山
insert into `area`(`city_id`,`name`,`slug`) values
(225,'石岐区','shiqiqu'),
(225,'西区','xiqu'),
(225,'东区','dongqu'),
(225,'南区','nanqu'),
(225,'火炬开发区','huojukaifaqu'),
(225,'五桂山','wuguishan'),
(225,'港口','gangkou'),
(225,'古镇','guzhen'),
(225,'小榄','xiaolan'),
(225,'三乡','sanxiang'),
(225,'南朗','nanlang'),
(225,'沙溪','shaxi'),
(225,'坦洲','tanzhou'),
(225,'大涌','dayong'),
(225,'东升','dongsheng'),
(225,'黄圃','huangpu'),
(225,'三角','sanjiao'),
(225,'东凤','dongfeng'),
(225,'阜沙','fusha'),
(225,'南头','nantou'),
(225,'民众','minzhong'),
(225,'横栏','henglan'),
(225,'板芙','banfu'),
(225,'神湾','shenwan'),
(225,'环城街道','huanchengjiedao'),
(225,'中山港街道','zhongshangangjiedao');

-- init area 佛山
insert into `area`(`city_id`,`name`,`slug`) values
(226,'禅城区','chanchengqu'),
(226,'南海区','nanhaiqu'),
(226,'顺德区','shundequ'),
(226,'三水区','sanshuiqu'),
(226,'高明区','gaomingqu');

-- init area 惠州
-- init area 江门
-- init area 汕头
-- init area 清远
-- init area 肇庆
-- init area 阳江
-- init area 茂名
-- init area 湛江
-- init area 梅州
-- init area 揭阳
-- init area 河源
-- init area 汕尾
-- init area 云浮
-- init area 潮州
-- init area 韶关

-- init area 南宁
insert into `area`(`city_id`,`name`,`slug`) values
(242,'青秀区','qingxiuqu'),
(242,'兴宁区','xingningqu'),
(242,'西乡塘','xixiangtang'),
(242,'良庆','liangqing'),
(242,'邕宁','yongning'),
(242,'武鸣','wuming'),
(242,'横县','hengxian'),
(242,'宾阳县','binyangxian'),
(242,'上林','shanglin'),
(242,'隆安','longan'),
(242,'马山','mashan');

-- init area 柳州
-- init area 桂林
-- init area 玉林
-- init area 贵港
-- init area 北海
-- init area 河池
-- init area 百色
-- init area 梧州
-- init area 贺州
-- init area 钦州
-- init area 防城港
-- init area 来宾
-- init area 崇左

-- init area 南昌
insert into `area`(`city_id`,`name`,`slug`) values
(256,'东湖','donghu'),
(256,'西湖','xihu'),
(256,'青云谱','qingyunpu'),
(256,'湾里','wanli'),
(256,'青山湖','qingshanhu'),
(256,'新建','xinjian'),
(256,'南昌','nanchang'),
(256,'进贤','jinxian'),
(256,'安义','anyi'),
(256,'经开区','jingkaiqu'),
(256,'高新区','gaoxinqu'),
(256,'红谷滩','honggutan'),
(256,'桑海','sanghai'),
(256,'英雄','yingxiong'),
(256,'长堎','changleng');

-- init area 赣州
-- init area 九江
-- init area 吉安
-- init area 上饶
-- init area 萍乡
-- init area 鹰潭
-- init area 宜春
-- init area 景德镇
-- init area 抚州
-- init area 新余

-- init area 贵阳
insert into `area`(`city_id`,`name`,`slug`) values
(267,'南明','nanming'),
(267,'云岩','yunyan'),
(267,'花溪','huaxi'),
(267,'乌当','wudang'),
(267,'白云','baiyun'),
(267,'小河','xiaohe'),
(267,'清镇','qingzhen'),
(267,'开阳','kaiyang'),
(267,'修文','xiuwen'),
(267,'息烽','xifeng');

-- init area 遵义
-- init area 黔东南
-- init area 安顺
-- init area 黔南
-- init area 毕节
-- init area 铜仁
-- init area 六盘水
-- init area 黔西南

-- init area 昆明
insert into `area`(`city_id`,`name`,`slug`) values
(276,'盘龙','panlong'),
(276,'五华','wuhua'),
(276,'官渡','guandu'),
(276,'西山','xishan'),
(276,'东川','dongchuan'),
(276,'安宁','anning'),
(276,'富民','fumin'),
(276,'嵩明','songming'),
(276,'呈贡','chenggong'),
(276,'晋宁','jinning'),
(276,'宜良','yiliang'),
(276,'石林彝族自治区','shilinyizuzizhiqu'),
(276,'禄劝彝族苗族自治县','luquanyizumiaozuzizhixian'),
(276,'寻甸回族彝族自治县','xundianhuizuyizuzizhixian');

-- init area 红河
-- init area 文山
-- init area 曲靖
-- init area 玉溪
-- init area 丽江
-- init area 大理
-- init area 楚雄
-- init area 保山
-- init area 昭通
-- init area 德宏
-- init area 临沧
-- init area 西双版纳
-- init area 普洱
-- init area 怒江
-- init area 迪庆

-- init area 拉萨
insert into `area`(`city_id`,`name`,`slug`) values
(292,'城关','chengguan'),
(292,'林周','linzhou'),
(292,'当雄','dangxiong'),
(292,'尼木','nimu'),
(292,'曲水','qushui'),
(292,'堆龙德庆','duilongdeqing'),
(292,'达孜','dazi'),
(292,'墨竹工卡','mozhugongka');

-- init area 林芝
-- init area 日喀则
-- init area 山南
-- init area 那曲
-- init area 阿里
-- init area 昌都

-- init area 海口
insert into `area`(`city_id`,`name`,`slug`) values
(299,'龙华区','longhuaqu'),
(299,'秀英区','xiuyingqu'),
(299,'琼山区','qiongshanqu'),
(299,'美兰区','meilanqu'),
(299,'万宁','wanning'),
(299,'东方','dongfang'),
(299,'定安','dingan'),
(299,'屯昌','tunchang'),
(299,'澄迈','chengmai'),
(299,'临高','lingao'),
(299,'白沙','baisha'),
(299,'昌江','changjiang'),
(299,'乐东','ledong'),
(299,'陵水','lingshui'),
(299,'保亭','baoting'),
(299,'琼中','qiongzhong'),
(299,'西沙群岛','xishaqundao'),
(299,'南沙群岛','nanshaqundao'),
(299,'中沙群岛的岛礁及其海域','zhongshaqundaodedaojiaojiqihaiyu');

-- init area 三亚
-- init area 儋州
-- init area 琼海
-- init area 五指山
-- init area 文昌
-- init area 万宁
-- init area 东方

-- init area 兰州
insert into `area`(`city_id`,`name`,`slug`) values
(307,'城关','chengguan'),
(307,'七里河','qilihe'),
(307,'西固','xigu'),
(307,'安宁','anning'),
(307,'红古','honggu'),
(307,'永登','yongdeng'),
(307,'榆中','yuzhong'),
(307,'皋兰','gaolan');

-- init area 张掖
-- init area 天水
-- init area 庆阳
-- init area 平凉
-- init area 酒泉
-- init area 白银
-- init area 武威
-- init area 金昌
-- init area 陇南
-- init area 嘉峪关
-- init area 临夏
-- init area 定西
-- init area 甘南

-- init area 银川
insert into `area`(`city_id`,`name`,`slug`) values
(321,'兴庆','xingqing'),
(321,'西夏','xixia'),
(321,'金凤','jinfeng'),
(321,'永宁','yongning'),
(321,'贺兰','helan'),
(321,'灵武','lingwu');

-- init area 石嘴山
-- init area 固原
-- init area 吴忠
-- init area 中卫

-- init area 西宁
insert into `area`(`city_id`,`name`,`slug`) values
(326,'城东','chengdong'),
(326,'城中','chengzhong'),
(326,'城西','chengxi'),
(326,'城北','chengbei'),
(326,'大通','datong'),
(326,'湟中','huangzhong'),
(326,'湟源','huangyuan');

-- init area 海南
-- init area 海西
-- init area 玉树
-- init area 海东
-- init area 海北
-- init area 黄南
-- init area 果洛

-- init area 乌鲁木齐
insert into `area`(`city_id`,`name`,`slug`) values
(334,'天山','tianshan'),
(334,'沙依巴克','shayibake'),
(334,'新市','xinshi'),
(334,'水磨沟','shuimogou'),
(334,'头屯河','toutunhe'),
(334,'达坂城','dabancheng'),
(334,'米东','midong'),
(334,'乌鲁木齐县','wulumuqixian');

-- init area 伊犁
-- init area 阿克苏
-- init area 喀什
-- init area 石河子
-- init area 巴音郭楞
-- init area 昌吉
-- init area 哈密
-- init area 博尔塔拉
-- init area 克拉玛依
-- init area 阿勒泰
-- init area 塔城
-- init area 吐鲁番
-- init area 和田

-- init location 北京海淀
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
(1, '八里庄');

-- init location 北京朝阳
insert into `location`(`area_id`,`name`) values
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
(2, '建外大街');

-- init location 北京东城
insert into `location`(`area_id`,`name`) values
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
(3, '朝阳门');

-- init location 北京西城
insert into `location`(`area_id`,`name`) values
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
(4, '鼓楼');

-- init location 北京崇文
insert into `location`(`area_id`,`name`) values
(5, '前门'),
(5, '崇文门'),
(5, '天坛'),
(5, '龙潭湖'),
(5, '光明楼'),
(5, '广渠门'),
(5, '体育馆路'),
(5, '法华寺'),
(5, '永定门'),
(5, '磁器口');

-- init location 北京宣武
insert into `location`(`area_id`,`name`) values
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
(6, '珠市口');

-- init location 北京丰台
insert into `location`(`area_id`,`name`) values
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
(7, '玉泉营');

-- init location 北京石景山
insert into `location`(`area_id`,`name`) values
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
(8, '永乐');

-- init location 北京房山
insert into `location`(`area_id`,`name`) values
(9, '房山城关'),
(9, '良乡'),
(9, '窦店'),
(9, '长阳'),
(9, '韩村河'),
(9, '阎村'),
(9, '迎风');

-- init location 北京大兴
insert into `location`(`area_id`,`name`) values
(10, '黄村'),
(10, '西红门'),
(10, '旧宫'),
(10, '亦庄'),
(10, '庞各庄');

-- init location 北京通州
insert into `location`(`area_id`,`name`) values
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
(11, '运河大街');

-- init location 北京顺义
insert into `location`(`area_id`,`name`) values
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
(12, '南彩');

-- init location 北京昌平
insert into `location`(`area_id`,`name`) values
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
(13, '城南');

-- init location 北京密云
insert into `location`(`area_id`,`name`) values
(14, '密云城区'),
(14, '十里堡镇'),
(14, '古北口'),
(14, '不老屯'),
(14, '溪翁庄'),
(14, '太师屯'),
(14, '新城子'),
(14, '穆家峪');

-- init location 北京怀柔
insert into `location`(`area_id`,`name`) values
(15, '泉河'),
(15, '庙城'),
(15, '雁栖'),
(15, '杨宋'),
(15, '北房'),
(15, '怀北'),
(15, '渤海镇'),
(15, '九渡河'),
(15, '汤河口'),
(15, '桥梓');

-- init location 北京延庆
insert into `location`(`area_id`,`name`) values
(16, '延庆城区'),
(16, '康庄'),
(16, '八达岭'),
(16, '大榆树'),
(16, '永宁');

-- init location 北京平谷
insert into `location`(`area_id`,`name`) values
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
(17, '熊儿寨');

-- init location 北京门头沟
insert into `location`(`area_id`,`name`) values
(18, '大峪'),
(18, '城子街道'),
(18, '东辛房'),
(18, '龙泉'),
(18, '永定'),
(18, '军庄'),
(18, '潭柘寺'),
(18, '妙峰山'),
(18, '清水');

-- init location 上海黄浦
insert into `location`(`area_id`,`name`) values
(21, '南京东路'),
(21, '外滩'),
(21, '人民广场'),
(21, '豫园'),
(21, '老西门'),
(21, '董家渡'),
(21, '蓬莱公园'),
(21, '半淞园路'),
(21, '黄浦滨江');

-- init location 上海静安
insert into `location`(`area_id`,`name`) values
(22, '曹家渡'),
(22, '江宁路'),
(22, '西康路'),
(22, '新闸路'),
(22, '北京西路'),
(22, '静安寺'),
(22, '南京西路');

-- init location 上海卢湾
insert into `location`(`area_id`,`name`) values
(23, '淮海中路'),
(23, '新天地'),
(23, '复兴公园'),
(23, '打浦桥'),
(23, '鲁班路'),
(23, '五里桥'),
(23, '卢湾滨江');

-- init location 上海徐汇
insert into `location`(`area_id`,`name`) values
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
(24, '上海南站');

-- init location 上海长宁
insert into `location`(`area_id`,`name`) values
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
(25, '程家桥');

-- init location 上海闸北
insert into `location`(`area_id`,`name`) values
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
(26, '芷江西路');

-- init location 上海普陀
insert into `location`(`area_id`,`name`) values
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
(27, '甘泉路');

-- init location 上海虹口
insert into `location`(`area_id`,`name`) values
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
(28, '北外滩');

-- init location 上海杨浦
insert into `location`(`area_id`,`name`) values
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
(29, '杨浦大桥');

-- init location 上海浦东
insert into `location`(`area_id`,`name`) values
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
(30, '三林');

-- init location 上海闵行
insert into `location`(`area_id`,`name`) values
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
(31, '江川路');

-- init location 上海松江
insert into `location`(`area_id`,`name`) values
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
(32, '莘闵');

-- init location 上海宝山
insert into `location`(`area_id`,`name`) values
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
(33, '共富');

-- init location 上海嘉定
insert into `location`(`area_id`,`name`) values
(34, '真新新村'),
(34, '菊园新区'),
(34, '嘉定城区'),
(34, '新城'),
(34, '南翔'),
(34, '安亭'),
(34, '马陆'),
(34, '江桥'),
(34, '丰庄');

-- init location 上海青浦
insert into `location`(`area_id`,`name`) values
(35, '朱家角'),
(35, '赵巷'),
(35, '徐泾'),
(35, '重固'),
(35, '青浦新城'),
(35, '白鹤'),
(35, '青浦北部');

-- init location 上海奉贤
insert into `location`(`area_id`,`name`) values
(36, '南桥'),
(36, '奉城'),
(36, '庄行'),
(36, '金汇'),
(36, '柘林'),
(36, '海湾'),
(36, '海湾旅游区');

-- init location 上海南汇
insert into `location`(`area_id`,`name`) values
(37, '惠南'),
(37, '周浦'),
(37, '新场'),
(37, '康桥'),
(37, '航头'),
(37, '祝桥'),
(37, '泥城'),
(37, '临港新城');

-- init location 上海金山
insert into `location`(`area_id`,`name`) values
(38, '金山中部'),
(38, '石化'),
(38, '朱泾'),
(38, '枫泾'),
(38, '亭林'),
(38, '漕泾'),
(38, '金山卫'),
(38, '金山新城');

-- init location 上海崇明
insert into `location`(`area_id`,`name`) values
(39, '城桥'),
(39, '堡镇'),
(39, '陈家镇');