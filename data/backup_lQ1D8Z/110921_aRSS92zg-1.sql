# Identify: MTMxNjU3NjI5NywxLjUsdWNob21lcyxtdWx0aXZvbCwx
# <?exit();?>
# UCenter Home Multi-Volume Data Dump Vol.1
# Version: UCenter Home 1.5
# Time: 2011-09-21 11:38:17
# Type: uchomes
# Table Prefix: uchome_
#
# UCenter Home: http://u.discuz.net
# Please visit our website for newest infomation about UCenter Home
# ---------------------------------------------------------


DROP TABLE IF EXISTS uchome_ad;
CREATE TABLE uchome_ad (
  adid smallint(6) unsigned NOT NULL auto_increment,
  available tinyint(1) NOT NULL default '1',
  title varchar(50) NOT NULL default '',
  pagetype varchar(20) NOT NULL default '',
  adcode text NOT NULL,
  system tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (adid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_adminsession;
CREATE TABLE uchome_adminsession (
  uid mediumint(8) unsigned NOT NULL default '0',
  ip char(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  errorcount tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (uid)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

INSERT INTO uchome_adminsession VALUES ('1','112.240.121.177','1316576297','-1');

DROP TABLE IF EXISTS uchome_album;
CREATE TABLE uchome_album (
  albumid mediumint(8) unsigned NOT NULL auto_increment,
  albumname varchar(50) NOT NULL default '',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  updatetime int(10) unsigned NOT NULL default '0',
  picnum smallint(6) unsigned NOT NULL default '0',
  pic varchar(60) NOT NULL default '',
  picflag tinyint(1) NOT NULL default '0',
  friend tinyint(1) NOT NULL default '0',
  `password` varchar(10) NOT NULL default '',
  target_ids text NOT NULL,
  PRIMARY KEY  (albumid),
  KEY uid (uid,updatetime),
  KEY friend (friend,updatetime),
  KEY updatetime (updatetime)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk AUTO_INCREMENT=2;

INSERT INTO uchome_album VALUES ('1','我的相册','1','admin','1314928892','1314928894','1','201109/2/1_13149288945Pz6.jpg.thumb.jpg','1','0','','');

DROP TABLE IF EXISTS uchome_appcreditlog;
CREATE TABLE uchome_appcreditlog (
  logid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  appid mediumint(8) unsigned NOT NULL default '0',
  appname varchar(60) NOT NULL default '',
  `type` tinyint(1) NOT NULL default '0',
  credit mediumint(8) unsigned NOT NULL default '0',
  note text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (logid),
  KEY uid (uid,dateline),
  KEY appid (appid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_blacklist;
CREATE TABLE uchome_blacklist (
  uid mediumint(8) unsigned NOT NULL default '0',
  buid mediumint(8) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,buid),
  KEY uid (uid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_block;
CREATE TABLE uchome_block (
  bid smallint(6) unsigned NOT NULL auto_increment,
  blockname varchar(40) NOT NULL default '',
  blocksql text NOT NULL,
  cachename varchar(30) NOT NULL default '',
  cachetime smallint(6) unsigned NOT NULL default '0',
  startnum tinyint(3) unsigned NOT NULL default '0',
  num tinyint(3) unsigned NOT NULL default '0',
  perpage tinyint(3) unsigned NOT NULL default '0',
  htmlcode text NOT NULL,
  PRIMARY KEY  (bid)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk AUTO_INCREMENT=4;

INSERT INTO uchome_block VALUES ('3','111111111','SELECT * FROM `uchome_space` AS `space` LEFT JOIN `uchome_spacefield` AS `spacefield` on `space`.`uid`=`spacefield`.`uid` WHERE `spacefield`.`sex`=\'2\' AND `space`.`groupid` in (\'3\')','','0','0','0','0','');

DROP TABLE IF EXISTS uchome_blog;
CREATE TABLE uchome_blog (
  blogid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  `subject` char(80) NOT NULL default '',
  classid smallint(6) unsigned NOT NULL default '0',
  viewnum mediumint(8) unsigned NOT NULL default '0',
  replynum mediumint(8) unsigned NOT NULL default '0',
  tracenum mediumint(8) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  pic char(120) NOT NULL default '',
  picflag tinyint(1) NOT NULL default '0',
  noreply tinyint(1) NOT NULL default '0',
  friend tinyint(1) NOT NULL default '0',
  `password` char(10) NOT NULL default '',
  topicid mediumint(8) unsigned NOT NULL default '0',
  hot mediumint(8) unsigned NOT NULL default '0',
  click_1 smallint(6) unsigned NOT NULL default '0',
  click_2 smallint(6) unsigned NOT NULL default '0',
  click_3 smallint(6) unsigned NOT NULL default '0',
  click_4 smallint(6) unsigned NOT NULL default '0',
  click_5 smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (blogid),
  KEY uid (uid,dateline),
  KEY friend (friend,dateline),
  KEY dateline (dateline),
  KEY topicid (topicid,dateline)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk AUTO_INCREMENT=8;

INSERT INTO uchome_blog VALUES ('1','1','admin','欢迎大家来到淄博交友网','0','0','0','0','1314928809','','0','1','0','','0','123000','0','0','0','0','0');
INSERT INTO uchome_blog VALUES ('2','1','admin','淄博交友网是最专业的淄博婚介所，感谢爱情公寓','0','0','0','0','1314938361','','0','1','0','','0','1784','0','0','0','0','0');
INSERT INTO uchome_blog VALUES ('3','1','admin','淄博同城交友找情人，有情人终成眷属，幸福在身边','0','0','0','0','1314938412','','0','1','0','','0','6544','0','0','0','0','0');
INSERT INTO uchome_blog VALUES ('4','1','admin','淄博交友网会员突破15万，热烈庆贺，2011年给力','0','0','0','0','1314938477','','0','1','0','','0','1845','0','0','0','0','0');
INSERT INTO uchome_blog VALUES ('5','2','羊爱上狼','淄博交友网是最专业的淄博婚介所，感谢爱情公寓','0','0','0','0','1314938764','','0','1','0','','0','5','0','0','0','0','0');
INSERT INTO uchome_blog VALUES ('6','2','羊爱上狼','需寻找有情人，希望能找到那个他','0','1','0','0','1314942828','','0','1','0','','0','0','0','0','0','0','0');
INSERT INTO uchome_blog VALUES ('7','2','羊爱上狼','求包养','0','0','0','0','1315119408','','0','0','0','','0','0','0','0','0','0','0');

DROP TABLE IF EXISTS uchome_blogfield;
CREATE TABLE uchome_blogfield (
  blogid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  tag varchar(255) NOT NULL default '',
  message mediumtext NOT NULL,
  postip varchar(20) NOT NULL default '',
  related text NOT NULL,
  relatedtime int(10) unsigned NOT NULL default '0',
  target_ids text NOT NULL,
  hotuser text NOT NULL,
  magiccolor tinyint(6) NOT NULL default '0',
  magicpaper tinyint(6) NOT NULL default '0',
  magiccall tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (blogid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_blogfield VALUES ('1','1','a:4:{i:2;s:6:\"交友网\";i:10;s:8:\"淄博旮旯\";i:7;s:10:\"有情人终成\";i:3;s:8:\"爱情公寓\";}','欢迎大家来到淄博交友网，祝有情人终成眷属','60.215.246.207','a:0:{}','1314941989','','','0','0','0');
INSERT INTO uchome_blogfield VALUES ('2','1','a:4:{i:1;s:6:\"婚介所\";i:2;s:6:\"交友网\";i:3;s:8:\"爱情公寓\";i:4;s:4:\"淄博\";}','淄博交友网是最专业的淄博婚介所，感谢爱情公寓','60.215.246.207','a:0:{}','1314938361','','','0','0','0');
INSERT INTO uchome_blogfield VALUES ('3','1','a:5:{i:5;s:8:\"同城交友\";i:6;s:4:\"幸福\";i:7;s:10:\"有情人终成\";i:8;s:6:\"找情人\";i:4;s:4:\"淄博\";}','淄博同城交友找情人，有情人终成眷属，幸福在身边','60.215.246.207','a:0:{}','1314938412','','','0','0','0');
INSERT INTO uchome_blogfield VALUES ('4','1','a:3:{i:2;s:6:\"交友网\";i:9;s:4:\"会员\";i:4;s:4:\"淄博\";}','淄博交友网会员突破15万，热烈庆贺，2011年给力\r\n','60.215.246.207','a:0:{}','1315303374','','','0','0','0');
INSERT INTO uchome_blogfield VALUES ('5','2','a:4:{i:1;s:6:\"婚介所\";i:2;s:6:\"交友网\";i:3;s:8:\"爱情公寓\";i:4;s:4:\"淄博\";}','<DIV>淄博交友网是最专业的淄博婚介所，感谢爱情公寓</DIV>','60.215.246.207','a:0:{}','1314938764','','','0','0','0');
INSERT INTO uchome_blogfield VALUES ('6','2','','&nbsp;大家好 我是刚刚注册在这里的新会员 希望大家多多浏览我&nbsp;希望结识更多的朋友 可以QQ联系我 &nbsp; &nbsp; 下面我就自我描述一下吧 我是一个刚毕业一年的大专生 从事护士工作 我是一个有爱心 有耐心 很热心的女孩子 性格也很开朗 是一个很温柔善良漂亮的女孩子 目前单身 因为在学校接触的男孩子很少很少 毕\r\n','60.215.246.207','','0','','','0','0','0');
INSERT INTO uchome_blogfield VALUES ('7','2','','求包养\r\n','124.134.50.107','','0','','','0','0','0');

DROP TABLE IF EXISTS uchome_class;
CREATE TABLE uchome_class (
  classid mediumint(8) unsigned NOT NULL auto_increment,
  classname char(40) NOT NULL default '',
  uid mediumint(8) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (classid),
  KEY uid (uid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_click;
CREATE TABLE uchome_click (
  clickid smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  icon varchar(100) NOT NULL default '',
  idtype varchar(15) NOT NULL default '',
  displayorder tinyint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (clickid),
  KEY idtype (idtype,displayorder)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=gbk AUTO_INCREMENT=16;

INSERT INTO uchome_click VALUES ('1','路过','luguo.gif','blogid','0');
INSERT INTO uchome_click VALUES ('2','雷人','leiren.gif','blogid','0');
INSERT INTO uchome_click VALUES ('3','握手','woshou.gif','blogid','0');
INSERT INTO uchome_click VALUES ('4','鲜花','xianhua.gif','blogid','0');
INSERT INTO uchome_click VALUES ('5','鸡蛋','jidan.gif','blogid','0');
INSERT INTO uchome_click VALUES ('6','漂亮','piaoliang.gif','picid','0');
INSERT INTO uchome_click VALUES ('7','酷毙','kubi.gif','picid','0');
INSERT INTO uchome_click VALUES ('8','雷人','leiren.gif','picid','0');
INSERT INTO uchome_click VALUES ('9','鲜花','xianhua.gif','picid','0');
INSERT INTO uchome_click VALUES ('10','鸡蛋','jidan.gif','picid','0');
INSERT INTO uchome_click VALUES ('11','搞笑','gaoxiao.gif','tid','0');
INSERT INTO uchome_click VALUES ('12','迷惑','mihuo.gif','tid','0');
INSERT INTO uchome_click VALUES ('13','雷人','leiren.gif','tid','0');
INSERT INTO uchome_click VALUES ('14','鲜花','xianhua.gif','tid','0');
INSERT INTO uchome_click VALUES ('15','鸡蛋','jidan.gif','tid','0');

DROP TABLE IF EXISTS uchome_clickuser;
CREATE TABLE uchome_clickuser (
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  id mediumint(8) unsigned NOT NULL default '0',
  idtype varchar(15) NOT NULL default '',
  clickid smallint(6) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  KEY id (id,idtype,dateline),
  KEY uid (uid,idtype,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_comment;
CREATE TABLE uchome_comment (
  cid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  id mediumint(8) unsigned NOT NULL default '0',
  idtype varchar(20) NOT NULL default '',
  authorid mediumint(8) unsigned NOT NULL default '0',
  author varchar(15) NOT NULL default '',
  ip varchar(20) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  message text NOT NULL,
  magicflicker tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (cid),
  KEY id (id,idtype,dateline),
  KEY authorid (authorid,idtype)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_config;
CREATE TABLE uchome_config (
  var varchar(30) NOT NULL default '',
  datavalue text NOT NULL,
  PRIMARY KEY  (var)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_config VALUES ('sitename','淄博旮旯爱情公寓');
INSERT INTO uchome_config VALUES ('sitelogo','image/logo.gif');
INSERT INTO uchome_config VALUES ('template','blue');
INSERT INTO uchome_config VALUES ('adminemail','123456@qq.com');
INSERT INTO uchome_config VALUES ('onlinehold','1800');
INSERT INTO uchome_config VALUES ('timeoffset','8');
INSERT INTO uchome_config VALUES ('maxpage','50');
INSERT INTO uchome_config VALUES ('starcredit','100');
INSERT INTO uchome_config VALUES ('starlevelnum','5');
INSERT INTO uchome_config VALUES ('cachemode','database');
INSERT INTO uchome_config VALUES ('cachegrade','0');
INSERT INTO uchome_config VALUES ('allowcache','1');
INSERT INTO uchome_config VALUES ('allowdomain','0');
INSERT INTO uchome_config VALUES ('allowrewrite','0');
INSERT INTO uchome_config VALUES ('allowwatermark','0');
INSERT INTO uchome_config VALUES ('allowftp','0');
INSERT INTO uchome_config VALUES ('holddomain','www|*blog*|*space*|x');
INSERT INTO uchome_config VALUES ('mtagminnum','5');
INSERT INTO uchome_config VALUES ('feedday','15');
INSERT INTO uchome_config VALUES ('feedmaxnum','50');
INSERT INTO uchome_config VALUES ('feedfilternum','10');
INSERT INTO uchome_config VALUES ('importnum','100');
INSERT INTO uchome_config VALUES ('singlesent','50');
INSERT INTO uchome_config VALUES ('groupnum','8');
INSERT INTO uchome_config VALUES ('closeregister','0');
INSERT INTO uchome_config VALUES ('closeinvite','0');
INSERT INTO uchome_config VALUES ('close','0');
INSERT INTO uchome_config VALUES ('networkpublic','0');
INSERT INTO uchome_config VALUES ('networkpage','1');
INSERT INTO uchome_config VALUES ('networkupdate','300');
INSERT INTO uchome_config VALUES ('seccode_register','0');
INSERT INTO uchome_config VALUES ('uc_tagrelated','1');
INSERT INTO uchome_config VALUES ('manualmoderator','1');
INSERT INTO uchome_config VALUES ('linkguide','1');
INSERT INTO uchome_config VALUES ('showall','1');
INSERT INTO uchome_config VALUES ('sendmailday','0');
INSERT INTO uchome_config VALUES ('realname','0');
INSERT INTO uchome_config VALUES ('namecheck','0');
INSERT INTO uchome_config VALUES ('namechange','0');
INSERT INTO uchome_config VALUES ('name_allowfriend','1');
INSERT INTO uchome_config VALUES ('name_allowpoke','1');
INSERT INTO uchome_config VALUES ('name_allowdoing','0');
INSERT INTO uchome_config VALUES ('name_allowblog','0');
INSERT INTO uchome_config VALUES ('name_allowalbum','0');
INSERT INTO uchome_config VALUES ('name_allowthread','0');
INSERT INTO uchome_config VALUES ('name_allowshare','0');
INSERT INTO uchome_config VALUES ('name_allowcomment','0');
INSERT INTO uchome_config VALUES ('name_allowpost','0');
INSERT INTO uchome_config VALUES ('showallfriendnum','10');
INSERT INTO uchome_config VALUES ('feedtargetblank','1');
INSERT INTO uchome_config VALUES ('feedread','1');
INSERT INTO uchome_config VALUES ('uc_tagrelatedtime','86400');
INSERT INTO uchome_config VALUES ('privacy','a:2:{s:4:\"view\";a:11:{s:5:\"index\";i:0;s:6:\"friend\";i:1;s:4:\"wall\";i:1;s:4:\"feed\";i:1;s:4:\"mtag\";i:1;s:5:\"event\";i:0;s:5:\"doing\";i:1;s:4:\"blog\";i:1;s:5:\"album\";i:1;s:5:\"share\";i:1;s:4:\"poll\";i:0;}s:4:\"feed\";a:20:{s:5:\"doing\";i:1;s:4:\"blog\";i:1;s:6:\"upload\";i:1;s:5:\"share\";i:1;s:4:\"poll\";i:1;s:8:\"joinpoll\";i:1;s:6:\"thread\";i:1;s:4:\"post\";i:1;s:4:\"mtag\";i:1;s:5:\"event\";i:1;s:4:\"join\";i:1;s:6:\"friend\";i:1;s:7:\"comment\";i:1;s:4:\"show\";i:1;s:6:\"credit\";i:1;s:9:\"spaceopen\";i:1;s:6:\"invite\";i:1;s:4:\"task\";i:1;s:7:\"profile\";i:1;s:5:\"click\";i:1;}}');
INSERT INTO uchome_config VALUES ('cronnextrun','1316541600');
INSERT INTO uchome_config VALUES ('my_status','0');
INSERT INTO uchome_config VALUES ('clfile','pay/callback');
INSERT INTO uchome_config VALUES ('aps','2');
INSERT INTO uchome_config VALUES ('apm','bqipjn9j0id7bidpxmfqlhwnf967dne0');
INSERT INTO uchome_config VALUES ('appay','sishubo458@163.com');
INSERT INTO uchome_config VALUES ('apfile','pay/alipay');
INSERT INTO uchome_config VALUES ('pay_help','space.php?uid=1&do=blog&id=2');
INSERT INTO uchome_config VALUES ('vipjf','300|30');
INSERT INTO uchome_config VALUES ('ctvip','1');
INSERT INTO uchome_config VALUES ('vipcls','30天(同城)|100|100\r\n180天(同省)|600|50\r\n终生VIP(全国)|1000|50');
INSERT INTO uchome_config VALUES ('bilv','1');
INSERT INTO uchome_config VALUES ('vipapp','3');
INSERT INTO uchome_config VALUES ('cbs','1');
INSERT INTO uchome_config VALUES ('cbankm','4354rerrertgfd34ewererw');
INSERT INTO uchome_config VALUES ('cbankpay','');
INSERT INTO uchome_config VALUES ('cbfile','pay/chinabank');
INSERT INTO uchome_config VALUES ('tps','0');
INSERT INTO uchome_config VALUES ('tenpay','');
INSERT INTO uchome_config VALUES ('tenpaym','c2a5193296e0d94f3835b5deff450529');
INSERT INTO uchome_config VALUES ('tfile','pay/tenpay');
INSERT INTO uchome_config VALUES ('clpay','');
INSERT INTO uchome_config VALUES ('clm','');
INSERT INTO uchome_config VALUES ('cls','0');
INSERT INTO uchome_config VALUES ('clbfile','pay/callbank');
INSERT INTO uchome_config VALUES ('clbpay','');
INSERT INTO uchome_config VALUES ('clbm','');
INSERT INTO uchome_config VALUES ('clbs','0');
INSERT INTO uchome_config VALUES ('ppfile','pay/paypal');
INSERT INTO uchome_config VALUES ('pppay','');
INSERT INTO uchome_config VALUES ('ppm','请输入安全ID(商户密匙)');
INSERT INTO uchome_config VALUES ('pps','0');
INSERT INTO uchome_config VALUES ('ppbilv','1');
INSERT INTO uchome_config VALUES ('web_paykey','744114cea4e229898e3ba34715579e36');
INSERT INTO uchome_config VALUES ('payurl','http://www.zibo3.com/');
INSERT INTO uchome_config VALUES ('payemail','sishubo458@163.com');
INSERT INTO uchome_config VALUES ('tpnote','财付通构建全新的综合支付平台，业务覆盖B2B、B2C和C2C各领域，提供卓越的网上支付及清算服务。针对个人用户，财付通提供了包括在线充值、提现、支付、交易管理等丰富功能；针对企业用户，财付通提供了安全可靠的支付清算服务和极富特色的QQ营销资源支持。');
INSERT INTO uchome_config VALUES ('cbnote','  网银在线凭借强大的技术实力和“贴近用户所需”的服务理念，以“电子支付专家”为发展定位，联合国内各大银行以及VISA、MasterCard、JCB等国际信用卡组织，致力于为中国企业提供专业而安全的电子支付解决方案，帮助中国企业快速持续和健康成长。');
INSERT INTO uchome_config VALUES ('apnote','支付宝（中国）网络技术有限公司是国内领先的独立第三方支付平台，由阿里巴巴集团创办。支付宝（www.alipay.com）致力于为中国电子商务提供“简单、安全、快速”的在线支付解决方案。 ');
INSERT INTO uchome_config VALUES ('clnote','YeePay易宝的卓越服务得到了业界的广泛承认。2007年，YeePay易宝在中国电子商务金融与支付行业发展大会上荣获中国电子支付优秀企业奖；2006年，YeePay易宝分获电子商务财富年会\"最佳支付平台\"、2006电子支付应用峰会\"最可信赖电子支付品牌\"、中国3G百强调查无线增值领域最佳支付奖、电子支付高层论坛\"电子支付创新奖\"、第九届电子商务大会\"电子商务诚信企业奖\"等多个奖项；2005年，YeePay易宝还曾被中国互联网协会评为\"创新50强\"。');
INSERT INTO uchome_config VALUES ('clbnote','YeePay易宝的卓越服务得到了业界的广泛承认。2007年，YeePay易宝在中国电子商务金融与支付行业发展大会上荣获中国电子支付优秀企业奖；2006年，YeePay易宝分获电子商务财富年会\"最佳支付平台\"、2006电子支付应用峰会\"最可信赖电子支付品牌\"、中国3G百强调查无线增值领域最佳支付奖、电子支付高层论坛\"电子支付创新奖\"、第九届电子商务大会\"电子商务诚信企业奖\"等多个奖项；2005年，YeePay易宝还曾被中国互联网协会评为\"创新50强\"。');
INSERT INTO uchome_config VALUES ('ppnote','   现已拥有 1.5亿个账户，其服务遍及190 个国家和地区，PayPal为各种行业的用户提供快速、实惠而便捷的在线付款服务.');
INSERT INTO uchome_config VALUES ('clsnote','立即让您成为最耀眼的那个人！成为VIP会员，享有本站提供的丰富特色功能，结交天下好友! ');
INSERT INTO uchome_config VALUES ('jfnote','立即让您成为最耀眼的那个人！成为VIP会员，享有本站提供的丰富特色功能，结交天下好友! ');
INSERT INTO uchome_config VALUES ('viplookinfo','1');
INSERT INTO uchome_config VALUES ('paykey','11');
INSERT INTO uchome_config VALUES ('sitekey','6ae1a3KYHW25ywDy');
INSERT INTO uchome_config VALUES ('siteallurl','http://www.zibo3.com/');
INSERT INTO uchome_config VALUES ('licensed','0');
INSERT INTO uchome_config VALUES ('debuginfo','0');
INSERT INTO uchome_config VALUES ('miibeian','京ICP证080482号');
INSERT INTO uchome_config VALUES ('headercharset','0');
INSERT INTO uchome_config VALUES ('avatarreal','0');
INSERT INTO uchome_config VALUES ('uc_dir','');
INSERT INTO uchome_config VALUES ('my_ip','');
INSERT INTO uchome_config VALUES ('closereason','更多惊喜，更多期待，站点升级中，请稍等...');
INSERT INTO uchome_config VALUES ('feeddefaultfilter','all');
INSERT INTO uchome_config VALUES ('my_closecheckupdate','0');
INSERT INTO uchome_config VALUES ('spacebarusername','demonpig,GEXUAN,happy,lingling,mylove,wagamama,yaya,zhangguozhou');
INSERT INTO uchome_config VALUES ('defaultfusername','demonpig,GEXUAN,happy,lingling,mylove,wagamama,yaya,zhangguozhou');
INSERT INTO uchome_config VALUES ('domainroot','');
INSERT INTO uchome_config VALUES ('ftpurl','');
INSERT INTO uchome_config VALUES ('login_action','');
INSERT INTO uchome_config VALUES ('register_action','');
INSERT INTO uchome_config VALUES ('questionmode','0');
INSERT INTO uchome_config VALUES ('need_email','0');
INSERT INTO uchome_config VALUES ('newusertime','');
INSERT INTO uchome_config VALUES ('need_avatar','0');
INSERT INTO uchome_config VALUES ('need_friendnum','');
INSERT INTO uchome_config VALUES ('seccode_login','0');
INSERT INTO uchome_config VALUES ('ipaccess','');
INSERT INTO uchome_config VALUES ('ipbanned','');
INSERT INTO uchome_config VALUES ('updatestat','1');
INSERT INTO uchome_config VALUES ('feedhiddenicon','friend,profile,task,wall');
INSERT INTO uchome_config VALUES ('maxreward','10');
INSERT INTO uchome_config VALUES ('feedhotday','2');
INSERT INTO uchome_config VALUES ('feedhotnum','3');
INSERT INTO uchome_config VALUES ('feedhotmin','3');
INSERT INTO uchome_config VALUES ('my_showgift','1');
INSERT INTO uchome_config VALUES ('newspacenum','3');
INSERT INTO uchome_config VALUES ('topcachetime','60');
INSERT INTO uchome_config VALUES ('update_release','20100416');
INSERT INTO uchome_config VALUES ('checkemail','0');
INSERT INTO uchome_config VALUES ('regipdate','');
INSERT INTO uchome_config VALUES ('openxmlrpc','0');
INSERT INTO uchome_config VALUES ('name_allowviewspace','0');
INSERT INTO uchome_config VALUES ('name_allowpoll','0');
INSERT INTO uchome_config VALUES ('name_allowevent','0');
INSERT INTO uchome_config VALUES ('name_allowuserapp','0');
INSERT INTO uchome_config VALUES ('video_allowviewphoto','0');
INSERT INTO uchome_config VALUES ('video_allowfriend','0');
INSERT INTO uchome_config VALUES ('video_allowpoke','0');
INSERT INTO uchome_config VALUES ('video_allowwall','0');
INSERT INTO uchome_config VALUES ('video_allowcomment','0');
INSERT INTO uchome_config VALUES ('video_allowdoing','0');
INSERT INTO uchome_config VALUES ('video_allowblog','0');
INSERT INTO uchome_config VALUES ('video_allowalbum','0');
INSERT INTO uchome_config VALUES ('video_allowthread','0');
INSERT INTO uchome_config VALUES ('video_allowpoll','0');
INSERT INTO uchome_config VALUES ('video_allowevent','0');
INSERT INTO uchome_config VALUES ('video_allowshare','0');
INSERT INTO uchome_config VALUES ('video_allowpost','0');
INSERT INTO uchome_config VALUES ('video_allowuserapp','0');
INSERT INTO uchome_config VALUES ('newspaceavatar','0');
INSERT INTO uchome_config VALUES ('newspacerealname','0');
INSERT INTO uchome_config VALUES ('newspacevideophoto','0');
INSERT INTO uchome_config VALUES ('defaultpoke','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】');

DROP TABLE IF EXISTS uchome_creditlog;
CREATE TABLE uchome_creditlog (
  clid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  rid mediumint(8) unsigned NOT NULL default '0',
  total mediumint(8) unsigned NOT NULL default '0',
  cyclenum mediumint(8) unsigned NOT NULL default '0',
  credit mediumint(8) unsigned NOT NULL default '0',
  experience mediumint(8) unsigned NOT NULL default '0',
  starttime int(10) unsigned NOT NULL default '0',
  info text NOT NULL,
  `user` text NOT NULL,
  app text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (clid),
  KEY uid (uid,rid),
  KEY dateline (dateline)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk AUTO_INCREMENT=13;

INSERT INTO uchome_creditlog VALUES ('1','1','1','1','1','10','0','0','','','','1312915614');
INSERT INTO uchome_creditlog VALUES ('2','1','10','4','1','15','15','0','','','','1314925613');
INSERT INTO uchome_creditlog VALUES ('3','2','10','2','1','15','15','0','','','','1313563876');
INSERT INTO uchome_creditlog VALUES ('4','2','1','1','1','1','0','0','','','','1314929403');
INSERT INTO uchome_creditlog VALUES ('5','3','1','1','1','1','0','0','','','','1314936507');
INSERT INTO uchome_creditlog VALUES ('6','4','1','1','1','1','0','0','','','','1314938156');
INSERT INTO uchome_creditlog VALUES ('7','5','1','1','1','1','0','0','','','','1315016549');
INSERT INTO uchome_creditlog VALUES ('8','6','1','1','1','1','0','0','','','','1315017741');
INSERT INTO uchome_creditlog VALUES ('9','7','1','1','1','1','0','0','','','','1316139290');
INSERT INTO uchome_creditlog VALUES ('10','8','1','1','1','1','0','0','','','','1316140528');
INSERT INTO uchome_creditlog VALUES ('11','9','1','1','1','1','0','0','','','','1316237582');
INSERT INTO uchome_creditlog VALUES ('12','10','1','1','1','1','0','0','','','','1316535582');

DROP TABLE IF EXISTS uchome_creditrule;
CREATE TABLE uchome_creditrule (
  rid mediumint(8) unsigned NOT NULL auto_increment,
  rulename char(20) NOT NULL default '',
  `action` char(20) NOT NULL default '',
  cycletype tinyint(1) NOT NULL default '0',
  cycletime int(10) NOT NULL default '0',
  rewardnum tinyint(2) NOT NULL default '1',
  rewardtype tinyint(1) NOT NULL default '1',
  norepeat tinyint(1) NOT NULL default '0',
  credit mediumint(8) unsigned NOT NULL default '0',
  experience mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (rid),
  KEY `action` (`action`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=gbk AUTO_INCREMENT=48;

INSERT INTO uchome_creditrule VALUES ('1','开通空间','register','0','0','1','1','0','1','0');
INSERT INTO uchome_creditrule VALUES ('2','实名认证','realname','0','0','1','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('3','邮箱认证','realemail','0','0','1','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('4','成功邀请好友','invitefriend','4','0','20','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('5','设置头像','setavatar','0','0','1','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('6','视频认证','videophoto','0','0','1','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('7','成功举报','report','4','0','0','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('8','更新心情','updatemood','1','0','3','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('9','热点信息','hotinfo','4','0','0','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('10','每天登陆','daylogin','1','0','1','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('11','访问别人空间','visit','1','0','10','1','2','0','0');
INSERT INTO uchome_creditrule VALUES ('12','打招呼','poke','1','0','10','1','2','0','0');
INSERT INTO uchome_creditrule VALUES ('13','留言','guestbook','1','0','20','1','2','0','0');
INSERT INTO uchome_creditrule VALUES ('14','被留言','getguestbook','1','0','5','1','2','0','0');
INSERT INTO uchome_creditrule VALUES ('15','发表记录','doing','1','0','5','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('16','发表日志','publishblog','1','0','3','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('17','上传图片','uploadimage','1','0','10','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('18','拍大头贴','camera','1','0','5','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('19','发表话题','publishthread','1','0','5','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('20','回复话题','replythread','1','0','10','1','1','0','0');
INSERT INTO uchome_creditrule VALUES ('21','创建投票','createpoll','1','0','5','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('22','参与投票','joinpoll','1','0','10','1','1','0','0');
INSERT INTO uchome_creditrule VALUES ('23','发起活动','createevent','1','0','1','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('24','参与活动','joinevent','1','0','1','1','1','0','0');
INSERT INTO uchome_creditrule VALUES ('25','推荐活动','recommendevent','4','0','0','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('26','发起分享','createshare','1','0','3','1','0','0','0');
INSERT INTO uchome_creditrule VALUES ('27','评论','comment','1','0','40','1','1','0','0');
INSERT INTO uchome_creditrule VALUES ('28','被评论','getcomment','1','0','20','1','1','0','0');
INSERT INTO uchome_creditrule VALUES ('29','安装应用','installapp','4','0','0','1','3','0','0');
INSERT INTO uchome_creditrule VALUES ('30','使用应用','useapp','1','0','10','1','3','0','0');
INSERT INTO uchome_creditrule VALUES ('31','信息表态','click','1','0','10','1','1','0','0');
INSERT INTO uchome_creditrule VALUES ('32','修改实名','editrealname','0','0','1','0','0','5','0');
INSERT INTO uchome_creditrule VALUES ('33','更改邮箱认证','editrealemail','0','0','1','0','0','5','0');
INSERT INTO uchome_creditrule VALUES ('34','头像被删除','delavatar','0','0','1','0','0','10','10');
INSERT INTO uchome_creditrule VALUES ('35','获取邀请码','invitecode','0','0','1','0','0','0','0');
INSERT INTO uchome_creditrule VALUES ('36','搜索一次','search','0','0','1','0','0','1','0');
INSERT INTO uchome_creditrule VALUES ('37','日志导入','blogimport','0','0','1','0','0','10','0');
INSERT INTO uchome_creditrule VALUES ('38','修改域名','modifydomain','0','0','1','0','0','5','0');
INSERT INTO uchome_creditrule VALUES ('39','日志被删除','delblog','0','0','1','0','0','10','10');
INSERT INTO uchome_creditrule VALUES ('40','记录被删除','deldoing','0','0','1','0','0','2','2');
INSERT INTO uchome_creditrule VALUES ('41','图片被删除','delimage','0','0','1','0','0','4','4');
INSERT INTO uchome_creditrule VALUES ('42','投票被删除','delpoll','0','0','1','0','0','4','4');
INSERT INTO uchome_creditrule VALUES ('43','话题被删除','delthread','0','0','1','0','0','4','4');
INSERT INTO uchome_creditrule VALUES ('44','活动被删除','delevent','0','0','1','0','0','6','6');
INSERT INTO uchome_creditrule VALUES ('45','分享被删除','delshare','0','0','1','0','0','4','4');
INSERT INTO uchome_creditrule VALUES ('46','留言被删除','delguestbook','0','0','1','0','0','4','4');
INSERT INTO uchome_creditrule VALUES ('47','评论被删除','delcomment','0','0','1','0','0','2','2');

DROP TABLE IF EXISTS uchome_cron;
CREATE TABLE uchome_cron (
  cronid smallint(6) unsigned NOT NULL auto_increment,
  available tinyint(1) NOT NULL default '0',
  `type` enum('user','system') NOT NULL default 'user',
  `name` char(50) NOT NULL default '',
  filename char(50) NOT NULL default '',
  lastrun int(10) unsigned NOT NULL default '0',
  nextrun int(10) unsigned NOT NULL default '0',
  weekday tinyint(1) NOT NULL default '0',
  `day` tinyint(2) NOT NULL default '0',
  `hour` tinyint(2) NOT NULL default '0',
  `minute` char(36) NOT NULL default '',
  PRIMARY KEY  (cronid),
  KEY nextrun (available,nextrun)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk AUTO_INCREMENT=6;

INSERT INTO uchome_cron VALUES ('1','1','system','更新浏览数统计','log.php','1316576144','1316576400','-1','-1','-1','0	5	10	15	20	25	30	35	40	45	50	55');
INSERT INTO uchome_cron VALUES ('2','1','system','清理过期feed','cleanfeed.php','1316536165','1316545200','-1','-1','3','4');
INSERT INTO uchome_cron VALUES ('3','1','system','清理个人通知','cleannotification.php','1316536170','1316552400','-1','-1','5','6');
INSERT INTO uchome_cron VALUES ('4','1','system','同步UC的feed','getfeed.php','1316576160','1316576220','-1','-1','-1','2	7	12	17	22	27	32	37	42	47	52');
INSERT INTO uchome_cron VALUES ('5','1','system','清理脚印和最新访客','cleantrace.php','1316536089','1316541600','-1','-1','2','3');

DROP TABLE IF EXISTS uchome_data;
CREATE TABLE uchome_data (
  var varchar(20) NOT NULL default '',
  datavalue text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (var)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_data VALUES ('creditrule','a:2:{s:3:\"get\";a:6:{s:4:\"blog\";s:1:\"2\";s:3:\"pic\";s:1:\"1\";s:7:\"comment\";s:1:\"1\";s:6:\"thread\";s:1:\"2\";s:4:\"post\";s:1:\"1\";s:6:\"invite\";s:2:\"10\";}s:3:\"pay\";a:11:{s:4:\"blog\";s:1:\"2\";s:3:\"pic\";s:1:\"1\";s:7:\"comment\";s:1:\"1\";s:6:\"thread\";s:1:\"2\";s:4:\"post\";s:1:\"1\";s:6:\"search\";s:1:\"1\";s:6:\"attach\";s:2:\"10\";s:6:\"xmlrpc\";s:1:\"5\";s:6:\"invite\";s:1:\"0\";s:6:\"domain\";s:2:\"10\";s:8:\"realname\";s:2:\"10\";}}','0');
INSERT INTO uchome_data VALUES ('mail','a:9:{s:8:\"mailsend\";s:1:\"2\";s:13:\"maildelimiter\";s:1:\"1\";s:12:\"mailusername\";s:1:\"1\";s:6:\"server\";s:11:\"smtp.qq.com\";s:4:\"port\";s:2:\"25\";s:4:\"auth\";s:1:\"0\";s:4:\"from\";s:29:\"淄博爱情公寓<admin@zibo3.com>\";s:13:\"auth_username\";s:15:\"admin@zibo3.com\";s:13:\"auth_password\";s:10:\"1007794273\";}','1314925984');
INSERT INTO uchome_data VALUES ('setting','a:14:{s:10:\"thumbwidth\";s:3:\"100\";s:11:\"thumbheight\";s:3:\"100\";s:13:\"maxthumbwidth\";s:0:\"\";s:14:\"maxthumbheight\";s:0:\"\";s:13:\"watermarkfile\";s:0:\"\";s:12:\"watermarkpos\";s:1:\"4\";s:6:\"ftpssl\";s:1:\"0\";s:7:\"ftphost\";s:0:\"\";s:7:\"ftpport\";s:0:\"\";s:7:\"ftpuser\";s:0:\"\";s:11:\"ftppassword\";s:0:\"\";s:7:\"ftppasv\";s:1:\"0\";s:6:\"ftpdir\";s:0:\"\";s:10:\"ftptimeout\";s:0:\"\";}','1314925984');
INSERT INTO uchome_data VALUES ('index_cache','a:9:{s:8:\"bloglist\";a:0:{}s:9:\"albumlist\";a:0:{}s:8:\"feedlist\";a:10:{i:0;a:23:{s:6:\"feedid\";s:4:\"2284\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:7:\"profile\";s:3:\"uid\";s:1:\"4\";s:8:\"username\";s:6:\"minmin\";s:8:\"dateline\";s:10:\"1313197688\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"c9b7c4a9815e37169a8dc859b505045d\";s:9:\"hash_data\";s:32:\"8d995a08a2b3a4c5288ddc2cc69b83c2\";s:14:\"title_template\";s:8:\"dazhaohu\";s:10:\"title_data\";s:6:\"a:0:{}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:1;a:23:{s:6:\"feedid\";s:4:\"2282\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:7:\"profile\";s:3:\"uid\";s:1:\"2\";s:8:\"username\";s:4:\"tfwl\";s:8:\"dateline\";s:10:\"1312993857\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"c9b7c4a9815e37169a8dc859b505045d\";s:9:\"hash_data\";s:32:\"8d995a08a2b3a4c5288ddc2cc69b83c2\";s:14:\"title_template\";s:8:\"dazhaohu\";s:10:\"title_data\";s:6:\"a:0:{}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:2;a:23:{s:6:\"feedid\";s:4:\"2283\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:7:\"profile\";s:3:\"uid\";s:1:\"4\";s:8:\"username\";s:6:\"minmin\";s:8:\"dateline\";s:10:\"1312986459\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"ca6d6b73916c6ddf4df03e09775851ab\";s:9:\"hash_data\";s:32:\"54f1e6074e430f09e773622702d5d7d7\";s:14:\"title_template\";s:28:\"{actor} 开通了自己的个人主页\";s:10:\"title_data\";s:6:\"a:0:{}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:3;a:23:{s:6:\"feedid\";s:4:\"2281\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:7:\"profile\";s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:13:\"huangchunling\";s:8:\"dateline\";s:10:\"1312969626\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"c9b7c4a9815e37169a8dc859b505045d\";s:9:\"hash_data\";s:32:\"8d995a08a2b3a4c5288ddc2cc69b83c2\";s:14:\"title_template\";s:8:\"dazhaohu\";s:10:\"title_data\";s:6:\"a:0:{}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:4;a:23:{s:6:\"feedid\";s:4:\"2280\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:6:\"friend\";s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:13:\"huangchunling\";s:8:\"dateline\";s:10:\"1312969609\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"9c4e88b6b72b924abaffafdf246fc8f9\";s:9:\"hash_data\";s:32:\"27d0798f1e1ff4d8c738b0afd92405d2\";s:14:\"title_template\";s:32:\"{actor} 和 {touser} 找到了意中人\";s:10:\"title_data\";s:62:\"a:1:{s:6:\"touser\";s:35:\"<a href=\"space.php?uid=110\">CCA</a>\";}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:5;a:23:{s:6:\"feedid\";s:4:\"2279\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:6:\"friend\";s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:13:\"huangchunling\";s:8:\"dateline\";s:10:\"1312969604\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"9c4e88b6b72b924abaffafdf246fc8f9\";s:9:\"hash_data\";s:32:\"64f5a2e1bfa99fe708ea01f1034011c9\";s:14:\"title_template\";s:32:\"{actor} 和 {touser} 找到了意中人\";s:10:\"title_data\";s:64:\"a:1:{s:6:\"touser\";s:37:\"<a href=\"space.php?uid=116\">woyjh</a>\";}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:6;a:23:{s:6:\"feedid\";s:4:\"2278\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:6:\"friend\";s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:13:\"huangchunling\";s:8:\"dateline\";s:10:\"1312969600\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"9c4e88b6b72b924abaffafdf246fc8f9\";s:9:\"hash_data\";s:32:\"8b2279f439579eb7b1e2c6c1cfd24156\";s:14:\"title_template\";s:32:\"{actor} 和 {touser} 找到了意中人\";s:10:\"title_data\";s:65:\"a:1:{s:6:\"touser\";s:38:\"<a href=\"space.php?uid=177\">iangbo</a>\";}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:7;a:23:{s:6:\"feedid\";s:4:\"2277\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:6:\"friend\";s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:13:\"huangchunling\";s:8:\"dateline\";s:10:\"1312969591\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"9c4e88b6b72b924abaffafdf246fc8f9\";s:9:\"hash_data\";s:32:\"414513ab60f54f200f7bde9dbe8d8cc6\";s:14:\"title_template\";s:32:\"{actor} 和 {touser} 找到了意中人\";s:10:\"title_data\";s:64:\"a:1:{s:6:\"touser\";s:37:\"<a href=\"space.php?uid=176\">MAYJJ</a>\";}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:8;a:23:{s:6:\"feedid\";s:4:\"2276\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:6:\"friend\";s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:13:\"huangchunling\";s:8:\"dateline\";s:10:\"1312969587\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"9c4e88b6b72b924abaffafdf246fc8f9\";s:9:\"hash_data\";s:32:\"9f01644d0068a4121d678516d0d94262\";s:14:\"title_template\";s:32:\"{actor} 和 {touser} 找到了意中人\";s:10:\"title_data\";s:65:\"a:1:{s:6:\"touser\";s:38:\"<a href=\"space.php?uid=212\">abcdef</a>\";}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}i:9;a:23:{s:6:\"feedid\";s:4:\"2275\";s:5:\"appid\";s:1:\"1\";s:4:\"icon\";s:6:\"friend\";s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:13:\"huangchunling\";s:8:\"dateline\";s:10:\"1312969581\";s:6:\"friend\";s:1:\"0\";s:13:\"hash_template\";s:32:\"9c4e88b6b72b924abaffafdf246fc8f9\";s:9:\"hash_data\";s:32:\"6d21540d1c20ba7d9253b63948e6921d\";s:14:\"title_template\";s:32:\"{actor} 和 {touser} 找到了意中人\";s:10:\"title_data\";s:65:\"a:1:{s:6:\"touser\";s:38:\"<a href=\"space.php?uid=277\">Daniel</a>\";}\";s:13:\"body_template\";s:0:\"\";s:9:\"body_data\";s:6:\"a:0:{}\";s:12:\"body_general\";s:0:\"\";s:7:\"image_1\";s:0:\"\";s:12:\"image_1_link\";s:0:\"\";s:7:\"image_2\";s:0:\"\";s:12:\"image_2_link\";s:0:\"\";s:7:\"image_3\";s:0:\"\";s:12:\"image_3_link\";s:0:\"\";s:7:\"image_4\";s:0:\"\";s:12:\"image_4_link\";s:0:\"\";s:10:\"target_ids\";s:0:\"\";}}s:8:\"mtaglist\";a:0:{}s:10:\"threadlist\";a:0:{}s:9:\"spacelist\";a:3:{i:0;a:4:{s:3:\"uid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:4:\"name\";s:0:\"\";s:10:\"namestatus\";s:1:\"0\";}i:1;a:4:{s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:13:\"huangchunling\";s:4:\"name\";s:0:\"\";s:10:\"namestatus\";s:1:\"0\";}i:2;a:4:{s:3:\"uid\";s:1:\"2\";s:8:\"username\";s:4:\"tfwl\";s:4:\"name\";s:0:\"\";s:10:\"namestatus\";s:1:\"0\";}}s:9:\"myapplist\";a:0:{}s:10:\"onlinelist\";s:0:\"\";s:3:\"_SN\";a:4:{i:4;s:6:\"minmin\";i:2;s:4:\"tfwl\";i:3;s:13:\"huangchunling\";i:1;s:5:\"admin\";}}','1313343941');
INSERT INTO uchome_data VALUES ('sitename','一线牵缘','0');
INSERT INTO uchome_data VALUES ('siteallurl','http://www.yxqianyuan.com/','0');
INSERT INTO uchome_data VALUES ('sitelogo','image/logo.gif','0');
INSERT INTO uchome_data VALUES ('template','blue','0');
INSERT INTO uchome_data VALUES ('adminemail','123456@qq.com','0');
INSERT INTO uchome_data VALUES ('timeoffset','8','0');
INSERT INTO uchome_data VALUES ('licensed','0','0');
INSERT INTO uchome_data VALUES ('debuginfo','0','0');
INSERT INTO uchome_data VALUES ('miibeian','京ICP证080482号','0');
INSERT INTO uchome_data VALUES ('headercharset','0','0');
INSERT INTO uchome_data VALUES ('allowrewrite','0','0');
INSERT INTO uchome_data VALUES ('onlinehold','1800','0');
INSERT INTO uchome_data VALUES ('avatarreal','0','0');
INSERT INTO uchome_data VALUES ('uc_dir','','0');
INSERT INTO uchome_data VALUES ('my_ip','','0');
INSERT INTO uchome_data VALUES ('close','0','0');
INSERT INTO uchome_data VALUES ('closereason','','0');
INSERT INTO uchome_data VALUES ('closeregister','0','0');
INSERT INTO uchome_data VALUES ('closeinvite','0','0');
INSERT INTO uchome_data VALUES ('maxpage','50','0');
INSERT INTO uchome_data VALUES ('feedday','15','0');
INSERT INTO uchome_data VALUES ('feedmaxnum','50','0');
INSERT INTO uchome_data VALUES ('showallfriendnum','10','0');
INSERT INTO uchome_data VALUES ('feeddefaultfilter','all','0');
INSERT INTO uchome_data VALUES ('feedfilternum','10','0');
INSERT INTO uchome_data VALUES ('feedtargetblank','1','0');
INSERT INTO uchome_data VALUES ('feedread','1','0');
INSERT INTO uchome_data VALUES ('my_closecheckupdate','0','0');
INSERT INTO uchome_data VALUES ('linkguide','1','0');
INSERT INTO uchome_data VALUES ('starcredit','100','0');
INSERT INTO uchome_data VALUES ('starlevelnum','5','0');
INSERT INTO uchome_data VALUES ('defaultfusername','demonpig,GEXUAN,happy,lingling,mylove,yaya','0');
INSERT INTO uchome_data VALUES ('groupnum','8','0');
INSERT INTO uchome_data VALUES ('importnum','100','0');
INSERT INTO uchome_data VALUES ('sendmailday','0','0');
INSERT INTO uchome_data VALUES ('uc_tagrelated','1','0');
INSERT INTO uchome_data VALUES ('uc_tagrelatedtime','86400','0');
INSERT INTO uchome_data VALUES ('allowcache','1','0');
INSERT INTO uchome_data VALUES ('cachemode','database','0');
INSERT INTO uchome_data VALUES ('cachegrade','0','0');
INSERT INTO uchome_data VALUES ('allowdomain','0','0');
INSERT INTO uchome_data VALUES ('holddomain','www|*blog*|*space*|x','0');
INSERT INTO uchome_data VALUES ('domainroot','','0');
INSERT INTO uchome_data VALUES ('realname','0','0');
INSERT INTO uchome_data VALUES ('namecheck','0','0');
INSERT INTO uchome_data VALUES ('namechange','0','0');
INSERT INTO uchome_data VALUES ('name_allowfriend','1','0');
INSERT INTO uchome_data VALUES ('name_allowpoke','1','0');
INSERT INTO uchome_data VALUES ('name_allowdoing','0','0');
INSERT INTO uchome_data VALUES ('name_allowblog','0','0');
INSERT INTO uchome_data VALUES ('name_allowalbum','0','0');
INSERT INTO uchome_data VALUES ('name_allowthread','0','0');
INSERT INTO uchome_data VALUES ('name_allowshare','0','0');
INSERT INTO uchome_data VALUES ('name_allowcomment','0','0');
INSERT INTO uchome_data VALUES ('name_allowpost','0','0');
INSERT INTO uchome_data VALUES ('allowwatermark','0','0');
INSERT INTO uchome_data VALUES ('allowftp','0','0');
INSERT INTO uchome_data VALUES ('ftpurl','','0');
INSERT INTO uchome_data VALUES ('reason','','0');
INSERT INTO uchome_data VALUES ('registerrule','1、协议的确认和接受<br>\r\n本网站的各项网络服务所有权和运营权归有缘爱实际所有者（以下称“本网站”）所有。本网站依照本协议提供网络服务，此外，当服务使用者（以下称“会员”）使用本网站各项服务时，会员应当同意本协议全部内容。一旦会员勾选 “我已认真阅读并同意有缘爱用户协议”,即表示会员已阅读、了解并同意与本网站达成协议，并接受所有协议条款。<br><br>\r\n\r\n2、会员注册条件<br>\r\n1) 申请注册成为本网站的会员应全部满足下列条件：<br>\r\n必须年满18周岁以上。<br>\r\n向本网站提供本人真实、正确、最新及完整的资料；<br>\r\n随时更新登记资料，确保其有效性；<br>\r\n提供真实有效的电子邮箱地址<br>\r\n征友过程中，务必保持征友帐号的唯一性。<br>\r\n2) 若会员提供任何错误、不实或不完整的资料，或本网站有理由怀疑资料为错误、不实或不完整及违反协议的，本网站有权修改会员的注册昵称、基本资料等，或暂停或终止该会员的帐号，或暂停或终止提供本网站提供的全部或部分服务。会员购买的服务，无论是否剩余及到期，均不退还。<br><br>\r\n\r\n3、会员帐号、密码及安全<br>\r\n1) 在完成会员注册程序之后，会员有义务保证密码及帐号的安全。会员应对利用该密码及帐号所进行的一切活动负全部责任，包括任何经由本网站以上载、张贴、发送电子邮件或任何其它方式传送的资讯、资料、文字、软件、音乐、音讯、照片、图形、视讯、信息或其它资料，无论系公开还是私下传送，均由内容提供者承担责任。<br>\r\n2) 会员的密码或帐号遭到未获授权的使用，或者发生其它任何安全问题时，会员应立即通知本网站。由于会员使用不当导致帐号、密码泄漏，进而导致其资料、信息泄漏的，由会员承担其不利后果，本网站不承担责任。<br><br>\r\n\r\n4、服务说明<br>\r\n1) 本网站通过国际互联网为会员提供网络服务，为使用网站服务，会员应自行配备进入国际互联网所必需的设备，包括计算机、数据机或其它存取装置，并自行支付登陆国际互联网所需要的费用。<br>\r\n2) 本网站在提供网络服务时，可能会对部分网络服务收取一定的费用，在此情况下，会在相关页面上做明确的提示。如会员拒绝支付该等费用，则不能使用相关的网络服务。会员应认真阅读本协议及法律声明，如会员购买付费业务，则视为接受网站协议及声明。<br>\r\n3) 无论是付费业务还是本网站免费提供的服务等，上述服务均有有效期，有效期结束后服务将自动终止。同时所有付费业务均不提供退费服务。<br>\r\n4) 对于利用本网站服务进行非法活动，本网站将严肃处理，包括将其列入黑名单、将其被投诉的情形公之于众、删除会员帐号等处罚措施。<br><br>\r\n\r\n5、普通会员基本权利<br>\r\n普通会员基本权利是指本网站承诺除遭受不可抗力外，始终予以保证的普通会员权利：<br>\r\n1）对于自己的个人资料享有以下权利：随时查询及阅览；随时补充或更正；随时请求删除（被网站加入准黑名单或黑名单的会员，没有提出删除个人帐户资料的权利）。<br>\r\n2） 对于他人资料享有以下权利：男性普通会员有被女性会员查询资料的权利；女性普通会员有查看和回复其他会员站内消息的权利。<br><br>\r\n\r\n6、VIP会员基本权利<br>\r\nVIP会员基本权利是指本网站承诺除遭受不可抗力外，始终予以保证的VIP会员权利。<br>\r\nVIP会员除以上普通会员享有的基本权力外，尚有如下基本权利：<br>\r\n1）无限制发送站内消息；<br>\r\n2）经其他会员同意获取其他会员联系方式；<br><br>\r\n\r\n7、本网站权利<br>\r\n本网站有随时填加、修改、删除会员所填资料（资料包括但不限于会员所上传头像、昵称、性别、居住地等）的权力，该权力可用于但不限于以下情况：<br>\r\n1）出于网站宣传需要，网站宣传期通过行使本权力吸引更多会员加入，但于本协议中明确告知该事实情况；网站宣传主要目的在于增加会员数量，以使原会员拥有更多选择和被选择机会，以从长远角度符合会员利益；<br>\r\n2）有任何理由怀疑会员所填资料的真实性、合法性、可靠性；<br>\r\n3）防范会员恶意上传带有淫秽、色情、反动及其他非法图片的头像；<br>\r\n4）防止黑客通过无限制调用会员上传照片耗用本网站服务器资源；<br>\r\n5）其他本网站认为必要的情况。<br>\r\n无论本网站何时以何方式行使该权力，上述5、6点会员之权利均须得以保证，特别是VIP会员第3条权利；会员对此不得提出异议。 <br><br>\r\n\r\n8、免责条款<br>\r\n1) 本网站不担保其提供的服务一定能满足会员的要求和期望，也不担保服务不会中断，对服务的及时性、安全性、出错发生都不作担保。<br>\r\n2) 对于会员通过本网站提供的服务传送的内容，本网站已按照国家有关规定严格审查，但无法完全控制经由网站服务传送的内容，不保证内容的正确性、完整性或品质。因此会员在使用本网站服务时，可能会接触到令人不快、不适当或令人厌恶的内容。在任何情况下，本网站均不为会员经由网站服务以张贴、发送电子邮件或其它方式传送的任何内容负责。但本网站有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停会员使用网站服务的全部或部分，保存有关记录，并向有关机关报告。<br>\r\n3) 对于本网站提供的各种广告信息、链接、资讯等，本网站不保证其内容的正确性、合法性或可靠性，相关责任由广告商承担；并且，对于会员经由本网站服务与广告商进行联系或商业往来，完全属于会员和广告商之间的行为，与本网站没有任何关系。对于前述商业往来所产生的任何损害或损失，本网站不承担任何责任。<br>\r\n4) 对于用户上传的照片、资料等，本网站已采用相关措施进行审核，但不保证其内容的正确性、合法性或可靠性，相关责任由上传上述内容的会员负责。<br>\r\n5) 会员以自己的独立判断从事与交友相关的行为，并独立承担可能产生的不利后果和责任，本网站不承担任何法律责任。<br>\r\n6) 本网站对所有会员自发组织的活动、自发成立的组织不负责任。<br>\r\n7) 对于会员的投诉，本网站将认真核实，但不保证最终公之于众的投诉的真实性、合法性，对于投诉内容侵犯会员隐私权、名誉权等合法权利的，所有法律责任由投诉者承担，与本网站无关。<br><br>\r\n\r\n\r\n9、会员应遵守以下法律法规：<br>\r\n1) 会员同意遵守《中华人民共和国合同法》、《中华人民共和国著作权法》、《全国人民代表大会常务委员会关于维护互联网安全的决定》、《中华人民共和国保守国家秘密法》、《中华人民共和国电信条例》、《中华人民共和国计算机信息系统安全保护条例》、《中华人民共和国计算机信息网络国际联网管理暂行规定》及其实施办法、《计算机信息系统国际联网保密管理规定》、《互联网信息服务管理办法》、《计算机信息网络国际联网安全保护管理办法》、《互联网电子公告服务管理规定》等相关中国法律法规的任何及所有的规定。<br>\r\n2) 在任何情况下，如果本网站有理由认为会员的任何行为，包括但不限于会员的任何言论和其它行为违反或可能违反上述法律和法规的任何规定，本网站可在任何时候不经任何事先通知终止向该会员提供服务。<br><br>\r\n\r\n10、禁止会员从事下列行为:<br>\r\n1) 会员同意将不会利用本网站服务进行任何违法或不正当的活动，包括但不限于下列行为：发布信息或者利用本网站的服务时必须符合中国有关法规，不得在本网站的网页上或者利用本网站的服务制作、复制、发布、传播以下信息：反对宪法所确定的基本原则的；危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；损害国家荣誉和利益的；煽动民族仇恨、民族歧视、破坏民族团结的；破坏国家宗教政策，宣扬邪教和封建迷信的；散布谣言，扰乱社会秩序，破坏社会稳定的；散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；侮辱或者诽谤他人，侵害他人合法权利的；含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；含有中国法律、法规、规章、条例以及任何具有法律效力的规范所限制或禁止的其它内容的。<br>\r\n2) 以任何方式危害未成年人的利益的。<br>\r\n3) 冒充任何人或机构，包含但不限于冒充本网站工作人员、版主、主持人，或以虚伪不实的方式陈述或谎称与任何人或机构有关的。<br>\r\n4) 将病毒或其它计算机代码、档案和程序，加以上载、张贴、发送电子邮件或以其它方式传送的。<br>\r\n5) 跟踪或以其它方式骚扰其他会员的。<br>\r\n6) 以任何方式干扰本网站服务的。<br><br>\r\n\r\n11、隐私权<br>\r\n1) 本协议所涉及的隐私是指：<br>\r\n在会员注册本网站帐户时，升级VIP会员时，使用本网站服务和访问本网站网页时，本网站收集的会员的个人身份识别资料，包括会员的昵称、电邮地址、性别、职业等。本网站自动接收并记录会员的浏览器和服务器日志上的信息，包括但不限于会员的IP地址、在线信息、信件等资料。<br>\r\n2) 本网站会收集上述信息将用于：提供网站服务、改进网页内容，满足会员对某种产品、活动的需求、通知您最新产品、活动信息、或根据法律法规要求提交的资料。<br>\r\n3) 会员的帐号具有密码保护功能，以确保会员的隐私和信息安全。在某些情况下，本网站使用通行标准的保密系统，确保资料传送的安全性。<br>\r\n4) 本网站可能利用工具，为合作伙伴的网站进行数据搜集工作，有关数据也会作统计用途。网站会将所记录的会员数据整合起来，以综合数据形式供合作伙伴参考。综合数据会包括人数统计和使用情况等资料，但不会包含任何可以识别个人身份的数据。<br>\r\n5) 本网站不会将会员的个人识别信息出租或出售给任何人，以下情况除外：<br>\r\n会员明确同意让第三方共享资料；<br>\r\n只有透露会员的个人资料，才能提供会员所要求的产品和服务；<br>\r\n为保护本网站、会员及社会公众的权利、财产或人身安全；<br>\r\n根据法律法规的规定，向司法机关提供；<br>\r\n受到黑客攻击导致会员信息泄漏的；<br>\r\n被搜索引擎在搜索结果中显示；<br>\r\n其他本网站认为有必要的情况。<br><br>\r\n\r\n12、信息储存和限制<br>\r\n本网站有权制订一般措施及限制，包含但不限于网站服务将保留的电子邮件讯息、所张贴内容或其他上载内容的最长期间、每个帐号可收发讯息的最大数量及可收发的单个消息的大小。通过网站服务存储或传送之任何信息、通讯资料和其他内容，如被删除或未予储存，本网站不承担任何责任。会员同意，长时间未使用的帐号，本网站有权关闭。同时本网站有权自行决定并无论通知与否，随时变更这些一般措施及限制。<br><br>\r\n\r\n13、结束服务<br>\r\n1) 如会员连续6月未登陆本网站，该会员的帐号将被自动关闭，本网站同时终止提供与该帐号相对应的全部或部分服务，包括收费服务等，并不承担退费或其他责任。<br>\r\n2) 会员若反对任何本协议的内容或对之后协议条款修改有异议，或对本网站服务不满，会员只有以下的追索权：<br>\r\n不再使用本网站服务；<br>\r\n通告本网站停止该会员的服务。结束会员服务后，会员使用本网站的权利马上中止。<br><br>\r\n\r\n14、赔偿<br>\r\n1) 由于会员通过本网站提供的服务提供、张贴或传送内容、违反本服务协议、或侵害他人任何权利因而衍生或导致任何第三人提出任何索赔或请求，会员同意赔偿本网站或其他合作伙伴的损失，包括合理的律师费和调查费用等。<br>\r\n2) 会员在投诉其他会员有违法行为或违反本协议情形时，投诉者应承担投诉所产生的全部法律责任。如侵犯他人的合法权益，投诉人应独立承担全部法律责任。如给本网站造成损失的，投诉人应承担相应的赔偿责任。\r\n<br><br>\r\n15、本协议的变更和修改<br>\r\n本网站有权随时对协议进行变更和修改。一旦发生协议条款的变动，本网站将在页面上提示修改的内容，或将最新版本的协议以邮件的形式发送给会员。会员如果不同意网站会员协议的修改，可以主动取消会员资格，如对部分服务支付了费用，可以申请将费用全额或部分退回。如果会员继续使用会员帐号，则视为会员已经接受会员协议的修改。<br>\r\n\r\n16、不可抗力<br>\r\n1) “不可抗力”是指本网站不能合理控制、不可预见或即使预见亦无法避免的事件，该事件妨碍、影响或延误本网站根据本协议履行其全部或部分义务。该事件包括但不限于政府行为、自然灾害、战争、黑客袭击、电脑病毒、网络故障等。不可抗力可能导致本网站暂时发生瘫痪、访问速度缓慢、存储数据丢失、存储数据失真、会员个人信息泄漏等不利后果。<br>\r\n2) 遭受不可抗力事件时，本网站可暂行中止履行本协议下的义务直至不可抗力事件的影响消除为止，并且无需为此而承担违约责任但应尽最大努力克服该事件，减轻其负面影响。<br><br>\r\n\r\n17、通知<br>\r\n本网站向其会员发出的通知，将采用电子邮件或页面公告的形式。协议条款的修改或其他事项变更时，本网站将会以上述形式进行通知。<br><br>\r\n\r\n18、法律的适用和管辖<br>\r\n本协议的生效、履行、解释及争议的解决均适用中华人民共和国的现行法律，所发生的争议应提交相关仲裁委员会，其仲裁裁决是终局的。本协议因与中华人民共和国现行法律相抵触而导致部分条款无效的，不影响其他条款的效力。<br><br>\r\n\r\n19、最终解释权和修改权<br>\r\n本协议的最终解释权和修改权归本网站所有。<br><br>\r\n\r\n\r\n20、其他条款<br>\r\n1）本用户协议是本网站和会员双方同意后所达成的协议，具有正式的法律效力。<br> \r\n2）本网站保留进一步修改本协议的权利。<br>','0');
INSERT INTO uchome_data VALUES ('spam','a:0:{}','0');
INSERT INTO uchome_data VALUES ('censor','','0');
INSERT INTO uchome_data VALUES ('backupdir','lQ1D8Z','0');
INSERT INTO uchome_data VALUES ('network','a:5:{s:4:\"blog\";a:12:{s:6:\"blogid\";s:0:\"\";s:3:\"uid\";s:0:\"\";s:4:\"hot1\";s:1:\"0\";s:4:\"hot2\";s:0:\"\";s:8:\"viewnum1\";s:0:\"\";s:8:\"viewnum2\";s:0:\"\";s:9:\"replynum1\";s:0:\"\";s:9:\"replynum2\";s:0:\"\";s:8:\"dateline\";s:0:\"\";s:5:\"order\";s:8:\"dateline\";s:2:\"sc\";s:4:\"desc\";s:5:\"cache\";s:3:\"600\";}s:3:\"pic\";a:8:{s:5:\"picid\";s:0:\"\";s:3:\"uid\";s:0:\"\";s:4:\"hot1\";s:1:\"3\";s:4:\"hot2\";s:0:\"\";s:8:\"dateline\";s:0:\"\";s:5:\"order\";s:8:\"dateline\";s:2:\"sc\";s:4:\"desc\";s:5:\"cache\";s:3:\"700\";}s:6:\"thread\";a:13:{s:3:\"tid\";s:0:\"\";s:3:\"uid\";s:0:\"\";s:4:\"hot1\";s:1:\"3\";s:4:\"hot2\";s:0:\"\";s:8:\"viewnum1\";s:0:\"\";s:8:\"viewnum2\";s:0:\"\";s:9:\"replynum1\";s:0:\"\";s:9:\"replynum2\";s:0:\"\";s:8:\"dateline\";s:0:\"\";s:8:\"lastpost\";s:0:\"\";s:5:\"order\";s:8:\"dateline\";s:2:\"sc\";s:4:\"desc\";s:5:\"cache\";s:3:\"800\";}s:5:\"event\";a:12:{s:7:\"eventid\";s:0:\"\";s:3:\"uid\";s:0:\"\";s:4:\"hot1\";s:0:\"\";s:4:\"hot2\";s:0:\"\";s:10:\"membernum1\";s:0:\"\";s:10:\"membernum2\";s:0:\"\";s:10:\"follownum1\";s:0:\"\";s:10:\"follownum2\";s:0:\"\";s:8:\"dateline\";s:0:\"\";s:5:\"order\";s:8:\"dateline\";s:2:\"sc\";s:4:\"desc\";s:5:\"cache\";s:3:\"900\";}s:4:\"poll\";a:12:{s:3:\"pid\";s:0:\"\";s:3:\"uid\";s:0:\"\";s:4:\"hot1\";s:0:\"\";s:4:\"hot2\";s:0:\"\";s:9:\"voternum1\";s:0:\"\";s:9:\"voternum2\";s:0:\"\";s:9:\"replynum1\";s:0:\"\";s:9:\"replynum2\";s:0:\"\";s:8:\"dateline\";s:0:\"\";s:5:\"order\";s:8:\"dateline\";s:2:\"sc\";s:4:\"desc\";s:5:\"cache\";s:3:\"500\";}}','1314938871');
INSERT INTO uchome_data VALUES ('newspacelist','a:3:{i:0;a:6:{s:3:\"uid\";s:3:\"592\";s:8:\"username\";s:3:\"abu\";s:4:\"name\";s:0:\"\";s:10:\"namestatus\";s:1:\"0\";s:11:\"videostatus\";s:1:\"0\";s:8:\"dateline\";s:10:\"1251447393\";}i:1;a:6:{s:3:\"uid\";s:3:\"591\";s:8:\"username\";s:12:\"zhojin9480cn\";s:4:\"name\";s:0:\"\";s:10:\"namestatus\";s:1:\"0\";s:11:\"videostatus\";s:1:\"0\";s:8:\"dateline\";s:10:\"1251445137\";}i:2;a:6:{s:3:\"uid\";s:3:\"590\";s:8:\"username\";s:3:\"oms\";s:4:\"name\";s:0:\"\";s:10:\"namestatus\";s:1:\"0\";s:11:\"videostatus\";s:1:\"0\";s:8:\"dateline\";s:10:\"1251445104\";}}','1316535582');

DROP TABLE IF EXISTS uchome_docomment;
CREATE TABLE uchome_docomment (
  id int(10) unsigned NOT NULL auto_increment,
  upid int(10) unsigned NOT NULL default '0',
  doid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  message text NOT NULL,
  ip varchar(20) NOT NULL default '',
  grade smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY doid (doid,dateline),
  KEY dateline (dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_doing;
CREATE TABLE uchome_doing (
  doid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  `from` varchar(20) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  message text NOT NULL,
  ip varchar(20) NOT NULL default '',
  replynum int(10) unsigned NOT NULL default '0',
  mood smallint(6) NOT NULL default '0',
  PRIMARY KEY  (doid),
  KEY uid (uid,dateline),
  KEY dateline (dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_event;
CREATE TABLE uchome_event (
  eventid mediumint(8) unsigned NOT NULL auto_increment,
  topicid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  title varchar(80) NOT NULL default '',
  classid smallint(6) unsigned NOT NULL default '0',
  province varchar(20) NOT NULL default '',
  city varchar(20) NOT NULL default '',
  location varchar(80) NOT NULL default '',
  poster varchar(60) NOT NULL default '',
  thumb tinyint(1) NOT NULL default '0',
  remote tinyint(1) NOT NULL default '0',
  deadline int(10) unsigned NOT NULL default '0',
  starttime int(10) unsigned NOT NULL default '0',
  endtime int(10) unsigned NOT NULL default '0',
  public tinyint(3) NOT NULL default '0',
  membernum mediumint(8) unsigned NOT NULL default '0',
  follownum mediumint(8) unsigned NOT NULL default '0',
  viewnum mediumint(8) unsigned NOT NULL default '0',
  grade tinyint(3) NOT NULL default '0',
  recommendtime int(10) unsigned NOT NULL default '0',
  tagid mediumint(8) unsigned NOT NULL default '0',
  picnum mediumint(8) unsigned NOT NULL default '0',
  threadnum mediumint(8) unsigned NOT NULL default '0',
  updatetime int(10) unsigned NOT NULL default '0',
  hot mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (eventid),
  KEY grade (grade,recommendtime),
  KEY membernum (membernum),
  KEY uid (uid,eventid),
  KEY tagid (tagid,eventid),
  KEY topicid (topicid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_eventclass;
CREATE TABLE uchome_eventclass (
  classid smallint(6) unsigned NOT NULL auto_increment,
  classname varchar(80) NOT NULL default '',
  poster tinyint(1) NOT NULL default '0',
  template text NOT NULL,
  displayorder mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (classid),
  UNIQUE KEY classname (classname)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk AUTO_INCREMENT=7;

INSERT INTO uchome_eventclass VALUES ('1','生活/聚会','0','费用说明：\r\n集合地点：\r\n着装要求：\r\n联系方式：\r\n注意事项：','1');
INSERT INTO uchome_eventclass VALUES ('2','出行/旅游','0','路线说明:\r\n费用说明:\r\n装备要求:\r\n交通工具:\r\n集合地点:\r\n联系方式:\r\n注意事项:','2');
INSERT INTO uchome_eventclass VALUES ('3','比赛/运动','0','费用说明：\r\n集合地点：\r\n着装要求：\r\n场地介绍：\r\n联系方式：\r\n注意事项：','4');
INSERT INTO uchome_eventclass VALUES ('4','电影/演出','0','剧情介绍：\r\n费用说明：\r\n集合地点：\r\n联系方式：\r\n注意事项：','3');
INSERT INTO uchome_eventclass VALUES ('5','教育/讲座','0','主办单位：\r\n活动主题：\r\n费用说明：\r\n集合地点：\r\n联系方式：\r\n注意事项：','5');
INSERT INTO uchome_eventclass VALUES ('6','其它','0','','6');

DROP TABLE IF EXISTS uchome_eventfield;
CREATE TABLE uchome_eventfield (
  eventid mediumint(8) unsigned NOT NULL auto_increment,
  detail text NOT NULL,
  template varchar(255) NOT NULL default '',
  limitnum mediumint(8) unsigned NOT NULL default '0',
  verify tinyint(1) NOT NULL default '0',
  allowpic tinyint(1) NOT NULL default '0',
  allowpost tinyint(1) NOT NULL default '0',
  allowinvite tinyint(1) NOT NULL default '0',
  allowfellow tinyint(1) NOT NULL default '0',
  hotuser text NOT NULL,
  PRIMARY KEY  (eventid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_eventinvite;
CREATE TABLE uchome_eventinvite (
  eventid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  touid mediumint(8) unsigned NOT NULL default '0',
  tousername char(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (eventid,touid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_eventpic;
CREATE TABLE uchome_eventpic (
  picid mediumint(8) unsigned NOT NULL default '0',
  eventid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (picid),
  KEY eventid (eventid,picid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_feed;
CREATE TABLE uchome_feed (
  feedid int(10) unsigned NOT NULL auto_increment,
  appid smallint(6) unsigned NOT NULL default '0',
  icon varchar(30) NOT NULL default '',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  friend tinyint(1) NOT NULL default '0',
  hash_template varchar(32) NOT NULL default '',
  hash_data varchar(32) NOT NULL default '',
  title_template text NOT NULL,
  title_data text NOT NULL,
  body_template text NOT NULL,
  body_data text NOT NULL,
  body_general text NOT NULL,
  image_1 varchar(255) NOT NULL default '',
  image_1_link varchar(255) NOT NULL default '',
  image_2 varchar(255) NOT NULL default '',
  image_2_link varchar(255) NOT NULL default '',
  image_3 varchar(255) NOT NULL default '',
  image_3_link varchar(255) NOT NULL default '',
  image_4 varchar(255) NOT NULL default '',
  image_4_link varchar(255) NOT NULL default '',
  target_ids text NOT NULL,
  id mediumint(8) unsigned NOT NULL default '0',
  idtype varchar(15) NOT NULL default '',
  hot mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (feedid),
  KEY uid (uid,dateline),
  KEY friend (friend,dateline),
  KEY dateline (dateline),
  KEY hash_data (hash_data),
  KEY hot (hot),
  KEY id (id,idtype)
) ENGINE=MyISAM AUTO_INCREMENT=2313 DEFAULT CHARSET=gbk AUTO_INCREMENT=2313;

INSERT INTO uchome_feed VALUES ('2286','1','blog','1','admin','1314928809','0','9b14457988d2c988e3c3fbfcf2cd813d','490d03d96e64a275ac2199666a2f5e16','{actor} 发表了新日志','N;','<b>{subject}</b><br>{summary}','a:2:{s:7:\"subject\";s:65:\"<a href=\"space.php?uid=1&do=blog&id=1\">欢迎大家来到淄博交友网</a>\";s:7:\"summary\";s:40:\"欢迎大家来到淄博交友网，祝有情人终成眷属\";}','','','','','','','','','','','1','blogid','123000');
INSERT INTO uchome_feed VALUES ('2295','1','blog','1','admin','1314938361','0','9b14457988d2c988e3c3fbfcf2cd813d','8b9e334e3cf8cc4f3f851216cb9d40e5','{actor} 发表了新日志','N;','<b>{subject}</b><br>{summary}','a:2:{s:7:\"subject\";s:87:\"<a href=\"space.php?uid=1&do=blog&id=2\">淄博交友网是最专业的淄博婚介所，感谢爱情公寓</a>\";s:7:\"summary\";s:44:\"淄博交友网是最专业的淄博婚介所，感谢爱情公寓\";}','','','','','','','','','','','2','blogid','1784');
INSERT INTO uchome_feed VALUES ('2296','1','blog','1','admin','1314938412','0','9b14457988d2c988e3c3fbfcf2cd813d','d9cbb3d94e1169158bcdfb57de01019f','{actor} 发表了新日志','N;','<b>{subject}</b><br>{summary}','a:2:{s:7:\"subject\";s:89:\"<a href=\"space.php?uid=1&do=blog&id=3\">淄博同城交友找情人，有情人终成眷属，幸福在身边</a>\";s:7:\"summary\";s:46:\"淄博同城交友找情人，有情人终成眷属，幸福在身边\";}','','','','','','','','','','','3','blogid','6544');
INSERT INTO uchome_feed VALUES ('2297','1','blog','1','admin','1314938477','0','9b14457988d2c988e3c3fbfcf2cd813d','12a20e18b163c505dd8046860ccaf6fa','{actor} 发表了新日志','N;','<b>{subject}</b><br>{summary}','a:2:{s:7:\"subject\";s:87:\"<a href=\"space.php?uid=1&do=blog&id=4\">淄博交友网会员突破15万，热烈庆贺，2011年给力</a>\";s:7:\"summary\";s:44:\"淄博交友网会员突破15万，热烈庆贺，2011年给力\";}','','','','','','','','','','','4','blogid','1845');
INSERT INTO uchome_feed VALUES ('2298','1','blog','2','羊爱上狼','1314938764','0','9b14457988d2c988e3c3fbfcf2cd813d','4d8a4e8896857821554625704fc92ff5','{actor} 发表了新日志','N;','<b>{subject}</b><br>{summary}','a:2:{s:7:\"subject\";s:87:\"<a href=\"space.php?uid=2&do=blog&id=5\">淄博交友网是最专业的淄博婚介所，感谢爱情公寓</a>\";s:7:\"summary\";s:44:\"淄博交友网是最专业的淄博婚介所，感谢爱情公寓\";}','','','','','','','','','','','5','blogid','5');
INSERT INTO uchome_feed VALUES ('2308','1','profile','7','小女子','1316139290','0','ca6d6b73916c6ddf4df03e09775851ab','54f1e6074e430f09e773622702d5d7d7','{actor} 开通了自己的个人主页','a:0:{}','','a:0:{}','','','','','','','','','','','0','','0');
INSERT INTO uchome_feed VALUES ('2309','1','profile','8','5lyx','1316140528','0','ca6d6b73916c6ddf4df03e09775851ab','54f1e6074e430f09e773622702d5d7d7','{actor} 开通了自己的个人主页','a:0:{}','','a:0:{}','','','','','','','','','','','0','','0');
INSERT INTO uchome_feed VALUES ('2310','1','profile','9','changchneg','1316237582','0','ca6d6b73916c6ddf4df03e09775851ab','54f1e6074e430f09e773622702d5d7d7','{actor} 开通了自己的个人主页','a:0:{}','','a:0:{}','','','','','','','','','','','0','','0');
INSERT INTO uchome_feed VALUES ('2311','1','profile','10','fenghu','1316535582','0','ca6d6b73916c6ddf4df03e09775851ab','54f1e6074e430f09e773622702d5d7d7','{actor} 开通了自己的个人主页','a:0:{}','','a:0:{}','','','','','','','','','','','0','','0');
INSERT INTO uchome_feed VALUES ('2312','1','friend','1','admin','1316576156','0','990a7dd4f8768479e1a16e286940e900','9f33b72c047c375a7d6149939b26e1e9','{actor} 和 {touser} 成为了好友','a:1:{s:6:\"touser\";s:36:\"<a href=\"space.php?uid=7\">小女子</a>\";}','','a:0:{}','','','','','','','','','','','0','','0');

DROP TABLE IF EXISTS uchome_friend;
CREATE TABLE uchome_friend (
  uid mediumint(8) unsigned NOT NULL default '0',
  fuid mediumint(8) unsigned NOT NULL default '0',
  fusername varchar(15) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  gid smallint(6) unsigned NOT NULL default '0',
  note varchar(50) NOT NULL default '',
  num mediumint(8) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,fuid),
  KEY fuid (fuid),
  KEY `status` (uid,`status`,num,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_friend VALUES ('20','9','happy','1','1','','0','1249541010');
INSERT INTO uchome_friend VALUES ('20','1','admin','1','1','','0','1249541647');
INSERT INTO uchome_friend VALUES ('9','20','traveler','1','0','','4','1249541010');
INSERT INTO uchome_friend VALUES ('24','21','wangyang','1','0','','4','1249541632');
INSERT INTO uchome_friend VALUES ('24','20','traveler','0','0','','0','1249541319');
INSERT INTO uchome_friend VALUES ('24','1','admin','1','0','','0','1249541640');
INSERT INTO uchome_friend VALUES ('24','23','xgyinqing','0','0','','1','1249541328');
INSERT INTO uchome_friend VALUES ('24','9','happy','1','0','','2','1249541796');
INSERT INTO uchome_friend VALUES ('24','25','huanglang','1','1','','4','1249541482');
INSERT INTO uchome_friend VALUES ('24','19','susu','0','0','','1','1249541449');
INSERT INTO uchome_friend VALUES ('25','24','ywgg','1','1','','1','1249541482');
INSERT INTO uchome_friend VALUES ('21','1','admin','1','1','','3','1249541636');
INSERT INTO uchome_friend VALUES ('21','25','huanglang','0','1','','2','1249541533');
INSERT INTO uchome_friend VALUES ('21','9','happy','1','1','','11','1249541790');
INSERT INTO uchome_friend VALUES ('21','24','ywgg','1','1','','7','1249541632');
INSERT INTO uchome_friend VALUES ('1','21','wangyang','1','7','','6','1249541636');
INSERT INTO uchome_friend VALUES ('1','24','ywgg','1','7','','1','1249541640');
INSERT INTO uchome_friend VALUES ('1','20','traveler','1','7','','1','1249541647');
INSERT INTO uchome_friend VALUES ('9','21','wangyang','1','0','','7','1249541790');
INSERT INTO uchome_friend VALUES ('9','24','ywgg','1','0','','3','1249541796');
INSERT INTO uchome_friend VALUES ('26','9','happy','1','0','','1','1249541922');
INSERT INTO uchome_friend VALUES ('9','26','xiaobaizj','1','0','','0','1249541922');
INSERT INTO uchome_friend VALUES ('28','9','happy','1','0','','1','1249543024');
INSERT INTO uchome_friend VALUES ('9','28','zzz','1','0','','3','1249543024');
INSERT INTO uchome_friend VALUES ('29','9','happy','1','0','','4','1249543102');
INSERT INTO uchome_friend VALUES ('9','29','asdzxc','1','0','','4','1249543102');
INSERT INTO uchome_friend VALUES ('27','9','happy','1','1','','13','1249543556');
INSERT INTO uchome_friend VALUES ('9','27','tianzi','1','0','','8','1249543556');
INSERT INTO uchome_friend VALUES ('27','21','wangyang','1','0','','1','1249549933');
INSERT INTO uchome_friend VALUES ('29','20','traveler','0','0','','0','1249543632');
INSERT INTO uchome_friend VALUES ('29','21','wangyang','1','0','','4','1249549929');
INSERT INTO uchome_friend VALUES ('29','27','tianzi','1','0','','3','1249543847');
INSERT INTO uchome_friend VALUES ('29','1','admin','1','0','','5','1249545918');
INSERT INTO uchome_friend VALUES ('29','28','zzz','0','0','','0','1249543666');
INSERT INTO uchome_friend VALUES ('27','24','ywgg','0','0','','1','1249543671');
INSERT INTO uchome_friend VALUES ('29','24','ywgg','0','0','','1','1249543673');
INSERT INTO uchome_friend VALUES ('29','15','lingling','0','0','','0','1249543735');
INSERT INTO uchome_friend VALUES ('29','5','yangxin','0','0','','1','1249543743');
INSERT INTO uchome_friend VALUES ('27','29','asdzxc','1','0','','6','1249543847');
INSERT INTO uchome_friend VALUES ('27','26','xiaobaizj','0','0','','0','1249543996');
INSERT INTO uchome_friend VALUES ('30','9','happy','1','0','','3','1249544026');
INSERT INTO uchome_friend VALUES ('9','30','norye','1','0','','0','1249544026');
INSERT INTO uchome_friend VALUES ('32','9','happy','1','0','','1','1249546395');
INSERT INTO uchome_friend VALUES ('32','17','yaya','0','0','','0','1249544503');
INSERT INTO uchome_friend VALUES ('34','9','happy','1','0','','1','1249545630');
INSERT INTO uchome_friend VALUES ('9','34','liliangliang','1','0','','3','1249545630');
INSERT INTO uchome_friend VALUES ('34','21','wangyang','1','7','','0','1249549920');
INSERT INTO uchome_friend VALUES ('34','27','tianzi','1','7','','0','1249698307');
INSERT INTO uchome_friend VALUES ('34','26','xiaobaizj','0','7','','0','1249545890');
INSERT INTO uchome_friend VALUES ('34','24','ywgg','0','7','','0','1249545900');
INSERT INTO uchome_friend VALUES ('35','9','happy','1','0','','5','1249545906');
INSERT INTO uchome_friend VALUES ('9','35','BNRW','1','0','','3','1249545906');
INSERT INTO uchome_friend VALUES ('34','35','BNRW','1','7','','0','1249546520');
INSERT INTO uchome_friend VALUES ('1','29','asdzxc','1','0','','2','1249545918');
INSERT INTO uchome_friend VALUES ('9','32','wjunhua','1','0','','2','1249546395');
INSERT INTO uchome_friend VALUES ('35','34','liliangliang','1','1','','3','1249546520');
INSERT INTO uchome_friend VALUES ('36','9','happy','1','1','','8','1249547287');
INSERT INTO uchome_friend VALUES ('36','29','asdzxc','1','1','','1','1249547859');
INSERT INTO uchome_friend VALUES ('36','32','wjunhua','0','1','','0','1249547014');
INSERT INTO uchome_friend VALUES ('36','31','andy','0','1','','0','1249547022');
INSERT INTO uchome_friend VALUES ('36','27','tianzi','1','1','','0','1249698301');
INSERT INTO uchome_friend VALUES ('9','36','Allan','1','0','','5','1249547287');
INSERT INTO uchome_friend VALUES ('36','30','norye','0','1','','0','1249547479');
INSERT INTO uchome_friend VALUES ('36','1','admin','1','1','','0','1249553613');
INSERT INTO uchome_friend VALUES ('36','24','ywgg','0','1','','0','1249547577');
INSERT INTO uchome_friend VALUES ('36','17','yaya','0','1','','0','1249547634');
INSERT INTO uchome_friend VALUES ('36','13','feifei','0','1','','0','1249547674');
INSERT INTO uchome_friend VALUES ('36','14','jjkj','0','1','','0','1249547721');
INSERT INTO uchome_friend VALUES ('36','8','xiaotong','0','1','','0','1249547774');
INSERT INTO uchome_friend VALUES ('36','6','qianjing','0','1','','0','1249547808');
INSERT INTO uchome_friend VALUES ('29','36','Allan','1','1','','3','1249547859');
INSERT INTO uchome_friend VALUES ('37','9','happy','1','0','','1','1249548432');
INSERT INTO uchome_friend VALUES ('9','37','diablo','1','0','','0','1249548432');
INSERT INTO uchome_friend VALUES ('38','9','happy','1','0','','1','1249548505');
INSERT INTO uchome_friend VALUES ('9','38','andylau','1','0','','0','1249548505');
INSERT INTO uchome_friend VALUES ('39','9','happy','1','0','','2','1249548621');
INSERT INTO uchome_friend VALUES ('9','39','ashice','1','0','','2','1249548621');
INSERT INTO uchome_friend VALUES ('29','39','ashice','1','0','','2','1249549167');
INSERT INTO uchome_friend VALUES ('39','29','asdzxc','1','1','','2','1249549167');
INSERT INTO uchome_friend VALUES ('40','9','happy','1','0','','1','1249549638');
INSERT INTO uchome_friend VALUES ('9','40','gswt','1','0','','0','1249549638');
INSERT INTO uchome_friend VALUES ('21','34','liliangliang','1','1','','1','1249549920');
INSERT INTO uchome_friend VALUES ('21','29','asdzxc','1','1','','1','1249549929');
INSERT INTO uchome_friend VALUES ('21','27','tianzi','1','1','','1','1249549933');
INSERT INTO uchome_friend VALUES ('3','31','andy','0','0','','0','1249550473');
INSERT INTO uchome_friend VALUES ('3','9','happy','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('9','3','情缘难了','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('1','36','Allan','1','0','','2','1249553613');
INSERT INTO uchome_friend VALUES ('42','9','happy','1','0','','1','1249553699');
INSERT INTO uchome_friend VALUES ('9','42','wode','1','0','','1','1249553699');
INSERT INTO uchome_friend VALUES ('42','24','ywgg','0','0','','0','1249553784');
INSERT INTO uchome_friend VALUES ('9','8','5lyx','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('44','9','happy','1','0','','1','1249554207');
INSERT INTO uchome_friend VALUES ('9','44','denglp','1','0','','0','1249554207');
INSERT INTO uchome_friend VALUES ('44','3','evyt','1','1','','0','1249582505');
INSERT INTO uchome_friend VALUES ('44','8','xiaotong','0','1','','0','1249554287');
INSERT INTO uchome_friend VALUES ('44','20','traveler','0','1','','0','1249554292');
INSERT INTO uchome_friend VALUES ('44','21','wangyang','0','1','','0','1249554296');
INSERT INTO uchome_friend VALUES ('44','24','ywgg','0','1','','0','1249554301');
INSERT INTO uchome_friend VALUES ('44','26','xiaobaizj','0','1','','0','1249554325');
INSERT INTO uchome_friend VALUES ('44','27','tianzi','1','1','','0','1249698298');
INSERT INTO uchome_friend VALUES ('44','28','zzz','0','1','','0','1249554333');
INSERT INTO uchome_friend VALUES ('44','34','liliangliang','0','1','','0','1249554337');
INSERT INTO uchome_friend VALUES ('47','9','happy','1','0','','1','1249555379');
INSERT INTO uchome_friend VALUES ('9','47','Larry','1','0','','0','1249555379');
INSERT INTO uchome_friend VALUES ('46','9','happy','1','0','','6','1249555643');
INSERT INTO uchome_friend VALUES ('9','46','ma876401970','1','0','','5','1249555643');
INSERT INTO uchome_friend VALUES ('48','29','asdzxc','0','1','','0','1249557300');
INSERT INTO uchome_friend VALUES ('48','44','denglp','0','1','','1','1249557630');
INSERT INTO uchome_friend VALUES ('48','41','liangdong','0','1','','0','1249557780');
INSERT INTO uchome_friend VALUES ('48','49','piao','0','1','','0','1249558014');
INSERT INTO uchome_friend VALUES ('51','28','zzz','0','1','','0','1249563526');
INSERT INTO uchome_friend VALUES ('51','38','andylau','0','0','','0','1249563925');
INSERT INTO uchome_friend VALUES ('51','9','happy','1','0','','4','1249564101');
INSERT INTO uchome_friend VALUES ('9','51','langbi','1','0','','1','1249564101');
INSERT INTO uchome_friend VALUES ('52','9','happy','1','0','','1','1249566004');
INSERT INTO uchome_friend VALUES ('9','52','ming','1','0','','0','1249566004');
INSERT INTO uchome_friend VALUES ('52','3','evyt','1','0','','0','1249582485');
INSERT INTO uchome_friend VALUES ('52','8','xiaotong','0','0','','0','1249566437');
INSERT INTO uchome_friend VALUES ('52','20','traveler','0','0','','0','1249566455');
INSERT INTO uchome_friend VALUES ('52','21','wangyang','0','0','','0','1249566466');
INSERT INTO uchome_friend VALUES ('52','27','tianzi','1','0','','0','1249698293');
INSERT INTO uchome_friend VALUES ('52','24','ywgg','0','0','','0','1249566510');
INSERT INTO uchome_friend VALUES ('52','32','wjunhua','0','0','','0','1249566524');
INSERT INTO uchome_friend VALUES ('52','40','gswt','0','0','','0','1249566553');
INSERT INTO uchome_friend VALUES ('52','29','asdzxc','0','0','','0','1249566559');
INSERT INTO uchome_friend VALUES ('52','11','jingshui','0','0','','0','1249566576');
INSERT INTO uchome_friend VALUES ('52','15','lingling','0','0','','0','1249566586');
INSERT INTO uchome_friend VALUES ('53','9','happy','1','1','','2','1249570234');
INSERT INTO uchome_friend VALUES ('53','21','wangyang','0','1','','0','1249567739');
INSERT INTO uchome_friend VALUES ('53','29','asdzxc','0','1','','0','1249567744');
INSERT INTO uchome_friend VALUES ('53','1','admin','1','1','','0','1249632504');
INSERT INTO uchome_friend VALUES ('53','39','ashice','0','1','','0','1249567757');
INSERT INTO uchome_friend VALUES ('53','46','ma876401970','1','1','','3','1249644964');
INSERT INTO uchome_friend VALUES ('9','53','xingshengh','1','0','','2','1249570234');
INSERT INTO uchome_friend VALUES ('55','9','happy','1','0','','1','1249571990');
INSERT INTO uchome_friend VALUES ('9','55','chy','1','0','','0','1249571990');
INSERT INTO uchome_friend VALUES ('56','21','wangyang','0','0','','0','1249573344');
INSERT INTO uchome_friend VALUES ('57','9','happy','1','0','','8','1249574574');
INSERT INTO uchome_friend VALUES ('9','57','luoyonyi','1','0','','1','1249574574');
INSERT INTO uchome_friend VALUES ('57','21','wangyang','0','0','','0','1249574773');
INSERT INTO uchome_friend VALUES ('57','26','xiaobaizj','0','0','','1','1249574786');
INSERT INTO uchome_friend VALUES ('57','27','tianzi','1','0','','0','1249698286');
INSERT INTO uchome_friend VALUES ('57','29','asdzxc','0','0','','3','1249574822');
INSERT INTO uchome_friend VALUES ('57','35','BNRW','0','0','','0','1249574831');
INSERT INTO uchome_friend VALUES ('57','34','liliangliang','0','0','','0','1249574840');
INSERT INTO uchome_friend VALUES ('57','30','norye','0','0','','0','1249574845');
INSERT INTO uchome_friend VALUES ('57','46','ma876401970','1','0','','0','1249644960');
INSERT INTO uchome_friend VALUES ('57','1','admin','1','0','','0','1249632501');
INSERT INTO uchome_friend VALUES ('57','44','denglp','0','0','','0','1249575306');
INSERT INTO uchome_friend VALUES ('57','48','yesex','0','0','','0','1249575323');
INSERT INTO uchome_friend VALUES ('57','56','mylover','0','0','','0','1249575340');
INSERT INTO uchome_friend VALUES ('58','9','happy','1','0','','2','1249576843');
INSERT INTO uchome_friend VALUES ('9','58','huaynie','1','0','','0','1249576843');
INSERT INTO uchome_friend VALUES ('58','57','luoyonyi','0','0','','0','1249576912');
INSERT INTO uchome_friend VALUES ('58','54','zhangyan','1','0','','0','1249578898');
INSERT INTO uchome_friend VALUES ('58','46','ma876401970','1','0','','1','1249644956');
INSERT INTO uchome_friend VALUES ('58','51','langbi','0','0','','0','1249577217');
INSERT INTO uchome_friend VALUES ('54','58','huaynie','1','0','','1','1249578898');
INSERT INTO uchome_friend VALUES ('62','59','yanlangtian','0','0','','5','1249580642');
INSERT INTO uchome_friend VALUES ('62','57','luoyonyi','0','0','','0','1249580800');
INSERT INTO uchome_friend VALUES ('62','58','huaynie','1','0','','1','1249814209');
INSERT INTO uchome_friend VALUES ('62','46','ma876401970','1','0','','0','1249644950');
INSERT INTO uchome_friend VALUES ('62','50','wjiusyangyong','0','0','','0','1249580874');
INSERT INTO uchome_friend VALUES ('62','43','love','0','0','','0','1249580887');
INSERT INTO uchome_friend VALUES ('62','52','ming','0','0','','1','1249580927');
INSERT INTO uchome_friend VALUES ('62','9','happy','1','0','','2','1249611087');
INSERT INTO uchome_friend VALUES ('62','44','denglp','0','0','','0','1249580966');
INSERT INTO uchome_friend VALUES ('62','42','wode','0','0','','0','1249580993');
INSERT INTO uchome_friend VALUES ('62','60','hand','0','0','','0','1249581140');
INSERT INTO uchome_friend VALUES ('63','62','asasu','1','0','','5','1249581256');
INSERT INTO uchome_friend VALUES ('63','60','hand','0','0','','0','1249581225');
INSERT INTO uchome_friend VALUES ('63','58','huaynie','1','0','','0','1249814205');
INSERT INTO uchome_friend VALUES ('62','63','bashustar','1','0','','7','1249581256');
INSERT INTO uchome_friend VALUES ('62','64','liusuo','1','0','','3','1249581358');
INSERT INTO uchome_friend VALUES ('64','62','asasu','1','7','','6','1249581358');
INSERT INTO uchome_friend VALUES ('62','54','zhangyan','0','0','','5','1249581542');
INSERT INTO uchome_friend VALUES ('64','9','happy','1','0','','10','1249581635');
INSERT INTO uchome_friend VALUES ('9','64','liusuo','1','0','','0','1249581635');
INSERT INTO uchome_friend VALUES ('64','58','huaynie','1','1','','17','1249814203');
INSERT INTO uchome_friend VALUES ('3','52','ming','1','0','','1','1249582485');
INSERT INTO uchome_friend VALUES ('3','44','denglp','1','0','','1','1249582505');
INSERT INTO uchome_friend VALUES ('64','45','xiaozhougod','0','1','','0','1249582697');
INSERT INTO uchome_friend VALUES ('64','1','admin','1','1','','2','1249632497');
INSERT INTO uchome_friend VALUES ('64','46','ma876401970','1','1','','2','1249644946');
INSERT INTO uchome_friend VALUES ('65','49','piao','0','0','','1','1249593592');
INSERT INTO uchome_friend VALUES ('66','21','wangyang','0','0','','0','1249600443');
INSERT INTO uchome_friend VALUES ('66','27','tianzi','1','0','','0','1249698270');
INSERT INTO uchome_friend VALUES ('66','3','evyt','1','0','','1','1249610901');
INSERT INTO uchome_friend VALUES ('66','30','norye','0','0','','0','1249600489');
INSERT INTO uchome_friend VALUES ('66','51','langbi','0','0','','0','1249600570');
INSERT INTO uchome_friend VALUES ('66','65','jimodeyewan','0','0','','0','1249600594');
INSERT INTO uchome_friend VALUES ('66','64','liusuo','1','0','','0','1249723858');
INSERT INTO uchome_friend VALUES ('66','56','mylover','0','0','','0','1249600649');
INSERT INTO uchome_friend VALUES ('29','64','liusuo','1','0','','1','1249723846');
INSERT INTO uchome_friend VALUES ('29','65','jimodeyewan','0','0','','0','1249603257');
INSERT INTO uchome_friend VALUES ('67','64','liusuo','1','0','','0','1249723815');
INSERT INTO uchome_friend VALUES ('67','39','ashice','0','0','','0','1249605233');
INSERT INTO uchome_friend VALUES ('67','5','yangxin','0','0','','0','1249605244');
INSERT INTO uchome_friend VALUES ('67','29','asdzxc','1','0','','0','1249691902');
INSERT INTO uchome_friend VALUES ('67','3','evyt','1','0','','0','1249610894');
INSERT INTO uchome_friend VALUES ('68','9','happy','1','0','','1','1249605504');
INSERT INTO uchome_friend VALUES ('9','68','YANGZENGJUN','1','0','','0','1249605504');
INSERT INTO uchome_friend VALUES ('68','58','huaynie','1','0','','0','1249814201');
INSERT INTO uchome_friend VALUES ('68','24','ywgg','0','0','','0','1249605564');
INSERT INTO uchome_friend VALUES ('69','1','admin','1','0','','1','1249608463');
INSERT INTO uchome_friend VALUES ('1','69','hujiahujia','1','0','','0','1249608463');
INSERT INTO uchome_friend VALUES ('69','21','wangyang','0','0','','0','1249608727');
INSERT INTO uchome_friend VALUES ('3','67','pianist','1','0','','1','1249610894');
INSERT INTO uchome_friend VALUES ('3','66','chenqian','1','0','','1','1249610901');
INSERT INTO uchome_friend VALUES ('9','62','asasu','1','0','','1','1249611087');
INSERT INTO uchome_friend VALUES ('70','1','admin','1','0','','1','1249611117');
INSERT INTO uchome_friend VALUES ('1','70','qq872300214','1','0','','0','1249611117');
INSERT INTO uchome_friend VALUES ('72','1','admin','1','0','','1','1249613186');
INSERT INTO uchome_friend VALUES ('1','72','PPXY','1','0','','0','1249613186');
INSERT INTO uchome_friend VALUES ('72','21','wangyang','0','1','','0','1249613320');
INSERT INTO uchome_friend VALUES ('72','24','ywgg','0','1','','0','1249613326');
INSERT INTO uchome_friend VALUES ('72','70','qq872300214','0','1','','0','1249613342');
INSERT INTO uchome_friend VALUES ('72','71','wujie01','0','1','','0','1249613383');
INSERT INTO uchome_friend VALUES ('72','13','feifei','0','1','','0','1249613420');
INSERT INTO uchome_friend VALUES ('72','58','huaynie','1','1','','0','1249814197');
INSERT INTO uchome_friend VALUES ('73','9','happy','1','0','','13','1249614277');
INSERT INTO uchome_friend VALUES ('9','73','yanluo','1','0','','3','1249614277');
INSERT INTO uchome_friend VALUES ('73','3','evyt','1','1','','0','1249616608');
INSERT INTO uchome_friend VALUES ('73','29','asdzxc','0','1','','2','1249614709');
INSERT INTO uchome_friend VALUES ('73','55','chy','0','1','','0','1249614731');
INSERT INTO uchome_friend VALUES ('73','58','huaynie','1','1','','2','1249814195');
INSERT INTO uchome_friend VALUES ('73','51','langbi','0','1','','0','1249615249');
INSERT INTO uchome_friend VALUES ('74','1','admin','1','0','','1','1249615297');
INSERT INTO uchome_friend VALUES ('1','74','leo','1','0','','0','1249615297');
INSERT INTO uchome_friend VALUES ('73','46','ma876401970','1','1','','13','1249644941');
INSERT INTO uchome_friend VALUES ('3','73','yanluo','1','0','','1','1249616608');
INSERT INTO uchome_friend VALUES ('75','1','admin','1','0','','1','1249617474');
INSERT INTO uchome_friend VALUES ('1','75','linwenyi','1','0','','0','1249617474');
INSERT INTO uchome_friend VALUES ('75','54','zhangyan','0','1','','0','1249617877');
INSERT INTO uchome_friend VALUES ('76','1','admin','1','0','','1','1249618426');
INSERT INTO uchome_friend VALUES ('1','76','asd','1','0','','0','1249618426');
INSERT INTO uchome_friend VALUES ('79','9','happy','1','0','','0','1249645114');
INSERT INTO uchome_friend VALUES ('79','54','zhangyan','0','0','','0','1249624306');
INSERT INTO uchome_friend VALUES ('81','80','aaasdfdsf','0','1','','0','1249625158');
INSERT INTO uchome_friend VALUES ('81','83','wyj','1','1','','1','1249625236');
INSERT INTO uchome_friend VALUES ('82','83','wyj','1','0','','1','1249625233');
INSERT INTO uchome_friend VALUES ('83','82','zxzxzx','1','0','','1','1249625233');
INSERT INTO uchome_friend VALUES ('83','81','yhyfrend','1','0','','2','1249625236');
INSERT INTO uchome_friend VALUES ('82','29','asdzxc','0','0','','0','1249625242');
INSERT INTO uchome_friend VALUES ('82','58','huaynie','1','0','','0','1249814192');
INSERT INTO uchome_friend VALUES ('82','75','linwenyi','0','0','','0','1249625421');
INSERT INTO uchome_friend VALUES ('82','51','langbi','0','0','','0','1249625448');
INSERT INTO uchome_friend VALUES ('84','9','happy','1','0','','1','1249625621');
INSERT INTO uchome_friend VALUES ('9','84','jianghai','1','0','','0','1249625621');
INSERT INTO uchome_friend VALUES ('84','55','chy','0','0','','0','1249625731');
INSERT INTO uchome_friend VALUES ('84','24','ywgg','0','0','','0','1249625735');
INSERT INTO uchome_friend VALUES ('84','3','evyt','1','0','','0','1249670864');
INSERT INTO uchome_friend VALUES ('84','27','tianzi','1','0','','0','1249698257');
INSERT INTO uchome_friend VALUES ('84','1','admin','1','0','','0','1249632495');
INSERT INTO uchome_friend VALUES ('84','10','alian','0','0','','0','1249625748');
INSERT INTO uchome_friend VALUES ('84','7','liyu','0','0','','0','1249625751');
INSERT INTO uchome_friend VALUES ('84','13','feifei','0','0','','0','1249625753');
INSERT INTO uchome_friend VALUES ('85','1','admin','1','0','','8','1249626265');
INSERT INTO uchome_friend VALUES ('1','85','tanglao','1','0','','1','1249626265');
INSERT INTO uchome_friend VALUES ('85','20','traveler','0','0','','0','1249626358');
INSERT INTO uchome_friend VALUES ('85','9','happy','1','0','','6','1249645104');
INSERT INTO uchome_friend VALUES ('85','66','chenqian','0','0','','2','1249626375');
INSERT INTO uchome_friend VALUES ('85','54','zhangyan','0','0','','11','1249626420');
INSERT INTO uchome_friend VALUES ('85','29','asdzxc','0','0','','0','1249626664');
INSERT INTO uchome_friend VALUES ('87','46','ma876401970','1','1','','1','1249644933');
INSERT INTO uchome_friend VALUES ('85','58','huaynie','1','0','','1','1249814190');
INSERT INTO uchome_friend VALUES ('85','81','yhyfrend','0','0','','1','1249628750');
INSERT INTO uchome_friend VALUES ('85','67','pianist','0','0','','1','1249629046');
INSERT INTO uchome_friend VALUES ('85','68','YANGZENGJUN','0','0','','1','1249629091');
INSERT INTO uchome_friend VALUES ('88','54','zhangyan','0','0','','0','1249629536');
INSERT INTO uchome_friend VALUES ('90','9','happy','1','0','','1','1249631806');
INSERT INTO uchome_friend VALUES ('9','90','xiaxuebianjie','1','0','','0','1249631806');
INSERT INTO uchome_friend VALUES ('90','28','zzz','0','3','','0','1249632225');
INSERT INTO uchome_friend VALUES ('1','84','jianghai','1','0','','1','1249632495');
INSERT INTO uchome_friend VALUES ('1','64','liusuo','1','0','','1','1249632497');
INSERT INTO uchome_friend VALUES ('1','57','luoyonyi','1','0','','1','1249632501');
INSERT INTO uchome_friend VALUES ('1','53','xingshengh','1','0','','1','1249632504');
INSERT INTO uchome_friend VALUES ('90','87','cec','1','1','','0','1250149870');
INSERT INTO uchome_friend VALUES ('91','9','happy','1','0','','1','1249645100');
INSERT INTO uchome_friend VALUES ('91','83','wyj','0','0','','0','1249635614');
INSERT INTO uchome_friend VALUES ('91','58','huaynie','1','0','','1','1249814187');
INSERT INTO uchome_friend VALUES ('94','91','kuangniangao','1','1','','0','1249636700');
INSERT INTO uchome_friend VALUES ('91','57','luoyonyi','0','0','','1','1249636096');
INSERT INTO uchome_friend VALUES ('91','87','cec','1','0','','0','1250149876');
INSERT INTO uchome_friend VALUES ('91','88','sorry','0','0','','0','1249636323');
INSERT INTO uchome_friend VALUES ('91','94','FLY','1','0','','3','1249636700');
INSERT INTO uchome_friend VALUES ('91','51','langbi','0','0','','0','1249636870');
INSERT INTO uchome_friend VALUES ('91','96','abcdefg','1','0','','1','1249639826');
INSERT INTO uchome_friend VALUES ('97','9','happy','1','0','','3','1249637129');
INSERT INTO uchome_friend VALUES ('9','97','wbd','1','0','','2','1249637129');
INSERT INTO uchome_friend VALUES ('91','73','yanluo','1','0','','0','1250248067');
INSERT INTO uchome_friend VALUES ('96','54','zhangyan','0','1','','5','1249637204');
INSERT INTO uchome_friend VALUES ('91','86','sdzx','0','0','','0','1249637256');
INSERT INTO uchome_friend VALUES ('91','97','wbd','1','0','','0','1249810802');
INSERT INTO uchome_friend VALUES ('98','1','admin','1','0','','1','1249639191');
INSERT INTO uchome_friend VALUES ('1','98','sihan','1','0','','0','1249639191');
INSERT INTO uchome_friend VALUES ('99','1','admin','1','0','','1','1249639711');
INSERT INTO uchome_friend VALUES ('1','99','wzs','1','0','','0','1249639711');
INSERT INTO uchome_friend VALUES ('96','1','admin','1','0','','3','1249714618');
INSERT INTO uchome_friend VALUES ('96','91','kuangniangao','1','1','','6','1249639826');
INSERT INTO uchome_friend VALUES ('99','54','zhangyan','0','0','','0','1249639837');
INSERT INTO uchome_friend VALUES ('99','57','luoyonyi','0','0','','0','1249639846');
INSERT INTO uchome_friend VALUES ('99','96','abcdefg','1','0','','0','1249640036');
INSERT INTO uchome_friend VALUES ('99','21','wangyang','0','0','','0','1249639855');
INSERT INTO uchome_friend VALUES ('100','1','admin','1','0','','1','1249640007');
INSERT INTO uchome_friend VALUES ('1','100','lixizheng','1','0','','0','1249640007');
INSERT INTO uchome_friend VALUES ('96','99','wzs','1','1','','5','1249640036');
INSERT INTO uchome_friend VALUES ('101','9','happy','1','0','','1','1249640488');
INSERT INTO uchome_friend VALUES ('9','101','lvxiaoqi','1','0','','0','1249640488');
INSERT INTO uchome_friend VALUES ('101','99','wzs','0','1','','0','1249640601');
INSERT INTO uchome_friend VALUES ('101','58','huaynie','1','1','','0','1249814184');
INSERT INTO uchome_friend VALUES ('101','57','luoyonyi','0','1','','0','1249640652');
INSERT INTO uchome_friend VALUES ('101','54','zhangyan','0','0','','0','1249640666');
INSERT INTO uchome_friend VALUES ('46','87','cec','1','7','','2','1249644933');
INSERT INTO uchome_friend VALUES ('46','73','yanluo','1','0','','4','1249644941');
INSERT INTO uchome_friend VALUES ('46','64','liusuo','1','0','','2','1249644946');
INSERT INTO uchome_friend VALUES ('46','62','asasu','1','0','','2','1249644950');
INSERT INTO uchome_friend VALUES ('46','58','huaynie','1','0','','1','1249644956');
INSERT INTO uchome_friend VALUES ('46','57','luoyonyi','1','0','','1','1249644960');
INSERT INTO uchome_friend VALUES ('46','53','xingshengh','1','0','','1','1249644964');
INSERT INTO uchome_friend VALUES ('9','91','kuangniangao','1','0','','1','1249645100');
INSERT INTO uchome_friend VALUES ('9','85','tanglao','1','0','','1','1249645104');
INSERT INTO uchome_friend VALUES ('9','79','shang','1','0','','1','1249645114');
INSERT INTO uchome_friend VALUES ('96','9','happy','1','1','','9','1249740184');
INSERT INTO uchome_friend VALUES ('104','1','admin','1','0','','1','1249650117');
INSERT INTO uchome_friend VALUES ('1','104','gugu','1','0','','0','1249650117');
INSERT INTO uchome_friend VALUES ('104','103','sylt','1','0','','0','1249654065');
INSERT INTO uchome_friend VALUES ('105','54','zhangyan','0','1','','0','1249653777');
INSERT INTO uchome_friend VALUES ('103','104','gugu','1','1','','3','1249654065');
INSERT INTO uchome_friend VALUES ('106','1','admin','1','0','','1','1249655923');
INSERT INTO uchome_friend VALUES ('1','106','happyboy5330','1','0','','0','1249655923');
INSERT INTO uchome_friend VALUES ('102','9','happy','1','0','','4','1249656037');
INSERT INTO uchome_friend VALUES ('9','102','alanpolo','1','0','','0','1249656037');
INSERT INTO uchome_friend VALUES ('102','95','ayzhoujian','0','0','','0','1249656071');
INSERT INTO uchome_friend VALUES ('102','91','kuangniangao','0','0','','1','1249656113');
INSERT INTO uchome_friend VALUES ('102','80','aaasdfdsf','0','0','','0','1249656145');
INSERT INTO uchome_friend VALUES ('3','84','jianghai','1','0','','1','1249670864');
INSERT INTO uchome_friend VALUES ('110','27','tianzi','1','1','','0','1249698251');
INSERT INTO uchome_friend VALUES ('110','73','yanluo','1','1','','0','1250248058');
INSERT INTO uchome_friend VALUES ('110','57','luoyonyi','0','1','','0','1249677271');
INSERT INTO uchome_friend VALUES ('110','58','huaynie','1','1','','0','1249814181');
INSERT INTO uchome_friend VALUES ('110','53','xingshengh','0','1','','0','1249677283');
INSERT INTO uchome_friend VALUES ('110','21','wangyang','0','1','','0','1249677289');
INSERT INTO uchome_friend VALUES ('110','1','admin','1','1','','0','1249714615');
INSERT INTO uchome_friend VALUES ('110','3','evyt','1','1','','2','1312969609');
INSERT INTO uchome_friend VALUES ('110','29','asdzxc','0','1','','0','1249677313');
INSERT INTO uchome_friend VALUES ('110','36','Allan','0','1','','0','1249677335');
INSERT INTO uchome_friend VALUES ('110','54','zhangyan','0','1','','0','1249677345');
INSERT INTO uchome_friend VALUES ('110','9','happy','1','1','','0','1249740232');
INSERT INTO uchome_friend VALUES ('112','1','admin','1','0','','5','1249683034');
INSERT INTO uchome_friend VALUES ('1','112','shenhan','1','0','','1','1249683034');
INSERT INTO uchome_friend VALUES ('112','110','CCA','0','1','','0','1249684808');
INSERT INTO uchome_friend VALUES ('113','1','admin','1','0','','1','1249687096');
INSERT INTO uchome_friend VALUES ('1','113','hanhan','1','0','','0','1249687096');
INSERT INTO uchome_friend VALUES ('29','67','pianist','1','0','','1','1249691902');
INSERT INTO uchome_friend VALUES ('115','48','yesex','0','1','','1','1249695550');
INSERT INTO uchome_friend VALUES ('115','49','piao','0','0','','1','1249695600');
INSERT INTO uchome_friend VALUES ('115','56','mylover','0','1','','1','1249695644');
INSERT INTO uchome_friend VALUES ('115','57','luoyonyi','0','1','','1','1249695676');
INSERT INTO uchome_friend VALUES ('115','101','lvxiaoqi','0','1','','1','1249695732');
INSERT INTO uchome_friend VALUES ('115','46','ma876401970','1','1','','1','1250312658');
INSERT INTO uchome_friend VALUES ('115','103','sylt','1','1','','0','1249721873');
INSERT INTO uchome_friend VALUES ('27','110','CCA','1','1','','1','1249698251');
INSERT INTO uchome_friend VALUES ('27','84','jianghai','1','1','','1','1249698257');
INSERT INTO uchome_friend VALUES ('27','66','chenqian','1','1','','1','1249698270');
INSERT INTO uchome_friend VALUES ('27','57','luoyonyi','1','1','','3','1249698286');
INSERT INTO uchome_friend VALUES ('27','52','ming','1','1','','1','1249698293');
INSERT INTO uchome_friend VALUES ('27','44','denglp','1','1','','1','1249698298');
INSERT INTO uchome_friend VALUES ('27','36','Allan','1','1','','1','1249698301');
INSERT INTO uchome_friend VALUES ('27','34','liliangliang','1','1','','1','1249698307');
INSERT INTO uchome_friend VALUES ('27','32','wjunhua','0','1','','3','1249698337');
INSERT INTO uchome_friend VALUES ('116','9','happy','1','0','','0','1249740229');
INSERT INTO uchome_friend VALUES ('116','1','admin','1','0','','0','1249714613');
INSERT INTO uchome_friend VALUES ('116','27','tianzi','1','0','','3','1249795785');
INSERT INTO uchome_friend VALUES ('116','46','ma876401970','1','0','','0','1250312649');
INSERT INTO uchome_friend VALUES ('116','3','evyt','1','0','','0','1312969604');
INSERT INTO uchome_friend VALUES ('116','29','asdzxc','0','0','','0','1249700420');
INSERT INTO uchome_friend VALUES ('116','21','wangyang','0','0','','0','1249700423');
INSERT INTO uchome_friend VALUES ('116','57','luoyonyi','0','0','','0','1249700425');
INSERT INTO uchome_friend VALUES ('116','34','liliangliang','0','0','','0','1249700430');
INSERT INTO uchome_friend VALUES ('116','64','liusuo','1','0','','0','1249723809');
INSERT INTO uchome_friend VALUES ('116','24','ywgg','0','0','','0','1249700441');
INSERT INTO uchome_friend VALUES ('116','62','asasu','0','0','','0','1249700444');
INSERT INTO uchome_friend VALUES ('116','84','jianghai','0','0','','0','1249700446');
INSERT INTO uchome_friend VALUES ('117','1','admin','1','0','','1','1249701248');
INSERT INTO uchome_friend VALUES ('1','117','lxfku','1','0','','0','1249701248');
INSERT INTO uchome_friend VALUES ('119','34','liliangliang','0','0','','0','1249706503');
INSERT INTO uchome_friend VALUES ('119','57','luoyonyi','0','0','','0','1249706513');
INSERT INTO uchome_friend VALUES ('119','21','wangyang','0','0','','1','1249706516');
INSERT INTO uchome_friend VALUES ('119','46','ma876401970','1','0','','0','1250312642');
INSERT INTO uchome_friend VALUES ('119','58','huaynie','1','0','','1','1249814179');
INSERT INTO uchome_friend VALUES ('119','24','ywgg','0','0','','0','1249706526');
INSERT INTO uchome_friend VALUES ('119','54','zhangyan','0','0','','1','1249706531');
INSERT INTO uchome_friend VALUES ('119','9','happy','1','0','','0','1249740225');
INSERT INTO uchome_friend VALUES ('119','118','sosojust','0','0','','0','1249706556');
INSERT INTO uchome_friend VALUES ('120','9','happy','1','0','','1','1249706716');
INSERT INTO uchome_friend VALUES ('9','120','younger','1','0','','0','1249706716');
INSERT INTO uchome_friend VALUES ('120','119','sky','0','0','','2','1249706817');
INSERT INTO uchome_friend VALUES ('121','92','haose','0','1','','0','1249710209');
INSERT INTO uchome_friend VALUES ('122','1','admin','1','0','','5','1249710772');
INSERT INTO uchome_friend VALUES ('1','122','delong','1','0','','0','1249710772');
INSERT INTO uchome_friend VALUES ('122','53','xingshengh','0','1','','0','1249711247');
INSERT INTO uchome_friend VALUES ('122','27','tianzi','1','0','','2','1249795781');
INSERT INTO uchome_friend VALUES ('122','105','yyc','0','0','','0','1249711407');
INSERT INTO uchome_friend VALUES ('122','123','kivenlv','0','1','','5','1249711741');
INSERT INTO uchome_friend VALUES ('1','116','woyjh','1','0','','1','1249714613');
INSERT INTO uchome_friend VALUES ('1','110','CCA','1','0','','1','1249714615');
INSERT INTO uchome_friend VALUES ('1','96','abcdefg','1','0','','3','1249714618');
INSERT INTO uchome_friend VALUES ('126','54','zhangyan','0','1','','0','1249715610');
INSERT INTO uchome_friend VALUES ('126','125','mylove','1','1','','5','1249720399');
INSERT INTO uchome_friend VALUES ('127','125','mylove','1','0','','2','1249715880');
INSERT INTO uchome_friend VALUES ('125','127','ailove','1','0','','1','1249715880');
INSERT INTO uchome_friend VALUES ('129','1','admin','1','0','','16','1249716693');
INSERT INTO uchome_friend VALUES ('1','129','hjh','1','0','','2','1249716693');
INSERT INTO uchome_friend VALUES ('130','1','admin','1','0','','1','1249716807');
INSERT INTO uchome_friend VALUES ('1','130','ado83','1','0','','0','1249716807');
INSERT INTO uchome_friend VALUES ('131','29','asdzxc','0','0','','0','1249716876');
INSERT INTO uchome_friend VALUES ('129','9','happy','1','0','','4','1249740218');
INSERT INTO uchome_friend VALUES ('132','130','ado83','0','1','','0','1249716979');
INSERT INTO uchome_friend VALUES ('132','1','admin','1','1','','0','1249719424');
INSERT INTO uchome_friend VALUES ('132','125','mylove','1','1','','1','1249720389');
INSERT INTO uchome_friend VALUES ('122','129','hjh','1','0','','6','1249719654');
INSERT INTO uchome_friend VALUES ('1','132','payzy','1','0','','1','1249719424');
INSERT INTO uchome_friend VALUES ('129','122','delong','1','1','','7','1249719654');
INSERT INTO uchome_friend VALUES ('125','9','changchneg','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('125','132','payzy','1','0','','2','1249720389');
INSERT INTO uchome_friend VALUES ('125','126','wangleiqq','1','0','','2','1249720399');
INSERT INTO uchome_friend VALUES ('125','124','cdscjk','0','0','','0','1249720448');
INSERT INTO uchome_friend VALUES ('125','99','wzs','0','0','','0','1249720464');
INSERT INTO uchome_friend VALUES ('125','27','tianzi','1','0','','0','1249795778');
INSERT INTO uchome_friend VALUES ('125','133','mokemoke','0','0','','1','1249720482');
INSERT INTO uchome_friend VALUES ('125','129','hjh','1','0','','0','1249978177');
INSERT INTO uchome_friend VALUES ('135','134','bluedryad','1','0','','0','1249721627');
INSERT INTO uchome_friend VALUES ('134','135','iamwayney','1','0','','2','1249721627');
INSERT INTO uchome_friend VALUES ('103','115','hsz','1','1','','6','1249721873');
INSERT INTO uchome_friend VALUES ('138','135','iamwayney','1','0','','0','1249761575');
INSERT INTO uchome_friend VALUES ('138','1','admin','1','0','','1','1249722730');
INSERT INTO uchome_friend VALUES ('1','138','cbaabc','1','0','','0','1249722730');
INSERT INTO uchome_friend VALUES ('137','139','popo','0','0','','0','1249723028');
INSERT INTO uchome_friend VALUES ('140','1','admin','1','0','','10','1249723298');
INSERT INTO uchome_friend VALUES ('1','140','alloc','1','0','','2','1249723298');
INSERT INTO uchome_friend VALUES ('140','54','zhangyan','0','2','','0','1249723346');
INSERT INTO uchome_friend VALUES ('138','105','yyc','0','0','','0','1249723354');
INSERT INTO uchome_friend VALUES ('64','116','woyjh','1','2','','2','1249723809');
INSERT INTO uchome_friend VALUES ('64','67','pianist','1','0','','2','1249723815');
INSERT INTO uchome_friend VALUES ('64','29','asdzxc','1','1','','3','1249723846');
INSERT INTO uchome_friend VALUES ('64','66','chenqian','1','1','','1','1249723858');
INSERT INTO uchome_friend VALUES ('64','134','bluedryad','1','1','','1','1249725244');
INSERT INTO uchome_friend VALUES ('134','64','liusuo','1','0','','1','1249725244');
INSERT INTO uchome_friend VALUES ('147','24','ywgg','0','1','','0','1249734197');
INSERT INTO uchome_friend VALUES ('147','58','huaynie','1','1','','0','1249814174');
INSERT INTO uchome_friend VALUES ('147','46','ma876401970','1','1','','0','1250312637');
INSERT INTO uchome_friend VALUES ('147','21','wangyang','0','1','','0','1249734268');
INSERT INTO uchome_friend VALUES ('148','1','admin','1','0','','1','1249734284');
INSERT INTO uchome_friend VALUES ('1','148','sunzhigang18','1','0','','0','1249734284');
INSERT INTO uchome_friend VALUES ('147','54','zhangyan','0','1','','0','1249734333');
INSERT INTO uchome_friend VALUES ('147','148','sunzhigang18','1','1','','3','1249734525');
INSERT INTO uchome_friend VALUES ('148','122','delong','1','1','','0','1249794747');
INSERT INTO uchome_friend VALUES ('148','147','jbxx','1','1','','3','1249734525');
INSERT INTO uchome_friend VALUES ('148','9','happy','1','1','','0','1249740195');
INSERT INTO uchome_friend VALUES ('148','115','hsz','0','1','','0','1249734727');
INSERT INTO uchome_friend VALUES ('150','149','sdsdg','0','1','','0','1249737466');
INSERT INTO uchome_friend VALUES ('9','96','abcdefg','1','0','','1','1249740184');
INSERT INTO uchome_friend VALUES ('9','148','sunzhigang18','1','0','','2','1249740195');
INSERT INTO uchome_friend VALUES ('9','125','mylove','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('9','129','hjh','1','0','','2','1249740218');
INSERT INTO uchome_friend VALUES ('9','119','sky','1','0','','1','1249740225');
INSERT INTO uchome_friend VALUES ('9','116','woyjh','1','0','','1','1249740229');
INSERT INTO uchome_friend VALUES ('9','110','CCA','1','0','','1','1249740232');
INSERT INTO uchome_friend VALUES ('153','9','happy','1','0','','1','1249742696');
INSERT INTO uchome_friend VALUES ('9','153','modinglin','1','0','','0','1249742696');
INSERT INTO uchome_friend VALUES ('152','130','ado83','0','1','','1','1249742872');
INSERT INTO uchome_friend VALUES ('152','134','bluedryad','1','1','','0','1249755336');
INSERT INTO uchome_friend VALUES ('154','153','modinglin','0','0','','0','1249743467');
INSERT INTO uchome_friend VALUES ('154','147','jbxx','0','0','','2','1249743541');
INSERT INTO uchome_friend VALUES ('155','1','admin','1','0','','3','1249744151');
INSERT INTO uchome_friend VALUES ('1','155','zht_tao','1','0','','1','1249744151');
INSERT INTO uchome_friend VALUES ('157','1','admin','1','0','','4','1249745450');
INSERT INTO uchome_friend VALUES ('1','157','cartervin','1','0','','1','1249745450');
INSERT INTO uchome_friend VALUES ('157','146','sunuma','0','1','','1','1249745627');
INSERT INTO uchome_friend VALUES ('156','24','ywgg','0','0','','0','1249745629');
INSERT INTO uchome_friend VALUES ('158','9','happy','1','1','','8','1249784922');
INSERT INTO uchome_friend VALUES ('158','154','zhkabc','0','1','','0','1249747956');
INSERT INTO uchome_friend VALUES ('158','156','xiaoxiu','0','1','','1','1249747962');
INSERT INTO uchome_friend VALUES ('158','155','zht_tao','0','1','','0','1249747966');
INSERT INTO uchome_friend VALUES ('158','46','ma876401970','1','1','','3','1250312632');
INSERT INTO uchome_friend VALUES ('158','134','bluedryad','1','1','','7','1249755320');
INSERT INTO uchome_friend VALUES ('158','144','bejiyu','0','1','','1','1249748293');
INSERT INTO uchome_friend VALUES ('158','152','chenke','0','1','','1','1249748333');
INSERT INTO uchome_friend VALUES ('159','9','happy','1','0','','0','1249784932');
INSERT INTO uchome_friend VALUES ('159','1','admin','1','0','','0','1249808438');
INSERT INTO uchome_friend VALUES ('159','27','tianzi','1','0','','0','1249795774');
INSERT INTO uchome_friend VALUES ('159','64','liusuo','1','0','','0','1250261902');
INSERT INTO uchome_friend VALUES ('159','46','ma876401970','1','0','','0','1250312626');
INSERT INTO uchome_friend VALUES ('134','158','shendaaaaa','1','0','','1','1249755320');
INSERT INTO uchome_friend VALUES ('134','152','chenke','1','0','','1','1249755336');
INSERT INTO uchome_friend VALUES ('160','155','zht_tao','0','0','','1','1249760540');
INSERT INTO uchome_friend VALUES ('135','138','cbaabc','1','1','','3','1249761575');
INSERT INTO uchome_friend VALUES ('161','1','admin','1','0','','1','1249766049');
INSERT INTO uchome_friend VALUES ('1','161','weizhang','1','0','','0','1249766049');
INSERT INTO uchome_friend VALUES ('161','96','abcdefg','1','0','','1','1249779425');
INSERT INTO uchome_friend VALUES ('161','54','zhangyan','0','0','','1','1249766244');
INSERT INTO uchome_friend VALUES ('161','143','dddkkkzhao','0','0','','0','1249766318');
INSERT INTO uchome_friend VALUES ('161','85','tanglao','0','0','','1','1249766330');
INSERT INTO uchome_friend VALUES ('161','84','jianghai','0','0','','0','1249766350');
INSERT INTO uchome_friend VALUES ('161','21','wangyang','0','0','','0','1249766383');
INSERT INTO uchome_friend VALUES ('161','29','asdzxc','0','0','','1','1249766403');
INSERT INTO uchome_friend VALUES ('161','75','linwenyi','0','0','','0','1249766421');
INSERT INTO uchome_friend VALUES ('161','46','ma876401970','1','0','','0','1250312620');
INSERT INTO uchome_friend VALUES ('161','53','xingshengh','0','0','','0','1249766545');
INSERT INTO uchome_friend VALUES ('161','64','liusuo','1','0','','0','1250261891');
INSERT INTO uchome_friend VALUES ('161','27','tianzi','1','0','','0','1249795769');
INSERT INTO uchome_friend VALUES ('164','1','admin','1','0','','1','1249773506');
INSERT INTO uchome_friend VALUES ('1','164','afu','1','0','','0','1249773506');
INSERT INTO uchome_friend VALUES ('165','1','admin','1','0','','5','1249775646');
INSERT INTO uchome_friend VALUES ('1','165','huang','1','0','','0','1249775646');
INSERT INTO uchome_friend VALUES ('165','57','luoyonyi','0','0','','0','1249775948');
INSERT INTO uchome_friend VALUES ('165','9','happy','1','0','','2','1249784943');
INSERT INTO uchome_friend VALUES ('165','29','asdzxc','0','0','','1','1249775981');
INSERT INTO uchome_friend VALUES ('165','46','ma876401970','1','0','','0','1250312614');
INSERT INTO uchome_friend VALUES ('165','54','zhangyan','0','0','','4','1249776479');
INSERT INTO uchome_friend VALUES ('166','1','admin','1','0','','2','1249778531');
INSERT INTO uchome_friend VALUES ('1','166','youlan','1','0','','1','1249778531');
INSERT INTO uchome_friend VALUES ('166','57','luoyonyi','0','0','','0','1249778788');
INSERT INTO uchome_friend VALUES ('167','55','chy','0','0','','0','1249779319');
INSERT INTO uchome_friend VALUES ('96','161','weizhang','1','1','','1','1249779425');
INSERT INTO uchome_friend VALUES ('168','46','ma876401970','1','0','','0','1250312606');
INSERT INTO uchome_friend VALUES ('168','156','xiaoxiu','0','0','','0','1249783237');
INSERT INTO uchome_friend VALUES ('168','159','lenovowww','0','0','','0','1249783251');
INSERT INTO uchome_friend VALUES ('241','1','admin','1','0','','2','1249952502');
INSERT INTO uchome_friend VALUES ('231','230','lijianhang','0','0','','0','1249909802');
INSERT INTO uchome_friend VALUES ('168','154','zhkabc','0','0','','0','1249783703');
INSERT INTO uchome_friend VALUES ('168','115','hsz','0','0','','0','1249783728');
INSERT INTO uchome_friend VALUES ('168','57','luoyonyi','0','0','','0','1249783742');
INSERT INTO uchome_friend VALUES ('168','21','wangyang','0','0','','0','1249783761');
INSERT INTO uchome_friend VALUES ('168','89','YMI','0','0','','0','1249783775');
INSERT INTO uchome_friend VALUES ('168','90','xiaxuebianjie','0','0','','0','1249783782');
INSERT INTO uchome_friend VALUES ('168','54','zhangyan','0','0','','0','1249783793');
INSERT INTO uchome_friend VALUES ('168','122','delong','1','0','','1','1249794689');
INSERT INTO uchome_friend VALUES ('168','146','sunuma','0','0','','0','1249783896');
INSERT INTO uchome_friend VALUES ('168','144','bejiyu','0','0','','0','1249784575');
INSERT INTO uchome_friend VALUES ('9','158','shendaaaaa','1','0','','4','1249784922');
INSERT INTO uchome_friend VALUES ('9','159','lenovowww','1','0','','1','1249784932');
INSERT INTO uchome_friend VALUES ('9','165','huang','1','0','','4','1249784943');
INSERT INTO uchome_friend VALUES ('170','9','happy','1','0','','2','1249788770');
INSERT INTO uchome_friend VALUES ('9','170','lang','1','0','','0','1249788770');
INSERT INTO uchome_friend VALUES ('170','32','wjunhua','0','0','','0','1249788928');
INSERT INTO uchome_friend VALUES ('170','46','ma876401970','1','0','','0','1250312601');
INSERT INTO uchome_friend VALUES ('170','149','sdsdg','0','0','','0','1249789110');
INSERT INTO uchome_friend VALUES ('171','134','bluedryad','1','0','','3','1249791505');
INSERT INTO uchome_friend VALUES ('171','144','bejiyu','0','1','','1','1249791503');
INSERT INTO uchome_friend VALUES ('134','171','lwb7624','1','0','','2','1249791505');
INSERT INTO uchome_friend VALUES ('171','159','lenovowww','0','1','','0','1249791591');
INSERT INTO uchome_friend VALUES ('122','155','zht_tao','0','1','','0','1249793810');
INSERT INTO uchome_friend VALUES ('122','168','yhhmww','1','7','','2','1249794689');
INSERT INTO uchome_friend VALUES ('122','148','sunzhigang18','1','7','','1','1249794747');
INSERT INTO uchome_friend VALUES ('27','161','weizhang','1','0','','1','1249795769');
INSERT INTO uchome_friend VALUES ('27','159','lenovowww','1','0','','1','1249795774');
INSERT INTO uchome_friend VALUES ('27','125','mylove','1','1','','3','1249795778');
INSERT INTO uchome_friend VALUES ('27','122','delong','1','1','','1','1249795781');
INSERT INTO uchome_friend VALUES ('27','116','woyjh','1','1','','5','1249795785');
INSERT INTO uchome_friend VALUES ('173','9','happy','1','1','','2','1249798643');
INSERT INTO uchome_friend VALUES ('202','240','zhaojiawen','1','0','','0','1249951855');
INSERT INTO uchome_friend VALUES ('173','158','shendaaaaa','1','1','','0','1249908630');
INSERT INTO uchome_friend VALUES ('173','156','xiaoxiu','0','1','','0','1249797953');
INSERT INTO uchome_friend VALUES ('173','155','zht_tao','0','1','','0','1249797963');
INSERT INTO uchome_friend VALUES ('173','154','zhkabc','0','1','','0','1249797974');
INSERT INTO uchome_friend VALUES ('9','173','huha','1','0','','2','1249798643');
INSERT INTO uchome_friend VALUES ('174','173','huha','1','0','','1','1250927467');
INSERT INTO uchome_friend VALUES ('175','9','happy','1','0','','1','1249800642');
INSERT INTO uchome_friend VALUES ('9','175','open','1','0','','0','1249800642');
INSERT INTO uchome_friend VALUES ('175','54','zhangyan','0','0','','0','1249800769');
INSERT INTO uchome_friend VALUES ('177','9','happy','1','0','','3','1249800795');
INSERT INTO uchome_friend VALUES ('9','177','iangbo','1','0','','2','1249800795');
INSERT INTO uchome_friend VALUES ('178','9','happy','1','0','','1','1249800920');
INSERT INTO uchome_friend VALUES ('9','178','kekin','1','0','','2','1249800920');
INSERT INTO uchome_friend VALUES ('180','9','happy','1','0','','2','1249801092');
INSERT INTO uchome_friend VALUES ('9','180','allen','1','0','','0','1249801092');
INSERT INTO uchome_friend VALUES ('177','3','evyt','1','0','','0','1312969600');
INSERT INTO uchome_friend VALUES ('177','164','afu','0','0','','0','1249801111');
INSERT INTO uchome_friend VALUES ('177','27','tianzi','1','0','','0','1249885714');
INSERT INTO uchome_friend VALUES ('177','179','wdb007007','0','0','','0','1249801150');
INSERT INTO uchome_friend VALUES ('177','176','MAYJJ','1','0','','1','1249801178');
INSERT INTO uchome_friend VALUES ('176','177','iangbo','1','1','','6','1249801178');
INSERT INTO uchome_friend VALUES ('177','32','wjunhua','0','0','','0','1249801190');
INSERT INTO uchome_friend VALUES ('176','156','xiaoxiu','0','1','','0','1249801332');
INSERT INTO uchome_friend VALUES ('176','173','huha','1','1','','2','1250927463');
INSERT INTO uchome_friend VALUES ('176','174','qxz','0','1','','0','1249801368');
INSERT INTO uchome_friend VALUES ('176','162','phoenix','0','1','','1','1249801405');
INSERT INTO uchome_friend VALUES ('176','178','kekin','0','1','','1','1249801757');
INSERT INTO uchome_friend VALUES ('176','9','happy','1','0','','5','1249803824');
INSERT INTO uchome_friend VALUES ('179','46','ma876401970','1','5','','0','1250312597');
INSERT INTO uchome_friend VALUES ('179','54','zhangyan','0','2','','0','1249802176');
INSERT INTO uchome_friend VALUES ('176','96','abcdefg','1','1','','2','1249803595');
INSERT INTO uchome_friend VALUES ('176','164','afu','0','1','','0','1249802616');
INSERT INTO uchome_friend VALUES ('176','125','mylove','1','0','','2','1249808667');
INSERT INTO uchome_friend VALUES ('176','32','wjunhua','0','1','','0','1249802839');
INSERT INTO uchome_friend VALUES ('176','179','wdb007007','0','1','','1','1249802843');
INSERT INTO uchome_friend VALUES ('176','27','tianzi','1','1','','0','1249885709');
INSERT INTO uchome_friend VALUES ('176','3','evyt','1','1','','0','1312969591');
INSERT INTO uchome_friend VALUES ('176','30','norye','0','1','','0','1249802869');
INSERT INTO uchome_friend VALUES ('176','46','ma876401970','1','1','','0','1250312590');
INSERT INTO uchome_friend VALUES ('176','134','bluedryad','1','1','','3','1249805624');
INSERT INTO uchome_friend VALUES ('176','54','zhangyan','0','1','','1','1249802904');
INSERT INTO uchome_friend VALUES ('176','21','wangyang','0','1','','0','1249803056');
INSERT INTO uchome_friend VALUES ('176','158','shendaaaaa','1','1','','1','1249908613');
INSERT INTO uchome_friend VALUES ('240','202','mling','1','0','','4','1249951855');
INSERT INTO uchome_friend VALUES ('181','9','happy','1','0','','1','1249803412');
INSERT INTO uchome_friend VALUES ('9','181','DGMG','1','0','','0','1249803412');
INSERT INTO uchome_friend VALUES ('176','116','woyjh','0','1','','0','1249803456');
INSERT INTO uchome_friend VALUES ('176','175','open','0','1','','1','1249803470');
INSERT INTO uchome_friend VALUES ('176','181','DGMG','0','1','','1','1249803514');
INSERT INTO uchome_friend VALUES ('96','176','MAYJJ','1','1','','2','1249803595');
INSERT INTO uchome_friend VALUES ('181','54','zhangyan','0','0','','0','1249803733');
INSERT INTO uchome_friend VALUES ('9','176','MAYJJ','1','0','','4','1249803824');
INSERT INTO uchome_friend VALUES ('182','9','happy','1','0','','1','1249803897');
INSERT INTO uchome_friend VALUES ('9','182','sdsd','1','0','','0','1249803897');
INSERT INTO uchome_friend VALUES ('183','96','abcdefg','1','0','','0','1249804587');
INSERT INTO uchome_friend VALUES ('96','183','QINQUYUAN','1','1','','3','1249804587');
INSERT INTO uchome_friend VALUES ('176','183','QINQUYUAN','0','1','','1','1249804654');
INSERT INTO uchome_friend VALUES ('176','152','chenke','0','1','','0','1249805596');
INSERT INTO uchome_friend VALUES ('134','176','MAYJJ','1','0','','2','1249805624');
INSERT INTO uchome_friend VALUES ('176','144','bejiyu','0','1','','0','1249805675');
INSERT INTO uchome_friend VALUES ('185','176','MAYJJ','1','1','','0','1249810956');
INSERT INTO uchome_friend VALUES ('185','184','amao','0','1','','2','1249807250');
INSERT INTO uchome_friend VALUES ('185','96','abcdefg','1','1','','1','1249891807');
INSERT INTO uchome_friend VALUES ('185','134','bluedryad','1','1','','2','1249815224');
INSERT INTO uchome_friend VALUES ('185','54','zhangyan','0','1','','0','1249807297');
INSERT INTO uchome_friend VALUES ('185','9','happy','1','1','','3','1249808279');
INSERT INTO uchome_friend VALUES ('185','183','QINQUYUAN','0','1','','0','1249807979');
INSERT INTO uchome_friend VALUES ('185','182','sdsd','0','1','','0','1249807995');
INSERT INTO uchome_friend VALUES ('185','181','DGMG','0','1','','0','1249808008');
INSERT INTO uchome_friend VALUES ('185','180','allen','0','0','','0','1249808042');
INSERT INTO uchome_friend VALUES ('185','168','yhhmww','0','0','','0','1249808068');
INSERT INTO uchome_friend VALUES ('9','185','qiying','1','0','','2','1249808279');
INSERT INTO uchome_friend VALUES ('1','159','lenovowww','1','0','','1','1249808438');
INSERT INTO uchome_friend VALUES ('185','1','admin','1','0','','1','1249809059');
INSERT INTO uchome_friend VALUES ('125','176','MAYJJ','1','0','','1','1249808667');
INSERT INTO uchome_friend VALUES ('186','9','happy','1','0','','1','1249808693');
INSERT INTO uchome_friend VALUES ('9','186','wuyukun','1','0','','0','1249808693');
INSERT INTO uchome_friend VALUES ('125','164','afu','0','0','','1','1249808741');
INSERT INTO uchome_friend VALUES ('125','154','zhkabc','0','0','','1','1249808743');
INSERT INTO uchome_friend VALUES ('187','9','happy','1','1','','17','1249810536');
INSERT INTO uchome_friend VALUES ('1','185','qiying','1','0','','1','1249809059');
INSERT INTO uchome_friend VALUES ('187','183','QINQUYUAN','0','1','','3','1249809294');
INSERT INTO uchome_friend VALUES ('187','181','DGMG','0','1','','3','1249809310');
INSERT INTO uchome_friend VALUES ('1','239','QWERTY','1','0','','0','1249951776');
INSERT INTO uchome_friend VALUES ('187','185','qiying','0','1','','3','1249809335');
INSERT INTO uchome_friend VALUES ('187','21','wangyang','0','0','','2','1249809390');
INSERT INTO uchome_friend VALUES ('187','1','admin','1','0','','6','1249809571');
INSERT INTO uchome_friend VALUES ('187','155','zht_tao','0','0','','0','1249809416');
INSERT INTO uchome_friend VALUES ('187','125','mylove','1','0','','12','1249870610');
INSERT INTO uchome_friend VALUES ('187','178','kekin','0','0','','1','1249809477');
INSERT INTO uchome_friend VALUES ('187','174','qxz','0','0','','6','1249809497');
INSERT INTO uchome_friend VALUES ('1','187','jack','1','0','','8','1249809571');
INSERT INTO uchome_friend VALUES ('188','1','admin','1','1','','0','1249809786');
INSERT INTO uchome_friend VALUES ('188','46','ma876401970','1','1','','0','1250312582');
INSERT INTO uchome_friend VALUES ('188','21','wangyang','0','1','','0','1249809607');
INSERT INTO uchome_friend VALUES ('188','57','luoyonyi','0','1','','0','1249809621');
INSERT INTO uchome_friend VALUES ('188','9','happy','1','0','','4','1249809844');
INSERT INTO uchome_friend VALUES ('187','30','norye','0','0','','2','1249809734');
INSERT INTO uchome_friend VALUES ('1','188','tianci','1','0','','1','1249809786');
INSERT INTO uchome_friend VALUES ('187','171','lwb7624','0','0','','1','1249809816');
INSERT INTO uchome_friend VALUES ('9','188','tianci','1','0','','1','1249809844');
INSERT INTO uchome_friend VALUES ('187','186','wuyukun','0','0','','0','1249809878');
INSERT INTO uchome_friend VALUES ('187','134','bluedryad','1','0','','10','1249815222');
INSERT INTO uchome_friend VALUES ('187','96','abcdefg','1','0','','21','1249891800');
INSERT INTO uchome_friend VALUES ('187','144','bejiyu','0','0','','0','1249809945');
INSERT INTO uchome_friend VALUES ('187','158','shendaaaaa','1','0','','6','1249908580');
INSERT INTO uchome_friend VALUES ('30','125','mylove','1','7','','1','1249870608');
INSERT INTO uchome_friend VALUES ('187','160','shayetian','0','0','','1','1249810397');
INSERT INTO uchome_friend VALUES ('187','122','delong','1','0','','5','1250477788');
INSERT INTO uchome_friend VALUES ('187','123','kivenlv','0','0','','1','1249810450');
INSERT INTO uchome_friend VALUES ('187','148','sunzhigang18','0','0','','0','1249810460');
INSERT INTO uchome_friend VALUES ('187','173','huha','1','0','','5','1250927458');
INSERT INTO uchome_friend VALUES ('9','187','jack','1','0','','8','1249810536');
INSERT INTO uchome_friend VALUES ('97','91','kuangniangao','1','1','','2','1249810802');
INSERT INTO uchome_friend VALUES ('73','170','lang','0','0','','0','1249810845');
INSERT INTO uchome_friend VALUES ('73','173','huha','1','0','','2','1250927451');
INSERT INTO uchome_friend VALUES ('176','185','qiying','1','1','','4','1249810956');
INSERT INTO uchome_friend VALUES ('187','97','wbd','1','0','','2','1249811548');
INSERT INTO uchome_friend VALUES ('187','159','lenovowww','0','0','','1','1249811162');
INSERT INTO uchome_friend VALUES ('188','187','jack','1','1','','0','1249811313');
INSERT INTO uchome_friend VALUES ('188','176','MAYJJ','1','1','','0','1249811909');
INSERT INTO uchome_friend VALUES ('188','97','wbd','1','1','','4','1249811520');
INSERT INTO uchome_friend VALUES ('176','97','wbd','1','1','','0','1249811512');
INSERT INTO uchome_friend VALUES ('187','188','tianci','1','0','','3','1249811313');
INSERT INTO uchome_friend VALUES ('188','129','hjh','1','1','','0','1249978160');
INSERT INTO uchome_friend VALUES ('188','186','wuyukun','0','1','','0','1249811371');
INSERT INTO uchome_friend VALUES ('97','176','MAYJJ','1','1','','2','1249811512');
INSERT INTO uchome_friend VALUES ('97','188','tianci','1','1','','3','1249811520');
INSERT INTO uchome_friend VALUES ('97','187','jack','1','1','','3','1249811548');
INSERT INTO uchome_friend VALUES ('189','30','norye','0','0','','3','1249811560');
INSERT INTO uchome_friend VALUES ('189','187','jack','1','0','','5','1249811710');
INSERT INTO uchome_friend VALUES ('189','97','wbd','0','0','','1','1249811692');
INSERT INTO uchome_friend VALUES ('187','189','tsingchao','1','0','','10','1249811710');
INSERT INTO uchome_friend VALUES ('189','9','happy','1','0','','0','1249813194');
INSERT INTO uchome_friend VALUES ('188','163','fujianxun','0','1','','0','1249811854');
INSERT INTO uchome_friend VALUES ('191','187','jack','1','1','','4','1249934678');
INSERT INTO uchome_friend VALUES ('176','188','tianci','1','1','','2','1249811909');
INSERT INTO uchome_friend VALUES ('189','190','ZHANGJING','0','1','','0','1249811926');
INSERT INTO uchome_friend VALUES ('188','189','tsingchao','1','1','','0','1249812918');
INSERT INTO uchome_friend VALUES ('188','190','ZHANGJING','0','1','','0','1249811984');
INSERT INTO uchome_friend VALUES ('189','96','abcdefg','1','0','','0','1249891792');
INSERT INTO uchome_friend VALUES ('189','188','tianci','1','1','','2','1249812918');
INSERT INTO uchome_friend VALUES ('9','189','tsingchao','1','0','','1','1249813194');
INSERT INTO uchome_friend VALUES ('58','147','jbxx','1','0','','1','1249814174');
INSERT INTO uchome_friend VALUES ('58','119','sky','1','0','','1','1249814179');
INSERT INTO uchome_friend VALUES ('58','110','CCA','1','0','','1','1249814181');
INSERT INTO uchome_friend VALUES ('58','101','lvxiaoqi','1','0','','1','1249814184');
INSERT INTO uchome_friend VALUES ('58','91','kuangniangao','1','0','','2','1249814187');
INSERT INTO uchome_friend VALUES ('58','85','tanglao','1','0','','2','1249814190');
INSERT INTO uchome_friend VALUES ('58','82','zxzxzx','1','0','','1','1249814192');
INSERT INTO uchome_friend VALUES ('58','73','yanluo','1','0','','1','1249814195');
INSERT INTO uchome_friend VALUES ('58','72','PPXY','1','0','','1','1249814197');
INSERT INTO uchome_friend VALUES ('58','68','YANGZENGJUN','1','0','','1','1249814201');
INSERT INTO uchome_friend VALUES ('58','64','liusuo','1','0','','1','1249814203');
INSERT INTO uchome_friend VALUES ('58','63','bashustar','1','0','','1','1249814205');
INSERT INTO uchome_friend VALUES ('58','62','asasu','1','0','','1','1249814209');
INSERT INTO uchome_friend VALUES ('187','58','huaynie','1','0','','4','1249814351');
INSERT INTO uchome_friend VALUES ('187','113','hanhan','0','0','','1','1249814349');
INSERT INTO uchome_friend VALUES ('58','187','jack','1','0','','2','1249814351');
INSERT INTO uchome_friend VALUES ('58','59','yanlangtian','0','0','','0','1249814399');
INSERT INTO uchome_friend VALUES ('58','65','jimodeyewan','0','0','','0','1249814403');
INSERT INTO uchome_friend VALUES ('58','53','xingshengh','0','0','','0','1249814405');
INSERT INTO uchome_friend VALUES ('188','58','huaynie','0','0','','1','1249814816');
INSERT INTO uchome_friend VALUES ('191','58','huaynie','0','1','','0','1249815130');
INSERT INTO uchome_friend VALUES ('134','187','jack','1','0','','2','1249815222');
INSERT INTO uchome_friend VALUES ('134','185','qiying','1','0','','1','1249815224');
INSERT INTO uchome_friend VALUES ('187','191','nzxsos','1','0','','8','1249934678');
INSERT INTO uchome_friend VALUES ('187','46','ma876401970','1','0','','4','1250312577');
INSERT INTO uchome_friend VALUES ('193','9','happy','1','0','','1','1249818351');
INSERT INTO uchome_friend VALUES ('9','193','tiantianxiangri','1','0','','0','1249818351');
INSERT INTO uchome_friend VALUES ('187','101','lvxiaoqi','0','0','','0','1249818356');
INSERT INTO uchome_friend VALUES ('192','30','norye','0','1','','1','1249818770');
INSERT INTO uchome_friend VALUES ('192','9','happy','1','1','','1','1249821468');
INSERT INTO uchome_friend VALUES ('192','66','chenqian','0','1','','0','1249818810');
INSERT INTO uchome_friend VALUES ('192','189','tsingchao','1','1','','1','1249891448');
INSERT INTO uchome_friend VALUES ('192','188','tianci','1','1','','1','1250540800');
INSERT INTO uchome_friend VALUES ('192','29','asdzxc','0','1','','1','1249818985');
INSERT INTO uchome_friend VALUES ('192','122','delong','0','1','','1','1249819036');
INSERT INTO uchome_friend VALUES ('192','1','admin','1','1','','0','1249870444');
INSERT INTO uchome_friend VALUES ('9','192','fulunda','1','0','','2','1249821468');
INSERT INTO uchome_friend VALUES ('194','1','admin','1','0','','6','1249825814');
INSERT INTO uchome_friend VALUES ('1','194','asdfghjkl','1','0','','1','1249825814');
INSERT INTO uchome_friend VALUES ('195','9','happy','1','0','','2','1249826310');
INSERT INTO uchome_friend VALUES ('9','195','QQA','1','0','','0','1249826310');
INSERT INTO uchome_friend VALUES ('195','194','asdfghjkl','0','1','','0','1249826726');
INSERT INTO uchome_friend VALUES ('195','187','jack','1','0','','8','1249827744');
INSERT INTO uchome_friend VALUES ('187','195','QQA','1','0','','8','1249827744');
INSERT INTO uchome_friend VALUES ('187','135','iamwayney','1','0','','1','1249927222');
INSERT INTO uchome_friend VALUES ('187','196','wodeak','0','0','','5','1249828932');
INSERT INTO uchome_friend VALUES ('187','194','asdfghjkl','0','0','','2','1249828950');
INSERT INTO uchome_friend VALUES ('197','1','admin','1','0','','1','1249835366');
INSERT INTO uchome_friend VALUES ('1','197','zyzy','1','0','','0','1249835366');
INSERT INTO uchome_friend VALUES ('199','196','wodeak','0','1','','1','1249839413');
INSERT INTO uchome_friend VALUES ('199','194','asdfghjkl','0','0','','0','1249839451');
INSERT INTO uchome_friend VALUES ('200','9','happy','1','0','','2','1249849406');
INSERT INTO uchome_friend VALUES ('9','200','pcaff','1','0','','0','1249849406');
INSERT INTO uchome_friend VALUES ('200','54','zhangyan','0','0','','0','1249849485');
INSERT INTO uchome_friend VALUES ('200','135','iamwayney','1','0','','0','1249927196');
INSERT INTO uchome_friend VALUES ('210','189','tsingchao','1','0','','0','1249891438');
INSERT INTO uchome_friend VALUES ('200','189','tsingchao','1','0','','0','1249891442');
INSERT INTO uchome_friend VALUES ('200','192','fulunda','0','0','','0','1249849594');
INSERT INTO uchome_friend VALUES ('187','202','mling','1','0','','4','1249862776');
INSERT INTO uchome_friend VALUES ('202','187','jack','1','1','','1','1249862776');
INSERT INTO uchome_friend VALUES ('202','122','delong','1','1','','0','1250478479');
INSERT INTO uchome_friend VALUES ('202','54','zhangyan','0','1','','0','1249862804');
INSERT INTO uchome_friend VALUES ('202','21','wangyang','0','1','','0','1249862818');
INSERT INTO uchome_friend VALUES ('202','58','huaynie','0','1','','0','1249862830');
INSERT INTO uchome_friend VALUES ('202','46','ma876401970','1','1','','0','1250312574');
INSERT INTO uchome_friend VALUES ('202','96','abcdefg','1','1','','0','1249891781');
INSERT INTO uchome_friend VALUES ('202','27','tianzi','1','1','','0','1249885701');
INSERT INTO uchome_friend VALUES ('202','134','bluedryad','1','1','','0','1249863277');
INSERT INTO uchome_friend VALUES ('134','202','mling','1','0','','1','1249863277');
INSERT INTO uchome_friend VALUES ('203','58','huaynie','0','1','','0','1249863778');
INSERT INTO uchome_friend VALUES ('9','209','yiyaheihei','1','0','','1','1249872119');
INSERT INTO uchome_friend VALUES ('203','122','delong','1','1','','0','1250478428');
INSERT INTO uchome_friend VALUES ('203','54','zhangyan','0','1','','0','1249863842');
INSERT INTO uchome_friend VALUES ('203','9','happy','1','1','','1','1249884953');
INSERT INTO uchome_friend VALUES ('203','202','mling','0','1','','1','1249864095');
INSERT INTO uchome_friend VALUES ('205','5','yangxin','0','1','','0','1249866432');
INSERT INTO uchome_friend VALUES ('205','196','wodeak','0','1','','0','1249866467');
INSERT INTO uchome_friend VALUES ('205','187','jack','1','1','','0','1249871453');
INSERT INTO uchome_friend VALUES ('206','202','mling','1','0','','3','1249867050');
INSERT INTO uchome_friend VALUES ('202','206','zhylbj','1','0','','0','1249867050');
INSERT INTO uchome_friend VALUES ('207','205','geondri','0','1','','0','1249867496');
INSERT INTO uchome_friend VALUES ('207','9','happy','1','1','','0','1249884941');
INSERT INTO uchome_friend VALUES ('207','58','huaynie','0','1','','0','1249867526');
INSERT INTO uchome_friend VALUES ('207','46','ma876401970','1','1','','0','1250312568');
INSERT INTO uchome_friend VALUES ('207','194','asdfghjkl','0','1','','0','1249867732');
INSERT INTO uchome_friend VALUES ('208','187','jack','1','1','','1','1249871361');
INSERT INTO uchome_friend VALUES ('207','202','mling','0','1','','1','1249867974');
INSERT INTO uchome_friend VALUES ('206','208','lchf','0','1','','2','1249868100');
INSERT INTO uchome_friend VALUES ('206','207','wwwwww','0','0','','0','1249868163');
INSERT INTO uchome_friend VALUES ('206','176','MAYJJ','1','0','','2','1249868326');
INSERT INTO uchome_friend VALUES ('187','205','geondri','1','0','','1','1249871453');
INSERT INTO uchome_friend VALUES ('206','205','geondri','0','0','','0','1249868193');
INSERT INTO uchome_friend VALUES ('206','204','jaycn','0','0','','1','1249868201');
INSERT INTO uchome_friend VALUES ('206','203','sbh7608','1','0','','2','1249885668');
INSERT INTO uchome_friend VALUES ('206','134','bluedryad','1','0','','0','1249875538');
INSERT INTO uchome_friend VALUES ('206','198','kinghui','0','0','','0','1249868248');
INSERT INTO uchome_friend VALUES ('206','193','tiantianxiangri','0','0','','0','1249868259');
INSERT INTO uchome_friend VALUES ('176','208','lchf','0','1','','0','1249868304');
INSERT INTO uchome_friend VALUES ('176','206','zhylbj','1','1','','2','1249868326');
INSERT INTO uchome_friend VALUES ('209','202','mling','1','0','','5','1249868647');
INSERT INTO uchome_friend VALUES ('202','209','yiyaheihei','1','0','','0','1249868647');
INSERT INTO uchome_friend VALUES ('209','176','MAYJJ','1','0','','0','1249874162');
INSERT INTO uchome_friend VALUES ('209','206','zhylbj','1','0','','0','1249890967');
INSERT INTO uchome_friend VALUES ('209','208','lchf','0','0','','0','1249868734');
INSERT INTO uchome_friend VALUES ('209','207','wwwwww','0','0','','0','1249868737');
INSERT INTO uchome_friend VALUES ('209','134','bluedryad','1','0','','1','1249875535');
INSERT INTO uchome_friend VALUES ('209','122','delong','1','0','','0','1250477758');
INSERT INTO uchome_friend VALUES ('209','187','jack','1','0','','5','1249871338');
INSERT INTO uchome_friend VALUES ('209','194','asdfghjkl','1','0','','0','1249998306');
INSERT INTO uchome_friend VALUES ('209','9','happy','1','0','','3','1249872119');
INSERT INTO uchome_friend VALUES ('209','193','tiantianxiangri','0','0','','0','1249869199');
INSERT INTO uchome_friend VALUES ('209','205','geondri','0','0','','2','1249869251');
INSERT INTO uchome_friend VALUES ('209','184','amao','0','0','','0','1249869342');
INSERT INTO uchome_friend VALUES ('209','109','yycf','0','0','','1','1249870037');
INSERT INTO uchome_friend VALUES ('1','192','fulunda','1','0','','1','1249870444');
INSERT INTO uchome_friend VALUES ('125','30','norye','1','0','','1','1249870608');
INSERT INTO uchome_friend VALUES ('125','187','jack','1','0','','6','1249870610');
INSERT INTO uchome_friend VALUES ('210','187','jack','1','6','','4','1249871322');
INSERT INTO uchome_friend VALUES ('187','210','wanghua','1','0','','3','1249871322');
INSERT INTO uchome_friend VALUES ('187','209','yiyaheihei','1','0','','8','1249871338');
INSERT INTO uchome_friend VALUES ('187','208','lchf','1','0','','2','1249871361');
INSERT INTO uchome_friend VALUES ('212','3','evyt','1','0','','0','1312969587');
INSERT INTO uchome_friend VALUES ('176','209','yiyaheihei','1','1','','1','1249874162');
INSERT INTO uchome_friend VALUES ('176','210','wanghua','0','1','','1','1249874177');
INSERT INTO uchome_friend VALUES ('211','200','pcaff','0','0','','0','1249874449');
INSERT INTO uchome_friend VALUES ('134','209','yiyaheihei','1','0','','2','1249875535');
INSERT INTO uchome_friend VALUES ('134','206','zhylbj','1','0','','2','1249875538');
INSERT INTO uchome_friend VALUES ('211','209','yiyaheihei','0','0','','7','1249876271');
INSERT INTO uchome_friend VALUES ('187','54','zhangyan','0','0','','0','1249876784');
INSERT INTO uchome_friend VALUES ('187','146','sunuma','0','0','','1','1249876854');
INSERT INTO uchome_friend VALUES ('187','63','bashustar','0','0','','1','1249876880');
INSERT INTO uchome_friend VALUES ('187','57','luoyonyi','0','0','','0','1249876933');
INSERT INTO uchome_friend VALUES ('211','1','admin','1','0','','18','1249889747');
INSERT INTO uchome_friend VALUES ('215','1','admin','1','0','','1','1249877103');
INSERT INTO uchome_friend VALUES ('1','215','zingy','1','0','','0','1249877103');
INSERT INTO uchome_friend VALUES ('214','213','chengge','0','0','','2','1249877358');
INSERT INTO uchome_friend VALUES ('214','211','yhkwy','1','0','','1','1249895190');
INSERT INTO uchome_friend VALUES ('214','215','zingy','0','0','','0','1249877564');
INSERT INTO uchome_friend VALUES ('214','134','bluedryad','1','0','','2','1249887279');
INSERT INTO uchome_friend VALUES ('214','218','huqiaoa','0','0','','0','1249879448');
INSERT INTO uchome_friend VALUES ('214','217','Xiaosunyang','0','0','','0','1249879733');
INSERT INTO uchome_friend VALUES ('218','217','Xiaosunyang','0','0','','2','1249879747');
INSERT INTO uchome_friend VALUES ('218','125','mylove','1','0','','1','1250169970');
INSERT INTO uchome_friend VALUES ('203','217','Xiaosunyang','0','1','','0','1249885552');
INSERT INTO uchome_friend VALUES ('222','9','happy','1','0','','1','1249883369');
INSERT INTO uchome_friend VALUES ('9','222','Loveyou','1','0','','1','1249883369');
INSERT INTO uchome_friend VALUES ('222','196','wodeak','0','2','','1','1249883544');
INSERT INTO uchome_friend VALUES ('222','220','lvshichun','0','2','','0','1249883566');
INSERT INTO uchome_friend VALUES ('222','210','wanghua','0','1','','1','1249883622');
INSERT INTO uchome_friend VALUES ('222','213','chengge','0','0','','0','1249883708');
INSERT INTO uchome_friend VALUES ('9','207','wwwwww','1','0','','1','1249884941');
INSERT INTO uchome_friend VALUES ('9','203','sbh7608','1','0','','1','1249884953');
INSERT INTO uchome_friend VALUES ('203','211','yhkwy','1','1','','0','1249895185');
INSERT INTO uchome_friend VALUES ('203','206','zhylbj','1','1','','3','1249885668');
INSERT INTO uchome_friend VALUES ('27','202','mling','1','1','','1','1249885701');
INSERT INTO uchome_friend VALUES ('27','176','MAYJJ','1','1','','2','1249885709');
INSERT INTO uchome_friend VALUES ('27','177','iangbo','1','1','','1','1249885714');
INSERT INTO uchome_friend VALUES ('224','1','admin','1','0','','1','1249886648');
INSERT INTO uchome_friend VALUES ('1','224','KING','1','0','','0','1249886648');
INSERT INTO uchome_friend VALUES ('223','214','subborn','1','0','','3','1249956602');
INSERT INTO uchome_friend VALUES ('134','214','subborn','1','0','','2','1249887279');
INSERT INTO uchome_friend VALUES ('187','224','KING','0','0','','0','1249888681');
INSERT INTO uchome_friend VALUES ('187','222','Loveyou','0','0','','0','1249888732');
INSERT INTO uchome_friend VALUES ('1','211','yhkwy','1','0','','1','1249889747');
INSERT INTO uchome_friend VALUES ('129','54','zhangyan','0','1','','0','1249890044');
INSERT INTO uchome_friend VALUES ('206','209','yiyaheihei','1','0','','1','1249890967');
INSERT INTO uchome_friend VALUES ('211','197','zyzy','0','0','','0','1249891258');
INSERT INTO uchome_friend VALUES ('211','222','Loveyou','0','7','','1','1249891341');
INSERT INTO uchome_friend VALUES ('96','202','mling','1','1','','5','1249891781');
INSERT INTO uchome_friend VALUES ('189','210','wanghua','1','0','','3','1249891438');
INSERT INTO uchome_friend VALUES ('189','200','pcaff','1','1','','3','1249891442');
INSERT INTO uchome_friend VALUES ('206','211','yhkwy','1','0','','4','1249895175');
INSERT INTO uchome_friend VALUES ('189','192','fulunda','1','1','','2','1249891448');
INSERT INTO uchome_friend VALUES ('206','214','subborn','1','0','','1','1249956582');
INSERT INTO uchome_friend VALUES ('206','223','kor','0','0','','0','1249891476');
INSERT INTO uchome_friend VALUES ('206','213','chengge','0','0','','0','1249891500');
INSERT INTO uchome_friend VALUES ('96','189','tsingchao','1','1','','4','1249891792');
INSERT INTO uchome_friend VALUES ('96','187','jack','1','1','','16','1249891800');
INSERT INTO uchome_friend VALUES ('96','185','qiying','1','1','','3','1249891807');
INSERT INTO uchome_friend VALUES ('206','9','happy','1','0','','1','1249899521');
INSERT INTO uchome_friend VALUES ('206','221','tonypeach','0','0','','0','1249895019');
INSERT INTO uchome_friend VALUES ('206','125','mylove','1','0','','0','1250169967');
INSERT INTO uchome_friend VALUES ('206','27','tianzi','1','0','','3','1249895270');
INSERT INTO uchome_friend VALUES ('206','218','huqiaoa','0','0','','0','1249895027');
INSERT INTO uchome_friend VALUES ('206','154','zhkabc','0','0','','0','1249894756');
INSERT INTO uchome_friend VALUES ('206','181','DGMG','0','0','','0','1249894768');
INSERT INTO uchome_friend VALUES ('206','96','abcdefg','1','0','','0','1249955204');
INSERT INTO uchome_friend VALUES ('206','189','tsingchao','1','0','','0','1250059088');
INSERT INTO uchome_friend VALUES ('206','192','fulunda','0','0','','0','1249894807');
INSERT INTO uchome_friend VALUES ('206','215','zingy','0','0','','1','1249894973');
INSERT INTO uchome_friend VALUES ('206','129','hjh','1','0','','1','1249978149');
INSERT INTO uchome_friend VALUES ('206','217','Xiaosunyang','0','0','','1','1249895034');
INSERT INTO uchome_friend VALUES ('206','216','soledad','0','0','','0','1249895042');
INSERT INTO uchome_friend VALUES ('211','223','kor','0','7','','0','1249895141');
INSERT INTO uchome_friend VALUES ('211','206','zhylbj','1','0','','9','1249895175');
INSERT INTO uchome_friend VALUES ('211','203','sbh7608','1','7','','3','1249895185');
INSERT INTO uchome_friend VALUES ('211','214','subborn','1','7','','3','1249895190');
INSERT INTO uchome_friend VALUES ('27','206','zhylbj','1','1','','2','1249895270');
INSERT INTO uchome_friend VALUES ('27','221','tonypeach','0','1','','1','1249895355');
INSERT INTO uchome_friend VALUES ('227','9','happy','1','0','','1','1249895394');
INSERT INTO uchome_friend VALUES ('9','227','ererer','1','0','','0','1249895394');
INSERT INTO uchome_friend VALUES ('27','218','huqiaoa','0','1','','1','1249895412');
INSERT INTO uchome_friend VALUES ('211','27','tianzi','1','7','','12','1249895502');
INSERT INTO uchome_friend VALUES ('27','211','yhkwy','1','1','','5','1249895502');
INSERT INTO uchome_friend VALUES ('211','174','qxz','0','0','','1','1249895511');
INSERT INTO uchome_friend VALUES ('211','96','abcdefg','1','0','','1','1249955198');
INSERT INTO uchome_friend VALUES ('211','122','delong','1','0','','2','1250477684');
INSERT INTO uchome_friend VALUES ('211','173','huha','1','7','','2','1250927444');
INSERT INTO uchome_friend VALUES ('211','103','sylt','1','7','','6','1249905843');
INSERT INTO uchome_friend VALUES ('211','21','wangyang','0','7','','1','1249896395');
INSERT INTO uchome_friend VALUES ('9','206','zhylbj','1','0','','1','1249899521');
INSERT INTO uchome_friend VALUES ('230','202','mling','1','0','','1','1249900687');
INSERT INTO uchome_friend VALUES ('202','230','lijianhang','1','0','','0','1249900687');
INSERT INTO uchome_friend VALUES ('230','46','ma876401970','1','1','','0','1250312566');
INSERT INTO uchome_friend VALUES ('187','217','Xiaosunyang','0','0','','0','1249901715');
INSERT INTO uchome_friend VALUES ('140','27','tianzi','1','1','','1','1249959749');
INSERT INTO uchome_friend VALUES ('140','154','zhkabc','0','1','','0','1249902916');
INSERT INTO uchome_friend VALUES ('140','213','chengge','0','1','','0','1249902945');
INSERT INTO uchome_friend VALUES ('103','211','yhkwy','1','1','','3','1249905843');
INSERT INTO uchome_friend VALUES ('158','230','lijianhang','0','1','','0','1249908496');
INSERT INTO uchome_friend VALUES ('158','27','tianzi','1','1','','5','1249959745');
INSERT INTO uchome_friend VALUES ('158','174','qxz','0','1','','0','1249908552');
INSERT INTO uchome_friend VALUES ('158','187','jack','1','1','','16','1249908580');
INSERT INTO uchome_friend VALUES ('158','176','MAYJJ','1','1','','3','1249908613');
INSERT INTO uchome_friend VALUES ('158','173','huha','1','1','','1','1249908630');
INSERT INTO uchome_friend VALUES ('232','1','admin','1','0','','3','1249911651');
INSERT INTO uchome_friend VALUES ('1','232','skyzhaojian','1','0','','0','1249911651');
INSERT INTO uchome_friend VALUES ('232','187','jack','1','7','','8','1249912146');
INSERT INTO uchome_friend VALUES ('232','54','zhangyan','0','1','','0','1249911919');
INSERT INTO uchome_friend VALUES ('232','205','geondri','0','1','','0','1249912109');
INSERT INTO uchome_friend VALUES ('187','232','skyzhaojian','1','0','','7','1249912146');
INSERT INTO uchome_friend VALUES ('232','134','bluedryad','1','1','','0','1249913699');
INSERT INTO uchome_friend VALUES ('232','27','tianzi','1','1','','0','1249959729');
INSERT INTO uchome_friend VALUES ('134','232','skyzhaojian','1','0','','2','1249913699');
INSERT INTO uchome_friend VALUES ('211','9','happy','1','0','','5','1249917662');
INSERT INTO uchome_friend VALUES ('9','211','yhkwy','1','0','','0','1249917662');
INSERT INTO uchome_friend VALUES ('233','211','yhkwy','0','7','','4','1249923372');
INSERT INTO uchome_friend VALUES ('233','27','tianzi','1','7','','4','1249959722');
INSERT INTO uchome_friend VALUES ('239','1','admin','1','0','','1','1249951776');
INSERT INTO uchome_friend VALUES ('135','200','pcaff','1','1','','1','1249927196');
INSERT INTO uchome_friend VALUES ('135','187','jack','1','1','','2','1249927222');
INSERT INTO uchome_friend VALUES ('1','241','liuyu','1','0','','1','1249952502');
INSERT INTO uchome_friend VALUES ('96','211','yhkwy','1','1','','2','1249955198');
INSERT INTO uchome_friend VALUES ('96','206','zhylbj','1','1','','1','1249955204');
INSERT INTO uchome_friend VALUES ('214','206','zhylbj','1','1','','1','1249956582');
INSERT INTO uchome_friend VALUES ('214','223','kor','1','1','','2','1249956602');
INSERT INTO uchome_friend VALUES ('242','96','abcdefg','1','1','','0','1250298389');
INSERT INTO uchome_friend VALUES ('172','185','qiying','0','0','','0','1249959425');
INSERT INTO uchome_friend VALUES ('172','242','wcbxx','1','0','','0','1249963190');
INSERT INTO uchome_friend VALUES ('27','233','dmyhkwy','1','1','','3','1249959722');
INSERT INTO uchome_friend VALUES ('27','232','skyzhaojian','1','1','','2','1249959729');
INSERT INTO uchome_friend VALUES ('27','158','shendaaaaa','1','1','','6','1249959745');
INSERT INTO uchome_friend VALUES ('27','140','alloc','1','1','','2','1249959749');
INSERT INTO uchome_friend VALUES ('214','240','zhaojiawen','0','0','','0','1249961045');
INSERT INTO uchome_friend VALUES ('243','1','admin','1','0','','13','1249961393');
INSERT INTO uchome_friend VALUES ('1','243','zhengwenxiang','1','0','','3','1249961393');
INSERT INTO uchome_friend VALUES ('243','187','jack','1','1','','13','1249962446');
INSERT INTO uchome_friend VALUES ('187','243','zhengwenxiang','1','0','','4','1249962446');
INSERT INTO uchome_friend VALUES ('243','27','tianzi','1','1','','19','1249974398');
INSERT INTO uchome_friend VALUES ('243','238','shaopu','0','1','','0','1249962901');
INSERT INTO uchome_friend VALUES ('242','172','xuhuayong','1','0','','5','1249963190');
INSERT INTO uchome_friend VALUES ('244','1','admin','1','0','','1','1249966557');
INSERT INTO uchome_friend VALUES ('1','244','zhangguozhou','1','0','','0','1249966557');
INSERT INTO uchome_friend VALUES ('244','75','linwenyi','0','0','','0','1249967068');
INSERT INTO uchome_friend VALUES ('244','46','ma876401970','1','0','','1','1250312539');
INSERT INTO uchome_friend VALUES ('244','125','mylove','1','0','','4','1250169963');
INSERT INTO uchome_friend VALUES ('244','58','huaynie','0','0','','0','1249969388');
INSERT INTO uchome_friend VALUES ('244','27','tianzi','1','0','','0','1249974392');
INSERT INTO uchome_friend VALUES ('245','9','happy','1','0','','1','1249969426');
INSERT INTO uchome_friend VALUES ('9','245','leyi','1','0','','0','1249969426');
INSERT INTO uchome_friend VALUES ('246','9','happy','1','0','','1','1249971805');
INSERT INTO uchome_friend VALUES ('9','246','fanwei','1','0','','0','1249971805');
INSERT INTO uchome_friend VALUES ('246','21','wangyang','0','0','','0','1249972188');
INSERT INTO uchome_friend VALUES ('247','96','abcdefg','1','0','','0','1250298278');
INSERT INTO uchome_friend VALUES ('246','30','norye','0','0','','0','1249972212');
INSERT INTO uchome_friend VALUES ('246','96','abcdefg','1','0','','0','1250298339');
INSERT INTO uchome_friend VALUES ('246','46','ma876401970','1','0','','0','1250312524');
INSERT INTO uchome_friend VALUES ('246','32','wjunhua','0','0','','0','1249972301');
INSERT INTO uchome_friend VALUES ('246','38','andylau','0','0','','0','1249972311');
INSERT INTO uchome_friend VALUES ('248','9','happy','1','0','','1','1249973349');
INSERT INTO uchome_friend VALUES ('9','248','xiaodaidai','1','0','','0','1249973349');
INSERT INTO uchome_friend VALUES ('249','9','happy','1','0','','5','1249973370');
INSERT INTO uchome_friend VALUES ('9','249','xixiaodaidaiao','1','0','','0','1249973370');
INSERT INTO uchome_friend VALUES ('249','247','zhangqx','0','1','','0','1249973592');
INSERT INTO uchome_friend VALUES ('249','135','iamwayney','1','1','','0','1249999167');
INSERT INTO uchome_friend VALUES ('249','103','sylt','1','1','','0','1249989366');
INSERT INTO uchome_friend VALUES ('27','244','zhangguozhou','1','1','','3','1249974392');
INSERT INTO uchome_friend VALUES ('27','243','zhengwenxiang','1','1','','8','1249974398');
INSERT INTO uchome_friend VALUES ('187','249','xixiaodaidaiao','0','0','','2','1249974750');
INSERT INTO uchome_friend VALUES ('187','248','xiaodaidai','0','0','','0','1249974789');
INSERT INTO uchome_friend VALUES ('129','206','zhylbj','1','1','','2','1249978149');
INSERT INTO uchome_friend VALUES ('129','188','tianci','1','1','','3','1249978160');
INSERT INTO uchome_friend VALUES ('129','125','mylove','1','1','','3','1249978177');
INSERT INTO uchome_friend VALUES ('129','164','afu','0','0','','1','1249978389');
INSERT INTO uchome_friend VALUES ('129','247','zhangqx','0','0','','0','1249978561');
INSERT INTO uchome_friend VALUES ('250','9','happy','1','0','','2','1249980615');
INSERT INTO uchome_friend VALUES ('9','250','xuanhong','1','0','','0','1249980615');
INSERT INTO uchome_friend VALUES ('103','249','xixiaodaidaiao','1','0','','3','1249989366');
INSERT INTO uchome_friend VALUES ('232','103','sylt','1','1','','3','1250165080');
INSERT INTO uchome_friend VALUES ('232','238','shaopu','0','1','','1','1249991310');
INSERT INTO uchome_friend VALUES ('232','240','zhaojiawen','0','1','','0','1249991484');
INSERT INTO uchome_friend VALUES ('194','209','yiyaheihei','1','7','','1','1249998306');
INSERT INTO uchome_friend VALUES ('135','249','xixiaodaidaiao','1','1','','1','1249999167');
INSERT INTO uchome_friend VALUES ('251','202','mling','1','0','','2','1250008128');
INSERT INTO uchome_friend VALUES ('202','251','vip','1','0','','0','1250008128');
INSERT INTO uchome_friend VALUES ('251','240','zhaojiawen','0','7','','1','1250008442');
INSERT INTO uchome_friend VALUES ('252','251','vip','0','1','','0','1250010118');
INSERT INTO uchome_friend VALUES ('252','176','MAYJJ','1','1','','0','1250153549');
INSERT INTO uchome_friend VALUES ('255','187','jack','1','0','','7','1250044356');
INSERT INTO uchome_friend VALUES ('255','135','iamwayney','1','0','','10','1250093760');
INSERT INTO uchome_friend VALUES ('255','9','happy','0','0','','1','1250039411');
INSERT INTO uchome_friend VALUES ('214','249','xixiaodaidaiao','0','0','','1','1250039992');
INSERT INTO uchome_friend VALUES ('214','103','sylt','1','0','','1','1250161584');
INSERT INTO uchome_friend VALUES ('187','255','abcd','1','0','','7','1250044356');
INSERT INTO uchome_friend VALUES ('187','263','ONEI','1','0','','12','1250072442');
INSERT INTO uchome_friend VALUES ('189','206','zhylbj','1','0','','1','1250059088');
INSERT INTO uchome_friend VALUES ('259','58','huaynie','0','0','','0','1250059882');
INSERT INTO uchome_friend VALUES ('259','1','admin','1','0','','0','1250169606');
INSERT INTO uchome_friend VALUES ('259','27','tianzi','1','0','','0','1250128221');
INSERT INTO uchome_friend VALUES ('259','257','hacker','0','0','','0','1250061142');
INSERT INTO uchome_friend VALUES ('259','119','sky','0','0','','0','1250061217');
INSERT INTO uchome_friend VALUES ('259','9','happy','0','0','','0','1250061287');
INSERT INTO uchome_friend VALUES ('259','258','sxl525831','0','0','','0','1250061319');
INSERT INTO uchome_friend VALUES ('259','256','darkeyes','1','0','','0','1251164663');
INSERT INTO uchome_friend VALUES ('260','259','zhuliuxiang','0','1','','1','1250062577');
INSERT INTO uchome_friend VALUES ('260','9','happy','0','1','','0','1250062583');
INSERT INTO uchome_friend VALUES ('260','54','zhangyan','0','1','','0','1250062591');
INSERT INTO uchome_friend VALUES ('263','125','mylove','1','0','','3','1250071356');
INSERT INTO uchome_friend VALUES ('125','263','ONEI','1','0','','0','1250071356');
INSERT INTO uchome_friend VALUES ('263','9','happy','0','1','','1','1250071502');
INSERT INTO uchome_friend VALUES ('263','27','tianzi','1','1','','0','1250128216');
INSERT INTO uchome_friend VALUES ('263','124','cdscjk','0','1','','0','1250071548');
INSERT INTO uchome_friend VALUES ('263','255','abcd','1','1','','4','1250148823');
INSERT INTO uchome_friend VALUES ('263','262','addmeaddme','0','1','','1','1250071606');
INSERT INTO uchome_friend VALUES ('263','187','jack','1','1','','10','1250072442');
INSERT INTO uchome_friend VALUES ('187','259','zhuliuxiang','0','0','','1','1250072486');
INSERT INTO uchome_friend VALUES ('187','258','sxl525831','0','0','','2','1250072514');
INSERT INTO uchome_friend VALUES ('263','109','yycf','0','1','','0','1250072589');
INSERT INTO uchome_friend VALUES ('187','247','zhangqx','0','0','','0','1250072618');
INSERT INTO uchome_friend VALUES ('263','256','darkeyes','1','1','','1','1251164793');
INSERT INTO uchome_friend VALUES ('263','189','tsingchao','1','1','','0','1250145177');
INSERT INTO uchome_friend VALUES ('264','265','一夜情深','1','0','','7','1250092938');
INSERT INTO uchome_friend VALUES ('265','249','xixiaodaidaiao','0','0','','0','1250085688');
INSERT INTO uchome_friend VALUES ('265','263','ONEI','1','0','','0','1250139083');
INSERT INTO uchome_friend VALUES ('187','264','寂寞梧桐','1','0','','15','1250087333');
INSERT INTO uchome_friend VALUES ('266','46','ma876401970','1','0','','0','1250312519');
INSERT INTO uchome_friend VALUES ('266','134','bluedryad','0','0','','0','1250086266');
INSERT INTO uchome_friend VALUES ('265','266','WOAIMEINV','0','0','','0','1250087102');
INSERT INTO uchome_friend VALUES ('265','9','happy','0','0','','0','1250087282');
INSERT INTO uchome_friend VALUES ('264','187','jack','1','1','','19','1250087333');
INSERT INTO uchome_friend VALUES ('265','187','jack','1','0','','7','1250087928');
INSERT INTO uchome_friend VALUES ('265','232','skyzhaojian','1','0','','0','1250411903');
INSERT INTO uchome_friend VALUES ('187','265','一夜情深','1','0','','5','1250087928');
INSERT INTO uchome_friend VALUES ('267','265','一夜情深','1','1','','2','1250089210');
INSERT INTO uchome_friend VALUES ('267','264','寂寞梧桐','1','1','','0','1250123190');
INSERT INTO uchome_friend VALUES ('264','267','wjly','1','1','','1','1250123190');
INSERT INTO uchome_friend VALUES ('265','267','wjly','1','0','','3','1250089210');
INSERT INTO uchome_friend VALUES ('267','9','happy','0','0','','0','1250089813');
INSERT INTO uchome_friend VALUES ('265','248','xiaodaidai','0','0','','0','1250091362');
INSERT INTO uchome_friend VALUES ('265','259','zhuliuxiang','0','0','','0','1250091414');
INSERT INTO uchome_friend VALUES ('265','264','寂寞梧桐','1','0','','1','1250092938');
INSERT INTO uchome_friend VALUES ('135','255','abcd','1','1','','7','1250093760');
INSERT INTO uchome_friend VALUES ('269','9','happy','0','0','','0','1250094033');
INSERT INTO uchome_friend VALUES ('269','135','iamwayney','1','0','','0','1250172905');
INSERT INTO uchome_friend VALUES ('264','269','112930968','1','0','','1','1250123168');
INSERT INTO uchome_friend VALUES ('269','268','yeepaykefu','0','0','','1','1250094210');
INSERT INTO uchome_friend VALUES ('269','264','寂寞梧桐','1','0','','1','1250123168');
INSERT INTO uchome_friend VALUES ('269','232','skyzhaojian','1','0','','0','1250411894');
INSERT INTO uchome_friend VALUES ('269','259','zhuliuxiang','0','0','','0','1250094388');
INSERT INTO uchome_friend VALUES ('269','189','tsingchao','1','0','','0','1250145172');
INSERT INTO uchome_friend VALUES ('269','258','sxl525831','0','0','','0','1250094476');
INSERT INTO uchome_friend VALUES ('269','256','darkeyes','1','0','','0','1251164625');
INSERT INTO uchome_friend VALUES ('269','267','wjly','0','0','','0','1250094668');
INSERT INTO uchome_friend VALUES ('27','263','ONEI','1','1','','2','1250128216');
INSERT INTO uchome_friend VALUES ('27','259','zhuliuxiang','1','1','','3','1250128221');
INSERT INTO uchome_friend VALUES ('270','1','admin','1','0','','5','1250134800');
INSERT INTO uchome_friend VALUES ('1','270','DFMN','1','0','','2','1250134800');
INSERT INTO uchome_friend VALUES ('271','187','jack','1','1','','5','1250137382');
INSERT INTO uchome_friend VALUES ('187','271','gaonifu','1','0','','2','1250137382');
INSERT INTO uchome_friend VALUES ('272','271','gaonifu','1','0','','4','1250137957');
INSERT INTO uchome_friend VALUES ('271','272','abbdbfcif','1','1','','1','1250137957');
INSERT INTO uchome_friend VALUES ('273','272','abbdbfcif','0','1','','1','1250138355');
INSERT INTO uchome_friend VALUES ('263','265','一夜情深','1','1','','3','1250139083');
INSERT INTO uchome_friend VALUES ('263','271','gaonifu','0','1','','1','1250139131');
INSERT INTO uchome_friend VALUES ('214','265','一夜情深','0','0','','0','1250140077');
INSERT INTO uchome_friend VALUES ('189','269','112930968','1','0','','2','1250145172');
INSERT INTO uchome_friend VALUES ('189','263','ONEI','1','0','','2','1250145177');
INSERT INTO uchome_friend VALUES ('274','27','tianzi','1','1','','18','1250151899');
INSERT INTO uchome_friend VALUES ('274','189','tsingchao','1','1','','5','1250221843');
INSERT INTO uchome_friend VALUES ('275','274','GEXUAN','1','1','','0','1250250275');
INSERT INTO uchome_friend VALUES ('255','263','ONEI','1','1','','2','1250148823');
INSERT INTO uchome_friend VALUES ('87','271','gaonifu','0','0','','1','1250149834');
INSERT INTO uchome_friend VALUES ('87','90','xiaxuebianjie','1','1','','2','1250149870');
INSERT INTO uchome_friend VALUES ('87','91','kuangniangao','1','1','','2','1250149876');
INSERT INTO uchome_friend VALUES ('27','274','GEXUAN','1','1','','9','1250151899');
INSERT INTO uchome_friend VALUES ('27','255','abcd','1','1','','0','1250308815');
INSERT INTO uchome_friend VALUES ('276','9','happy','1','0','','1','1250152949');
INSERT INTO uchome_friend VALUES ('9','276','meinu','1','0','','0','1250152949');
INSERT INTO uchome_friend VALUES ('277','9','happy','1','0','','11','1250153014');
INSERT INTO uchome_friend VALUES ('9','277','Daniel','1','0','','0','1250153014');
INSERT INTO uchome_friend VALUES ('277','32','wjunhua','0','0','','0','1250153085');
INSERT INTO uchome_friend VALUES ('277','39','ashice','0','0','','0','1250153094');
INSERT INTO uchome_friend VALUES ('176','252','baobao','1','1','','2','1250153549');
INSERT INTO uchome_friend VALUES ('278','258','sxl525831','0','0','','0','1250155669');
INSERT INTO uchome_friend VALUES ('278','214','subborn','1','0','','1','1250217849');
INSERT INTO uchome_friend VALUES ('278','176','MAYJJ','1','0','','2','1250208710');
INSERT INTO uchome_friend VALUES ('278','276','meinu','0','0','','0','1250154892');
INSERT INTO uchome_friend VALUES ('278','277','Daniel','1','0','','0','1250649714');
INSERT INTO uchome_friend VALUES ('278','9','happy','0','0','','0','1250154903');
INSERT INTO uchome_friend VALUES ('278','54','zhangyan','0','0','','0','1250154906');
INSERT INTO uchome_friend VALUES ('278','257','hacker','0','0','','0','1250154984');
INSERT INTO uchome_friend VALUES ('278','165','huang','0','0','','1','1250154994');
INSERT INTO uchome_friend VALUES ('278','122','delong','1','0','','1','1250478389');
INSERT INTO uchome_friend VALUES ('278','173','huha','1','0','','1','1250927437');
INSERT INTO uchome_friend VALUES ('278','172','xuhuayong','0','0','','0','1250155069');
INSERT INTO uchome_friend VALUES ('278','27','tianzi','1','0','','1','1250211755');
INSERT INTO uchome_friend VALUES ('278','271','gaonifu','0','0','','1','1250155168');
INSERT INTO uchome_friend VALUES ('103','214','subborn','1','1','','9','1250161584');
INSERT INTO uchome_friend VALUES ('232','271','gaonifu','0','1','','1','1250164107');
INSERT INTO uchome_friend VALUES ('103','232','skyzhaojian','1','0','','2','1250165080');
INSERT INTO uchome_friend VALUES ('269','103','sylt','1','0','','1','1250170692');
INSERT INTO uchome_friend VALUES ('269','151','zrtyzrcx','0','0','','0','1250165936');
INSERT INTO uchome_friend VALUES ('255','295','white','1','1','','8','1250308766');
INSERT INTO uchome_friend VALUES ('269','87','cec','0','0','','0','1250166062');
INSERT INTO uchome_friend VALUES ('269','275','kkbawubasijiu','0','0','','0','1250166352');
INSERT INTO uchome_friend VALUES ('269','272','abbdbfcif','0','0','','0','1250166429');
INSERT INTO uchome_friend VALUES ('269','271','gaonifu','0','0','','0','1250166490');
INSERT INTO uchome_friend VALUES ('279','1','admin','1','0','','2','1250167890');
INSERT INTO uchome_friend VALUES ('1','279','heilongjiang','1','0','','0','1250167890');
INSERT INTO uchome_friend VALUES ('280','58','huaynie','0','0','','1','1250168465');
INSERT INTO uchome_friend VALUES ('158','165','huang','0','1','','2','1250169178');
INSERT INTO uchome_friend VALUES ('158','271','gaonifu','0','1','','1','1250169216');
INSERT INTO uchome_friend VALUES ('1','259','zhuliuxiang','1','0','','3','1250169606');
INSERT INTO uchome_friend VALUES ('158','87','cec','0','0','','1','1250169702');
INSERT INTO uchome_friend VALUES ('125','244','zhangguozhou','1','0','','1','1250169963');
INSERT INTO uchome_friend VALUES ('125','206','zhylbj','1','0','','1','1250169967');
INSERT INTO uchome_friend VALUES ('125','218','huqiaoa','1','0','','1','1250169970');
INSERT INTO uchome_friend VALUES ('103','269','112930968','1','1','','2','1250170692');
INSERT INTO uchome_friend VALUES ('158','135','iamwayney','1','1','','5','1250172899');
INSERT INTO uchome_friend VALUES ('158','259','zhuliuxiang','0','1','','2','1250172653');
INSERT INTO uchome_friend VALUES ('135','158','shendaaaaa','1','1','','6','1250172899');
INSERT INTO uchome_friend VALUES ('135','269','112930968','1','1','','1','1250172905');
INSERT INTO uchome_friend VALUES ('285','1','admin','1','0','','1','1250198954');
INSERT INTO uchome_friend VALUES ('1','285','DOUDOU','1','0','','0','1250198954');
INSERT INTO uchome_friend VALUES ('285','255','abcd','1','1','','0','1250308804');
INSERT INTO uchome_friend VALUES ('287','1','admin','1','0','','1','1250208621');
INSERT INTO uchome_friend VALUES ('1','287','gougou','1','0','','0','1250208621');
INSERT INTO uchome_friend VALUES ('176','278','huangyuan','1','1','','1','1250208710');
INSERT INTO uchome_friend VALUES ('286','1','admin','1','0','','1','1250436290');
INSERT INTO uchome_friend VALUES ('287','125','mylove','1','0','','0','1250436472');
INSERT INTO uchome_friend VALUES ('27','278','huangyuan','1','1','','3','1250211755');
INSERT INTO uchome_friend VALUES ('214','278','huangyuan','1','1','','2','1250217849');
INSERT INTO uchome_friend VALUES ('189','274','GEXUAN','1','0','','1','1250221843');
INSERT INTO uchome_friend VALUES ('214','271','gaonifu','1','0','','2','1250228957');
INSERT INTO uchome_friend VALUES ('271','214','subborn','1','1','','1','1250228957');
INSERT INTO uchome_friend VALUES ('214','1','admin','1','0','','0','1250436287');
INSERT INTO uchome_friend VALUES ('270','27','tianzi','1','1','','2','1250240093');
INSERT INTO uchome_friend VALUES ('270','265','一夜情深','0','1','','0','1250230613');
INSERT INTO uchome_friend VALUES ('288','1','admin','1','0','','1','1250236469');
INSERT INTO uchome_friend VALUES ('1','288','HEMINGFU','1','0','','0','1250236469');
INSERT INTO uchome_friend VALUES ('288','58','huaynie','0','0','','0','1250236580');
INSERT INTO uchome_friend VALUES ('27','270','DFMN','1','1','','3','1250240093');
INSERT INTO uchome_friend VALUES ('290','291','cnefi','0','1','','0','1250240262');
INSERT INTO uchome_friend VALUES ('290','27','tianzi','1','1','','0','1250299885');
INSERT INTO uchome_friend VALUES ('290','289','dsiphilia','0','1','','0','1250240367');
INSERT INTO uchome_friend VALUES ('292','103','sylt','1','1','','11','1250244431');
INSERT INTO uchome_friend VALUES ('292','238','shaopu','0','1','','1','1250242433');
INSERT INTO uchome_friend VALUES ('292','135','iamwayney','1','1','','5','1250275093');
INSERT INTO uchome_friend VALUES ('292','87','cec','0','0','','5','1250242624');
INSERT INTO uchome_friend VALUES ('292','259','zhuliuxiang','0','0','','0','1250242640');
INSERT INTO uchome_friend VALUES ('292','27','tianzi','1','0','','3','1250299881');
INSERT INTO uchome_friend VALUES ('292','264','寂寞梧桐','0','0','','0','1250242673');
INSERT INTO uchome_friend VALUES ('292','1','admin','1','0','','1','1250436284');
INSERT INTO uchome_friend VALUES ('292','195','QQA','0','0','','0','1250242708');
INSERT INTO uchome_friend VALUES ('292','291','cnefi','0','0','','2','1250242755');
INSERT INTO uchome_friend VALUES ('292','151','zrtyzrcx','0','0','','1','1250242974');
INSERT INTO uchome_friend VALUES ('292','269','112930968','0','0','','2','1250243014');
INSERT INTO uchome_friend VALUES ('292','214','subborn','1','0','','1','1250249592');
INSERT INTO uchome_friend VALUES ('292','189','tsingchao','0','0','','1','1250243664');
INSERT INTO uchome_friend VALUES ('292','176','MAYJJ','0','0','','1','1250243691');
INSERT INTO uchome_friend VALUES ('292','125','mylove','1','0','','1','1250436470');
INSERT INTO uchome_friend VALUES ('292','91','kuangniangao','0','0','','0','1250244252');
INSERT INTO uchome_friend VALUES ('103','292','XHL','1','0','','7','1250244431');
INSERT INTO uchome_friend VALUES ('292','265','一夜情深','0','0','','0','1250246256');
INSERT INTO uchome_friend VALUES ('255','285','DOUDOU','1','1','','2','1250308804');
INSERT INTO uchome_friend VALUES ('73','110','CCA','1','1','','2','1250248058');
INSERT INTO uchome_friend VALUES ('73','91','kuangniangao','1','1','','4','1250248067');
INSERT INTO uchome_friend VALUES ('73','85','tanglao','0','1','','3','1250248144');
INSERT INTO uchome_friend VALUES ('295','27','tianzi','1','0','','0','1250299875');
INSERT INTO uchome_friend VALUES ('295','271','gaonifu','0','0','','0','1250249034');
INSERT INTO uchome_friend VALUES ('295','290','baibing4511','0','0','','0','1250249070');
INSERT INTO uchome_friend VALUES ('295','189','tsingchao','0','0','','0','1250249091');
INSERT INTO uchome_friend VALUES ('295','278','huangyuan','0','0','','0','1250249146');
INSERT INTO uchome_friend VALUES ('295','255','abcd','1','0','','0','1250308766');
INSERT INTO uchome_friend VALUES ('214','292','XHL','1','0','','1','1250249592');
INSERT INTO uchome_friend VALUES ('274','275','kkbawubasijiu','1','1','','1','1250250275');
INSERT INTO uchome_friend VALUES ('64','161','weizhang','1','1','','1','1250261891');
INSERT INTO uchome_friend VALUES ('64','159','lenovowww','1','1','','1','1250261902');
INSERT INTO uchome_friend VALUES ('87','64','liusuo','1','1','','4','1250418515');
INSERT INTO uchome_friend VALUES ('299','96','abcdefg','1','0','','0','1250298118');
INSERT INTO uchome_friend VALUES ('299','181','DGMG','0','0','','0','1250265553');
INSERT INTO uchome_friend VALUES ('299','183','QINQUYUAN','0','0','','0','1250265579');
INSERT INTO uchome_friend VALUES ('299','264','寂寞梧桐','0','0','','0','1250265607');
INSERT INTO uchome_friend VALUES ('274','298','yewujiandao','0','1','','1','1250268215');
INSERT INTO uchome_friend VALUES ('300','296','smartwolf','0','1','','0','1250273176');
INSERT INTO uchome_friend VALUES ('135','292','XHL','1','1','','5','1250275093');
INSERT INTO uchome_friend VALUES ('158','290','baibing4511','0','1','','1','1250282423');
INSERT INTO uchome_friend VALUES ('158','301','bkcui','1','1','','3','1251352705');
INSERT INTO uchome_friend VALUES ('302','58','huaynie','0','0','','0','1250293690');
INSERT INTO uchome_friend VALUES ('302','46','ma876401970','1','0','','0','1250312514');
INSERT INTO uchome_friend VALUES ('302','1','admin','1','0','','1','1250436281');
INSERT INTO uchome_friend VALUES ('96','299','suoli','1','1','','1','1250298118');
INSERT INTO uchome_friend VALUES ('96','247','zhangqx','1','1','','7','1250298278');
INSERT INTO uchome_friend VALUES ('96','246','fanwei','1','1','','3','1250298339');
INSERT INTO uchome_friend VALUES ('96','242','wcbxx','1','1','','2','1250298389');
INSERT INTO uchome_friend VALUES ('27','295','white','1','1','','1','1250299875');
INSERT INTO uchome_friend VALUES ('27','292','XHL','1','1','','1','1250299881');
INSERT INTO uchome_friend VALUES ('27','290','baibing4511','1','1','','1','1250299885');
INSERT INTO uchome_friend VALUES ('243','54','zhangyan','0','1','','1','1250300057');
INSERT INTO uchome_friend VALUES ('243','103','sylt','1','1','','5','1250505940');
INSERT INTO uchome_friend VALUES ('243','135','iamwayney','1','1','','22','1250352095');
INSERT INTO uchome_friend VALUES ('243','296','smartwolf','0','1','','2','1250300605');
INSERT INTO uchome_friend VALUES ('243','302','lirong','0','1','','3','1250301443');
INSERT INTO uchome_friend VALUES ('243','300','wanglong','0','1','','1','1250301480');
INSERT INTO uchome_friend VALUES ('243','73','yanluo','1','1','','8','1250418657');
INSERT INTO uchome_friend VALUES ('243','189','tsingchao','0','1','','1','1250303252');
INSERT INTO uchome_friend VALUES ('243','285','DOUDOU','0','1','','1','1250303303');
INSERT INTO uchome_friend VALUES ('243','176','MAYJJ','0','1','','1','1250303371');
INSERT INTO uchome_friend VALUES ('304','9','happy','1','0','','1','1250306181');
INSERT INTO uchome_friend VALUES ('9','304','cyh','1','0','','0','1250306181');
INSERT INTO uchome_friend VALUES ('304','243','zhengwenxiang','1','0','','0','1250400317');
INSERT INTO uchome_friend VALUES ('304','296','smartwolf','0','0','','0','1250306668');
INSERT INTO uchome_friend VALUES ('304','109','yycf','0','0','','0','1250306671');
INSERT INTO uchome_friend VALUES ('255','27','tianzi','1','1','','3','1250308815');
INSERT INTO uchome_friend VALUES ('46','302','lirong','1','0','','1','1250312514');
INSERT INTO uchome_friend VALUES ('46','266','WOAIMEINV','1','0','','1','1250312519');
INSERT INTO uchome_friend VALUES ('46','246','fanwei','1','0','','1','1250312524');
INSERT INTO uchome_friend VALUES ('46','244','zhangguozhou','1','0','','1','1250312539');
INSERT INTO uchome_friend VALUES ('46','230','lijianhang','1','0','','1','1250312566');
INSERT INTO uchome_friend VALUES ('46','207','wwwwww','1','0','','1','1250312568');
INSERT INTO uchome_friend VALUES ('46','202','mling','1','0','','1','1250312574');
INSERT INTO uchome_friend VALUES ('46','187','jack','1','0','','1','1250312577');
INSERT INTO uchome_friend VALUES ('46','188','tianci','1','0','','1','1250312582');
INSERT INTO uchome_friend VALUES ('46','176','MAYJJ','1','0','','1','1250312590');
INSERT INTO uchome_friend VALUES ('46','179','wdb007007','1','0','','1','1250312597');
INSERT INTO uchome_friend VALUES ('46','170','lang','1','0','','1','1250312601');
INSERT INTO uchome_friend VALUES ('46','168','yhhmww','1','0','','1','1250312606');
INSERT INTO uchome_friend VALUES ('46','165','huang','1','0','','1','1250312614');
INSERT INTO uchome_friend VALUES ('46','161','weizhang','1','0','','1','1250312620');
INSERT INTO uchome_friend VALUES ('46','159','lenovowww','1','0','','1','1250312626');
INSERT INTO uchome_friend VALUES ('46','158','shendaaaaa','1','0','','1','1250312632');
INSERT INTO uchome_friend VALUES ('46','147','jbxx','1','0','','1','1250312637');
INSERT INTO uchome_friend VALUES ('46','119','sky','1','0','','1','1250312642');
INSERT INTO uchome_friend VALUES ('46','116','woyjh','1','0','','1','1250312649');
INSERT INTO uchome_friend VALUES ('46','115','hsz','1','0','','1','1250312658');
INSERT INTO uchome_friend VALUES ('96','301','bkcui','1','0','','2','1251352697');
INSERT INTO uchome_friend VALUES ('96','223','kor','0','0','','0','1250313924');
INSERT INTO uchome_friend VALUES ('96','97','wbd','0','0','','0','1250313935');
INSERT INTO uchome_friend VALUES ('96','164','afu','0','0','','2','1250313944');
INSERT INTO uchome_friend VALUES ('292','243','zhengwenxiang','1','0','','1','1250400304');
INSERT INTO uchome_friend VALUES ('292','96','abcdefg','1','0','','8','1250327443');
INSERT INTO uchome_friend VALUES ('292','301','bkcui','1','0','','0','1251352690');
INSERT INTO uchome_friend VALUES ('292','299','suoli','0','0','','0','1250319327');
INSERT INTO uchome_friend VALUES ('306','46','ma876401970','1','1','','0','1250376149');
INSERT INTO uchome_friend VALUES ('96','292','XHL','1','1','','7','1250327443');
INSERT INTO uchome_friend VALUES ('309','1','admin','1','0','','1','1250339999');
INSERT INTO uchome_friend VALUES ('1','309','ROCKYOU','1','0','','0','1250339999');
INSERT INTO uchome_friend VALUES ('310','311','kuailan','0','0','','0','1250344145');
INSERT INTO uchome_friend VALUES ('310','58','huaynie','0','0','','0','1250344160');
INSERT INTO uchome_friend VALUES ('310','134','bluedryad','0','0','','0','1250344174');
INSERT INTO uchome_friend VALUES ('310','189','tsingchao','0','0','','0','1250344183');
INSERT INTO uchome_friend VALUES ('135','243','zhengwenxiang','1','1','','9','1250352095');
INSERT INTO uchome_friend VALUES ('46','306','zhengheli','1','0','','1','1250376149');
INSERT INTO uchome_friend VALUES ('255','96','abcdefg','1','0','','5','1250395026');
INSERT INTO uchome_friend VALUES ('96','255','abcd','1','1','','7','1250395026');
INSERT INTO uchome_friend VALUES ('243','292','XHL','1','1','','2','1250400304');
INSERT INTO uchome_friend VALUES ('243','304','cyh','1','1','','7','1250400317');
INSERT INTO uchome_friend VALUES ('243','303','STAR','0','1','','1','1250400367');
INSERT INTO uchome_friend VALUES ('274','300','wanglong','0','1','','1','1250400708');
INSERT INTO uchome_friend VALUES ('274','288','HEMINGFU','0','1','','0','1250401027');
INSERT INTO uchome_friend VALUES ('232','269','112930968','1','1','','1','1250411894');
INSERT INTO uchome_friend VALUES ('232','265','一夜情深','1','1','','1','1250411903');
INSERT INTO uchome_friend VALUES ('232','308','alinayun','0','1','','1','1250411988');
INSERT INTO uchome_friend VALUES ('64','310','xialongchao','0','1','','0','1250418435');
INSERT INTO uchome_friend VALUES ('64','87','cec','1','1','','3','1250418515');
INSERT INTO uchome_friend VALUES ('64','243','zhengwenxiang','1','1','','6','1250470656');
INSERT INTO uchome_friend VALUES ('64','113','hanhan','0','1','','0','1250418602');
INSERT INTO uchome_friend VALUES ('73','243','zhengwenxiang','1','1','','8','1250418657');
INSERT INTO uchome_friend VALUES ('73','303','STAR','0','1','','5','1250418716');
INSERT INTO uchome_friend VALUES ('319','129','hjh','0','0','','0','1250428583');
INSERT INTO uchome_friend VALUES ('73','75','linwenyi','0','1','','2','1250419367');
INSERT INTO uchome_friend VALUES ('73','300','wanglong','0','1','','1','1250419440');
INSERT INTO uchome_friend VALUES ('73','274','GEXUAN','1','1','','7','1250482724');
INSERT INTO uchome_friend VALUES ('319','232','skyzhaojian','1','0','','0','1250491284');
INSERT INTO uchome_friend VALUES ('319','313','mymy','0','0','','0','1250428670');
INSERT INTO uchome_friend VALUES ('319','315','mjmj','0','0','','0','1250428680');
INSERT INTO uchome_friend VALUES ('319','202','mling','0','0','','0','1250428709');
INSERT INTO uchome_friend VALUES ('1','302','lirong','1','0','','1','1250436281');
INSERT INTO uchome_friend VALUES ('1','292','XHL','1','0','','1','1250436284');
INSERT INTO uchome_friend VALUES ('1','214','subborn','1','0','','1','1250436287');
INSERT INTO uchome_friend VALUES ('1','286','access','1','0','','2','1250436290');
INSERT INTO uchome_friend VALUES ('125','292','XHL','1','0','','1','1250436470');
INSERT INTO uchome_friend VALUES ('125','287','gougou','1','0','','1','1250436472');
INSERT INTO uchome_friend VALUES ('46','135','iamwayney','1','0','','1','1250441023');
INSERT INTO uchome_friend VALUES ('46','274','GEXUAN','1','0','','1','1250482702');
INSERT INTO uchome_friend VALUES ('320','27','tianzi','1','1','','0','1250469765');
INSERT INTO uchome_friend VALUES ('320','189','tsingchao','0','0','','0','1250439429');
INSERT INTO uchome_friend VALUES ('320','46','ma876401970','0','0','','0','1250439446');
INSERT INTO uchome_friend VALUES ('320','135','iamwayney','1','0','','0','1250441006');
INSERT INTO uchome_friend VALUES ('135','320','xiaotian','1','1','','1','1250441006');
INSERT INTO uchome_friend VALUES ('135','46','ma876401970','1','1','','2','1250441023');
INSERT INTO uchome_friend VALUES ('321','1','admin','1','0','','1','1250445629');
INSERT INTO uchome_friend VALUES ('1','321','cowboy','1','0','','0','1250445629');
INSERT INTO uchome_friend VALUES ('321','54','zhangyan','0','1','','2','1250445939');
INSERT INTO uchome_friend VALUES ('27','320','xiaotian','1','1','','1','1250469765');
INSERT INTO uchome_friend VALUES ('243','64','liusuo','1','1','','9','1250470656');
INSERT INTO uchome_friend VALUES ('243','46','ma876401970','0','1','','0','1250470900');
INSERT INTO uchome_friend VALUES ('243','314','mtmt','0','1','','6','1250470982');
INSERT INTO uchome_friend VALUES ('324','310','xialongchao','0','1','','1','1250475701');
INSERT INTO uchome_friend VALUES ('122','211','yhkwy','1','1','','3','1250477684');
INSERT INTO uchome_friend VALUES ('122','209','yiyaheihei','1','1','','1','1250477758');
INSERT INTO uchome_friend VALUES ('122','187','jack','1','1','','13','1250477788');
INSERT INTO uchome_friend VALUES ('122','278','huangyuan','1','0','','3','1250478389');
INSERT INTO uchome_friend VALUES ('122','203','sbh7608','1','1','','1','1250478428');
INSERT INTO uchome_friend VALUES ('122','202','mling','1','1','','1','1250478479');
INSERT INTO uchome_friend VALUES ('325','308','alinayun','0','0','','0','1250480490');
INSERT INTO uchome_friend VALUES ('325','109','yycf','0','0','','0','1250480503');
INSERT INTO uchome_friend VALUES ('325','9','happy','0','0','','0','1250480520');
INSERT INTO uchome_friend VALUES ('325','307','Joyce','0','0','','0','1250480532');
INSERT INTO uchome_friend VALUES ('325','296','smartwolf','0','0','','0','1250480542');
INSERT INTO uchome_friend VALUES ('325','264','寂寞梧桐','0','0','','0','1250480562');
INSERT INTO uchome_friend VALUES ('325','323','wcd','0','0','','0','1250480587');
INSERT INTO uchome_friend VALUES ('325','316','tuao','0','0','','0','1250480604');
INSERT INTO uchome_friend VALUES ('325','322','jeffhdi','0','0','','0','1250480611');
INSERT INTO uchome_friend VALUES ('325','243','zhengwenxiang','1','0','','0','1250648682');
INSERT INTO uchome_friend VALUES ('325','122','delong','0','0','','0','1250480629');
INSERT INTO uchome_friend VALUES ('325','96','abcdefg','1','0','','0','1250503508');
INSERT INTO uchome_friend VALUES ('325','255','abcd','1','0','','0','1250494059');
INSERT INTO uchome_friend VALUES ('325','135','iamwayney','1','0','','0','1250591474');
INSERT INTO uchome_friend VALUES ('325','27','tianzi','1','0','','0','1250560975');
INSERT INTO uchome_friend VALUES ('325','1','admin','1','0','','0','1250698692');
INSERT INTO uchome_friend VALUES ('274','46','ma876401970','1','1','','2','1250482702');
INSERT INTO uchome_friend VALUES ('274','73','yanluo','1','1','','4','1250482724');
INSERT INTO uchome_friend VALUES ('326','327','amwayrs','0','0','','0','1250486776');
INSERT INTO uchome_friend VALUES ('326','274','GEXUAN','1','0','','0','1250576120');
INSERT INTO uchome_friend VALUES ('326','9','happy','0','0','','0','1250486801');
INSERT INTO uchome_friend VALUES ('326','308','alinayun','0','0','','0','1250486827');
INSERT INTO uchome_friend VALUES ('326','54','zhangyan','0','0','','0','1250486844');
INSERT INTO uchome_friend VALUES ('326','64','liusuo','1','0','','0','1251304469');
INSERT INTO uchome_friend VALUES ('326','292','XHL','1','0','','0','1250585398');
INSERT INTO uchome_friend VALUES ('326','158','shendaaaaa','1','0','','0','1250776502');
INSERT INTO uchome_friend VALUES ('232','319','cxpmpk','1','1','','3','1250491284');
INSERT INTO uchome_friend VALUES ('255','325','moon','1','1','','1','1250494059');
INSERT INTO uchome_friend VALUES ('331','103','sylt','0','1','','0','1250494843');
INSERT INTO uchome_friend VALUES ('96','325','moon','1','1','','1','1250503508');
INSERT INTO uchome_friend VALUES ('103','243','zhengwenxiang','1','0','','2','1250505940');
INSERT INTO uchome_friend VALUES ('333','9','happy','1','0','','1','1250516249');
INSERT INTO uchome_friend VALUES ('9','333','nihao','1','0','','0','1250516249');
INSERT INTO uchome_friend VALUES ('333','46','ma876401970','0','0','','0','1250516293');
INSERT INTO uchome_friend VALUES ('334','9','happy','0','0','','0','1250517840');
INSERT INTO uchome_friend VALUES ('334','333','nihao','0','0','','1','1250517857');
INSERT INTO uchome_friend VALUES ('334','335','wdgfxz','1','1','','4','1250518015');
INSERT INTO uchome_friend VALUES ('335','334','jim','1','1','','1','1250518015');
INSERT INTO uchome_friend VALUES ('334','232','skyzhaojian','1','1','','1','1250574693');
INSERT INTO uchome_friend VALUES ('334','96','abcdefg','1','1','','1','1250557288');
INSERT INTO uchome_friend VALUES ('334','332','Arlun','0','0','','0','1250518225');
INSERT INTO uchome_friend VALUES ('334','329','xiaoL','0','0','','0','1250518289');
INSERT INTO uchome_friend VALUES ('338','332','Arlun','0','1','','0','1250522861');
INSERT INTO uchome_friend VALUES ('334','311','kuailan','0','0','','0','1250518325');
INSERT INTO uchome_friend VALUES ('334','73','yanluo','1','0','','0','1250856683');
INSERT INTO uchome_friend VALUES ('334','326','jiangfang','0','0','','0','1250518531');
INSERT INTO uchome_friend VALUES ('334','103','sylt','0','0','','0','1250518543');
INSERT INTO uchome_friend VALUES ('336','46','ma876401970','0','1','','1','1250519936');
INSERT INTO uchome_friend VALUES ('338','46','ma876401970','0','0','','0','1250522968');
INSERT INTO uchome_friend VALUES ('338','214','subborn','0','1','','0','1250523055');
INSERT INTO uchome_friend VALUES ('274','326','jiangfang','1','1','','1','1250576120');
INSERT INTO uchome_friend VALUES ('339','1','admin','1','0','','1','1250537647');
INSERT INTO uchome_friend VALUES ('1','339','yangsong1','1','0','','0','1250537647');
INSERT INTO uchome_friend VALUES ('339','21','wangyang','0','1','','0','1250537811');
INSERT INTO uchome_friend VALUES ('339','58','huaynie','0','1','','0','1250537844');
INSERT INTO uchome_friend VALUES ('339','308','alinayun','0','1','','2','1250537883');
INSERT INTO uchome_friend VALUES ('339','211','yhkwy','0','1','','0','1250537890');
INSERT INTO uchome_friend VALUES ('339','243','zhengwenxiang','1','1','','12','1250648674');
INSERT INTO uchome_friend VALUES ('339','125','mylove','0','1','','0','1250537901');
INSERT INTO uchome_friend VALUES ('339','46','ma876401970','0','1','','0','1250537911');
INSERT INTO uchome_friend VALUES ('188','192','fulunda','1','1','','1','1250540800');
INSERT INTO uchome_friend VALUES ('341','1','admin','1','0','','3','1250541206');
INSERT INTO uchome_friend VALUES ('1','341','zhouping','1','0','','0','1250541206');
INSERT INTO uchome_friend VALUES ('341','27','tianzi','1','0','','0','1250560972');
INSERT INTO uchome_friend VALUES ('341','188','tianci','0','0','','0','1250541391');
INSERT INTO uchome_friend VALUES ('96','334','jim','1','1','','2','1250557288');
INSERT INTO uchome_friend VALUES ('27','341','zhouping','1','1','','2','1250560972');
INSERT INTO uchome_friend VALUES ('27','325','moon','1','1','','1','1250560975');
INSERT INTO uchome_friend VALUES ('96','342','shaofucao','0','0','','1','1250563756');
INSERT INTO uchome_friend VALUES ('344','9','happy','0','1','','0','1250565571');
INSERT INTO uchome_friend VALUES ('292','326','jiangfang','1','0','','4','1250585398');
INSERT INTO uchome_friend VALUES ('344','87','cec','0','1','','0','1250565778');
INSERT INTO uchome_friend VALUES ('344','341','zhouping','0','1','','1','1250565805');
INSERT INTO uchome_friend VALUES ('344','340','xlx','0','1','','0','1250565847');
INSERT INTO uchome_friend VALUES ('344','339','yangsong1','1','1','','0','1250708823');
INSERT INTO uchome_friend VALUES ('344','337','andyooo','0','1','','0','1250565980');
INSERT INTO uchome_friend VALUES ('344','103','sylt','0','1','','1','1250566012');
INSERT INTO uchome_friend VALUES ('255','214','subborn','0','0','','0','1250571040');
INSERT INTO uchome_friend VALUES ('318','255','abcd','1','1','','1','1250649426');
INSERT INTO uchome_friend VALUES ('232','341','zhouping','0','1','','1','1250574680');
INSERT INTO uchome_friend VALUES ('232','334','jim','1','1','','3','1250574693');
INSERT INTO uchome_friend VALUES ('346','9','happy','1','0','','1','1250586493');
INSERT INTO uchome_friend VALUES ('9','346','sccdwh','1','0','','0','1250586493');
INSERT INTO uchome_friend VALUES ('292','345','kingk','0','1','','1','1250586698');
INSERT INTO uchome_friend VALUES ('292','340','xlx','0','0','','0','1250586719');
INSERT INTO uchome_friend VALUES ('292','232','skyzhaojian','1','0','','7','1250680670');
INSERT INTO uchome_friend VALUES ('292','342','shaofucao','0','0','','0','1250586764');
INSERT INTO uchome_friend VALUES ('292','346','sccdwh','0','0','','0','1250586812');
INSERT INTO uchome_friend VALUES ('292','341','zhouping','0','0','','1','1250586854');
INSERT INTO uchome_friend VALUES ('292','188','tianci','0','0','','0','1250587204');
INSERT INTO uchome_friend VALUES ('135','325','moon','1','1','','1','1250591474');
INSERT INTO uchome_friend VALUES ('348','9','happy','0','0','','0','1250593027');
INSERT INTO uchome_friend VALUES ('352','9','happy','0','1','','0','1250634602');
INSERT INTO uchome_friend VALUES ('348','135','iamwayney','1','1','','3','1250603714');
INSERT INTO uchome_friend VALUES ('349','9','happy','1','0','','1','1250597398');
INSERT INTO uchome_friend VALUES ('9','349','chengjun','1','0','','0','1250597398');
INSERT INTO uchome_friend VALUES ('350','1','admin','1','0','','1','1250600044');
INSERT INTO uchome_friend VALUES ('1','350','HEMINF','1','0','','0','1250600044');
INSERT INTO uchome_friend VALUES ('350','27','tianzi','1','0','','0','1250745909');
INSERT INTO uchome_friend VALUES ('350','46','ma876401970','0','0','','0','1250600150');
INSERT INTO uchome_friend VALUES ('352','134','bluedryad','0','0','','0','1250634613');
INSERT INTO uchome_friend VALUES ('350','24','ywgg','0','0','','0','1250600172');
INSERT INTO uchome_friend VALUES ('350','29','asdzxc','0','0','','0','1250600179');
INSERT INTO uchome_friend VALUES ('350','75','linwenyi','0','0','','0','1250600185');
INSERT INTO uchome_friend VALUES ('350','54','zhangyan','0','0','','0','1250600194');
INSERT INTO uchome_friend VALUES ('350','308','alinayun','0','0','','0','1250600202');
INSERT INTO uchome_friend VALUES ('135','348','ASDFG','1','1','','2','1250603714');
INSERT INTO uchome_friend VALUES ('352','202','mling','0','0','','0','1250634618');
INSERT INTO uchome_friend VALUES ('352','58','huaynie','0','0','','0','1250634623');
INSERT INTO uchome_friend VALUES ('352','27','tianzi','1','0','','2','1250745906');
INSERT INTO uchome_friend VALUES ('352','135','iamwayney','1','0','','1','1250655996');
INSERT INTO uchome_friend VALUES ('352','46','ma876401970','0','0','','0','1250634643');
INSERT INTO uchome_friend VALUES ('352','96','abcdefg','1','0','','0','1250648130');
INSERT INTO uchome_friend VALUES ('352','307','Joyce','0','0','','0','1250635150');
INSERT INTO uchome_friend VALUES ('352','296','smartwolf','0','0','','0','1250635160');
INSERT INTO uchome_friend VALUES ('352','339','yangsong1','1','0','','0','1250708818');
INSERT INTO uchome_friend VALUES ('352','344','nm5039','0','0','','0','1250635296');
INSERT INTO uchome_friend VALUES ('352','351','phoenixqqq','0','0','','0','1250635819');
INSERT INTO uchome_friend VALUES ('353','9','happy','0','1','','0','1250640457');
INSERT INTO uchome_friend VALUES ('353','87','cec','0','0','','0','1250640647');
INSERT INTO uchome_friend VALUES ('354','62','asasu','0','1','','0','1250648086');
INSERT INTO uchome_friend VALUES ('96','352','sexlove','1','1','','3','1250648130');
INSERT INTO uchome_friend VALUES ('243','339','yangsong1','1','1','','11','1250648674');
INSERT INTO uchome_friend VALUES ('243','325','moon','1','1','','1','1250648682');
INSERT INTO uchome_friend VALUES ('243','331','kuangyefeng','0','1','','15','1250648743');
INSERT INTO uchome_friend VALUES ('243','332','Arlun','0','1','','3','1250649127');
INSERT INTO uchome_friend VALUES ('243','341','zhouping','0','1','','3','1250649156');
INSERT INTO uchome_friend VALUES ('243','351','phoenixqqq','0','1','','2','1250649184');
INSERT INTO uchome_friend VALUES ('255','318','ewind','1','1','','3','1250649426');
INSERT INTO uchome_friend VALUES ('277','278','huangyuan','1','1','','4','1250649714');
INSERT INTO uchome_friend VALUES ('277','87','cec','0','1','','0','1250649949');
INSERT INTO uchome_friend VALUES ('243','355','czy','1','1','','7','1250743597');
INSERT INTO uchome_friend VALUES ('277','103','sylt','0','0','','3','1250650040');
INSERT INTO uchome_friend VALUES ('355','46','ma876401970','0','0','','0','1250653676');
INSERT INTO uchome_friend VALUES ('355','125','mylove','0','0','','1','1250653698');
INSERT INTO uchome_friend VALUES ('277','255','abcd','1','1','','2','1250828544');
INSERT INTO uchome_friend VALUES ('355','135','iamwayney','1','0','','22','1250655971');
INSERT INTO uchome_friend VALUES ('355','202','mling','0','0','','0','1250653741');
INSERT INTO uchome_friend VALUES ('355','27','tianzi','1','0','','11','1250745901');
INSERT INTO uchome_friend VALUES ('355','189','tsingchao','0','0','','0','1250653785');
INSERT INTO uchome_friend VALUES ('355','1','admin','1','0','','10','1250698689');
INSERT INTO uchome_friend VALUES ('355','176','MAYJJ','0','0','','0','1250653818');
INSERT INTO uchome_friend VALUES ('355','122','delong','0','0','','0','1250653825');
INSERT INTO uchome_friend VALUES ('355','134','bluedryad','0','0','','0','1250653837');
INSERT INTO uchome_friend VALUES ('355','211','yhkwy','0','0','','0','1250653845');
INSERT INTO uchome_friend VALUES ('355','96','abcdefg','1','0','','10','1250672525');
INSERT INTO uchome_friend VALUES ('355','58','huaynie','0','0','','0','1250653866');
INSERT INTO uchome_friend VALUES ('135','355','czy','1','1','','5','1250655971');
INSERT INTO uchome_friend VALUES ('135','352','sexlove','1','1','','1','1250655996');
INSERT INTO uchome_friend VALUES ('277','340','xlx','0','1','','1','1250665439');
INSERT INTO uchome_friend VALUES ('363','362','shangxianyue','0','1','','0','1250687803');
INSERT INTO uchome_friend VALUES ('96','355','czy','1','1','','1','1250672525');
INSERT INTO uchome_friend VALUES ('96','135','iamwayney','1','0','','3','1250676263');
INSERT INTO uchome_friend VALUES ('360','1','admin','1','0','','1','1250698687');
INSERT INTO uchome_friend VALUES ('135','96','abcdefg','1','1','','3','1250676263');
INSERT INTO uchome_friend VALUES ('357','296','smartwolf','0','1','','0','1250676630');
INSERT INTO uchome_friend VALUES ('357','308','alinayun','0','0','','0','1250676648');
INSERT INTO uchome_friend VALUES ('357','9','happy','0','0','','0','1250676657');
INSERT INTO uchome_friend VALUES ('357','271','gaonifu','0','0','','0','1250676692');
INSERT INTO uchome_friend VALUES ('357','353','cashier','0','0','','0','1250676771');
INSERT INTO uchome_friend VALUES ('357','362','shangxianyue','1','0','','0','1250685916');
INSERT INTO uchome_friend VALUES ('358','135','iamwayney','1','0','','0','1250734531');
INSERT INTO uchome_friend VALUES ('358','46','ma876401970','0','0','','0','1250679063');
INSERT INTO uchome_friend VALUES ('358','125','mylove','0','0','','0','1250679105');
INSERT INTO uchome_friend VALUES ('232','292','XHL','1','1','','7','1250680670');
INSERT INTO uchome_friend VALUES ('363','129','hjh','0','1','','2','1250687788');
INSERT INTO uchome_friend VALUES ('362','357','dgoch','1','0','','2','1250685916');
INSERT INTO uchome_friend VALUES ('363','103','sylt','0','1','','1','1250687846');
INSERT INTO uchome_friend VALUES ('277','363','yyifan','1','1','','6','1250751113');
INSERT INTO uchome_friend VALUES ('363','348','ASDFG','0','0','','0','1250688742');
INSERT INTO uchome_friend VALUES ('363','351','phoenixqqq','0','0','','0','1250688763');
INSERT INTO uchome_friend VALUES ('363','187','jack','1','0','','7','1250690235');
INSERT INTO uchome_friend VALUES ('363','87','cec','0','0','','0','1250688814');
INSERT INTO uchome_friend VALUES ('363','341','zhouping','0','0','','2','1250688833');
INSERT INTO uchome_friend VALUES ('363','232','skyzhaojian','1','0','','3','1250777878');
INSERT INTO uchome_friend VALUES ('363','331','kuangyefeng','0','0','','0','1250688858');
INSERT INTO uchome_friend VALUES ('363','339','yangsong1','1','0','','3','1250708811');
INSERT INTO uchome_friend VALUES ('363','243','zhengwenxiang','1','0','','1','1250743614');
INSERT INTO uchome_friend VALUES ('363','277','Daniel','1','0','','2','1250751113');
INSERT INTO uchome_friend VALUES ('363','354','linxiaoxiao','0','0','','3','1250689013');
INSERT INTO uchome_friend VALUES ('363','357','dgoch','0','0','','0','1250689031');
INSERT INTO uchome_friend VALUES ('364','363','yyifan','1','0','','1','1250689195');
INSERT INTO uchome_friend VALUES ('363','364','ZHUANSHIZHUBAN','1','0','','0','1250689195');
INSERT INTO uchome_friend VALUES ('364','187','jack','1','1','','0','1250690222');
INSERT INTO uchome_friend VALUES ('187','364','ZHUANSHIZHUBAN','1','0','','1','1250690222');
INSERT INTO uchome_friend VALUES ('187','363','yyifan','1','0','','6','1250690235');
INSERT INTO uchome_friend VALUES ('365','9','happy','0','1','','0','1250692926');
INSERT INTO uchome_friend VALUES ('365','1','admin','1','1','','0','1250698685');
INSERT INTO uchome_friend VALUES ('365','27','tianzi','1','1','','0','1250745895');
INSERT INTO uchome_friend VALUES ('365','54','zhangyan','0','1','','0','1250692968');
INSERT INTO uchome_friend VALUES ('365','308','alinayun','0','1','','0','1250692979');
INSERT INTO uchome_friend VALUES ('365','307','Joyce','0','1','','0','1250692989');
INSERT INTO uchome_friend VALUES ('365','187','jack','1','1','','3','1250694264');
INSERT INTO uchome_friend VALUES ('187','365','Passionatesex','1','0','','2','1250694264');
INSERT INTO uchome_friend VALUES ('135','358','hele442517','1','1','','2','1250734531');
INSERT INTO uchome_friend VALUES ('1','365','Passionatesex','1','0','','1','1250698685');
INSERT INTO uchome_friend VALUES ('1','360','BHJDR','1','0','','3','1250698687');
INSERT INTO uchome_friend VALUES ('1','355','czy','1','0','','2','1250698689');
INSERT INTO uchome_friend VALUES ('1','325','moon','1','0','','1','1250698692');
INSERT INTO uchome_friend VALUES ('369','1','admin','1','0','','3','1251186982');
INSERT INTO uchome_friend VALUES ('369','367','enjoy','0','0','','2','1250703219');
INSERT INTO uchome_friend VALUES ('369','364','ZHUANSHIZHUBAN','0','0','','0','1250703501');
INSERT INTO uchome_friend VALUES ('339','188','tianci','0','0','','0','1250708763');
INSERT INTO uchome_friend VALUES ('339','363','yyifan','1','1','','5','1250708811');
INSERT INTO uchome_friend VALUES ('339','352','sexlove','1','1','','3','1250708818');
INSERT INTO uchome_friend VALUES ('339','344','nm5039','1','1','','4','1250708823');
INSERT INTO uchome_friend VALUES ('96','365','Passionatesex','0','0','','3','1250741101');
INSERT INTO uchome_friend VALUES ('339','364','ZHUANSHIZHUBAN','0','1','','1','1250709184');
INSERT INTO uchome_friend VALUES ('339','358','hele442517','0','1','','2','1250709221');
INSERT INTO uchome_friend VALUES ('339','369','luhu','0','1','','1','1250709572');
INSERT INTO uchome_friend VALUES ('339','27','tianzi','1','1','','7','1250745889');
INSERT INTO uchome_friend VALUES ('339','353','cashier','0','1','','0','1250709794');
INSERT INTO uchome_friend VALUES ('339','340','xlx','0','1','','1','1250710190');
INSERT INTO uchome_friend VALUES ('339','348','ASDFG','0','1','','2','1250710555');
INSERT INTO uchome_friend VALUES ('339','349','chengjun','0','1','','1','1250710631');
INSERT INTO uchome_friend VALUES ('339','219','lgylgy','0','1','','1','1250710664');
INSERT INTO uchome_friend VALUES ('339','350','HEMINF','0','1','','1','1250710686');
INSERT INTO uchome_friend VALUES ('339','351','phoenixqqq','0','1','','1','1250710715');
INSERT INTO uchome_friend VALUES ('339','354','linxiaoxiao','0','1','','1','1250710751');
INSERT INTO uchome_friend VALUES ('339','255','abcd','1','1','','5','1250828519');
INSERT INTO uchome_friend VALUES ('339','232','skyzhaojian','1','1','','6','1250777872');
INSERT INTO uchome_friend VALUES ('370','1','admin','1','1','','1','1251186979');
INSERT INTO uchome_friend VALUES ('370','357','dgoch','0','1','','0','1250712126');
INSERT INTO uchome_friend VALUES ('355','358','hele442517','0','0','','2','1250730743');
INSERT INTO uchome_friend VALUES ('355','370','hhnhz','0','0','','0','1250730908');
INSERT INTO uchome_friend VALUES ('355','339','yangsong1','1','0','','10','1250737552');
INSERT INTO uchome_friend VALUES ('355','367','enjoy','0','0','','0','1250731014');
INSERT INTO uchome_friend VALUES ('355','365','Passionatesex','0','0','','1','1250731067');
INSERT INTO uchome_friend VALUES ('355','361','kevin','0','0','','2','1250731127');
INSERT INTO uchome_friend VALUES ('355','232','skyzhaojian','1','0','','27','1250777867');
INSERT INTO uchome_friend VALUES ('355','357','dgoch','0','0','','0','1250731252');
INSERT INTO uchome_friend VALUES ('243','363','yyifan','1','1','','8','1250743614');
INSERT INTO uchome_friend VALUES ('355','255','abcd','1','0','','12','1250828496');
INSERT INTO uchome_friend VALUES ('355','243','zhengwenxiang','1','0','','8','1250743597');
INSERT INTO uchome_friend VALUES ('371','219','lgylgy','0','1','','6','1250731445');
INSERT INTO uchome_friend VALUES ('355','353','cashier','0','0','','0','1250731449');
INSERT INTO uchome_friend VALUES ('355','352','sexlove','0','0','','0','1250731472');
INSERT INTO uchome_friend VALUES ('355','350','HEMINF','0','0','','0','1250731511');
INSERT INTO uchome_friend VALUES ('355','347','UEHIWQOJDNCSA','0','0','','0','1250731579');
INSERT INTO uchome_friend VALUES ('355','346','sccdwh','0','0','','0','1250731604');
INSERT INTO uchome_friend VALUES ('371','363','yyifan','1','1','','19','1250772924');
INSERT INTO uchome_friend VALUES ('339','355','czy','1','1','','5','1250737552');
INSERT INTO uchome_friend VALUES ('339','122','delong','0','1','','0','1250739051');
INSERT INTO uchome_friend VALUES ('339','372','Zhaole','1','1','','4','1250819914');
INSERT INTO uchome_friend VALUES ('243','277','Daniel','1','1','','5','1250751072');
INSERT INTO uchome_friend VALUES ('243','372','Zhaole','1','1','','10','1250819892');
INSERT INTO uchome_friend VALUES ('243','361','kevin','0','1','','5','1250743822');
INSERT INTO uchome_friend VALUES ('27','339','yangsong1','1','1','','4','1250745889');
INSERT INTO uchome_friend VALUES ('27','365','Passionatesex','1','1','','1','1250745895');
INSERT INTO uchome_friend VALUES ('27','355','czy','1','1','','1','1250745901');
INSERT INTO uchome_friend VALUES ('27','352','sexlove','1','1','','2','1250745906');
INSERT INTO uchome_friend VALUES ('27','350','HEMINF','1','1','','1','1250745909');
INSERT INTO uchome_friend VALUES ('277','243','zhengwenxiang','1','1','','3','1250751072');
INSERT INTO uchome_friend VALUES ('374','125','mylove','0','0','','0','1250748780');
INSERT INTO uchome_friend VALUES ('374','58','huaynie','0','0','','0','1250748786');
INSERT INTO uchome_friend VALUES ('374','339','yangsong1','1','0','','0','1250798051');
INSERT INTO uchome_friend VALUES ('374','54','zhangyan','0','0','','0','1250748818');
INSERT INTO uchome_friend VALUES ('277','122','delong','0','0','','0','1250751138');
INSERT INTO uchome_friend VALUES ('277','373','xtxbamboo','1','6','','5','1251180667');
INSERT INTO uchome_friend VALUES ('277','364','ZHUANSHIZHUBAN','0','2','','3','1250751288');
INSERT INTO uchome_friend VALUES ('277','40','gswt','0','0','','0','1250752001');
INSERT INTO uchome_friend VALUES ('277','38','andylau','0','0','','0','1250752004');
INSERT INTO uchome_friend VALUES ('277','26','xiaobaizj','0','0','','0','1250752006');
INSERT INTO uchome_friend VALUES ('277','58','huaynie','0','0','','0','1250752009');
INSERT INTO uchome_friend VALUES ('277','3','evyt','1','0','','0','1312969581');
INSERT INTO uchome_friend VALUES ('277','46','ma876401970','0','0','','0','1250752027');
INSERT INTO uchome_friend VALUES ('277','54','zhangyan','0','0','','0','1250752059');
INSERT INTO uchome_friend VALUES ('277','114','worinima','0','0','','0','1250752066');
INSERT INTO uchome_friend VALUES ('277','142','bluedryed','0','0','','0','1250752069');
INSERT INTO uchome_friend VALUES ('376','308','alinayun','0','1','','0','1250756337');
INSERT INTO uchome_friend VALUES ('377','46','ma876401970','0','1','','0','1250756971');
INSERT INTO uchome_friend VALUES ('381','363','yyifan','1','0','','1','1250772436');
INSERT INTO uchome_friend VALUES ('363','381','jony','1','0','','0','1250772436');
INSERT INTO uchome_friend VALUES ('382','363','yyifan','1','0','','1','1250772817');
INSERT INTO uchome_friend VALUES ('363','382','attack','1','0','','2','1250772817');
INSERT INTO uchome_friend VALUES ('363','371','zlfd','1','0','','8','1250772924');
INSERT INTO uchome_friend VALUES ('363','30','norye','0','0','','1','1250773088');
INSERT INTO uchome_friend VALUES ('363','9','happy','0','0','','4','1250773293');
INSERT INTO uchome_friend VALUES ('383','363','yyifan','1','0','','2','1250773311');
INSERT INTO uchome_friend VALUES ('363','383','zyfzyf','1','0','','3','1250773311');
INSERT INTO uchome_friend VALUES ('363','296','smartwolf','0','0','','3','1250773323');
INSERT INTO uchome_friend VALUES ('363','360','BHJDR','0','0','','1','1250773396');
INSERT INTO uchome_friend VALUES ('363','308','alinayun','0','0','','1','1250773407');
INSERT INTO uchome_friend VALUES ('363','307','Joyce','0','0','','5','1250773425');
INSERT INTO uchome_friend VALUES ('363','109','yycf','0','0','','1','1250773433');
INSERT INTO uchome_friend VALUES ('384','363','yyifan','1','0','','0','1250810581');
INSERT INTO uchome_friend VALUES ('384','383','zyfzyf','1','0','','5','1250862408');
INSERT INTO uchome_friend VALUES ('384','382','attack','0','0','','0','1250773485');
INSERT INTO uchome_friend VALUES ('384','381','jony','0','0','','0','1250773488');
INSERT INTO uchome_friend VALUES ('384','30','norye','0','0','','0','1250773491');
INSERT INTO uchome_friend VALUES ('386','363','yyifan','1','0','','9','1250774048');
INSERT INTO uchome_friend VALUES ('363','386','mytwd','1','0','','2','1250774048');
INSERT INTO uchome_friend VALUES ('386','384','gongqingssss','0','1','','34','1250774196');
INSERT INTO uchome_friend VALUES ('386','103','sylt','0','7','','2','1250774395');
INSERT INTO uchome_friend VALUES ('386','64','liusuo','0','0','','2','1250774598');
INSERT INTO uchome_friend VALUES ('386','125','mylove','0','0','','0','1250774623');
INSERT INTO uchome_friend VALUES ('386','58','huaynie','0','0','','0','1250774691');
INSERT INTO uchome_friend VALUES ('386','383','zyfzyf','1','0','','13','1250834995');
INSERT INTO uchome_friend VALUES ('158','326','jiangfang','1','1','','2','1250776502');
INSERT INTO uchome_friend VALUES ('158','373','xtxbamboo','1','1','','5','1251180651');
INSERT INTO uchome_friend VALUES ('158','30','norye','0','1','','2','1250777290');
INSERT INTO uchome_friend VALUES ('232','355','czy','1','1','','11','1250777867');
INSERT INTO uchome_friend VALUES ('232','339','yangsong1','1','1','','5','1250777872');
INSERT INTO uchome_friend VALUES ('232','363','yyifan','1','1','','2','1250777878');
INSERT INTO uchome_friend VALUES ('232','371','zlfd','1','1','','21','1250819774');
INSERT INTO uchome_friend VALUES ('232','122','delong','0','1','','3','1250778044');
INSERT INTO uchome_friend VALUES ('158','364','ZHUANSHIZHUBAN','0','1','','2','1250778128');
INSERT INTO uchome_friend VALUES ('386','53','xingshengh','0','1','','0','1250782094');
INSERT INTO uchome_friend VALUES ('371','393','lguo123','1','0','','12','1250826312');
INSERT INTO uchome_friend VALUES ('388','363','yyifan','1','0','','4','1250796039');
INSERT INTO uchome_friend VALUES ('363','388','zhanghai','1','0','','1','1250796039');
INSERT INTO uchome_friend VALUES ('339','374','zzlliu','1','1','','3','1250798051');
INSERT INTO uchome_friend VALUES ('339','388','zhanghai','0','0','','1','1250798511');
INSERT INTO uchome_friend VALUES ('339','387','Lele','1','0','','5','1250818456');
INSERT INTO uchome_friend VALUES ('363','384','gongqingssss','1','0','','2','1250810581');
INSERT INTO uchome_friend VALUES ('389','363','yyifan','1','0','','1','1250811277');
INSERT INTO uchome_friend VALUES ('363','389','zhzhjie','1','0','','0','1250811277');
INSERT INTO uchome_friend VALUES ('389','9','happy','0','0','','0','1250811458');
INSERT INTO uchome_friend VALUES ('389','176','MAYJJ','0','0','','0','1250811494');
INSERT INTO uchome_friend VALUES ('389','243','zhengwenxiang','1','0','','0','1250831197');
INSERT INTO uchome_friend VALUES ('389','232','skyzhaojian','1','0','','0','1250831578');
INSERT INTO uchome_friend VALUES ('389','64','liusuo','0','0','','0','1250811514');
INSERT INTO uchome_friend VALUES ('389','206','zhylbj','0','0','','0','1250811522');
INSERT INTO uchome_friend VALUES ('389','96','abcdefg','1','0','','0','1250819255');
INSERT INTO uchome_friend VALUES ('389','134','bluedryad','0','0','','0','1250811531');
INSERT INTO uchome_friend VALUES ('389','202','mling','0','0','','0','1250811544');
INSERT INTO uchome_friend VALUES ('389','189','tsingchao','0','0','','0','1250811549');
INSERT INTO uchome_friend VALUES ('389','58','huaynie','0','0','','0','1250811556');
INSERT INTO uchome_friend VALUES ('389','328','jenny','0','0','','0','1250811573');
INSERT INTO uchome_friend VALUES ('389','308','alinayun','0','0','','0','1250811577');
INSERT INTO uchome_friend VALUES ('389','307','Joyce','0','0','','0','1250811581');
INSERT INTO uchome_friend VALUES ('389','54','zhangyan','0','0','','0','1250811585');
INSERT INTO uchome_friend VALUES ('389','339','yangsong1','1','0','','0','1250876583');
INSERT INTO uchome_friend VALUES ('389','46','ma876401970','0','0','','0','1250811640');
INSERT INTO uchome_friend VALUES ('389','1','admin','1','0','','0','1251186976');
INSERT INTO uchome_friend VALUES ('389','341','zhouping','0','0','','0','1250811654');
INSERT INTO uchome_friend VALUES ('389','351','phoenixqqq','0','0','','0','1250811660');
INSERT INTO uchome_friend VALUES ('390','370','hhnhz','0','0','','0','1250812587');
INSERT INTO uchome_friend VALUES ('390','27','tianzi','1','0','','0','1250925987');
INSERT INTO uchome_friend VALUES ('390','358','hele442517','0','0','','0','1250812635');
INSERT INTO uchome_friend VALUES ('390','58','huaynie','0','0','','3','1250812663');
INSERT INTO uchome_friend VALUES ('390','134','bluedryad','0','0','','0','1250812712');
INSERT INTO uchome_friend VALUES ('390','243','zhengwenxiang','1','0','','2','1250831177');
INSERT INTO uchome_friend VALUES ('390','308','alinayun','0','0','','0','1250812789');
INSERT INTO uchome_friend VALUES ('390','122','delong','0','0','','0','1250812903');
INSERT INTO uchome_friend VALUES ('390','373','xtxbamboo','1','0','','1','1251180631');
INSERT INTO uchome_friend VALUES ('390','125','mylove','0','0','','0','1250812953');
INSERT INTO uchome_friend VALUES ('372','243','zhengwenxiang','1','1','','5','1250819892');
INSERT INTO uchome_friend VALUES ('390','96','abcdefg','1','0','','2','1250819183');
INSERT INTO uchome_friend VALUES ('390','322','jeffhdi','0','0','','1','1250813130');
INSERT INTO uchome_friend VALUES ('390','1','admin','1','0','','1','1251186973');
INSERT INTO uchome_friend VALUES ('390','389','zhzhjie','0','0','','1','1250813522');
INSERT INTO uchome_friend VALUES ('390','339','yangsong1','1','0','','1','1250876347');
INSERT INTO uchome_friend VALUES ('390','53','xingshengh','0','0','','0','1250813585');
INSERT INTO uchome_friend VALUES ('391','363','yyifan','1','0','','1','1250814570');
INSERT INTO uchome_friend VALUES ('363','391','jiangshangren','1','0','','0','1250814570');
INSERT INTO uchome_friend VALUES ('392','363','yyifan','1','0','','3','1250816669');
INSERT INTO uchome_friend VALUES ('363','392','ucdn','1','0','','1','1250816669');
INSERT INTO uchome_friend VALUES ('387','339','yangsong1','1','1','','6','1250818456');
INSERT INTO uchome_friend VALUES ('96','390','zuqiuxiansheng','1','1','','5','1250819183');
INSERT INTO uchome_friend VALUES ('96','389','zhzhjie','1','1','','2','1250819255');
INSERT INTO uchome_friend VALUES ('371','232','skyzhaojian','1','0','','60','1250819774');
INSERT INTO uchome_friend VALUES ('372','339','yangsong1','1','1','','5','1250819914');
INSERT INTO uchome_friend VALUES ('371','143','dddkkkzhao','0','0','','0','1250821530');
INSERT INTO uchome_friend VALUES ('393','371','zlfd','1','1','','1','1250826312');
INSERT INTO uchome_friend VALUES ('394','363','yyifan','1','0','','1','1250824735');
INSERT INTO uchome_friend VALUES ('363','394','ouyangtn','1','0','','0','1250824735');
INSERT INTO uchome_friend VALUES ('232','9','happy','0','1','','1','1251004193');
INSERT INTO uchome_friend VALUES ('378','46','ma876401970','0','0','','2','1250825104');
INSERT INTO uchome_friend VALUES ('395','387','Lele','1','0','','0','1250827981');
INSERT INTO uchome_friend VALUES ('395','158','shendaaaaa','1','0','','0','1251215100');
INSERT INTO uchome_friend VALUES ('395','27','tianzi','1','0','','0','1250925960');
INSERT INTO uchome_friend VALUES ('395','392','ucdn','0','0','','0','1250827213');
INSERT INTO uchome_friend VALUES ('396','363','yyifan','1','0','','2','1250830918');
INSERT INTO uchome_friend VALUES ('395','355','czy','1','0','','0','1250838368');
INSERT INTO uchome_friend VALUES ('395','394','ouyangtn','0','0','','0','1250827581');
INSERT INTO uchome_friend VALUES ('395','378','sxjj','0','0','','0','1250827590');
INSERT INTO uchome_friend VALUES ('387','395','boyy','1','1','','4','1250827981');
INSERT INTO uchome_friend VALUES ('255','355','czy','1','1','','2','1250828496');
INSERT INTO uchome_friend VALUES ('255','339','yangsong1','1','1','','2','1250828519');
INSERT INTO uchome_friend VALUES ('255','277','Daniel','1','1','','1','1250828544');
INSERT INTO uchome_friend VALUES ('255','292','XHL','1','0','','3','1250907873');
INSERT INTO uchome_friend VALUES ('255','387','Lele','1','0','','1','1250856220');
INSERT INTO uchome_friend VALUES ('363','396','rulerbye','1','0','','0','1250830918');
INSERT INTO uchome_friend VALUES ('243','390','zuqiuxiansheng','1','1','','8','1250831177');
INSERT INTO uchome_friend VALUES ('243','389','zhzhjie','1','1','','3','1250831197');
INSERT INTO uchome_friend VALUES ('243','371','zlfd','1','1','','8','1250851594');
INSERT INTO uchome_friend VALUES ('232','389','zhzhjie','1','1','','2','1250831578');
INSERT INTO uchome_friend VALUES ('232','191','nzxsos','0','1','','1','1250831666');
INSERT INTO uchome_friend VALUES ('243','191','nzxsos','0','1','','7','1250831710');
INSERT INTO uchome_friend VALUES ('243','382','attack','0','1','','4','1250831795');
INSERT INTO uchome_friend VALUES ('397','202','mling','1','0','','4','1250833481');
INSERT INTO uchome_friend VALUES ('202','397','csnoviceo','1','0','','0','1250833481');
INSERT INTO uchome_friend VALUES ('398','378','sxjj','0','0','','0','1250833873');
INSERT INTO uchome_friend VALUES ('383','386','mytwd','1','1','','5','1250834995');
INSERT INTO uchome_friend VALUES ('398','53','xingshengh','0','0','','0','1250835030');
INSERT INTO uchome_friend VALUES ('398','383','zyfzyf','1','0','','4','1250862400');
INSERT INTO uchome_friend VALUES ('399','363','yyifan','1','0','','1','1250836615');
INSERT INTO uchome_friend VALUES ('363','399','panjunshan','1','0','','0','1250836615');
INSERT INTO uchome_friend VALUES ('399','9','happy','0','1','','0','1250836744');
INSERT INTO uchome_friend VALUES ('399','30','norye','0','1','','0','1250836750');
INSERT INTO uchome_friend VALUES ('399','87','cec','0','1','','0','1250836759');
INSERT INTO uchome_friend VALUES ('399','383','zyfzyf','0','7','','1','1250836806');
INSERT INTO uchome_friend VALUES ('399','397','csnoviceo','0','0','','0','1250836894');
INSERT INTO uchome_friend VALUES ('277','398','gaowei','0','1','','0','1250837111');
INSERT INTO uchome_friend VALUES ('400','363','yyifan','1','0','','1','1250837578');
INSERT INTO uchome_friend VALUES ('363','400','chenhuabing','1','0','','0','1250837578');
INSERT INTO uchome_friend VALUES ('355','395','boyy','1','0','','18','1250838368');
INSERT INTO uchome_friend VALUES ('401','9','happy','1','0','','2','1250840169');
INSERT INTO uchome_friend VALUES ('9','401','MYXS','1','0','','0','1250840169');
INSERT INTO uchome_friend VALUES ('243','397','csnoviceo','0','1','','1','1250840471');
INSERT INTO uchome_friend VALUES ('402','27','tianzi','1','1','','0','1250925952');
INSERT INTO uchome_friend VALUES ('402','45','xiaozhougod','0','1','','0','1250840627');
INSERT INTO uchome_friend VALUES ('402','50','wjiusyangyong','0','1','','0','1250840637');
INSERT INTO uchome_friend VALUES ('402','58','huaynie','0','1','','0','1250840658');
INSERT INTO uchome_friend VALUES ('402','146','sunuma','0','1','','0','1250840666');
INSERT INTO uchome_friend VALUES ('402','134','bluedryad','0','1','','0','1250840675');
INSERT INTO uchome_friend VALUES ('402','142','bluedryed','0','1','','0','1250840681');
INSERT INTO uchome_friend VALUES ('402','128','zhanbo','0','1','','0','1250840691');
INSERT INTO uchome_friend VALUES ('402','114','worinima','0','1','','0','1250840707');
INSERT INTO uchome_friend VALUES ('402','94','FLY','0','1','','0','1250840719');
INSERT INTO uchome_friend VALUES ('402','83','wyj','0','1','','0','1250840725');
INSERT INTO uchome_friend VALUES ('402','392','ucdn','0','1','','0','1250841405');
INSERT INTO uchome_friend VALUES ('403','363','yyifan','1','0','','1','1250842683');
INSERT INTO uchome_friend VALUES ('363','403','mamama','1','0','','0','1250842683');
INSERT INTO uchome_friend VALUES ('355','402','caichaolun','0','0','','5','1250843440');
INSERT INTO uchome_friend VALUES ('355','403','mamama','0','0','','4','1250843602');
INSERT INTO uchome_friend VALUES ('355','396','rulerbye','0','0','','3','1250843648');
INSERT INTO uchome_friend VALUES ('355','397','csnoviceo','0','0','','2','1250843770');
INSERT INTO uchome_friend VALUES ('355','383','zyfzyf','0','0','','3','1250843856');
INSERT INTO uchome_friend VALUES ('355','256','darkeyes','1','0','','8','1251164602');
INSERT INTO uchome_friend VALUES ('355','389','zhzhjie','0','0','','1','1250843992');
INSERT INTO uchome_friend VALUES ('355','390','zuqiuxiansheng','1','0','','6','1250867028');
INSERT INTO uchome_friend VALUES ('355','387','Lele','1','0','','13','1250856187');
INSERT INTO uchome_friend VALUES ('73','402','caichaolun','0','1','','1','1250856971');
INSERT INTO uchome_friend VALUES ('355','398','gaowei','0','0','','2','1250844546');
INSERT INTO uchome_friend VALUES ('371','243','zhengwenxiang','1','0','','11','1250851594');
INSERT INTO uchome_friend VALUES ('232','398','gaowei','0','1','','2','1250855211');
INSERT INTO uchome_friend VALUES ('387','355','czy','1','1','','6','1250856187');
INSERT INTO uchome_friend VALUES ('387','255','abcd','1','1','','4','1250856220');
INSERT INTO uchome_friend VALUES ('73','57','luoyonyi','0','1','','1','1250856636');
INSERT INTO uchome_friend VALUES ('73','334','jim','1','1','','1','1250856683');
INSERT INTO uchome_friend VALUES ('383','398','gaowei','1','1','','4','1250862400');
INSERT INTO uchome_friend VALUES ('383','384','gongqingssss','1','1','','2','1250862408');
INSERT INTO uchome_friend VALUES ('386','399','panjunshan','0','0','','1','1250864702');
INSERT INTO uchome_friend VALUES ('386','135','iamwayney','1','0','','9','1250921746');
INSERT INTO uchome_friend VALUES ('386','400','chenhuabing','0','0','','1','1250865636');
INSERT INTO uchome_friend VALUES ('386','395','boyy','0','0','','0','1250865780');
INSERT INTO uchome_friend VALUES ('386','243','zhengwenxiang','1','0','','8','1251005299');
INSERT INTO uchome_friend VALUES ('339','399','panjunshan','0','0','','1','1250876721');
INSERT INTO uchome_friend VALUES ('386','387','Lele','1','0','','5','1250867313');
INSERT INTO uchome_friend VALUES ('386','402','caichaolun','0','0','','1','1250865883');
INSERT INTO uchome_friend VALUES ('386','403','mamama','0','0','','0','1250865896');
INSERT INTO uchome_friend VALUES ('390','355','czy','1','0','','1','1250867028');
INSERT INTO uchome_friend VALUES ('386','1','admin','1','0','','2','1251186970');
INSERT INTO uchome_friend VALUES ('387','386','mytwd','1','1','','2','1250867313');
INSERT INTO uchome_friend VALUES ('339','390','zuqiuxiansheng','1','0','','4','1250876347');
INSERT INTO uchome_friend VALUES ('386','339','yangsong1','1','0','','4','1251120243');
INSERT INTO uchome_friend VALUES ('339','389','zhzhjie','1','1','','2','1250876583');
INSERT INTO uchome_friend VALUES ('96','372','Zhaole','1','0','','1','1250908529');
INSERT INTO uchome_friend VALUES ('292','255','abcd','1','1','','5','1250907873');
INSERT INTO uchome_friend VALUES ('292','371','zlfd','1','1','','9','1250993213');
INSERT INTO uchome_friend VALUES ('292','361','kevin','0','0','','1','1250908131');
INSERT INTO uchome_friend VALUES ('292','339','yangsong1','0','6','','0','1250908171');
INSERT INTO uchome_friend VALUES ('292','387','Lele','1','6','','7','1250909154');
INSERT INTO uchome_friend VALUES ('292','73','yanluo','1','6','','0','1251268440');
INSERT INTO uchome_friend VALUES ('292','372','Zhaole','1','6','','3','1250908510');
INSERT INTO uchome_friend VALUES ('292','404','1984lb','0','6','','0','1250908472');
INSERT INTO uchome_friend VALUES ('372','292','XHL','1','1','','5','1250908510');
INSERT INTO uchome_friend VALUES ('372','96','abcdefg','1','1','','5','1250908529');
INSERT INTO uchome_friend VALUES ('387','292','XHL','1','1','','2','1250909154');
INSERT INTO uchome_friend VALUES ('406','372','Zhaole','1','1','','0','1250921859');
INSERT INTO uchome_friend VALUES ('232','407','yuzhigong','1','1','','4','1250933439');
INSERT INTO uchome_friend VALUES ('406','355','czy','1','0','','0','1251026839');
INSERT INTO uchome_friend VALUES ('406','135','iamwayney','1','1','','0','1250921729');
INSERT INTO uchome_friend VALUES ('406','383','zyfzyf','0','0','','0','1250916440');
INSERT INTO uchome_friend VALUES ('406','402','caichaolun','0','0','','0','1250916483');
INSERT INTO uchome_friend VALUES ('407','232','skyzhaojian','1','0','','2','1250933439');
INSERT INTO uchome_friend VALUES ('407','406','crazytonight','0','0','','0','1250918047');
INSERT INTO uchome_friend VALUES ('407','46','ma876401970','0','0','','0','1250918062');
INSERT INTO uchome_friend VALUES ('407','13','feifei','0','0','','0','1250918087');
INSERT INTO uchome_friend VALUES ('407','125','mylove','0','0','','0','1250918125');
INSERT INTO uchome_friend VALUES ('232','387','Lele','1','1','','2','1250948907');
INSERT INTO uchome_friend VALUES ('407','9','happy','0','0','','0','1250918210');
INSERT INTO uchome_friend VALUES ('407','308','alinayun','0','0','','0','1250918214');
INSERT INTO uchome_friend VALUES ('407','395','boyy','0','0','','2','1250918325');
INSERT INTO uchome_friend VALUES ('135','406','crazytonight','1','1','','1','1250921729');
INSERT INTO uchome_friend VALUES ('135','386','mytwd','1','1','','2','1250921746');
INSERT INTO uchome_friend VALUES ('372','406','crazytonight','1','1','','4','1250921859');
INSERT INTO uchome_friend VALUES ('27','402','caichaolun','1','1','','3','1250925952');
INSERT INTO uchome_friend VALUES ('27','395','boyy','1','1','','3','1250925960');
INSERT INTO uchome_friend VALUES ('27','390','zuqiuxiansheng','1','1','','2','1250925987');
INSERT INTO uchome_friend VALUES ('173','278','huangyuan','1','1','','4','1250927437');
INSERT INTO uchome_friend VALUES ('173','211','yhkwy','1','1','','3','1250927444');
INSERT INTO uchome_friend VALUES ('173','73','yanluo','1','1','','2','1250927451');
INSERT INTO uchome_friend VALUES ('173','187','jack','1','1','','3','1250927458');
INSERT INTO uchome_friend VALUES ('173','176','MAYJJ','1','1','','3','1250927463');
INSERT INTO uchome_friend VALUES ('173','174','qxz','1','1','','4','1250927467');
INSERT INTO uchome_friend VALUES ('173','27','tianzi','0','1','','0','1250928121');
INSERT INTO uchome_friend VALUES ('173','357','dgoch','0','1','','0','1250928149');
INSERT INTO uchome_friend VALUES ('173','387','Lele','1','1','','3','1250928252');
INSERT INTO uchome_friend VALUES ('387','173','huha','1','1','','3','1250928252');
INSERT INTO uchome_friend VALUES ('173','372','Zhaole','1','1','','16','1250928450');
INSERT INTO uchome_friend VALUES ('372','173','huha','1','1','','16','1250928450');
INSERT INTO uchome_friend VALUES ('173','406','crazytonight','0','1','','0','1250929389');
INSERT INTO uchome_friend VALUES ('410','1','admin','1','0','','1','1250943036');
INSERT INTO uchome_friend VALUES ('1','410','pancb','1','0','','0','1250943036');
INSERT INTO uchome_friend VALUES ('387','232','skyzhaojian','1','1','','4','1250948907');
INSERT INTO uchome_friend VALUES ('411','9','happy','0','1','','1','1250953468');
INSERT INTO uchome_friend VALUES ('411','27','tianzi','0','1','','0','1250953525');
INSERT INTO uchome_friend VALUES ('411','46','ma876401970','0','1','','0','1250953561');
INSERT INTO uchome_friend VALUES ('411','96','abcdefg','1','1','','3','1250992083');
INSERT INTO uchome_friend VALUES ('411','58','huaynie','0','1','','0','1250953616');
INSERT INTO uchome_friend VALUES ('411','255','abcd','1','1','','1','1251083433');
INSERT INTO uchome_friend VALUES ('411','134','bluedryad','0','1','','0','1250953692');
INSERT INTO uchome_friend VALUES ('411','217','Xiaosunyang','0','1','','0','1250953750');
INSERT INTO uchome_friend VALUES ('411','373','xtxbamboo','1','1','','2','1251180612');
INSERT INTO uchome_friend VALUES ('411','402','caichaolun','0','1','','0','1250954106');
INSERT INTO uchome_friend VALUES ('407','326','jiangfang','0','1','','0','1250985656');
INSERT INTO uchome_friend VALUES ('96','371','zlfd','1','0','','9','1251022882');
INSERT INTO uchome_friend VALUES ('407','387','Lele','0','1','','1','1250985747');
INSERT INTO uchome_friend VALUES ('407','411','xuqinghong74','1','1','','4','1250997141');
INSERT INTO uchome_friend VALUES ('407','173','huha','1','1','','1','1251091564');
INSERT INTO uchome_friend VALUES ('407','403','mamama','0','1','','1','1250986305');
INSERT INTO uchome_friend VALUES ('96','411','xuqinghong74','1','1','','3','1250992083');
INSERT INTO uchome_friend VALUES ('371','292','XHL','1','0','','8','1250993213');
INSERT INTO uchome_friend VALUES ('411','407','yuzhigong','1','1','','4','1250997141');
INSERT INTO uchome_friend VALUES ('411','371','zlfd','1','1','','3','1251022849');
INSERT INTO uchome_friend VALUES ('411','191','nzxsos','0','1','','0','1250997637');
INSERT INTO uchome_friend VALUES ('411','87','cec','0','1','','0','1250997659');
INSERT INTO uchome_friend VALUES ('411','353','cashier','0','1','','0','1250997693');
INSERT INTO uchome_friend VALUES ('411','409','skypeng','0','1','','0','1250997770');
INSERT INTO uchome_friend VALUES ('411','135','iamwayney','1','1','','3','1251008089');
INSERT INTO uchome_friend VALUES ('415','54','zhangyan','0','0','','0','1251004339');
INSERT INTO uchome_friend VALUES ('415','64','liusuo','0','0','','0','1251004342');
INSERT INTO uchome_friend VALUES ('415','232','skyzhaojian','1','0','','1','1251015487');
INSERT INTO uchome_friend VALUES ('243','386','mytwd','1','1','','5','1251005299');
INSERT INTO uchome_friend VALUES ('135','411','xuqinghong74','1','1','','3','1251008089');
INSERT INTO uchome_friend VALUES ('122','200','pcaff','0','1','','1','1251010402');
INSERT INTO uchome_friend VALUES ('442','134','bluedryad','0','1','','0','1251098589');
INSERT INTO uchome_friend VALUES ('411','73','yanluo','1','1','','2','1251268431');
INSERT INTO uchome_friend VALUES ('411','417','zhengyue','0','1','','0','1251013001');
INSERT INTO uchome_friend VALUES ('411','122','delong','0','1','','0','1251013026');
INSERT INTO uchome_friend VALUES ('411','416','mjknkj','0','1','','0','1251013057');
INSERT INTO uchome_friend VALUES ('411','415','admin1','0','1','','0','1251013097');
INSERT INTO uchome_friend VALUES ('411','403','mamama','0','1','','0','1251013153');
INSERT INTO uchome_friend VALUES ('232','415','admin1','1','1','','3','1251015487');
INSERT INTO uchome_friend VALUES ('371','411','xuqinghong74','1','0','','10','1251022849');
INSERT INTO uchome_friend VALUES ('371','96','abcdefg','1','0','','13','1251022882');
INSERT INTO uchome_friend VALUES ('419','202','mling','1','0','','2','1251026523');
INSERT INTO uchome_friend VALUES ('202','419','kankanshuixian','1','0','','0','1251026523');
INSERT INTO uchome_friend VALUES ('355','406','crazytonight','1','1','','4','1251026839');
INSERT INTO uchome_friend VALUES ('419','54','zhangyan','0','7','','0','1251026866');
INSERT INTO uchome_friend VALUES ('419','21','wangyang','0','7','','0','1251026872');
INSERT INTO uchome_friend VALUES ('419','58','huaynie','0','7','','0','1251026879');
INSERT INTO uchome_friend VALUES ('419','240','zhaojiawen','0','7','','0','1251026885');
INSERT INTO uchome_friend VALUES ('419','46','ma876401970','0','7','','0','1251026893');
INSERT INTO uchome_friend VALUES ('232','430','sanshao','1','1','','3','1251121529');
INSERT INTO uchome_friend VALUES ('419','27','tianzi','0','7','','0','1251026906');
INSERT INTO uchome_friend VALUES ('419','355','czy','1','7','','1','1251108213');
INSERT INTO uchome_friend VALUES ('419','406','crazytonight','0','7','','1','1251027660');
INSERT INTO uchome_friend VALUES ('421','9','happy','0','0','','1','1251030686');
INSERT INTO uchome_friend VALUES ('421','1','admin','1','0','','0','1251186967');
INSERT INTO uchome_friend VALUES ('421','54','zhangyan','0','0','','0','1251030698');
INSERT INTO uchome_friend VALUES ('421','307','Joyce','0','0','','0','1251030701');
INSERT INTO uchome_friend VALUES ('421','308','alinayun','0','0','','0','1251030707');
INSERT INTO uchome_friend VALUES ('421','328','jenny','0','0','','0','1251030719');
INSERT INTO uchome_friend VALUES ('421','125','mylove','0','0','','0','1251030731');
INSERT INTO uchome_friend VALUES ('421','420','woriamade','0','0','','1','1251031278');
INSERT INTO uchome_friend VALUES ('422','122','delong','0','1','','1','1251039129');
INSERT INTO uchome_friend VALUES ('422','417','zhengyue','0','1','','1','1251039276');
INSERT INTO uchome_friend VALUES ('232','422','dchjdjs','0','1','','0','1251045774');
INSERT INTO uchome_friend VALUES ('386','21','wangyang','0','0','','0','1251049482');
INSERT INTO uchome_friend VALUES ('386','158','shendaaaaa','1','0','','9','1251215088');
INSERT INTO uchome_friend VALUES ('425','363','yyifan','1','0','','5','1251082670');
INSERT INTO uchome_friend VALUES ('363','425','yanghuanzhang','1','0','','3','1251082670');
INSERT INTO uchome_friend VALUES ('363','411','xuqinghong74','1','0','','4','1251087805');
INSERT INTO uchome_friend VALUES ('363','419','kankanshuixian','0','0','','0','1251082851');
INSERT INTO uchome_friend VALUES ('363','122','delong','0','0','','0','1251082868');
INSERT INTO uchome_friend VALUES ('363','418','Awakensme','0','0','','2','1251082876');
INSERT INTO uchome_friend VALUES ('363','96','abcdefg','1','0','','2','1251091652');
INSERT INTO uchome_friend VALUES ('363','390','zuqiuxiansheng','0','0','','0','1251082904');
INSERT INTO uchome_friend VALUES ('363','173','huha','1','0','','3','1251091559');
INSERT INTO uchome_friend VALUES ('363','420','woriamade','0','0','','0','1251082957');
INSERT INTO uchome_friend VALUES ('425','149','sdsdg','0','0','','0','1251082962');
INSERT INTO uchome_friend VALUES ('363','421','TAKR','0','0','','0','1251082965');
INSERT INTO uchome_friend VALUES ('363','422','dchjdjs','0','0','','0','1251082974');
INSERT INTO uchome_friend VALUES ('425','13','feifei','0','0','','0','1251082976');
INSERT INTO uchome_friend VALUES ('425','58','huaynie','0','0','','0','1251082982');
INSERT INTO uchome_friend VALUES ('425','255','abcd','1','0','','8','1251083392');
INSERT INTO uchome_friend VALUES ('425','308','alinayun','0','0','','0','1251082997');
INSERT INTO uchome_friend VALUES ('363','334','jim','0','0','','0','1251083000');
INSERT INTO uchome_friend VALUES ('363','335','wdgfxz','0','0','','0','1251083006');
INSERT INTO uchome_friend VALUES ('425','142','bluedryed','0','0','','0','1251083012');
INSERT INTO uchome_friend VALUES ('363','135','iamwayney','1','0','','0','1251206024');
INSERT INTO uchome_friend VALUES ('425','423','vienzhong','0','0','','0','1251083087');
INSERT INTO uchome_friend VALUES ('425','422','dchjdjs','0','0','','0','1251083128');
INSERT INTO uchome_friend VALUES ('425','372','Zhaole','0','0','','1','1251083143');
INSERT INTO uchome_friend VALUES ('425','9','happy','0','0','','0','1251083159');
INSERT INTO uchome_friend VALUES ('425','409','skypeng','0','0','','0','1251083183');
INSERT INTO uchome_friend VALUES ('425','270','DFMN','0','0','','0','1251083200');
INSERT INTO uchome_friend VALUES ('371','478','zxxboy','1','0','','2','1251177615');
INSERT INTO uchome_friend VALUES ('425','387','Lele','0','0','','0','1251083240');
INSERT INTO uchome_friend VALUES ('425','243','zhengwenxiang','1','0','','0','1251180181');
INSERT INTO uchome_friend VALUES ('428','363','yyifan','1','0','','3','1251083568');
INSERT INTO uchome_friend VALUES ('255','425','yanghuanzhang','1','1','','2','1251083392');
INSERT INTO uchome_friend VALUES ('255','411','xuqinghong74','1','1','','1','1251083433');
INSERT INTO uchome_friend VALUES ('363','428','beibei','1','0','','2','1251083568');
INSERT INTO uchome_friend VALUES ('425','411','xuqinghong74','1','0','','0','1251087752');
INSERT INTO uchome_friend VALUES ('430','363','yyifan','1','0','','7','1251087062');
INSERT INTO uchome_friend VALUES ('363','430','sanshao','1','0','','2','1251087062');
INSERT INTO uchome_friend VALUES ('431','363','yyifan','1','0','','1','1251087093');
INSERT INTO uchome_friend VALUES ('363','431','banjianbi','1','0','','2','1251087093');
INSERT INTO uchome_friend VALUES ('430','431','banjianbi','1','0','','3','1251130949');
INSERT INTO uchome_friend VALUES ('430','429','gyq','0','0','','0','1251087169');
INSERT INTO uchome_friend VALUES ('432','363','yyifan','1','0','','1','1251087174');
INSERT INTO uchome_friend VALUES ('363','432','wangkun','1','0','','2','1251087174');
INSERT INTO uchome_friend VALUES ('430','9','happy','0','0','','0','1251087180');
INSERT INTO uchome_friend VALUES ('430','54','zhangyan','0','0','','0','1251087183');
INSERT INTO uchome_friend VALUES ('430','307','Joyce','0','0','','0','1251087186');
INSERT INTO uchome_friend VALUES ('430','308','alinayun','0','0','','0','1251087190');
INSERT INTO uchome_friend VALUES ('430','328','jenny','0','0','','0','1251087194');
INSERT INTO uchome_friend VALUES ('432','431','banjianbi','1','1','','0','1251130942');
INSERT INTO uchome_friend VALUES ('432','429','gyq','0','1','','0','1251087378');
INSERT INTO uchome_friend VALUES ('430','296','smartwolf','0','0','','0','1251087684');
INSERT INTO uchome_friend VALUES ('411','425','yanghuanzhang','1','1','','3','1251087752');
INSERT INTO uchome_friend VALUES ('411','363','yyifan','1','1','','1','1251087805');
INSERT INTO uchome_friend VALUES ('411','430','sanshao','1','1','','2','1251121535');
INSERT INTO uchome_friend VALUES ('411','431','banjianbi','1','1','','1','1251130937');
INSERT INTO uchome_friend VALUES ('411','429','gyq','1','1','','2','1251097434');
INSERT INTO uchome_friend VALUES ('411','428','beibei','0','1','','0','1251088083');
INSERT INTO uchome_friend VALUES ('434','363','yyifan','1','0','','5','1251089321');
INSERT INTO uchome_friend VALUES ('363','434','rrppnn','1','0','','1','1251089321');
INSERT INTO uchome_friend VALUES ('435','363','yyifan','1','0','','1','1251089429');
INSERT INTO uchome_friend VALUES ('363','435','lyym','1','0','','1','1251089429');
INSERT INTO uchome_friend VALUES ('435','431','banjianbi','1','1','','0','1251130933');
INSERT INTO uchome_friend VALUES ('435','429','gyq','0','0','','0','1251089645');
INSERT INTO uchome_friend VALUES ('435','122','delong','1','0','','0','1251447308');
INSERT INTO uchome_friend VALUES ('435','434','rrppnn','1','0','','0','1251299430');
INSERT INTO uchome_friend VALUES ('435','411','xuqinghong74','1','0','','0','1251091526');
INSERT INTO uchome_friend VALUES ('435','187','jack','1','0','','0','1251090449');
INSERT INTO uchome_friend VALUES ('187','435','lyym','1','0','','3','1251090449');
INSERT INTO uchome_friend VALUES ('411','435','lyym','1','1','','3','1251091526');
INSERT INTO uchome_friend VALUES ('173','363','yyifan','1','1','','1','1251091559');
INSERT INTO uchome_friend VALUES ('173','407','yuzhigong','1','1','','3','1251091564');
INSERT INTO uchome_friend VALUES ('173','431','banjianbi','1','1','','1','1251130924');
INSERT INTO uchome_friend VALUES ('173','411','xuqinghong74','1','1','','5','1251091687');
INSERT INTO uchome_friend VALUES ('96','363','yyifan','1','1','','3','1251091652');
INSERT INTO uchome_friend VALUES ('411','173','huha','1','1','','3','1251091687');
INSERT INTO uchome_friend VALUES ('411','437','xiangzl','1','1','','2','1251091979');
INSERT INTO uchome_friend VALUES ('437','411','xuqinghong74','1','0','','1','1251091979');
INSERT INTO uchome_friend VALUES ('439','438','xianglin188','1','0','','2','1251094029');
INSERT INTO uchome_friend VALUES ('439','9','happy','0','0','','0','1251093935');
INSERT INTO uchome_friend VALUES ('439','96','abcdefg','1','0','','0','1251109459');
INSERT INTO uchome_friend VALUES ('439','27','tianzi','0','0','','0','1251093945');
INSERT INTO uchome_friend VALUES ('439','46','ma876401970','0','0','','0','1251093947');
INSERT INTO uchome_friend VALUES ('363','443','dalin','0','0','','1','1251100362');
INSERT INTO uchome_friend VALUES ('439','363','yyifan','1','0','','0','1251100529');
INSERT INTO uchome_friend VALUES ('439','135','iamwayney','1','0','','0','1251206130');
INSERT INTO uchome_friend VALUES ('439','243','zhengwenxiang','1','0','','0','1251180161');
INSERT INTO uchome_friend VALUES ('439','232','skyzhaojian','1','0','','0','1251102216');
INSERT INTO uchome_friend VALUES ('439','58','huaynie','0','0','','0','1251093963');
INSERT INTO uchome_friend VALUES ('255','256','darkeyes','0','0','','1','1251175761');
INSERT INTO uchome_friend VALUES ('439','176','MAYJJ','0','0','','0','1251093970');
INSERT INTO uchome_friend VALUES ('439','125','mylove','0','0','','0','1251093972');
INSERT INTO uchome_friend VALUES ('439','339','yangsong1','1','0','','0','1251120067');
INSERT INTO uchome_friend VALUES ('439','64','liusuo','0','0','','0','1251093981');
INSERT INTO uchome_friend VALUES ('439','206','zhylbj','0','0','','0','1251093984');
INSERT INTO uchome_friend VALUES ('439','5','yangxin','0','0','','0','1251093998');
INSERT INTO uchome_friend VALUES ('439','12','xuelian','0','0','','0','1251094002');
INSERT INTO uchome_friend VALUES ('439','15','lingling','0','0','','0','1251094010');
INSERT INTO uchome_friend VALUES ('439','55','chy','0','0','','0','1251094013');
INSERT INTO uchome_friend VALUES ('439','109','yycf','0','0','','0','1251094015');
INSERT INTO uchome_friend VALUES ('439','143','dddkkkzhao','0','0','','0','1251094021');
INSERT INTO uchome_friend VALUES ('438','439','xiang','1','1','','4','1251094029');
INSERT INTO uchome_friend VALUES ('439','149','sdsdg','0','0','','0','1251094039');
INSERT INTO uchome_friend VALUES ('441','1','admin','1','0','','1','1251097166');
INSERT INTO uchome_friend VALUES ('1','441','qwee','1','0','','0','1251097166');
INSERT INTO uchome_friend VALUES ('411','441','qwee','0','1','','0','1251097216');
INSERT INTO uchome_friend VALUES ('429','411','xuqinghong74','1','7','','2','1251097434');
INSERT INTO uchome_friend VALUES ('363','438','xianglin188','0','0','','1','1251100375');
INSERT INTO uchome_friend VALUES ('363','429','gyq','1','0','','2','1251123533');
INSERT INTO uchome_friend VALUES ('363','442','franceco','0','0','','1','1251100429');
INSERT INTO uchome_friend VALUES ('363','439','xiang','1','0','','3','1251100529');
INSERT INTO uchome_friend VALUES ('363','444','dlmdlm','0','0','','2','1251100893');
INSERT INTO uchome_friend VALUES ('477','371','zlfd','1','0','','5','1251183267');
INSERT INTO uchome_friend VALUES ('363','441','qwee','0','0','','1','1251100944');
INSERT INTO uchome_friend VALUES ('363','440','wcy','0','0','','0','1251100954');
INSERT INTO uchome_friend VALUES ('363','436','remao','0','0','','0','1251100972');
INSERT INTO uchome_friend VALUES ('232','439','xiang','1','1','','3','1251102216');
INSERT INTO uchome_friend VALUES ('445','363','yyifan','1','0','','1','1251102527');
INSERT INTO uchome_friend VALUES ('363','445','DYY','1','0','','0','1251102527');
INSERT INTO uchome_friend VALUES ('445','328','jenny','0','0','','0','1251102934');
INSERT INTO uchome_friend VALUES ('445','125','mylove','0','0','','0','1251102939');
INSERT INTO uchome_friend VALUES ('447','135','iamwayney','1','1','','0','1251206187');
INSERT INTO uchome_friend VALUES ('445','109','yycf','0','0','','0','1251102957');
INSERT INTO uchome_friend VALUES ('445','355','czy','1','0','','0','1251108206');
INSERT INTO uchome_friend VALUES ('445','440','wcy','0','0','','0','1251103145');
INSERT INTO uchome_friend VALUES ('411','446','expert','0','1','','3','1251103634');
INSERT INTO uchome_friend VALUES ('447','363','yyifan','1','0','','3','1251104816');
INSERT INTO uchome_friend VALUES ('363','447','olfarmer','1','0','','2','1251104816');
INSERT INTO uchome_friend VALUES ('447','96','abcdefg','1','1','','1','1251109438');
INSERT INTO uchome_friend VALUES ('447','9','happy','0','1','','2','1251105131');
INSERT INTO uchome_friend VALUES ('447','411','xuqinghong74','1','1','','1','1251158977');
INSERT INTO uchome_friend VALUES ('447','429','gyq','0','1','','0','1251105628');
INSERT INTO uchome_friend VALUES ('477','255','abcd','1','0','','1','1251360593');
INSERT INTO uchome_friend VALUES ('448','58','huaynie','0','1','','0','1251105793');
INSERT INTO uchome_friend VALUES ('448','292','XHL','1','7','','0','1251183288');
INSERT INTO uchome_friend VALUES ('448','125','mylove','0','1','','0','1251105827');
INSERT INTO uchome_friend VALUES ('448','339','yangsong1','1','1','','0','1251120039');
INSERT INTO uchome_friend VALUES ('448','308','alinayun','0','1','','0','1251105850');
INSERT INTO uchome_friend VALUES ('448','54','zhangyan','0','1','','1','1251105859');
INSERT INTO uchome_friend VALUES ('96','447','olfarmer','1','1','','3','1251109438');
INSERT INTO uchome_friend VALUES ('448','371','zlfd','1','1','','1','1251112598');
INSERT INTO uchome_friend VALUES ('355','445','DYY','1','1','','1','1251108206');
INSERT INTO uchome_friend VALUES ('355','419','kankanshuixian','1','1','','1','1251108213');
INSERT INTO uchome_friend VALUES ('355','448','lovesheng','0','0','','1','1251108433');
INSERT INTO uchome_friend VALUES ('355','446','expert','0','0','','0','1251108463');
INSERT INTO uchome_friend VALUES ('355','173','huha','0','0','','0','1251108498');
INSERT INTO uchome_friend VALUES ('355','429','gyq','0','0','','0','1251108568');
INSERT INTO uchome_friend VALUES ('355','411','xuqinghong74','1','0','','3','1251158959');
INSERT INTO uchome_friend VALUES ('355','435','lyym','0','0','','1','1251108609');
INSERT INTO uchome_friend VALUES ('96','439','xiang','1','1','','1','1251109459');
INSERT INTO uchome_friend VALUES ('371','448','lovesheng','1','0','','8','1251112598');
INSERT INTO uchome_friend VALUES ('451','363','yyifan','1','0','','1','1251113622');
INSERT INTO uchome_friend VALUES ('363','451','wuyul','1','0','','0','1251113622');
INSERT INTO uchome_friend VALUES ('451','5','yangxin','0','0','','0','1251113774');
INSERT INTO uchome_friend VALUES ('453','363','yyifan','1','0','','2','1251115247');
INSERT INTO uchome_friend VALUES ('363','453','ffsfsa','1','0','','0','1251115247');
INSERT INTO uchome_friend VALUES ('453','9','happy','0','1','','1','1251115319');
INSERT INTO uchome_friend VALUES ('453','122','delong','0','1','','0','1251115331');
INSERT INTO uchome_friend VALUES ('453','449','demonb','1','1','','0','1251163929');
INSERT INTO uchome_friend VALUES ('452','371','zlfd','1','0','','1','1251127126');
INSERT INTO uchome_friend VALUES ('454','58','huaynie','0','0','','0','1251119018');
INSERT INTO uchome_friend VALUES ('339','448','lovesheng','1','0','','2','1251120039');
INSERT INTO uchome_friend VALUES ('339','439','xiang','1','1','','2','1251120067');
INSERT INTO uchome_friend VALUES ('339','386','mytwd','1','1','','1','1251120243');
INSERT INTO uchome_friend VALUES ('339','449','demonb','1','0','','1','1251163779');
INSERT INTO uchome_friend VALUES ('339','453','ffsfsa','0','0','','1','1251120349');
INSERT INTO uchome_friend VALUES ('430','232','skyzhaojian','1','0','','3','1251121529');
INSERT INTO uchome_friend VALUES ('430','411','xuqinghong74','1','0','','2','1251121535');
INSERT INTO uchome_friend VALUES ('430','371','zlfd','1','0','','1','1251127112');
INSERT INTO uchome_friend VALUES ('430','432','wangkun','0','0','','0','1251121635');
INSERT INTO uchome_friend VALUES ('430','452','xiaomaohai','0','0','','0','1251122065');
INSERT INTO uchome_friend VALUES ('476','386','mytwd','1','0','','2','1251163378');
INSERT INTO uchome_friend VALUES ('455','363','yyifan','1','0','','1','1251123477');
INSERT INTO uchome_friend VALUES ('363','455','longgui','1','0','','0','1251123477');
INSERT INTO uchome_friend VALUES ('429','363','yyifan','1','7','','2','1251123533');
INSERT INTO uchome_friend VALUES ('455','135','iamwayney','1','0','','3','1251206213');
INSERT INTO uchome_friend VALUES ('386','476','sunjunlin','1','0','','1','1251163378');
INSERT INTO uchome_friend VALUES ('456','363','yyifan','1','0','','1','1251123837');
INSERT INTO uchome_friend VALUES ('363','456','woshisheidegege','1','0','','0','1251123837');
INSERT INTO uchome_friend VALUES ('456','135','iamwayney','1','7','','0','1251206298');
INSERT INTO uchome_friend VALUES ('456','429','gyq','0','1','','1','1251124421');
INSERT INTO uchome_friend VALUES ('457','1','admin','1','0','','1','1251125118');
INSERT INTO uchome_friend VALUES ('1','457','fgh3697278','1','0','','1','1251125118');
INSERT INTO uchome_friend VALUES ('458','363','yyifan','1','0','','5','1251125538');
INSERT INTO uchome_friend VALUES ('363','458','bluesea','1','0','','1','1251125538');
INSERT INTO uchome_friend VALUES ('458','430','sanshao','1','1','','4','1251163791');
INSERT INTO uchome_friend VALUES ('458','371','zlfd','1','1','','11','1251127092');
INSERT INTO uchome_friend VALUES ('458','452','xiaomaohai','0','1','','0','1251126552');
INSERT INTO uchome_friend VALUES ('458','431','banjianbi','1','0','','1','1251129868');
INSERT INTO uchome_friend VALUES ('458','232','skyzhaojian','1','1','','14','1251127500');
INSERT INTO uchome_friend VALUES ('458','372','Zhaole','0','1','','0','1251126617');
INSERT INTO uchome_friend VALUES ('458','339','yangsong1','0','1','','1','1251126629');
INSERT INTO uchome_friend VALUES ('386','458','bluesea','1','0','','29','1251129133');
INSERT INTO uchome_friend VALUES ('386','450','jfdskhkl','0','0','','0','1251127005');
INSERT INTO uchome_friend VALUES ('386','457','fgh3697278','0','0','','0','1251127020');
INSERT INTO uchome_friend VALUES ('386','429','gyq','0','0','','0','1251127036');
INSERT INTO uchome_friend VALUES ('386','430','sanshao','1','0','','5','1251163787');
INSERT INTO uchome_friend VALUES ('386','452','xiaomaohai','0','0','','1','1251127083');
INSERT INTO uchome_friend VALUES ('371','458','bluesea','1','0','','8','1251127092');
INSERT INTO uchome_friend VALUES ('371','430','sanshao','1','0','','6','1251127112');
INSERT INTO uchome_friend VALUES ('371','452','xiaomaohai','1','0','','1','1251127126');
INSERT INTO uchome_friend VALUES ('232','458','bluesea','1','1','','10','1251127500');
INSERT INTO uchome_friend VALUES ('232','446','expert','0','1','','0','1251127557');
INSERT INTO uchome_friend VALUES ('386','232','skyzhaojian','1','0','','19','1251127668');
INSERT INTO uchome_friend VALUES ('232','386','mytwd','1','1','','16','1251127668');
INSERT INTO uchome_friend VALUES ('232','383','zyfzyf','0','1','','1','1251127690');
INSERT INTO uchome_friend VALUES ('459','46','ma876401970','0','1','','1','1251127789');
INSERT INTO uchome_friend VALUES ('386','459','xujianzhou','1','0','','25','1251128352');
INSERT INTO uchome_friend VALUES ('459','433','justin','0','1','','1','1251128108');
INSERT INTO uchome_friend VALUES ('459','386','mytwd','1','0','','14','1251128352');
INSERT INTO uchome_friend VALUES ('459','58','huaynie','0','0','','1','1251128459');
INSERT INTO uchome_friend VALUES ('459','96','abcdefg','1','0','','0','1251160144');
INSERT INTO uchome_friend VALUES ('459','452','xiaomaohai','0','0','','0','1251128910');
INSERT INTO uchome_friend VALUES ('459','232','skyzhaojian','1','0','','6','1251129187');
INSERT INTO uchome_friend VALUES ('459','435','lyym','0','0','','0','1251128938');
INSERT INTO uchome_friend VALUES ('459','449','demonb','1','0','','0','1251163920');
INSERT INTO uchome_friend VALUES ('449','339','yangsong1','1','1','','3','1251163779');
INSERT INTO uchome_friend VALUES ('459','431','banjianbi','1','0','','0','1251130918');
INSERT INTO uchome_friend VALUES ('459','64','liusuo','1','0','','1','1251304432');
INSERT INTO uchome_friend VALUES ('459','1','admin','1','0','','0','1251186965');
INSERT INTO uchome_friend VALUES ('459','399','panjunshan','0','0','','0','1251129031');
INSERT INTO uchome_friend VALUES ('459','54','zhangyan','0','0','','0','1251129038');
INSERT INTO uchome_friend VALUES ('459','9','happy','0','0','','0','1251129041');
INSERT INTO uchome_friend VALUES ('386','123','kivenlv','0','0','','1','1251129046');
INSERT INTO uchome_friend VALUES ('386','55','chy','0','0','','0','1251129054');
INSERT INTO uchome_friend VALUES ('386','248','xiaodaidai','0','0','','0','1251129071');
INSERT INTO uchome_friend VALUES ('386','297','niandezhu','0','0','','0','1251129080');
INSERT INTO uchome_friend VALUES ('386','371','zlfd','1','0','','2','1251158009');
INSERT INTO uchome_friend VALUES ('458','386','mytwd','1','1','','25','1251129133');
INSERT INTO uchome_friend VALUES ('232','459','xujianzhou','1','1','','10','1251129187');
INSERT INTO uchome_friend VALUES ('459','383','zyfzyf','0','0','','0','1251129407');
INSERT INTO uchome_friend VALUES ('459','21','wangyang','0','0','','0','1251129418');
INSERT INTO uchome_friend VALUES ('363','54','zhangyan','0','0','','2','1251154565');
INSERT INTO uchome_friend VALUES ('459','135','iamwayney','1','0','','0','1251206324');
INSERT INTO uchome_friend VALUES ('386','460','xihaibbs','0','0','','0','1251129598');
INSERT INTO uchome_friend VALUES ('462','458','bluesea','1','0','','17','1251129762');
INSERT INTO uchome_friend VALUES ('458','462','JONE','1','0','','7','1251129762');
INSERT INTO uchome_friend VALUES ('431','458','bluesea','1','0','','3','1251129868');
INSERT INTO uchome_friend VALUES ('458','459','xujianzhou','1','1','','5','1251130297');
INSERT INTO uchome_friend VALUES ('458','460','xihaibbs','0','1','','0','1251130265');
INSERT INTO uchome_friend VALUES ('459','458','bluesea','1','0','','5','1251130297');
INSERT INTO uchome_friend VALUES ('431','446','expert','0','1','','1','1251130872');
INSERT INTO uchome_friend VALUES ('431','459','xujianzhou','1','1','','2','1251130918');
INSERT INTO uchome_friend VALUES ('431','173','huha','1','1','','4','1251130924');
INSERT INTO uchome_friend VALUES ('431','435','lyym','1','1','','1','1251130933');
INSERT INTO uchome_friend VALUES ('431','411','xuqinghong74','1','1','','2','1251130937');
INSERT INTO uchome_friend VALUES ('458','464','gudu','0','1','','0','1251130941');
INSERT INTO uchome_friend VALUES ('431','432','wangkun','1','1','','1','1251130942');
INSERT INTO uchome_friend VALUES ('431','430','sanshao','1','1','','2','1251130949');
INSERT INTO uchome_friend VALUES ('458','122','delong','0','1','','0','1251131021');
INSERT INTO uchome_friend VALUES ('462','232','skyzhaojian','1','1','','12','1251178732');
INSERT INTO uchome_friend VALUES ('462','431','banjianbi','1','0','','0','1251262973');
INSERT INTO uchome_friend VALUES ('466','386','mytwd','1','0','','6','1251132210');
INSERT INTO uchome_friend VALUES ('386','466','Edward','1','0','','7','1251132210');
INSERT INTO uchome_friend VALUES ('466','371','zlfd','1','1','','6','1251158003');
INSERT INTO uchome_friend VALUES ('466','464','gudu','0','1','','1','1251132577');
INSERT INTO uchome_friend VALUES ('466','460','xihaibbs','0','1','','0','1251132590');
INSERT INTO uchome_friend VALUES ('467','363','yyifan','1','0','','1','1251132839');
INSERT INTO uchome_friend VALUES ('363','467','yanyu','1','0','','0','1251132839');
INSERT INTO uchome_friend VALUES ('466','467','yanyu','0','1','','2','1251133129');
INSERT INTO uchome_friend VALUES ('467','431','banjianbi','1','0','','0','1251262969');
INSERT INTO uchome_friend VALUES ('467','465','zqzqzq','0','0','','0','1251133425');
INSERT INTO uchome_friend VALUES ('470','363','yyifan','1','0','','12','1251152293');
INSERT INTO uchome_friend VALUES ('363','470','jtwyslq','1','0','','0','1251152293');
INSERT INTO uchome_friend VALUES ('470','9','happy','0','1','','3','1251152489');
INSERT INTO uchome_friend VALUES ('470','30','norye','0','1','','0','1251152494');
INSERT INTO uchome_friend VALUES ('470','87','cec','0','0','','0','1251152497');
INSERT INTO uchome_friend VALUES ('470','96','abcdefg','1','0','','3','1251160127');
INSERT INTO uchome_friend VALUES ('470','103','sylt','0','0','','0','1251152512');
INSERT INTO uchome_friend VALUES ('470','122','delong','0','0','','0','1251152518');
INSERT INTO uchome_friend VALUES ('470','296','smartwolf','0','0','','0','1251152521');
INSERT INTO uchome_friend VALUES ('470','308','alinayun','0','0','','0','1251152525');
INSERT INTO uchome_friend VALUES ('470','232','skyzhaojian','1','0','','4','1251178721');
INSERT INTO uchome_friend VALUES ('470','173','huha','0','0','','0','1251152533');
INSERT INTO uchome_friend VALUES ('470','135','iamwayney','1','0','','0','1251206363');
INSERT INTO uchome_friend VALUES ('470','176','MAYJJ','0','0','','0','1251152542');
INSERT INTO uchome_friend VALUES ('470','13','feifei','0','0','','0','1251152556');
INSERT INTO uchome_friend VALUES ('470','15','lingling','0','0','','0','1251152560');
INSERT INTO uchome_friend VALUES ('470','197','zyzy','0','0','','0','1251152564');
INSERT INTO uchome_friend VALUES ('470','143','dddkkkzhao','0','0','','0','1251152568');
INSERT INTO uchome_friend VALUES ('470','7','liyu','0','0','','0','1251152572');
INSERT INTO uchome_friend VALUES ('470','64','liusuo','0','0','','0','1251152585');
INSERT INTO uchome_friend VALUES ('470','142','bluedryed','0','0','','0','1251152591');
INSERT INTO uchome_friend VALUES ('363','457','fgh3697278','0','0','','2','1251153968');
INSERT INTO uchome_friend VALUES ('471','1','admin','1','0','','2','1251155650');
INSERT INTO uchome_friend VALUES ('1','471','jaene','1','0','','0','1251155650');
INSERT INTO uchome_friend VALUES ('471','470','jtwyslq','0','7','','0','1251155884');
INSERT INTO uchome_friend VALUES ('537','571','mcb','1','0','','0','1251388999');
INSERT INTO uchome_friend VALUES ('471','58','huaynie','0','7','','0','1251155898');
INSERT INTO uchome_friend VALUES ('471','176','MAYJJ','0','7','','0','1251155906');
INSERT INTO uchome_friend VALUES ('471','135','iamwayney','1','7','','1','1251206419');
INSERT INTO uchome_friend VALUES ('471','70','qq872300214','0','7','','0','1251155933');
INSERT INTO uchome_friend VALUES ('471','75','linwenyi','0','7','','0','1251155939');
INSERT INTO uchome_friend VALUES ('471','21','wangyang','0','7','','0','1251155967');
INSERT INTO uchome_friend VALUES ('471','24','ywgg','0','7','','0','1251155976');
INSERT INTO uchome_friend VALUES ('471','54','zhangyan','0','7','','0','1251155991');
INSERT INTO uchome_friend VALUES ('371','466','Edward','1','0','','4','1251158003');
INSERT INTO uchome_friend VALUES ('371','386','mytwd','1','0','','1','1251158009');
INSERT INTO uchome_friend VALUES ('411','355','czy','1','1','','2','1251158959');
INSERT INTO uchome_friend VALUES ('411','447','olfarmer','1','1','','1','1251158977');
INSERT INTO uchome_friend VALUES ('473','9','happy','0','0','','0','1251159625');
INSERT INTO uchome_friend VALUES ('473','308','alinayun','0','0','','0','1251159637');
INSERT INTO uchome_friend VALUES ('473','46','ma876401970','0','0','','0','1251159642');
INSERT INTO uchome_friend VALUES ('473','371','zlfd','1','0','','41','1251159714');
INSERT INTO uchome_friend VALUES ('473','411','xuqinghong74','1','0','','6','1251160076');
INSERT INTO uchome_friend VALUES ('473','472','sdfsdfsdf','0','0','','0','1251159658');
INSERT INTO uchome_friend VALUES ('371','473','yusiking','1','0','','25','1251159714');
INSERT INTO uchome_friend VALUES ('411','473','yusiking','1','1','','3','1251160076');
INSERT INTO uchome_friend VALUES ('96','470','jtwyslq','1','1','','1','1251160127');
INSERT INTO uchome_friend VALUES ('473','122','delong','1','0','','2','1251447225');
INSERT INTO uchome_friend VALUES ('96','459','xujianzhou','1','1','','1','1251160144');
INSERT INTO uchome_friend VALUES ('474','363','yyifan','1','0','','1','1251161004');
INSERT INTO uchome_friend VALUES ('363','474','yanlei','1','0','','0','1251161004');
INSERT INTO uchome_friend VALUES ('474','473','yusiking','1','0','','3','1251161389');
INSERT INTO uchome_friend VALUES ('474','371','zlfd','1','0','','0','1251161982');
INSERT INTO uchome_friend VALUES ('474','96','abcdefg','1','0','','1','1251188967');
INSERT INTO uchome_friend VALUES ('474','411','xuqinghong74','1','0','','0','1251166567');
INSERT INTO uchome_friend VALUES ('474','59','yanlangtian','0','0','','0','1251161319');
INSERT INTO uchome_friend VALUES ('474','190','ZHANGJING','0','0','','0','1251161324');
INSERT INTO uchome_friend VALUES ('474','245','leyi','0','0','','0','1251161370');
INSERT INTO uchome_friend VALUES ('474','283','LING','0','0','','0','1251161388');
INSERT INTO uchome_friend VALUES ('473','474','yanlei','1','0','','9','1251161389');
INSERT INTO uchome_friend VALUES ('474','422','dchjdjs','0','0','','0','1251161395');
INSERT INTO uchome_friend VALUES ('474','125','mylove','0','0','','0','1251161407');
INSERT INTO uchome_friend VALUES ('474','58','huaynie','0','0','','0','1251161428');
INSERT INTO uchome_friend VALUES ('474','46','ma876401970','0','0','','0','1251161436');
INSERT INTO uchome_friend VALUES ('430','386','mytwd','1','0','','1','1251163787');
INSERT INTO uchome_friend VALUES ('474','135','iamwayney','1','0','','0','1251206462');
INSERT INTO uchome_friend VALUES ('474','243','zhengwenxiang','1','0','','0','1251180118');
INSERT INTO uchome_friend VALUES ('474','308','alinayun','0','0','','0','1251161469');
INSERT INTO uchome_friend VALUES ('474','307','Joyce','0','0','','0','1251161474');
INSERT INTO uchome_friend VALUES ('474','54','zhangyan','0','0','','0','1251161480');
INSERT INTO uchome_friend VALUES ('571','537','demonpig','1','0','','1','1251388999');
INSERT INTO uchome_friend VALUES ('371','474','yanlei','1','0','','5','1251161982');
INSERT INTO uchome_friend VALUES ('475','363','yyifan','1','0','','1','1251162593');
INSERT INTO uchome_friend VALUES ('363','475','jinjianping','1','0','','0','1251162593');
INSERT INTO uchome_friend VALUES ('430','458','bluesea','1','0','','1','1251163791');
INSERT INTO uchome_friend VALUES ('449','459','xujianzhou','1','1','','1','1251163920');
INSERT INTO uchome_friend VALUES ('449','453','ffsfsa','1','1','','3','1251163929');
INSERT INTO uchome_friend VALUES ('476','21','wangyang','0','1','','0','1251163969');
INSERT INTO uchome_friend VALUES ('449','472','sdfsdfsdf','0','1','','2','1251164064');
INSERT INTO uchome_friend VALUES ('476','453','ffsfsa','0','1','','0','1251164086');
INSERT INTO uchome_friend VALUES ('476','449','demonb','1','1','','16','1251164360');
INSERT INTO uchome_friend VALUES ('476','431','banjianbi','1','1','','0','1251262964');
INSERT INTO uchome_friend VALUES ('449','476','sunjunlin','1','1','','2','1251164360');
INSERT INTO uchome_friend VALUES ('256','355','czy','1','1','','2','1251164602');
INSERT INTO uchome_friend VALUES ('256','269','112930968','1','1','','1','1251164625');
INSERT INTO uchome_friend VALUES ('256','259','zhuliuxiang','1','1','','1','1251164663');
INSERT INTO uchome_friend VALUES ('449','259','zhuliuxiang','0','0','','1','1251164717');
INSERT INTO uchome_friend VALUES ('256','263','ONEI','1','1','','1','1251164793');
INSERT INTO uchome_friend VALUES ('449','452','xiaomaohai','0','1','','1','1251165333');
INSERT INTO uchome_friend VALUES ('411','474','yanlei','1','1','','1','1251166567');
INSERT INTO uchome_friend VALUES ('478','458','bluesea','1','0','','4','1251166662');
INSERT INTO uchome_friend VALUES ('458','478','zxxboy','1','0','','1','1251166662');
INSERT INTO uchome_friend VALUES ('478','452','xiaomaohai','0','1','','0','1251166775');
INSERT INTO uchome_friend VALUES ('478','411','xuqinghong74','1','0','','1','1251173625');
INSERT INTO uchome_friend VALUES ('478','449','demonb','1','0','','9','1251169647');
INSERT INTO uchome_friend VALUES ('478','476','sunjunlin','0','0','','5','1251166789');
INSERT INTO uchome_friend VALUES ('478','477','hdyzlll','1','0','','9','1251168185');
INSERT INTO uchome_friend VALUES ('478','256','darkeyes','0','0','','1','1251166795');
INSERT INTO uchome_friend VALUES ('478','125','mylove','0','0','','0','1251166807');
INSERT INTO uchome_friend VALUES ('478','371','zlfd','1','0','','3','1251177615');
INSERT INTO uchome_friend VALUES ('478','176','MAYJJ','0','0','','0','1251166814');
INSERT INTO uchome_friend VALUES ('478','355','czy','1','0','','2','1251182562');
INSERT INTO uchome_friend VALUES ('478','255','abcd','1','0','','1','1251175588');
INSERT INTO uchome_friend VALUES ('478','58','huaynie','0','0','','0','1251166823');
INSERT INTO uchome_friend VALUES ('478','339','yangsong1','0','0','','1','1251166827');
INSERT INTO uchome_friend VALUES ('478','243','zhengwenxiang','1','0','','0','1251180076');
INSERT INTO uchome_friend VALUES ('478','135','iamwayney','1','0','','0','1251206720');
INSERT INTO uchome_friend VALUES ('478','232','skyzhaojian','1','0','','0','1251178716');
INSERT INTO uchome_friend VALUES ('478','46','ma876401970','0','0','','0','1251166857');
INSERT INTO uchome_friend VALUES ('480','462','JONE','1','1','','3','1251219252');
INSERT INTO uchome_friend VALUES ('478','96','abcdefg','1','0','','1','1251254005');
INSERT INTO uchome_friend VALUES ('430','566','ttttt','0','0','','0','1251388686');
INSERT INTO uchome_friend VALUES ('478','27','tianzi','0','0','','0','1251166874');
INSERT INTO uchome_friend VALUES ('478','386','mytwd','1','0','','2','1251173024');
INSERT INTO uchome_friend VALUES ('478','459','xujianzhou','0','0','','1','1251166892');
INSERT INTO uchome_friend VALUES ('478','430','sanshao','1','0','','1','1251186573');
INSERT INTO uchome_friend VALUES ('478','462','JONE','1','0','','0','1251219280');
INSERT INTO uchome_friend VALUES ('478','431','banjianbi','1','0','','0','1251262957');
INSERT INTO uchome_friend VALUES ('478','122','delong','0','0','','0','1251166908');
INSERT INTO uchome_friend VALUES ('478','464','gudu','0','0','','0','1251166911');
INSERT INTO uchome_friend VALUES ('478','460','xihaibbs','0','0','','0','1251166914');
INSERT INTO uchome_friend VALUES ('478','372','Zhaole','0','0','','0','1251166917');
INSERT INTO uchome_friend VALUES ('478','54','zhangyan','0','0','','0','1251166926');
INSERT INTO uchome_friend VALUES ('478','259','zhuliuxiang','0','0','','0','1251167406');
INSERT INTO uchome_friend VALUES ('478','263','ONEI','0','0','','0','1251167415');
INSERT INTO uchome_friend VALUES ('478','475','jinjianping','0','0','','0','1251167489');
INSERT INTO uchome_friend VALUES ('478','473','yusiking','1','0','','0','1251199370');
INSERT INTO uchome_friend VALUES ('477','478','zxxboy','1','1','','9','1251168185');
INSERT INTO uchome_friend VALUES ('479','363','yyifan','1','0','','1','1251168194');
INSERT INTO uchome_friend VALUES ('363','479','tigern','1','0','','0','1251168194');
INSERT INTO uchome_friend VALUES ('477','256','darkeyes','0','0','','3','1251168620');
INSERT INTO uchome_friend VALUES ('480','363','yyifan','1','0','','4','1251169166');
INSERT INTO uchome_friend VALUES ('363','480','qqyyzz','1','0','','0','1251169166');
INSERT INTO uchome_friend VALUES ('480','256','darkeyes','0','1','','0','1251169361');
INSERT INTO uchome_friend VALUES ('480','466','Edward','1','1','','2','1251178664');
INSERT INTO uchome_friend VALUES ('480','467','yanyu','0','1','','1','1251169412');
INSERT INTO uchome_friend VALUES ('480','470','jtwyslq','0','1','','0','1251169429');
INSERT INTO uchome_friend VALUES ('480','454','yongge','0','1','','1','1251169454');
INSERT INTO uchome_friend VALUES ('480','339','yangsong1','0','1','','0','1251169483');
INSERT INTO uchome_friend VALUES ('449','478','zxxboy','1','0','','2','1251169647');
INSERT INTO uchome_friend VALUES ('480','429','gyq','0','1','','0','1251169836');
INSERT INTO uchome_friend VALUES ('158','492','yangjiajiang','0','1','','2','1251215155');
INSERT INTO uchome_friend VALUES ('478','296','smartwolf','0','0','','0','1251172226');
INSERT INTO uchome_friend VALUES ('386','477','hdyzlll','1','0','','2','1251173530');
INSERT INTO uchome_friend VALUES ('386','478','zxxboy','1','1','','3','1251173024');
INSERT INTO uchome_friend VALUES ('477','386','mytwd','1','1','','3','1251173530');
INSERT INTO uchome_friend VALUES ('411','478','zxxboy','1','1','','1','1251173625');
INSERT INTO uchome_friend VALUES ('482','430','sanshao','1','1','','2','1251186567');
INSERT INTO uchome_friend VALUES ('571','274','GEXUAN','1','0','','1','1251388999');
INSERT INTO uchome_friend VALUES ('158','395','boyy','1','1','','1','1251215100');
INSERT INTO uchome_friend VALUES ('481','355','czy','1','0','','0','1251182524');
INSERT INTO uchome_friend VALUES ('481','307','Joyce','0','0','','0','1251174464');
INSERT INTO uchome_friend VALUES ('481','308','alinayun','0','0','','0','1251174468');
INSERT INTO uchome_friend VALUES ('481','339','yangsong1','0','0','','0','1251174474');
INSERT INTO uchome_friend VALUES ('481','176','MAYJJ','0','0','','0','1251174480');
INSERT INTO uchome_friend VALUES ('481','46','ma876401970','0','0','','1','1251174485');
INSERT INTO uchome_friend VALUES ('481','135','iamwayney','1','0','','1','1251206669');
INSERT INTO uchome_friend VALUES ('481','467','yanyu','0','0','','0','1251175305');
INSERT INTO uchome_friend VALUES ('255','478','zxxboy','1','1','','2','1251175588');
INSERT INTO uchome_friend VALUES ('158','386','mytwd','1','1','','1','1251215088');
INSERT INTO uchome_friend VALUES ('466','480','qqyyzz','1','1','','1','1251178664');
INSERT INTO uchome_friend VALUES ('232','478','zxxboy','1','1','','1','1251178716');
INSERT INTO uchome_friend VALUES ('232','470','jtwyslq','1','1','','4','1251178721');
INSERT INTO uchome_friend VALUES ('232','462','JONE','1','1','','6','1251178732');
INSERT INTO uchome_friend VALUES ('232','460','xihaibbs','0','1','','1','1251178867');
INSERT INTO uchome_friend VALUES ('517','527','fesunn','1','0','','5','1251273145');
INSERT INTO uchome_friend VALUES ('483','232','skyzhaojian','1','0','','0','1251200944');
INSERT INTO uchome_friend VALUES ('483','466','Edward','1','0','','1','1251263054');
INSERT INTO uchome_friend VALUES ('243','478','zxxboy','1','1','','1','1251180076');
INSERT INTO uchome_friend VALUES ('243','474','yanlei','1','1','','2','1251180118');
INSERT INTO uchome_friend VALUES ('243','439','xiang','1','1','','1','1251180161');
INSERT INTO uchome_friend VALUES ('243','425','yanghuanzhang','1','1','','2','1251180181');
INSERT INTO uchome_friend VALUES ('243','448','lovesheng','0','1','','1','1251180429');
INSERT INTO uchome_friend VALUES ('243','433','justin','0','0','','3','1251180461');
INSERT INTO uchome_friend VALUES ('243','430','sanshao','1','1','','5','1251186563');
INSERT INTO uchome_friend VALUES ('243','383','zyfzyf','0','1','','1','1251180546');
INSERT INTO uchome_friend VALUES ('373','411','xuqinghong74','1','0','','1','1251180612');
INSERT INTO uchome_friend VALUES ('373','390','zuqiuxiansheng','1','0','','2','1251180631');
INSERT INTO uchome_friend VALUES ('373','158','shendaaaaa','1','0','','1','1251180651');
INSERT INTO uchome_friend VALUES ('373','277','Daniel','1','0','','1','1251180667');
INSERT INTO uchome_friend VALUES ('243','417','zhengyue','0','1','','1','1251180719');
INSERT INTO uchome_friend VALUES ('355','470','jtwyslq','0','0','','2','1251182400');
INSERT INTO uchome_friend VALUES ('355','481','aaa','1','0','','2','1251182524');
INSERT INTO uchome_friend VALUES ('355','478','zxxboy','1','1','','3','1251182562');
INSERT INTO uchome_friend VALUES ('355','479','tigern','0','0','','0','1251182711');
INSERT INTO uchome_friend VALUES ('355','467','yanyu','0','0','','0','1251182732');
INSERT INTO uchome_friend VALUES ('355','485','kelly','0','0','','0','1251182748');
INSERT INTO uchome_friend VALUES ('355','430','sanshao','1','0','','15','1251186558');
INSERT INTO uchome_friend VALUES ('371','477','hdyzlll','1','0','','4','1251183267');
INSERT INTO uchome_friend VALUES ('292','448','lovesheng','1','6','','1','1251183288');
INSERT INTO uchome_friend VALUES ('487','363','yyifan','1','0','','1','1251185379');
INSERT INTO uchome_friend VALUES ('363','487','syfsyfsyf','1','0','','1','1251185379');
INSERT INTO uchome_friend VALUES ('430','355','czy','1','0','','2','1251186558');
INSERT INTO uchome_friend VALUES ('430','243','zhengwenxiang','1','0','','1','1251186563');
INSERT INTO uchome_friend VALUES ('430','482','wxwttf','1','0','','1','1251186567');
INSERT INTO uchome_friend VALUES ('430','478','zxxboy','1','0','','1','1251186573');
INSERT INTO uchome_friend VALUES ('1','459','xujianzhou','1','0','','1','1251186965');
INSERT INTO uchome_friend VALUES ('1','421','TAKR','1','0','','1','1251186967');
INSERT INTO uchome_friend VALUES ('1','386','mytwd','1','0','','1','1251186970');
INSERT INTO uchome_friend VALUES ('1','390','zuqiuxiansheng','1','0','','2','1251186973');
INSERT INTO uchome_friend VALUES ('1','389','zhzhjie','1','0','','1','1251186976');
INSERT INTO uchome_friend VALUES ('1','370','hhnhz','1','0','','1','1251186979');
INSERT INTO uchome_friend VALUES ('1','369','luhu','1','0','','1','1251186982');
INSERT INTO uchome_friend VALUES ('363','5','yangxin','0','0','','2','1251188216');
INSERT INTO uchome_friend VALUES ('363','7','liyu','0','0','','1','1251188225');
INSERT INTO uchome_friend VALUES ('363','10','alian','0','0','','0','1251188237');
INSERT INTO uchome_friend VALUES ('363','11','jingshui','0','0','','2','1251188249');
INSERT INTO uchome_friend VALUES ('363','12','xuelian','0','0','','1','1251188263');
INSERT INTO uchome_friend VALUES ('363','13','feifei','0','0','','1','1251188273');
INSERT INTO uchome_friend VALUES ('363','15','lingling','0','0','','3','1251188285');
INSERT INTO uchome_friend VALUES ('363','55','chy','0','0','','1','1251188310');
INSERT INTO uchome_friend VALUES ('363','142','bluedryed','0','0','','1','1251188320');
INSERT INTO uchome_friend VALUES ('363','143','dddkkkzhao','0','0','','1','1251188330');
INSERT INTO uchome_friend VALUES ('363','149','sdsdg','0','0','','0','1251188346');
INSERT INTO uchome_friend VALUES ('363','163','fujianxun','0','0','','0','1251188356');
INSERT INTO uchome_friend VALUES ('363','166','youlan','0','0','','1','1251188366');
INSERT INTO uchome_friend VALUES ('363','194','asdfghjkl','0','0','','0','1251188382');
INSERT INTO uchome_friend VALUES ('363','197','zyzy','0','0','','0','1251188394');
INSERT INTO uchome_friend VALUES ('363','229','lijianze102','0','0','','0','1251188404');
INSERT INTO uchome_friend VALUES ('363','237','jiayou','0','0','','0','1251188413');
INSERT INTO uchome_friend VALUES ('363','314','mtmt','0','0','','0','1251188461');
INSERT INTO uchome_friend VALUES ('363','328','jenny','0','0','','0','1251188475');
INSERT INTO uchome_friend VALUES ('363','408','jacking','0','0','','0','1251188514');
INSERT INTO uchome_friend VALUES ('363','460','xihaibbs','0','0','','1','1251188556');
INSERT INTO uchome_friend VALUES ('363','486','ecapslock','0','0','','0','1251188566');
INSERT INTO uchome_friend VALUES ('96','474','yanlei','1','1','','4','1251188967');
INSERT INTO uchome_friend VALUES ('158','243','zhengwenxiang','1','1','','2','1251275782');
INSERT INTO uchome_friend VALUES ('489','58','huaynie','0','0','','0','1251192108');
INSERT INTO uchome_friend VALUES ('411','274','GEXUAN','1','1','','3','1251259463');
INSERT INTO uchome_friend VALUES ('158','473','yusiking','0','1','','1','1251215174');
INSERT INTO uchome_friend VALUES ('491','371','zlfd','1','0','','8','1251198710');
INSERT INTO uchome_friend VALUES ('491','9','happy','0','0','','1','1251194808');
INSERT INTO uchome_friend VALUES ('491','449','demonb','0','1','','3','1251195269');
INSERT INTO uchome_friend VALUES ('371','491','ffeng','1','0','','2','1251198710');
INSERT INTO uchome_friend VALUES ('473','478','zxxboy','1','0','','1','1251199370');
INSERT INTO uchome_friend VALUES ('473','449','demonb','1','0','','3','1251249431');
INSERT INTO uchome_friend VALUES ('473','491','ffeng','1','0','','1','1251282056');
INSERT INTO uchome_friend VALUES ('473','492','yangjiajiang','0','0','','1','1251199681');
INSERT INTO uchome_friend VALUES ('471','371','zlfd','1','7','','4','1251202075');
INSERT INTO uchome_friend VALUES ('471','373','xtxbamboo','0','7','','1','1251199882');
INSERT INTO uchome_friend VALUES ('471','473','yusiking','1','7','','4','1251200203');
INSERT INTO uchome_friend VALUES ('473','471','jaene','1','0','','6','1251200203');
INSERT INTO uchome_friend VALUES ('232','483','hhhj','1','1','','3','1251200944');
INSERT INTO uchome_friend VALUES ('458','471','jaene','1','1','','2','1251201987');
INSERT INTO uchome_friend VALUES ('458','473','yusiking','1','1','','2','1251202395');
INSERT INTO uchome_friend VALUES ('458','484','capslock','0','1','','0','1251201341');
INSERT INTO uchome_friend VALUES ('458','449','demonb','0','1','','0','1251201356');
INSERT INTO uchome_friend VALUES ('458','411','xuqinghong74','1','1','','0','1251244626');
INSERT INTO uchome_friend VALUES ('471','458','bluesea','1','7','','1','1251201987');
INSERT INTO uchome_friend VALUES ('371','471','jaene','1','0','','14','1251202075');
INSERT INTO uchome_friend VALUES ('473','458','bluesea','1','0','','6','1251202395');
INSERT INTO uchome_friend VALUES ('470','371','zlfd','1','1','','2','1251245701');
INSERT INTO uchome_friend VALUES ('470','449','demonb','1','1','','0','1251249426');
INSERT INTO uchome_friend VALUES ('292','473','yusiking','0','6','','1','1251205441');
INSERT INTO uchome_friend VALUES ('292','470','jtwyslq','0','6','','0','1251205652');
INSERT INTO uchome_friend VALUES ('292','471','jaene','0','5','','1','1251205663');
INSERT INTO uchome_friend VALUES ('292','458','bluesea','1','6','','0','1251218681');
INSERT INTO uchome_friend VALUES ('292','161','weizhang','0','0','','0','1251205726');
INSERT INTO uchome_friend VALUES ('292','17','yaya','0','6','','0','1251205771');
INSERT INTO uchome_friend VALUES ('292','322','jeffhdi','0','5','','0','1251205791');
INSERT INTO uchome_friend VALUES ('135','363','yyifan','1','1','','1','1251206024');
INSERT INTO uchome_friend VALUES ('135','439','xiang','1','1','','1','1251206130');
INSERT INTO uchome_friend VALUES ('135','447','olfarmer','1','1','','1','1251206187');
INSERT INTO uchome_friend VALUES ('135','455','longgui','1','1','','2','1251206213');
INSERT INTO uchome_friend VALUES ('135','456','woshisheidegege','1','1','','1','1251206298');
INSERT INTO uchome_friend VALUES ('135','459','xujianzhou','1','1','','1','1251206324');
INSERT INTO uchome_friend VALUES ('135','470','jtwyslq','1','1','','1','1251206363');
INSERT INTO uchome_friend VALUES ('135','471','jaene','1','1','','1','1251206419');
INSERT INTO uchome_friend VALUES ('135','474','yanlei','1','1','','1','1251206462');
INSERT INTO uchome_friend VALUES ('135','481','aaa','1','1','','1','1251206669');
INSERT INTO uchome_friend VALUES ('135','478','zxxboy','1','1','','1','1251206720');
INSERT INTO uchome_friend VALUES ('430','256','darkeyes','0','0','','0','1251207300');
INSERT INTO uchome_friend VALUES ('430','462','JONE','1','0','','0','1251219248');
INSERT INTO uchome_friend VALUES ('232','471','jaene','0','1','','2','1251207353');
INSERT INTO uchome_friend VALUES ('232','492','yangjiajiang','0','1','','1','1251207371');
INSERT INTO uchome_friend VALUES ('274','571','mcb','1','0','','0','1251388999');
INSERT INTO uchome_friend VALUES ('493','9','happy','0','1','','0','1251207810');
INSERT INTO uchome_friend VALUES ('493','46','ma876401970','0','0','','0','1251207815');
INSERT INTO uchome_friend VALUES ('493','54','zhangyan','0','0','','0','1251207841');
INSERT INTO uchome_friend VALUES ('385','135','iamwayney','1','0','','3','1251217181');
INSERT INTO uchome_friend VALUES ('571','9','happy','1','0','','1','1251388999');
INSERT INTO uchome_friend VALUES ('385','232','skyzhaojian','1','0','','4','1251210388');
INSERT INTO uchome_friend VALUES ('385','292','XHL','0','0','','0','1251208815');
INSERT INTO uchome_friend VALUES ('385','466','Edward','1','0','','0','1251262971');
INSERT INTO uchome_friend VALUES ('385','1','admin','1','0','','1','1251212040');
INSERT INTO uchome_friend VALUES ('385','406','crazytonight','0','0','','0','1251208930');
INSERT INTO uchome_friend VALUES ('385','476','sunjunlin','0','0','','0','1251209104');
INSERT INTO uchome_friend VALUES ('385','458','bluesea','1','0','','0','1251218661');
INSERT INTO uchome_friend VALUES ('385','470','jtwyslq','0','0','','0','1251209136');
INSERT INTO uchome_friend VALUES ('385','483','hhhj','0','0','','0','1251209203');
INSERT INTO uchome_friend VALUES ('232','385','caojun','1','1','','5','1251210388');
INSERT INTO uchome_friend VALUES ('1','385','caojun','1','0','','1','1251212040');
INSERT INTO uchome_friend VALUES ('158','471','jaene','0','1','','1','1251215225');
INSERT INTO uchome_friend VALUES ('158','459','xujianzhou','0','1','','1','1251215292');
INSERT INTO uchome_friend VALUES ('495','493','lisen','0','0','','0','1251215809');
INSERT INTO uchome_friend VALUES ('232','473','yusiking','0','1','','0','1251216998');
INSERT INTO uchome_friend VALUES ('135','385','caojun','1','1','','1','1251217181');
INSERT INTO uchome_friend VALUES ('458','385','caojun','1','1','','1','1251218661');
INSERT INTO uchome_friend VALUES ('458','292','XHL','1','1','','1','1251218681');
INSERT INTO uchome_friend VALUES ('232','433','justin','0','1','','1','1251219152');
INSERT INTO uchome_friend VALUES ('462','430','sanshao','1','0','','3','1251219248');
INSERT INTO uchome_friend VALUES ('462','480','qqyyzz','1','0','','3','1251219252');
INSERT INTO uchome_friend VALUES ('462','478','zxxboy','1','0','','2','1251219280');
INSERT INTO uchome_friend VALUES ('243','158','shendaaaaa','1','1','','3','1251275782');
INSERT INTO uchome_friend VALUES ('462','373','xtxbamboo','0','0','','1','1251219668');
INSERT INTO uchome_friend VALUES ('462','386','mytwd','1','0','','11','1251220817');
INSERT INTO uchome_friend VALUES ('386','462','JONE','1','1','','9','1251220817');
INSERT INTO uchome_friend VALUES ('497','46','ma876401970','0','0','','0','1251227034');
INSERT INTO uchome_friend VALUES ('497','187','jack','1','0','','0','1251275754');
INSERT INTO uchome_friend VALUES ('497','58','huaynie','0','0','','0','1251227043');
INSERT INTO uchome_friend VALUES ('497','308','alinayun','0','0','','0','1251227051');
INSERT INTO uchome_friend VALUES ('411','458','bluesea','1','1','','1','1251244626');
INSERT INTO uchome_friend VALUES ('411','492','yangjiajiang','0','1','','0','1251244669');
INSERT INTO uchome_friend VALUES ('371','470','jtwyslq','1','0','','3','1251245701');
INSERT INTO uchome_friend VALUES ('449','470','jtwyslq','1','0','','1','1251249426');
INSERT INTO uchome_friend VALUES ('449','473','yusiking','1','0','','2','1251249431');
INSERT INTO uchome_friend VALUES ('482','363','yyifan','1','0','','5','1251250671');
INSERT INTO uchome_friend VALUES ('363','482','wxwttf','1','0','','0','1251250671');
INSERT INTO uchome_friend VALUES ('482','243','zhengwenxiang','1','1','','1','1251275789');
INSERT INTO uchome_friend VALUES ('482','499','afei','1','0','','0','1251359844');
INSERT INTO uchome_friend VALUES ('482','417','zhengyue','0','0','','0','1251250794');
INSERT INTO uchome_friend VALUES ('482','371','zlfd','1','0','','3','1251251356');
INSERT INTO uchome_friend VALUES ('500','498','binxr','0','0','','1','1251251098');
INSERT INTO uchome_friend VALUES ('482','470','jtwyslq','0','0','','0','1251251265');
INSERT INTO uchome_friend VALUES ('371','482','wxwttf','1','0','','1','1251251356');
INSERT INTO uchome_friend VALUES ('503','498','binxr','0','1','','2','1251252113');
INSERT INTO uchome_friend VALUES ('511','503','jht','1','0','','5','1251252729');
INSERT INTO uchome_friend VALUES ('506','500','arstyulmp','0','0','','0','1251252346');
INSERT INTO uchome_friend VALUES ('506','371','zlfd','1','0','','4','1251254094');
INSERT INTO uchome_friend VALUES ('503','508','caonima','0','0','','0','1251252424');
INSERT INTO uchome_friend VALUES ('503','505','xpr','0','0','','0','1251252436');
INSERT INTO uchome_friend VALUES ('503','511','wuming','1','0','','12','1251252729');
INSERT INTO uchome_friend VALUES ('504','473','yusiking','0','1','','1','1251252496');
INSERT INTO uchome_friend VALUES ('506','411','xuqinghong74','1','0','','1','1251270346');
INSERT INTO uchome_friend VALUES ('511','504','feiyh','1','0','','8','1251252987');
INSERT INTO uchome_friend VALUES ('503','512','fyjktjz','1','0','','21','1251252926');
INSERT INTO uchome_friend VALUES ('511','505','xpr','0','0','','0','1251252829');
INSERT INTO uchome_friend VALUES ('512','482','wxwttf','0','1','','1','1251252847');
INSERT INTO uchome_friend VALUES ('511','58','huaynie','0','0','','0','1251252858');
INSERT INTO uchome_friend VALUES ('511','411','xuqinghong74','1','1','','0','1251270329');
INSERT INTO uchome_friend VALUES ('503','513','TOMO','0','0','','2','1251252901');
INSERT INTO uchome_friend VALUES ('507','502','jiachunlin','0','0','','0','1251252915');
INSERT INTO uchome_friend VALUES ('507','513','TOMO','0','0','','0','1251252923');
INSERT INTO uchome_friend VALUES ('512','503','jht','1','1','','5','1251252926');
INSERT INTO uchome_friend VALUES ('507','500','arstyulmp','0','0','','0','1251252932');
INSERT INTO uchome_friend VALUES ('511','46','ma876401970','0','1','','0','1251252934');
INSERT INTO uchome_friend VALUES ('507','58','huaynie','0','0','','0','1251252963');
INSERT INTO uchome_friend VALUES ('504','511','wuming','1','1','','6','1251252987');
INSERT INTO uchome_friend VALUES ('506','511','wuming','1','0','','14','1251253164');
INSERT INTO uchome_friend VALUES ('511','514','chengguohui','0','1','','0','1251253607');
INSERT INTO uchome_friend VALUES ('511','506','wangzhenqiu','1','1','','3','1251253164');
INSERT INTO uchome_friend VALUES ('507','433','justin','0','1','','0','1251253198');
INSERT INTO uchome_friend VALUES ('506','512','fyjktjz','0','0','','2','1251253296');
INSERT INTO uchome_friend VALUES ('503','433','justin','0','0','','1','1251253308');
INSERT INTO uchome_friend VALUES ('503','58','huaynie','0','0','','0','1251253337');
INSERT INTO uchome_friend VALUES ('503','46','ma876401970','0','0','','0','1251253341');
INSERT INTO uchome_friend VALUES ('511','473','yusiking','0','1','','0','1251253342');
INSERT INTO uchome_friend VALUES ('511','9','happy','0','1','','0','1251253407');
INSERT INTO uchome_friend VALUES ('503','504','feiyh','1','0','','2','1251253896');
INSERT INTO uchome_friend VALUES ('511','502','jiachunlin','0','1','','0','1251253459');
INSERT INTO uchome_friend VALUES ('511','512','fyjktjz','1','1','','0','1251255045');
INSERT INTO uchome_friend VALUES ('511','482','wxwttf','0','1','','0','1251253649');
INSERT INTO uchome_friend VALUES ('511','508','caonima','0','1','','0','1251253680');
INSERT INTO uchome_friend VALUES ('504','503','jht','1','1','','2','1251253896');
INSERT INTO uchome_friend VALUES ('503','448','lovesheng','0','0','','0','1251253781');
INSERT INTO uchome_friend VALUES ('503','459','xujianzhou','0','0','','0','1251253807');
INSERT INTO uchome_friend VALUES ('96','478','zxxboy','1','1','','2','1251254005');
INSERT INTO uchome_friend VALUES ('371','506','wangzhenqiu','1','0','','1','1251254094');
INSERT INTO uchome_friend VALUES ('515','292','XHL','0','2','','0','1251254216');
INSERT INTO uchome_friend VALUES ('515','514','chengguohui','0','2','','4','1251254229');
INSERT INTO uchome_friend VALUES ('506','503','jht','0','0','','2','1251254678');
INSERT INTO uchome_friend VALUES ('506','515','RSDYC','1','0','','5','1251255153');
INSERT INTO uchome_friend VALUES ('501','500','arstyulmp','0','0','','0','1251254722');
INSERT INTO uchome_friend VALUES ('506','509','taylor','0','0','','0','1251254733');
INSERT INTO uchome_friend VALUES ('506','513','TOMO','0','0','','1','1251254794');
INSERT INTO uchome_friend VALUES ('501','512','fyjktjz','0','0','','0','1251254826');
INSERT INTO uchome_friend VALUES ('512','511','wuming','1','1','','2','1251255045');
INSERT INTO uchome_friend VALUES ('515','506','wangzhenqiu','1','2','','2','1251255153');
INSERT INTO uchome_friend VALUES ('501','470','jtwyslq','0','0','','0','1251255349');
INSERT INTO uchome_friend VALUES ('501','473','yusiking','0','0','','0','1251255395');
INSERT INTO uchome_friend VALUES ('517','513','TOMO','0','0','','0','1251255645');
INSERT INTO uchome_friend VALUES ('517','512','fyjktjz','0','0','','2','1251255707');
INSERT INTO uchome_friend VALUES ('517','449','demonb','0','0','','7','1251255782');
INSERT INTO uchome_friend VALUES ('517','473','yusiking','0','0','','4','1251255816');
INSERT INTO uchome_friend VALUES ('517','430','sanshao','1','1','','0','1251292967');
INSERT INTO uchome_friend VALUES ('517','158','shendaaaaa','0','1','','0','1251256372');
INSERT INTO uchome_friend VALUES ('517','503','jht','0','1','','4','1251256490');
INSERT INTO uchome_friend VALUES ('517','458','bluesea','1','0','','20','1251256908');
INSERT INTO uchome_friend VALUES ('458','517','rabishi123','1','0','','0','1251256908');
INSERT INTO uchome_friend VALUES ('517','502','jiachunlin','0','1','','0','1251257064');
INSERT INTO uchome_friend VALUES ('517','460','xihaibbs','0','1','','3','1251257173');
INSERT INTO uchome_friend VALUES ('517','471','jaene','0','1','','1','1251257221');
INSERT INTO uchome_friend VALUES ('517','58','huaynie','0','1','','1','1251257291');
INSERT INTO uchome_friend VALUES ('517','255','abcd','1','1','','0','1251360557');
INSERT INTO uchome_friend VALUES ('517','46','ma876401970','0','1','','0','1251257351');
INSERT INTO uchome_friend VALUES ('517','518','zoe','0','1','','1','1251257641');
INSERT INTO uchome_friend VALUES ('517','505','xpr','0','1','','0','1251257698');
INSERT INTO uchome_friend VALUES ('506','517','rabishi123','1','0','','5','1251259754');
INSERT INTO uchome_friend VALUES ('491','515','RSDYC','0','0','','0','1251258252');
INSERT INTO uchome_friend VALUES ('491','518','zoe','0','0','','0','1251258276');
INSERT INTO uchome_friend VALUES ('491','507','English','0','0','','0','1251258367');
INSERT INTO uchome_friend VALUES ('491','232','skyzhaojian','1','0','','28','1251259838');
INSERT INTO uchome_friend VALUES ('274','411','xuqinghong74','1','1','','3','1251259463');
INSERT INTO uchome_friend VALUES ('517','506','wangzhenqiu','1','1','','4','1251259754');
INSERT INTO uchome_friend VALUES ('187','497','ywj','1','0','','1','1251275754');
INSERT INTO uchome_friend VALUES ('232','491','ffeng','1','1','','6','1251259838');
INSERT INTO uchome_friend VALUES ('232','518','zoe','0','1','','1','1251259903');
INSERT INTO uchome_friend VALUES ('517','431','banjianbi','1','1','','8','1251262948');
INSERT INTO uchome_friend VALUES ('232','503','jht','0','1','','2','1251259929');
INSERT INTO uchome_friend VALUES ('517','232','skyzhaojian','1','1','','26','1251259971');
INSERT INTO uchome_friend VALUES ('517','54','zhangyan','0','1','','0','1251259960');
INSERT INTO uchome_friend VALUES ('232','517','rabishi123','1','1','','9','1251259971');
INSERT INTO uchome_friend VALUES ('517','308','alinayun','0','1','','0','1251259977');
INSERT INTO uchome_friend VALUES ('232','498','binxr','0','1','','1','1251259994');
INSERT INTO uchome_friend VALUES ('232','499','afei','1','1','','1','1251359836');
INSERT INTO uchome_friend VALUES ('506','491','ffeng','1','0','','0','1251282034');
INSERT INTO uchome_friend VALUES ('517','411','xuqinghong74','1','1','','3','1251270306');
INSERT INTO uchome_friend VALUES ('512','232','skyzhaojian','1','1','','0','1251262664');
INSERT INTO uchome_friend VALUES ('517','520','yzzk','0','1','','2','1251260966');
INSERT INTO uchome_friend VALUES ('517','205','geondri','0','1','','1','1251261143');
INSERT INTO uchome_friend VALUES ('517','446','expert','0','1','','3','1251261175');
INSERT INTO uchome_friend VALUES ('517','271','gaonifu','0','1','','2','1251261216');
INSERT INTO uchome_friend VALUES ('521','135','iamwayney','1','0','','0','1251287269');
INSERT INTO uchome_friend VALUES ('512','449','demonb','0','0','','0','1251262278');
INSERT INTO uchome_friend VALUES ('232','512','fyjktjz','1','1','','5','1251262664');
INSERT INTO uchome_friend VALUES ('232','520','yzzk','0','1','','0','1251262736');
INSERT INTO uchome_friend VALUES ('431','517','rabishi123','1','1','','3','1251262948');
INSERT INTO uchome_friend VALUES ('431','478','zxxboy','1','1','','1','1251262957');
INSERT INTO uchome_friend VALUES ('431','476','sunjunlin','1','1','','1','1251262964');
INSERT INTO uchome_friend VALUES ('431','467','yanyu','1','1','','2','1251262969');
INSERT INTO uchome_friend VALUES ('466','385','caojun','1','1','','3','1251262971');
INSERT INTO uchome_friend VALUES ('431','462','JONE','1','1','','2','1251262973');
INSERT INTO uchome_friend VALUES ('466','483','hhhj','1','1','','2','1251263054');
INSERT INTO uchome_friend VALUES ('431','513','TOMO','0','1','','1','1251263178');
INSERT INTO uchome_friend VALUES ('431','498','binxr','0','1','','1','1251263235');
INSERT INTO uchome_friend VALUES ('431','521','51party','0','0','','0','1251263288');
INSERT INTO uchome_friend VALUES ('431','512','fyjktjz','0','1','','0','1251263303');
INSERT INTO uchome_friend VALUES ('517','521','51party','0','1','','0','1251265398');
INSERT INTO uchome_friend VALUES ('523','458','bluesea','1','0','','1','1251267313');
INSERT INTO uchome_friend VALUES ('458','523','lqz','1','0','','0','1251267313');
INSERT INTO uchome_friend VALUES ('523','339','yangsong1','0','0','','0','1251267405');
INSERT INTO uchome_friend VALUES ('524','46','ma876401970','0','1','','0','1251267763');
INSERT INTO uchome_friend VALUES ('524','514','chengguohui','0','1','','0','1251267810');
INSERT INTO uchome_friend VALUES ('73','411','xuqinghong74','1','1','','3','1251268431');
INSERT INTO uchome_friend VALUES ('73','292','XHL','1','1','','1','1251268440');
INSERT INTO uchome_friend VALUES ('73','358','hele442517','0','1','','1','1251268565');
INSERT INTO uchome_friend VALUES ('411','517','rabishi123','1','1','','2','1251270306');
INSERT INTO uchome_friend VALUES ('411','511','wuming','1','1','','1','1251270329');
INSERT INTO uchome_friend VALUES ('411','506','wangzhenqiu','1','1','','2','1251270346');
INSERT INTO uchome_friend VALUES ('527','517','rabishi123','1','0','','4','1251273145');
INSERT INTO uchome_friend VALUES ('527','511','wuming','0','0','','0','1251271666');
INSERT INTO uchome_friend VALUES ('528','521','51party','0','1','','0','1251271673');
INSERT INTO uchome_friend VALUES ('527','503','jht','0','0','','0','1251271706');
INSERT INTO uchome_friend VALUES ('527','232','skyzhaojian','1','0','','1','1251277882');
INSERT INTO uchome_friend VALUES ('527','520','yzzk','0','0','','1','1251271741');
INSERT INTO uchome_friend VALUES ('527','431','banjianbi','0','0','','0','1251272055');
INSERT INTO uchome_friend VALUES ('527','528','wuchao','0','0','','0','1251272410');
INSERT INTO uchome_friend VALUES ('517','470','jtwyslq','0','0','','0','1251273204');
INSERT INTO uchome_friend VALUES ('517','490','szyrdkj','0','0','','1','1251273978');
INSERT INTO uchome_friend VALUES ('517','492','yangjiajiang','0','0','','0','1251274007');
INSERT INTO uchome_friend VALUES ('517','461','flykeer','0','1','','1','1251274273');
INSERT INTO uchome_friend VALUES ('243','482','wxwttf','1','1','','1','1251275789');
INSERT INTO uchome_friend VALUES ('243','473','yusiking','0','1','','1','1251275848');
INSERT INTO uchome_friend VALUES ('243','484','capslock','0','1','','1','1251276001');
INSERT INTO uchome_friend VALUES ('243','498','binxr','0','5','','2','1251276069');
INSERT INTO uchome_friend VALUES ('243','513','TOMO','0','1','','0','1251276102');
INSERT INTO uchome_friend VALUES ('504','526','wzwzwz','0','1','','1','1251277149');
INSERT INTO uchome_friend VALUES ('232','526','wzwzwz','0','1','','1','1251278013');
INSERT INTO uchome_friend VALUES ('355','73','yanluo','0','0','','1','1251277438');
INSERT INTO uchome_friend VALUES ('355','511','wuming','0','0','','2','1251277488');
INSERT INTO uchome_friend VALUES ('355','525','zlgg','0','0','','2','1251277540');
INSERT INTO uchome_friend VALUES ('355','518','zoe','0','0','','4','1251277571');
INSERT INTO uchome_friend VALUES ('355','431','banjianbi','0','0','','1','1251277601');
INSERT INTO uchome_friend VALUES ('355','512','fyjktjz','0','0','','1','1251277693');
INSERT INTO uchome_friend VALUES ('355','462','JONE','1','0','','5','1251282401');
INSERT INTO uchome_friend VALUES ('232','527','fesunn','1','1','','2','1251277882');
INSERT INTO uchome_friend VALUES ('232','531','zjjfb','0','1','','0','1251277991');
INSERT INTO uchome_friend VALUES ('232','509','taylor','0','1','','0','1251278189');
INSERT INTO uchome_friend VALUES ('355','517','rabishi123','0','0','','10','1251279743');
INSERT INTO uchome_friend VALUES ('355','368','外滩3号','0','0','','1','1251279876');
INSERT INTO uchome_friend VALUES ('355','531','zjjfb','0','0','','1','1251279935');
INSERT INTO uchome_friend VALUES ('355','524','pengxiaoyao','0','0','','1','1251279956');
INSERT INTO uchome_friend VALUES ('355','526','wzwzwz','0','0','','1','1251280002');
INSERT INTO uchome_friend VALUES ('355','504','feiyh','0','0','','1','1251280026');
INSERT INTO uchome_friend VALUES ('355','503','jht','0','0','','2','1251280049');
INSERT INTO uchome_friend VALUES ('491','1','admin','1','0','','13','1251306364');
INSERT INTO uchome_friend VALUES ('491','512','fyjktjz','0','0','','1','1251281665');
INSERT INTO uchome_friend VALUES ('535','46','ma876401970','0','0','','0','1251281700');
INSERT INTO uchome_friend VALUES ('491','517','rabishi123','0','0','','2','1251281993');
INSERT INTO uchome_friend VALUES ('491','506','wangzhenqiu','1','1','','3','1251282034');
INSERT INTO uchome_friend VALUES ('491','473','yusiking','1','1','','3','1251282056');
INSERT INTO uchome_friend VALUES ('462','355','czy','1','0','','2','1251282401');
INSERT INTO uchome_friend VALUES ('536','73','yanluo','0','1','','0','1251283014');
INSERT INTO uchome_friend VALUES ('537','9','changchneg','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('9','537','demonpig','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('135','521','51party','1','1','','1','1251287269');
INSERT INTO uchome_friend VALUES ('430','517','rabishi123','1','0','','2','1251292967');
INSERT INTO uchome_friend VALUES ('430','498','binxr','0','0','','2','1251293008');
INSERT INTO uchome_friend VALUES ('430','499','afei','1','0','','0','1251359829');
INSERT INTO uchome_friend VALUES ('430','530','tuiyue','0','0','','0','1251293215');
INSERT INTO uchome_friend VALUES ('430','532','sohoqq','0','0','','0','1251293225');
INSERT INTO uchome_friend VALUES ('386','527','fesunn','0','0','','1','1251296639');
INSERT INTO uchome_friend VALUES ('386','530','tuiyue','0','0','','0','1251296647');
INSERT INTO uchome_friend VALUES ('434','435','lyym','1','1','','4','1251299430');
INSERT INTO uchome_friend VALUES ('64','459','xujianzhou','1','1','','1','1251304432');
INSERT INTO uchome_friend VALUES ('64','326','jiangfang','1','1','','1','1251304469');
INSERT INTO uchome_friend VALUES ('1','491','ffeng','1','0','','2','1251306364');
INSERT INTO uchome_friend VALUES ('541','434','rrppnn','1','7','','2','1251328682');
INSERT INTO uchome_friend VALUES ('434','386','mytwd','1','0','','3','1251394038');
INSERT INTO uchome_friend VALUES ('542','458','bluesea','1','0','','1','1251313789');
INSERT INTO uchome_friend VALUES ('458','542','Breeze','1','0','','0','1251313789');
INSERT INTO uchome_friend VALUES ('543','27','tianzi','0','0','','0','1251323989');
INSERT INTO uchome_friend VALUES ('543','54','zhangyan','0','0','','0','1251324008');
INSERT INTO uchome_friend VALUES ('187','547','xinxing-jason','1','0','','4','1251341170');
INSERT INTO uchome_friend VALUES ('543','434','rrppnn','1','0','','0','1251328687');
INSERT INTO uchome_friend VALUES ('546','462','JONE','1','0','','2','1251436886');
INSERT INTO uchome_friend VALUES ('546','544','FAFDSFS','0','0','','7','1251325551');
INSERT INTO uchome_friend VALUES ('546','506','wangzhenqiu','0','0','','0','1251327403');
INSERT INTO uchome_friend VALUES ('546','518','zoe','0','0','','0','1251327424');
INSERT INTO uchome_friend VALUES ('434','541','fangyihu','1','1','','2','1251328682');
INSERT INTO uchome_friend VALUES ('434','543','jkgtuj','1','1','','2','1251328687');
INSERT INTO uchome_friend VALUES ('434','449','demonb','0','1','','1','1251329094');
INSERT INTO uchome_friend VALUES ('434','526','wzwzwz','0','0','','0','1251329114');
INSERT INTO uchome_friend VALUES ('434','458','bluesea','1','0','','4','1251329311');
INSERT INTO uchome_friend VALUES ('458','434','rrppnn','1','0','','0','1251329311');
INSERT INTO uchome_friend VALUES ('547','187','jack','1','1','','2','1251341170');
INSERT INTO uchome_friend VALUES ('549','546','jame','0','1','','1','1251343630');
INSERT INTO uchome_friend VALUES ('546','430','sanshao','1','0','','2','1251388580');
INSERT INTO uchome_friend VALUES ('480','530','tuiyue','0','1','','0','1251345790');
INSERT INTO uchome_friend VALUES ('480','547','xinxing-jason','0','1','','0','1251345848');
INSERT INTO uchome_friend VALUES ('491','541','fangyihu','0','0','','2','1251348293');
INSERT INTO uchome_friend VALUES ('243','547','xinxing-jason','0','1','','1','1251348947');
INSERT INTO uchome_friend VALUES ('232','547','xinxing-jason','0','1','','0','1251349037');
INSERT INTO uchome_friend VALUES ('232','548','Dxxoo','0','1','','1','1251349047');
INSERT INTO uchome_friend VALUES ('243','511','wuming','0','1','','1','1251349091');
INSERT INTO uchome_friend VALUES ('243','517','rabishi123','0','1','','1','1251349122');
INSERT INTO uchome_friend VALUES ('243','549','tftest','0','1','','1','1251349143');
INSERT INTO uchome_friend VALUES ('243','326','jiangfang','0','1','','1','1251349181');
INSERT INTO uchome_friend VALUES ('550','232','skyzhaojian','1','6','','0','1251350163');
INSERT INTO uchome_friend VALUES ('232','550','0451fl','1','1','','1','1251350163');
INSERT INTO uchome_friend VALUES ('301','292','XHL','1','1','','1','1251352690');
INSERT INTO uchome_friend VALUES ('301','96','abcdefg','1','1','','1','1251352697');
INSERT INTO uchome_friend VALUES ('301','158','shendaaaaa','1','1','','2','1251352705');
INSERT INTO uchome_friend VALUES ('551','491','ffeng','1','0','','8','1251353759');
INSERT INTO uchome_friend VALUES ('551','301','bkcui','0','0','','4','1251353435');
INSERT INTO uchome_friend VALUES ('491','551','weiki','1','6','','15','1251353759');
INSERT INTO uchome_friend VALUES ('491','301','bkcui','0','0','','7','1251353910');
INSERT INTO uchome_friend VALUES ('551','307','Joyce','0','0','','1','1251354917');
INSERT INTO uchome_friend VALUES ('355','549','tftest','0','0','','11','1251356776');
INSERT INTO uchome_friend VALUES ('553','7','liyu','0','0','','1','1251358045');
INSERT INTO uchome_friend VALUES ('553','1','admin','1','0','','1','1251358880');
INSERT INTO uchome_friend VALUES ('553','197','zyzy','0','0','','0','1251358111');
INSERT INTO uchome_friend VALUES ('1','553','liguojievip','1','0','','4','1251358880');
INSERT INTO uchome_friend VALUES ('554','553','liguojievip','1','0','','2','1251359997');
INSERT INTO uchome_friend VALUES ('555','537','demonpig','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('537','555','bingbing','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('555','274','GEXUAN','1','0','','1','1251359549');
INSERT INTO uchome_friend VALUES ('274','555','bingbing','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('555','9','happy','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('9','555','bingbing','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('555','15','lingling','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('15','555','bingbing','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('555','125','mylove','1','0','','2','1251359549');
INSERT INTO uchome_friend VALUES ('125','555','bingbing','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('555','17','yaya','1','0','','1','1251359549');
INSERT INTO uchome_friend VALUES ('17','555','bingbing','1','0','','0','1251359549');
INSERT INTO uchome_friend VALUES ('499','430','sanshao','1','0','','6','1251359829');
INSERT INTO uchome_friend VALUES ('499','232','skyzhaojian','1','0','','3','1251359836');
INSERT INTO uchome_friend VALUES ('499','482','wxwttf','1','0','','4','1251359844');
INSERT INTO uchome_friend VALUES ('553','554','zhadz','1','1','','1','1251359997');
INSERT INTO uchome_friend VALUES ('232','551','weiki','1','1','','3','1251368387');
INSERT INTO uchome_friend VALUES ('255','517','rabishi123','1','1','','2','1251360557');
INSERT INTO uchome_friend VALUES ('255','477','hdyzlll','1','1','','4','1251360593');
INSERT INTO uchome_friend VALUES ('553','232','skyzhaojian','1','0','','1','1251380409');
INSERT INTO uchome_friend VALUES ('355','552','jinzhu3535','0','0','','1','1251363220');
INSERT INTO uchome_friend VALUES ('355','301','bkcui','0','0','','0','1251363317');
INSERT INTO uchome_friend VALUES ('556','537','demonpig','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('537','556','wwwqq001','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('556','274','GEXUAN','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('274','556','wwwqq001','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('556','9','happy','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('9','556','wwwqq001','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('556','15','lingling','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('15','556','wwwqq001','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('556','125','mylove','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('125','556','wwwqq001','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('556','17','yaya','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('17','556','wwwqq001','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('556','363','yyifan','1','0','','1','1251364631');
INSERT INTO uchome_friend VALUES ('363','556','wwwqq001','1','0','','0','1251364631');
INSERT INTO uchome_friend VALUES ('556','546','jame','0','1','','0','1251364703');
INSERT INTO uchome_friend VALUES ('556','355','czy','1','1','','0','1251434925');
INSERT INTO uchome_friend VALUES ('556','5','yangxin','0','0','','0','1251364722');
INSERT INTO uchome_friend VALUES ('556','11','jingshui','0','0','','0','1251364726');
INSERT INTO uchome_friend VALUES ('556','54','zhangyan','0','0','','0','1251364732');
INSERT INTO uchome_friend VALUES ('557','537','demonpig','1','0','','1','1251365649');
INSERT INTO uchome_friend VALUES ('537','557','sejianjian','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('557','274','GEXUAN','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('274','557','sejianjian','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('557','9','happy','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('9','557','sejianjian','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('557','15','lingling','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('15','557','sejianjian','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('557','125','mylove','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('125','557','sejianjian','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('557','17','yaya','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('17','557','sejianjian','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('557','540','opindex','1','0','','1','1251365649');
INSERT INTO uchome_friend VALUES ('540','557','sejianjian','1','0','','0','1251365649');
INSERT INTO uchome_friend VALUES ('558','537','demonpig','1','0','','1','1251365821');
INSERT INTO uchome_friend VALUES ('537','558','xiaomomocom','1','0','','0','1251365821');
INSERT INTO uchome_friend VALUES ('558','274','GEXUAN','1','0','','3','1251365821');
INSERT INTO uchome_friend VALUES ('274','558','xiaomomocom','1','0','','0','1251365821');
INSERT INTO uchome_friend VALUES ('558','9','happy','1','0','','5','1251365821');
INSERT INTO uchome_friend VALUES ('9','558','xiaomomocom','1','0','','0','1251365821');
INSERT INTO uchome_friend VALUES ('558','15','lingling','1','0','','2','1251365821');
INSERT INTO uchome_friend VALUES ('15','558','xiaomomocom','1','0','','0','1251365821');
INSERT INTO uchome_friend VALUES ('558','125','mylove','1','0','','6','1251365821');
INSERT INTO uchome_friend VALUES ('125','558','xiaomomocom','1','0','','0','1251365821');
INSERT INTO uchome_friend VALUES ('558','17','yaya','1','0','','1','1251365821');
INSERT INTO uchome_friend VALUES ('17','558','xiaomomocom','1','0','','0','1251365821');
INSERT INTO uchome_friend VALUES ('558','540','opindex','0','0','','2','1251366180');
INSERT INTO uchome_friend VALUES ('559','537','demonpig','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('537','559','lanxin','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('559','274','GEXUAN','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('274','559','lanxin','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('559','9','happy','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('9','559','lanxin','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('559','15','lingling','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('15','559','lanxin','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('559','125','mylove','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('125','559','lanxin','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('559','17','yaya','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('17','559','lanxin','1','0','','0','1251366186');
INSERT INTO uchome_friend VALUES ('558','559','lanxin','0','0','','1','1251366208');
INSERT INTO uchome_friend VALUES ('558','557','sejianjian','0','0','','2','1251366224');
INSERT INTO uchome_friend VALUES ('558','255','abcd','1','0','','4','1251369814');
INSERT INTO uchome_friend VALUES ('558','556','wwwqq001','0','0','','0','1251366248');
INSERT INTO uchome_friend VALUES ('558','1','admin','1','0','','4','1251370270');
INSERT INTO uchome_friend VALUES ('558','499','afei','1','0','','1','1251371834');
INSERT INTO uchome_friend VALUES ('558','555','bingbing','0','0','','3','1251366300');
INSERT INTO uchome_friend VALUES ('558','550','0451fl','0','0','','0','1251366320');
INSERT INTO uchome_friend VALUES ('570','537','demonpig','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('558','544','FAFDSFS','0','0','','0','1251366360');
INSERT INTO uchome_friend VALUES ('558','542','Breeze','0','0','','0','1251366373');
INSERT INTO uchome_friend VALUES ('558','539','ayu','0','0','','0','1251366382');
INSERT INTO uchome_friend VALUES ('558','64','liusuo','0','0','','0','1251366423');
INSERT INTO uchome_friend VALUES ('558','434','rrppnn','0','0','','0','1251366432');
INSERT INTO uchome_friend VALUES ('558','529','xxx','0','0','','0','1251366462');
INSERT INTO uchome_friend VALUES ('558','533','wangtao','0','0','','0','1251366484');
INSERT INTO uchome_friend VALUES ('558','477','hdyzlll','0','0','','0','1251366494');
INSERT INTO uchome_friend VALUES ('232','553','liguojievip','1','1','','4','1251380409');
INSERT INTO uchome_friend VALUES ('558','545','shazhongtu','0','0','','0','1251366518');
INSERT INTO uchome_friend VALUES ('558','166','youlan','0','0','','0','1251366627');
INSERT INTO uchome_friend VALUES ('558','480','qqyyzz','0','0','','0','1251366640');
INSERT INTO uchome_friend VALUES ('558','552','jinzhu3535','0','0','','0','1251366652');
INSERT INTO uchome_friend VALUES ('558','458','bluesea','1','0','','0','1251389480');
INSERT INTO uchome_friend VALUES ('558','547','xinxing-jason','0','0','','0','1251366687');
INSERT INTO uchome_friend VALUES ('558','548','Dxxoo','0','0','','0','1251366700');
INSERT INTO uchome_friend VALUES ('558','541','fangyihu','0','0','','0','1251366720');
INSERT INTO uchome_friend VALUES ('558','551','weiki','1','0','','9','1251368366');
INSERT INTO uchome_friend VALUES ('558','301','bkcui','0','0','','0','1251366741');
INSERT INTO uchome_friend VALUES ('558','553','liguojievip','0','0','','0','1251366749');
INSERT INTO uchome_friend VALUES ('558','386','mytwd','1','0','','0','1251394044');
INSERT INTO uchome_friend VALUES ('560','537','demonpig','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('537','560','kinggg','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('560','274','GEXUAN','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('274','560','kinggg','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('560','9','happy','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('9','560','kinggg','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('560','15','lingling','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('15','560','kinggg','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('560','125','mylove','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('125','560','kinggg','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('560','17','yaya','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('17','560','kinggg','1','0','','0','1251367015');
INSERT INTO uchome_friend VALUES ('560','363','yyifan','1','0','','3','1251367015');
INSERT INTO uchome_friend VALUES ('363','560','kinggg','1','0','','1','1251367015');
INSERT INTO uchome_friend VALUES ('558','560','kinggg','1','0','','5','1251367406');
INSERT INTO uchome_friend VALUES ('9','571','mcb','1','0','','0','1251388999');
INSERT INTO uchome_friend VALUES ('561','537','demonpig','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('537','561','qqqqqqq','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('561','274','GEXUAN','1','0','','1','1251367197');
INSERT INTO uchome_friend VALUES ('274','561','qqqqqqq','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('561','9','happy','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('9','561','qqqqqqq','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('561','15','lingling','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('15','561','qqqqqqq','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('561','125','mylove','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('125','561','qqqqqqq','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('561','17','yaya','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('17','561','qqqqqqq','1','0','','0','1251367197');
INSERT INTO uchome_friend VALUES ('562','537','demonpig','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('537','562','tristan','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('562','274','GEXUAN','1','0','','2','1251367319');
INSERT INTO uchome_friend VALUES ('274','562','tristan','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('562','9','happy','1','0','','2','1251367319');
INSERT INTO uchome_friend VALUES ('9','562','tristan','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('562','15','lingling','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('15','562','tristan','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('562','125','mylove','1','0','','1','1251367319');
INSERT INTO uchome_friend VALUES ('125','562','tristan','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('562','17','yaya','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('17','562','tristan','1','0','','0','1251367319');
INSERT INTO uchome_friend VALUES ('560','558','xiaomomocom','1','1','','3','1251367406');
INSERT INTO uchome_friend VALUES ('563','537','demonpig','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('537','563','asdadfsdfs','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('563','274','GEXUAN','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('274','563','asdadfsdfs','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('563','9','happy','1','0','','1','1251367562');
INSERT INTO uchome_friend VALUES ('9','563','asdadfsdfs','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('563','15','lingling','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('15','563','asdadfsdfs','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('563','125','mylove','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('125','563','asdadfsdfs','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('563','17','yaya','1','0','','1','1251367562');
INSERT INTO uchome_friend VALUES ('17','563','asdadfsdfs','1','0','','0','1251367562');
INSERT INTO uchome_friend VALUES ('562','255','abcd','1','1','','0','1251369742');
INSERT INTO uchome_friend VALUES ('562','550','0451fl','0','1','','0','1251367693');
INSERT INTO uchome_friend VALUES ('562','355','czy','1','1','','0','1251434936');
INSERT INTO uchome_friend VALUES ('562','449','demonb','0','1','','0','1251367815');
INSERT INTO uchome_friend VALUES ('562','430','sanshao','1','1','','0','1251388572');
INSERT INTO uchome_friend VALUES ('491','482','wxwttf','0','0','','2','1251367993');
INSERT INTO uchome_friend VALUES ('564','537','demonpig','1','0','','1','1251368125');
INSERT INTO uchome_friend VALUES ('537','564','fhdsf','1','0','','0','1251368125');
INSERT INTO uchome_friend VALUES ('564','274','GEXUAN','1','0','','1','1251368125');
INSERT INTO uchome_friend VALUES ('274','564','fhdsf','1','0','','0','1251368125');
INSERT INTO uchome_friend VALUES ('564','9','happy','1','0','','1','1251368125');
INSERT INTO uchome_friend VALUES ('9','564','fhdsf','1','0','','0','1251368125');
INSERT INTO uchome_friend VALUES ('564','15','lingling','1','0','','1','1251368125');
INSERT INTO uchome_friend VALUES ('15','564','fhdsf','1','0','','0','1251368125');
INSERT INTO uchome_friend VALUES ('564','125','mylove','1','0','','1','1251368125');
INSERT INTO uchome_friend VALUES ('125','564','fhdsf','1','0','','0','1251368125');
INSERT INTO uchome_friend VALUES ('564','17','yaya','1','0','','1','1251368125');
INSERT INTO uchome_friend VALUES ('17','564','fhdsf','1','0','','0','1251368125');
INSERT INTO uchome_friend VALUES ('558','564','fhdsf','1','0','','12','1251368476');
INSERT INTO uchome_friend VALUES ('558','563','asdadfsdfs','0','0','','8','1251368149');
INSERT INTO uchome_friend VALUES ('558','562','tristan','0','0','','3','1251368158');
INSERT INTO uchome_friend VALUES ('558','561','qqqqqqq','1','0','','2','1251368175');
INSERT INTO uchome_friend VALUES ('561','558','xiaomomocom','1','0','','2','1251368175');
INSERT INTO uchome_friend VALUES ('551','558','xiaomomocom','1','1','','3','1251368366');
INSERT INTO uchome_friend VALUES ('551','232','skyzhaojian','1','3','','3','1251368387');
INSERT INTO uchome_friend VALUES ('564','558','xiaomomocom','1','1','','3','1251368476');
INSERT INTO uchome_friend VALUES ('255','562','tristan','1','1','','3','1251369742');
INSERT INTO uchome_friend VALUES ('551','352','sexlove','0','0','','0','1251369766');
INSERT INTO uchome_friend VALUES ('255','558','xiaomomocom','1','1','','2','1251369814');
INSERT INTO uchome_friend VALUES ('565','537','demonpig','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('537','565','fhhdf','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('565','274','GEXUAN','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('274','565','fhhdf','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('565','9','happy','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('9','565','fhhdf','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('565','15','lingling','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('15','565','fhhdf','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('565','125','mylove','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('125','565','fhhdf','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('565','17','yaya','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('17','565','fhhdf','1','0','','0','1251369822');
INSERT INTO uchome_friend VALUES ('491','125','mylove','0','0','','1','1251369959');
INSERT INTO uchome_friend VALUES ('491','563','asdadfsdfs','0','0','','1','1251370015');
INSERT INTO uchome_friend VALUES ('558','565','fhhdf','0','0','','1','1251370111');
INSERT INTO uchome_friend VALUES ('1','558','xiaomomocom','1','0','','1','1251370270');
INSERT INTO uchome_friend VALUES ('491','255','abcd','0','0','','2','1251370524');
INSERT INTO uchome_friend VALUES ('491','546','jame','0','0','','0','1251370576');
INSERT INTO uchome_friend VALUES ('566','537','demonpig','1','0','','1','1251370932');
INSERT INTO uchome_friend VALUES ('537','566','ttttt','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('566','274','GEXUAN','1','0','','1','1251370932');
INSERT INTO uchome_friend VALUES ('274','566','ttttt','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('566','9','happy','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('9','566','ttttt','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('566','15','lingling','1','0','','1','1251370932');
INSERT INTO uchome_friend VALUES ('15','566','ttttt','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('566','125','mylove','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('125','566','ttttt','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('566','17','yaya','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('17','566','ttttt','1','0','','0','1251370932');
INSERT INTO uchome_friend VALUES ('566','491','ffeng','1','0','','0','1251371235');
INSERT INTO uchome_friend VALUES ('491','566','ttttt','1','2','','5','1251371235');
INSERT INTO uchome_friend VALUES ('558','355','czy','1','0','','0','1251434946');
INSERT INTO uchome_friend VALUES ('558','566','ttttt','0','0','','2','1251371292');
INSERT INTO uchome_friend VALUES ('499','558','xiaomomocom','1','0','','2','1251371834');
INSERT INTO uchome_friend VALUES ('567','537','demonpig','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('537','567','tombo','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('567','274','GEXUAN','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('274','567','tombo','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('567','9','happy','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('9','567','tombo','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('567','15','lingling','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('15','567','tombo','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('567','125','mylove','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('125','567','tombo','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('567','17','yaya','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('17','567','tombo','1','0','','0','1251373384');
INSERT INTO uchome_friend VALUES ('568','537','demonpig','1','0','','1','1251374016');
INSERT INTO uchome_friend VALUES ('537','568','hanggui','1','0','','0','1251374016');
INSERT INTO uchome_friend VALUES ('568','274','GEXUAN','1','0','','1','1251374016');
INSERT INTO uchome_friend VALUES ('274','568','hanggui','1','0','','0','1251374016');
INSERT INTO uchome_friend VALUES ('568','9','happy','1','0','','3','1251374016');
INSERT INTO uchome_friend VALUES ('9','568','hanggui','1','0','','0','1251374016');
INSERT INTO uchome_friend VALUES ('568','15','lingling','1','0','','1','1251374016');
INSERT INTO uchome_friend VALUES ('15','568','hanggui','1','0','','0','1251374016');
INSERT INTO uchome_friend VALUES ('568','125','mylove','1','0','','1','1251374016');
INSERT INTO uchome_friend VALUES ('125','568','hanggui','1','0','','0','1251374016');
INSERT INTO uchome_friend VALUES ('568','17','yaya','1','0','','1','1251374016');
INSERT INTO uchome_friend VALUES ('17','568','hanggui','1','0','','0','1251374016');
INSERT INTO uchome_friend VALUES ('568','30','norye','0','1','','0','1251374271');
INSERT INTO uchome_friend VALUES ('568','68','YANGZENGJUN','0','1','','0','1251374291');
INSERT INTO uchome_friend VALUES ('568','38','andylau','0','1','','0','1251374298');
INSERT INTO uchome_friend VALUES ('568','3','evyt','1','1','','0','1312969573');
INSERT INTO uchome_friend VALUES ('568','58','huaynie','0','1','','0','1251374319');
INSERT INTO uchome_friend VALUES ('568','55','chy','0','1','','0','1251374324');
INSERT INTO uchome_friend VALUES ('568','411','xuqinghong74','1','1','','2','1251376471');
INSERT INTO uchome_friend VALUES ('568','96','abcdefg','1','1','','2','1251423007');
INSERT INTO uchome_friend VALUES ('568','564','fhdsf','0','1','','2','1251374514');
INSERT INTO uchome_friend VALUES ('411','568','hanggui','1','1','','1','1251376471');
INSERT INTO uchome_friend VALUES ('232','125','mylove','0','1','','0','1251380545');
INSERT INTO uchome_friend VALUES ('385','64','liusuo','0','0','','0','1251383139');
INSERT INTO uchome_friend VALUES ('569','537','demonpig','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('537','569','akak','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('569','274','GEXUAN','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('274','569','akak','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('569','9','happy','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('9','569','akak','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('569','15','lingling','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('15','569','akak','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('569','125','mylove','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('125','569','akak','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('569','17','yaya','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('17','569','akak','1','0','','0','1251385054');
INSERT INTO uchome_friend VALUES ('232','569','akak','0','1','','0','1251385086');
INSERT INTO uchome_friend VALUES ('537','570','laiba','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('570','274','GEXUAN','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('274','570','laiba','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('570','9','happy','1','0','','1','1251388365');
INSERT INTO uchome_friend VALUES ('9','570','laiba','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('570','15','lingling','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('15','570','laiba','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('570','125','mylove','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('125','570','laiba','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('570','17','yaya','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('17','570','laiba','1','0','','0','1251388365');
INSERT INTO uchome_friend VALUES ('430','562','tristan','1','0','','1','1251388572');
INSERT INTO uchome_friend VALUES ('430','546','jame','1','0','','1','1251388580');
INSERT INTO uchome_friend VALUES ('430','491','ffeng','1','0','','1','1251423604');
INSERT INTO uchome_friend VALUES ('571','15','lingling','1','0','','1','1251388999');
INSERT INTO uchome_friend VALUES ('15','571','mcb','1','0','','0','1251388999');
INSERT INTO uchome_friend VALUES ('571','125','mylove','1','0','','1','1251388999');
INSERT INTO uchome_friend VALUES ('125','571','mcb','1','0','','0','1251388999');
INSERT INTO uchome_friend VALUES ('571','17','yaya','1','0','','1','1251388999');
INSERT INTO uchome_friend VALUES ('17','571','mcb','1','0','','0','1251388999');
INSERT INTO uchome_friend VALUES ('572','537','demonpig','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('537','572','andstart','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('572','274','GEXUAN','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('274','572','andstart','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('572','9','happy','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('9','572','andstart','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('572','15','lingling','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('15','572','andstart','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('572','125','mylove','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('125','572','andstart','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('572','17','yaya','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('17','572','andstart','1','0','','0','1251389047');
INSERT INTO uchome_friend VALUES ('573','537','demonpig','1','0','','2','1251389103');
INSERT INTO uchome_friend VALUES ('537','573','laiziouran','1','0','','0','1251389103');
INSERT INTO uchome_friend VALUES ('573','274','GEXUAN','1','0','','1','1251389103');
INSERT INTO uchome_friend VALUES ('274','573','laiziouran','1','0','','0','1251389103');
INSERT INTO uchome_friend VALUES ('573','9','happy','1','0','','1','1251389103');
INSERT INTO uchome_friend VALUES ('9','573','laiziouran','1','0','','0','1251389103');
INSERT INTO uchome_friend VALUES ('573','15','lingling','1','0','','1','1251389103');
INSERT INTO uchome_friend VALUES ('15','573','laiziouran','1','0','','0','1251389103');
INSERT INTO uchome_friend VALUES ('573','125','mylove','1','0','','3','1251389103');
INSERT INTO uchome_friend VALUES ('125','573','laiziouran','1','0','','0','1251389103');
INSERT INTO uchome_friend VALUES ('573','17','yaya','1','0','','2','1251389103');
INSERT INTO uchome_friend VALUES ('17','573','laiziouran','1','0','','0','1251389103');
INSERT INTO uchome_friend VALUES ('572','96','abcdefg','1','0','','0','1251423051');
INSERT INTO uchome_friend VALUES ('574','537','demonpig','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('537','574','miky','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('574','274','GEXUAN','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('274','574','miky','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('574','9','happy','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('9','574','miky','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('574','15','lingling','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('15','574','miky','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('574','125','mylove','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('125','574','miky','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('574','17','yaya','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('17','574','miky','1','0','','0','1251389475');
INSERT INTO uchome_friend VALUES ('575','537','demonpig','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('537','575','alsoon','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('575','274','GEXUAN','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('274','575','alsoon','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('575','9','happy','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('9','575','alsoon','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('575','15','lingling','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('15','575','alsoon','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('575','125','mylove','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('125','575','alsoon','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('575','17','yaya','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('17','575','alsoon','1','0','','0','1251389476');
INSERT INTO uchome_friend VALUES ('458','558','xiaomomocom','1','1','','1','1251389480');
INSERT INTO uchome_friend VALUES ('458','491','ffeng','1','1','','1','1251423595');
INSERT INTO uchome_friend VALUES ('576','537','demonpig','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('537','576','zhenxinzhenyi','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('576','274','GEXUAN','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('274','576','zhenxinzhenyi','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('576','9','happy','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('9','576','zhenxinzhenyi','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('576','15','lingling','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('15','576','zhenxinzhenyi','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('576','125','mylove','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('125','576','zhenxinzhenyi','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('576','17','yaya','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('17','576','zhenxinzhenyi','1','0','','0','1251389541');
INSERT INTO uchome_friend VALUES ('577','537','demonpig','1','0','','1','1251389573');
INSERT INTO uchome_friend VALUES ('537','577','tjh','1','0','','0','1251389573');
INSERT INTO uchome_friend VALUES ('577','274','GEXUAN','1','0','','1','1251389573');
INSERT INTO uchome_friend VALUES ('274','577','tjh','1','0','','0','1251389573');
INSERT INTO uchome_friend VALUES ('577','9','happy','1','0','','1','1251389573');
INSERT INTO uchome_friend VALUES ('9','577','tjh','1','0','','0','1251389573');
INSERT INTO uchome_friend VALUES ('577','15','lingling','1','0','','1','1251389573');
INSERT INTO uchome_friend VALUES ('15','577','tjh','1','0','','0','1251389573');
INSERT INTO uchome_friend VALUES ('577','125','mylove','1','0','','1','1251389573');
INSERT INTO uchome_friend VALUES ('125','577','tjh','1','0','','0','1251389573');
INSERT INTO uchome_friend VALUES ('577','17','yaya','1','0','','1','1251389573');
INSERT INTO uchome_friend VALUES ('17','577','tjh','1','0','','0','1251389573');
INSERT INTO uchome_friend VALUES ('577','328','jenny','0','0','','0','1251389659');
INSERT INTO uchome_friend VALUES ('577','308','alinayun','0','0','','0','1251389661');
INSERT INTO uchome_friend VALUES ('577','307','Joyce','0','0','','0','1251389664');
INSERT INTO uchome_friend VALUES ('577','54','zhangyan','0','0','','0','1251389668');
INSERT INTO uchome_friend VALUES ('577','58','huaynie','0','0','','0','1251389671');
INSERT INTO uchome_friend VALUES ('577','46','ma876401970','0','0','','0','1251389673');
INSERT INTO uchome_friend VALUES ('581','537','demonpig','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('577','411','xuqinghong74','1','0','','0','1251418043');
INSERT INTO uchome_friend VALUES ('577','135','iamwayney','0','0','','0','1251389682');
INSERT INTO uchome_friend VALUES ('577','371','zlfd','1','0','','0','1251416568');
INSERT INTO uchome_friend VALUES ('577','363','yyifan','0','0','','0','1251389688');
INSERT INTO uchome_friend VALUES ('577','1','admin','1','0','','0','1251390011');
INSERT INTO uchome_friend VALUES ('577','27','tianzi','0','0','','0','1251389694');
INSERT INTO uchome_friend VALUES ('578','537','demonpig','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('537','578','nick','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('578','274','GEXUAN','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('274','578','nick','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('578','9','happy','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('9','578','nick','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('578','15','lingling','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('15','578','nick','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('578','125','mylove','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('125','578','nick','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('578','17','yaya','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('17','578','nick','1','0','','0','1251389698');
INSERT INTO uchome_friend VALUES ('576','458','bluesea','0','1','','0','1251389820');
INSERT INTO uchome_friend VALUES ('576','1','admin','1','0','','3','1251390008');
INSERT INTO uchome_friend VALUES ('576','577','tjh','1','0','','2','1251389860');
INSERT INTO uchome_friend VALUES ('576','573','laiziouran','1','0','','0','1251390406');
INSERT INTO uchome_friend VALUES ('576','574','miky','0','0','','0','1251389841');
INSERT INTO uchome_friend VALUES ('576','575','alsoon','0','0','','0','1251389844');
INSERT INTO uchome_friend VALUES ('576','572','andstart','0','0','','0','1251389847');
INSERT INTO uchome_friend VALUES ('576','571','mcb','0','0','','0','1251389853');
INSERT INTO uchome_friend VALUES ('576','363','yyifan','0','0','','0','1251389856');
INSERT INTO uchome_friend VALUES ('576','430','sanshao','0','0','','0','1251389859');
INSERT INTO uchome_friend VALUES ('577','576','zhenxinzhenyi','1','0','','2','1251389860');
INSERT INTO uchome_friend VALUES ('576','570','laiba','0','0','','1','1251389863');
INSERT INTO uchome_friend VALUES ('576','434','rrppnn','0','1','','0','1251389867');
INSERT INTO uchome_friend VALUES ('578','576','zhenxinzhenyi','0','1','','1','1251389877');
INSERT INTO uchome_friend VALUES ('434','570','laiba','0','0','','1','1251389885');
INSERT INTO uchome_friend VALUES ('578','563','asdadfsdfs','0','1','','0','1251389916');
INSERT INTO uchome_friend VALUES ('1','576','zhenxinzhenyi','1','0','','2','1251390008');
INSERT INTO uchome_friend VALUES ('1','577','tjh','1','0','','1','1251390011');
INSERT INTO uchome_friend VALUES ('573','576','zhenxinzhenyi','1','1','','2','1251390406');
INSERT INTO uchome_friend VALUES ('579','537','demonpig','1','0','','1','1251390979');
INSERT INTO uchome_friend VALUES ('537','579','biqi','1','0','','0','1251390979');
INSERT INTO uchome_friend VALUES ('579','274','GEXUAN','1','0','','1','1251390979');
INSERT INTO uchome_friend VALUES ('274','579','biqi','1','0','','0','1251390979');
INSERT INTO uchome_friend VALUES ('579','9','happy','1','0','','1','1251390979');
INSERT INTO uchome_friend VALUES ('9','579','biqi','1','0','','0','1251390979');
INSERT INTO uchome_friend VALUES ('579','15','lingling','1','0','','1','1251390979');
INSERT INTO uchome_friend VALUES ('15','579','biqi','1','0','','0','1251390979');
INSERT INTO uchome_friend VALUES ('579','125','mylove','1','0','','1','1251390979');
INSERT INTO uchome_friend VALUES ('125','579','biqi','1','0','','0','1251390979');
INSERT INTO uchome_friend VALUES ('579','17','yaya','1','0','','1','1251390979');
INSERT INTO uchome_friend VALUES ('17','579','biqi','1','0','','0','1251390979');
INSERT INTO uchome_friend VALUES ('386','434','rrppnn','1','0','','2','1251394038');
INSERT INTO uchome_friend VALUES ('386','558','xiaomomocom','1','1','','1','1251394044');
INSERT INTO uchome_friend VALUES ('568','573','laiziouran','0','0','','1','1251406447');
INSERT INTO uchome_friend VALUES ('568','232','skyzhaojian','0','1','','1','1251407394');
INSERT INTO uchome_friend VALUES ('568','109','yycf','0','1','','0','1251407534');
INSERT INTO uchome_friend VALUES ('568','296','smartwolf','0','1','','0','1251407589');
INSERT INTO uchome_friend VALUES ('568','1','admin','0','1','','1','1251407688');
INSERT INTO uchome_friend VALUES ('568','551','weiki','0','1','','0','1251407840');
INSERT INTO uchome_friend VALUES ('568','553','liguojievip','0','1','','0','1251408550');
INSERT INTO uchome_friend VALUES ('537','581','banfuqing','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('568','569','akak','0','1','','0','1251415276');
INSERT INTO uchome_friend VALUES ('371','577','tjh','1','0','','1','1251416568');
INSERT INTO uchome_friend VALUES ('411','577','tjh','1','1','','1','1251418043');
INSERT INTO uchome_friend VALUES ('580','537','demonpig','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('537','580','haiti','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('580','274','GEXUAN','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('274','580','haiti','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('580','9','happy','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('9','580','haiti','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('580','15','lingling','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('15','580','haiti','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('580','125','mylove','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('125','580','haiti','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('580','17','yaya','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('17','580','haiti','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('580','363','yyifan','1','0','','2','1251420831');
INSERT INTO uchome_friend VALUES ('363','580','haiti','1','0','','0','1251420831');
INSERT INTO uchome_friend VALUES ('580','58','huaynie','0','0','','0','1251421852');
INSERT INTO uchome_friend VALUES ('580','101','lvxiaoqi','0','0','','0','1251421907');
INSERT INTO uchome_friend VALUES ('580','122','delong','0','0','','0','1251421954');
INSERT INTO uchome_friend VALUES ('580','308','alinayun','0','0','','0','1251422127');
INSERT INTO uchome_friend VALUES ('580','513','TOMO','0','0','','0','1251422141');
INSERT INTO uchome_friend VALUES ('580','547','xinxing-jason','0','0','','0','1251422166');
INSERT INTO uchome_friend VALUES ('580','551','weiki','0','0','','1','1251422191');
INSERT INTO uchome_friend VALUES ('580','1','admin','0','0','','1','1251422210');
INSERT INTO uchome_friend VALUES ('580','38','andylau','0','0','','1','1251422246');
INSERT INTO uchome_friend VALUES ('96','568','hanggui','1','1','','2','1251423007');
INSERT INTO uchome_friend VALUES ('96','572','andstart','1','1','','2','1251423051');
INSERT INTO uchome_friend VALUES ('491','458','bluesea','1','3','','3','1251423595');
INSERT INTO uchome_friend VALUES ('491','430','sanshao','1','3','','3','1251423604');
INSERT INTO uchome_friend VALUES ('586','537','demonpig','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('581','274','GEXUAN','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('274','581','banfuqing','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('581','9','happy','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('9','581','banfuqing','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('581','15','lingling','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('15','581','banfuqing','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('581','125','mylove','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('125','581','banfuqing','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('581','17','yaya','1','0','','1','1251431863');
INSERT INTO uchome_friend VALUES ('17','581','banfuqing','1','0','','0','1251431863');
INSERT INTO uchome_friend VALUES ('582','537','demonpig','1','0','','1','1251434288');
INSERT INTO uchome_friend VALUES ('537','582','ooo','1','0','','0','1251434288');
INSERT INTO uchome_friend VALUES ('582','274','GEXUAN','1','0','','1','1251434288');
INSERT INTO uchome_friend VALUES ('274','582','ooo','1','0','','0','1251434288');
INSERT INTO uchome_friend VALUES ('582','9','happy','1','0','','1','1251434288');
INSERT INTO uchome_friend VALUES ('9','582','ooo','1','0','','0','1251434288');
INSERT INTO uchome_friend VALUES ('582','15','lingling','1','0','','1','1251434288');
INSERT INTO uchome_friend VALUES ('15','582','ooo','1','0','','0','1251434288');
INSERT INTO uchome_friend VALUES ('582','125','mylove','1','0','','1','1251434288');
INSERT INTO uchome_friend VALUES ('125','582','ooo','1','0','','0','1251434288');
INSERT INTO uchome_friend VALUES ('582','17','yaya','1','0','','1','1251434288');
INSERT INTO uchome_friend VALUES ('17','582','ooo','1','0','','0','1251434288');
INSERT INTO uchome_friend VALUES ('355','556','wwwqq001','1','0','','1','1251434925');
INSERT INTO uchome_friend VALUES ('355','562','tristan','1','0','','3','1251434936');
INSERT INTO uchome_friend VALUES ('355','558','xiaomomocom','1','0','','2','1251434946');
INSERT INTO uchome_friend VALUES ('583','537','demonpig','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('537','583','jackxiao','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('583','274','GEXUAN','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('274','583','jackxiao','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('583','9','happy','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('9','583','jackxiao','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('583','15','lingling','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('15','583','jackxiao','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('583','125','mylove','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('125','583','jackxiao','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('583','17','yaya','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('17','583','jackxiao','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('583','363','yyifan','1','0','','1','1251435579');
INSERT INTO uchome_friend VALUES ('363','583','jackxiao','1','0','','0','1251435579');
INSERT INTO uchome_friend VALUES ('583','578','nick','0','0','','0','1251435820');
INSERT INTO uchome_friend VALUES ('583','187','jack','0','0','','0','1251435867');
INSERT INTO uchome_friend VALUES ('583','355','czy','1','0','','0','1251437011');
INSERT INTO uchome_friend VALUES ('584','537','demonpig','1','0','','3','1251436085');
INSERT INTO uchome_friend VALUES ('537','584','nino','1','0','','0','1251436085');
INSERT INTO uchome_friend VALUES ('584','274','GEXUAN','1','0','','4','1251436085');
INSERT INTO uchome_friend VALUES ('274','584','nino','1','0','','0','1251436085');
INSERT INTO uchome_friend VALUES ('584','9','happy','1','0','','8','1251436085');
INSERT INTO uchome_friend VALUES ('9','584','nino','1','0','','0','1251436085');
INSERT INTO uchome_friend VALUES ('584','15','lingling','1','0','','1','1251436085');
INSERT INTO uchome_friend VALUES ('15','584','nino','1','0','','0','1251436085');
INSERT INTO uchome_friend VALUES ('584','125','mylove','1','0','','1','1251436085');
INSERT INTO uchome_friend VALUES ('125','584','nino','1','0','','0','1251436085');
INSERT INTO uchome_friend VALUES ('584','17','yaya','1','0','','1','1251436085');
INSERT INTO uchome_friend VALUES ('17','584','nino','1','0','','0','1251436085');
INSERT INTO uchome_friend VALUES ('584','355','czy','1','0','','8','1251439938');
INSERT INTO uchome_friend VALUES ('584','530','tuiyue','0','0','','0','1251436840');
INSERT INTO uchome_friend VALUES ('584','232','skyzhaojian','0','0','','0','1251436849');
INSERT INTO uchome_friend VALUES ('462','546','jame','1','0','','1','1251436886');
INSERT INTO uchome_friend VALUES ('355','583','jackxiao','1','1','','3','1251437011');
INSERT INTO uchome_friend VALUES ('584','363','yyifan','0','0','','0','1251437014');
INSERT INTO uchome_friend VALUES ('355','582','ooo','0','0','','2','1251437038');
INSERT INTO uchome_friend VALUES ('355','581','banfuqing','0','0','','2','1251437058');
INSERT INTO uchome_friend VALUES ('355','187','jack','0','0','','0','1251437120');
INSERT INTO uchome_friend VALUES ('355','577','tjh','0','0','','2','1251437150');
INSERT INTO uchome_friend VALUES ('355','576','zhenxinzhenyi','0','0','','3','1251437168');
INSERT INTO uchome_friend VALUES ('355','575','alsoon','0','0','','1','1251437188');
INSERT INTO uchome_friend VALUES ('355','573','laiziouran','0','0','','4','1251437265');
INSERT INTO uchome_friend VALUES ('355','569','akak','0','0','','1','1251437344');
INSERT INTO uchome_friend VALUES ('355','434','rrppnn','0','0','','2','1251437417');
INSERT INTO uchome_friend VALUES ('355','578','nick','0','0','','0','1251437442');
INSERT INTO uchome_friend VALUES ('355','579','biqi','0','0','','1','1251437502');
INSERT INTO uchome_friend VALUES ('355','570','laiba','0','0','','3','1251437538');
INSERT INTO uchome_friend VALUES ('585','537','demonpig','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('537','585','yjucd','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('585','274','GEXUAN','1','0','','1','1251438064');
INSERT INTO uchome_friend VALUES ('274','585','yjucd','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('585','9','happy','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('9','585','yjucd','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('585','15','lingling','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('15','585','yjucd','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('585','125','mylove','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('125','585','yjucd','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('585','17','yaya','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('17','585','yjucd','1','0','','0','1251438064');
INSERT INTO uchome_friend VALUES ('568','187','jack','0','1','','0','1251438326');
INSERT INTO uchome_friend VALUES ('537','586','feiyun18','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('586','274','GEXUAN','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('274','586','feiyun18','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('586','9','happy','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('9','586','feiyun18','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('586','15','lingling','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('15','586','feiyun18','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('586','125','mylove','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('125','586','feiyun18','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('586','17','yaya','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('17','586','feiyun18','1','0','','0','1251439038');
INSERT INTO uchome_friend VALUES ('355','584','nino','1','1','','3','1251439938');
INSERT INTO uchome_friend VALUES ('587','537','demonpig','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('537','587','woshishuige','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('587','274','GEXUAN','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('274','587','woshishuige','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('587','9','happy','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('9','587','woshishuige','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('587','15','lingling','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('15','587','woshishuige','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('587','125','mylove','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('125','587','woshishuige','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('587','17','yaya','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('17','587','woshishuige','1','0','','0','1251441079');
INSERT INTO uchome_friend VALUES ('355','555','bingbing','0','0','','2','1251441977');
INSERT INTO uchome_friend VALUES ('355','546','jame','0','0','','1','1251442023');
INSERT INTO uchome_friend VALUES ('568','586','feiyun18','0','1','','0','1251446280');
INSERT INTO uchome_friend VALUES ('355','499','afei','0','0','','2','1251442121');
INSERT INTO uchome_friend VALUES ('584','587','woshishuige','0','0','','2','1251443042');
INSERT INTO uchome_friend VALUES ('588','537','demonpig','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('537','588','ons','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('588','274','GEXUAN','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('274','588','ons','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('588','9','happy','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('9','588','ons','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('588','15','lingling','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('15','588','ons','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('588','125','mylove','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('125','588','ons','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('588','17','yaya','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('17','588','ons','1','0','','0','1251444742');
INSERT INTO uchome_friend VALUES ('589','537','demonpig','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('537','589','tuiyur','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('589','274','GEXUAN','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('274','589','tuiyur','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('589','9','happy','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('9','589','tuiyur','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('589','15','lingling','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('15','589','tuiyur','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('589','125','mylove','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('125','589','tuiyur','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('589','17','yaya','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('17','589','tuiyur','1','0','','0','1251444821');
INSERT INTO uchome_friend VALUES ('589','491','ffeng','0','0','','0','1251444902');
INSERT INTO uchome_friend VALUES ('590','537','demonpig','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('537','590','oms','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('590','274','GEXUAN','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('274','590','oms','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('590','9','happy','1','0','','1','1251445104');
INSERT INTO uchome_friend VALUES ('9','590','oms','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('590','15','lingling','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('15','590','oms','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('590','125','mylove','1','0','','1','1251445104');
INSERT INTO uchome_friend VALUES ('125','590','oms','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('590','17','yaya','1','0','','1','1251445104');
INSERT INTO uchome_friend VALUES ('17','590','oms','1','0','','0','1251445104');
INSERT INTO uchome_friend VALUES ('591','537','demonpig','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('537','591','zhojin9480cn','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('591','274','GEXUAN','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('274','591','zhojin9480cn','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('591','9','happy','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('9','591','zhojin9480cn','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('591','15','lingling','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('15','591','zhojin9480cn','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('591','125','mylove','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('125','591','zhojin9480cn','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('591','17','yaya','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('17','591','zhojin9480cn','1','0','','0','1251445137');
INSERT INTO uchome_friend VALUES ('568','583','jackxiao','0','1','','0','1251446184');
INSERT INTO uchome_friend VALUES ('122','473','yusiking','1','1','','2','1251447225');
INSERT INTO uchome_friend VALUES ('122','435','lyym','1','1','','3','1251447308');
INSERT INTO uchome_friend VALUES ('592','537','demonpig','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('537','592','abu','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('592','274','GEXUAN','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('274','592','abu','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('592','9','happy','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('9','592','abu','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('592','15','lingling','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('15','592','abu','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('592','125','mylove','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('125','592','abu','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('592','17','yaya','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('17','592','abu','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('592','363','yyifan','1','0','','1','1251447393');
INSERT INTO uchome_friend VALUES ('363','592','abu','1','0','','0','1251447393');
INSERT INTO uchome_friend VALUES ('243','587','woshishuige','0','1','','1','1251447981');
INSERT INTO uchome_friend VALUES ('2','537','demonpig','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('537','2','羊爱上狼','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('2','274','GEXUAN','1','0','','1','1314929403');
INSERT INTO uchome_friend VALUES ('274','2','羊爱上狼','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('2','9','happy','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('9','2','羊爱上狼','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('2','15','lingling','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('15','2','羊爱上狼','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('2','125','mylove','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('125','2','羊爱上狼','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('2','17','yaya','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('17','2','羊爱上狼','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('2','308','alinayun','0','1','','0','1312946265');
INSERT INTO uchome_friend VALUES ('3','537','demonpig','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('537','3','情缘难了','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('3','274','GEXUAN','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('274','3','情缘难了','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('3','15','lingling','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('15','3','情缘难了','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('3','125','mylove','1','0','','1','1314936507');
INSERT INTO uchome_friend VALUES ('125','3','情缘难了','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('3','17','yaya','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('17','3','情缘难了','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('3','568','hanggui','1','7','','2','1312969573');
INSERT INTO uchome_friend VALUES ('3','277','Daniel','1','7','','2','1312969581');
INSERT INTO uchome_friend VALUES ('3','212','abcdef','1','7','','2','1312969587');
INSERT INTO uchome_friend VALUES ('3','176','MAYJJ','1','7','','1','1312969591');
INSERT INTO uchome_friend VALUES ('3','177','iangbo','1','7','','1','1312969600');
INSERT INTO uchome_friend VALUES ('3','116','woyjh','1','7','','1','1312969604');
INSERT INTO uchome_friend VALUES ('3','110','CCA','1','7','','1','1312969609');
INSERT INTO uchome_friend VALUES ('4','537','demonpig','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('537','4','找个美女','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('4','274','GEXUAN','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('274','4','找个美女','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('4','9','happy','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('9','4','找个美女','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('4','15','lingling','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('15','4','找个美女','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('4','125','mylove','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('125','4','找个美女','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('4','17','yaya','1','0','','1','1314938156');
INSERT INTO uchome_friend VALUES ('17','4','找个美女','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('2','494','wagamama','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('494','2','羊爱上狼','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('2','244','zhangguozhou','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('244','2','羊爱上狼','1','0','','0','1314929403');
INSERT INTO uchome_friend VALUES ('3','494','wagamama','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('494','3','情缘难了','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('3','244','zhangguozhou','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('244','3','情缘难了','1','0','','0','1314936507');
INSERT INTO uchome_friend VALUES ('4','494','wagamama','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('494','4','找个美女','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('4','244','zhangguozhou','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('244','4','找个美女','1','0','','0','1314938156');
INSERT INTO uchome_friend VALUES ('5','537','demonpig','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('537','5','小叶子','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('5','274','GEXUAN','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('274','5','小叶子','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('5','9','happy','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('9','5','小叶子','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('5','15','lingling','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('15','5','小叶子','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('5','125','mylove','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('125','5','小叶子','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('5','494','wagamama','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('494','5','小叶子','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('5','17','yaya','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('17','5','小叶子','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('5','244','zhangguozhou','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('244','5','小叶子','1','0','','0','1315016549');
INSERT INTO uchome_friend VALUES ('6','537','demonpig','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('537','6','校内网','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('6','274','GEXUAN','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('274','6','校内网','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('6','9','happy','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('9','6','校内网','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('6','15','lingling','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('15','6','校内网','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('6','125','mylove','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('125','6','校内网','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('6','494','wagamama','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('494','6','校内网','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('6','17','yaya','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('17','6','校内网','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('6','244','zhangguozhou','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('244','6','校内网','1','0','','0','1315017741');
INSERT INTO uchome_friend VALUES ('7','537','demonpig','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('537','7','小女子','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('7','274','GEXUAN','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('274','7','小女子','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('7','9','happy','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('9','7','小女子','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('7','15','lingling','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('15','7','小女子','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('7','125','mylove','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('125','7','小女子','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('7','494','wagamama','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('494','7','小女子','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('7','17','yaya','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('17','7','小女子','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('7','244','zhangguozhou','1','0','','1','1316139290');
INSERT INTO uchome_friend VALUES ('244','7','小女子','1','0','','0','1316139290');
INSERT INTO uchome_friend VALUES ('7','1','admin','1','0','','0','1316576156');
INSERT INTO uchome_friend VALUES ('8','537','demonpig','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('537','8','5lyx','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('8','274','GEXUAN','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('274','8','5lyx','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('8','9','happy','1','0','','3','1316140528');
INSERT INTO uchome_friend VALUES ('8','15','lingling','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('15','8','5lyx','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('8','125','mylove','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('125','8','5lyx','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('8','494','wagamama','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('494','8','5lyx','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('8','17','yaya','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('17','8','5lyx','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('8','244','zhangguozhou','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('244','8','5lyx','1','0','','0','1316140528');
INSERT INTO uchome_friend VALUES ('9','274','GEXUAN','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('274','9','changchneg','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('9','15','lingling','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('15','9','changchneg','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('9','494','wagamama','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('494','9','changchneg','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('9','17','yaya','1','0','','1','1316237582');
INSERT INTO uchome_friend VALUES ('17','9','changchneg','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('9','244','zhangguozhou','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('244','9','changchneg','1','0','','0','1316237582');
INSERT INTO uchome_friend VALUES ('10','537','demonpig','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('537','10','fenghu','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('10','274','GEXUAN','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('274','10','fenghu','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('10','15','lingling','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('15','10','fenghu','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('10','125','mylove','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('125','10','fenghu','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('10','494','wagamama','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('494','10','fenghu','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('10','17','yaya','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('17','10','fenghu','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('10','244','zhangguozhou','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('244','10','fenghu','1','0','','0','1316535582');
INSERT INTO uchome_friend VALUES ('1','7','小女子','1','1','','0','1316576156');

DROP TABLE IF EXISTS uchome_friendguide;
CREATE TABLE uchome_friendguide (
  uid mediumint(8) unsigned NOT NULL default '0',
  fuid mediumint(8) unsigned NOT NULL default '0',
  fusername char(15) NOT NULL default '',
  num smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,fuid),
  KEY uid (uid,num)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_friendlog;
CREATE TABLE uchome_friendlog (
  uid mediumint(8) unsigned NOT NULL default '0',
  fuid mediumint(8) unsigned NOT NULL default '0',
  `action` varchar(10) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,fuid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_friendlog VALUES ('537','2','add','1314929403');
INSERT INTO uchome_friendlog VALUES ('274','2','add','1314929403');
INSERT INTO uchome_friendlog VALUES ('9','2','add','1314929403');
INSERT INTO uchome_friendlog VALUES ('15','2','add','1314929403');
INSERT INTO uchome_friendlog VALUES ('125','2','add','1314929403');
INSERT INTO uchome_friendlog VALUES ('494','2','add','1314929403');
INSERT INTO uchome_friendlog VALUES ('17','2','add','1314929403');
INSERT INTO uchome_friendlog VALUES ('244','2','add','1314929403');
INSERT INTO uchome_friendlog VALUES ('537','3','add','1314936507');
INSERT INTO uchome_friendlog VALUES ('274','3','add','1314936507');
INSERT INTO uchome_friendlog VALUES ('9','3','add','1314936507');
INSERT INTO uchome_friendlog VALUES ('15','3','add','1314936507');
INSERT INTO uchome_friendlog VALUES ('125','3','add','1314936507');
INSERT INTO uchome_friendlog VALUES ('494','3','add','1314936507');
INSERT INTO uchome_friendlog VALUES ('17','3','add','1314936507');
INSERT INTO uchome_friendlog VALUES ('244','3','add','1314936507');
INSERT INTO uchome_friendlog VALUES ('537','4','add','1314938156');
INSERT INTO uchome_friendlog VALUES ('274','4','add','1314938156');
INSERT INTO uchome_friendlog VALUES ('9','4','add','1314938156');
INSERT INTO uchome_friendlog VALUES ('15','4','add','1314938156');
INSERT INTO uchome_friendlog VALUES ('125','4','add','1314938156');
INSERT INTO uchome_friendlog VALUES ('494','4','add','1314938156');
INSERT INTO uchome_friendlog VALUES ('17','4','add','1314938156');
INSERT INTO uchome_friendlog VALUES ('244','4','add','1314938156');
INSERT INTO uchome_friendlog VALUES ('537','5','add','1315016549');
INSERT INTO uchome_friendlog VALUES ('274','5','add','1315016549');
INSERT INTO uchome_friendlog VALUES ('9','5','add','1315016549');
INSERT INTO uchome_friendlog VALUES ('15','5','add','1315016549');
INSERT INTO uchome_friendlog VALUES ('125','5','add','1315016549');
INSERT INTO uchome_friendlog VALUES ('494','5','add','1315016549');
INSERT INTO uchome_friendlog VALUES ('17','5','add','1315016549');
INSERT INTO uchome_friendlog VALUES ('244','5','add','1315016549');
INSERT INTO uchome_friendlog VALUES ('537','6','add','1315017741');
INSERT INTO uchome_friendlog VALUES ('274','6','add','1315017741');
INSERT INTO uchome_friendlog VALUES ('9','6','add','1315017741');
INSERT INTO uchome_friendlog VALUES ('15','6','add','1315017741');
INSERT INTO uchome_friendlog VALUES ('125','6','add','1315017741');
INSERT INTO uchome_friendlog VALUES ('494','6','add','1315017741');
INSERT INTO uchome_friendlog VALUES ('17','6','add','1315017741');
INSERT INTO uchome_friendlog VALUES ('244','6','add','1315017741');
INSERT INTO uchome_friendlog VALUES ('537','7','add','1316139290');
INSERT INTO uchome_friendlog VALUES ('274','7','add','1316139290');
INSERT INTO uchome_friendlog VALUES ('9','7','add','1316139290');
INSERT INTO uchome_friendlog VALUES ('15','7','add','1316139290');
INSERT INTO uchome_friendlog VALUES ('125','7','add','1316139290');
INSERT INTO uchome_friendlog VALUES ('494','7','add','1316139290');
INSERT INTO uchome_friendlog VALUES ('17','7','add','1316139290');
INSERT INTO uchome_friendlog VALUES ('244','7','add','1316139290');
INSERT INTO uchome_friendlog VALUES ('537','8','add','1316140528');
INSERT INTO uchome_friendlog VALUES ('274','8','add','1316140528');
INSERT INTO uchome_friendlog VALUES ('9','8','add','1316140528');
INSERT INTO uchome_friendlog VALUES ('15','8','add','1316140528');
INSERT INTO uchome_friendlog VALUES ('125','8','add','1316140528');
INSERT INTO uchome_friendlog VALUES ('494','8','add','1316140528');
INSERT INTO uchome_friendlog VALUES ('17','8','add','1316140528');
INSERT INTO uchome_friendlog VALUES ('244','8','add','1316140528');
INSERT INTO uchome_friendlog VALUES ('537','9','add','1316237582');
INSERT INTO uchome_friendlog VALUES ('274','9','add','1316237582');
INSERT INTO uchome_friendlog VALUES ('15','9','add','1316237582');
INSERT INTO uchome_friendlog VALUES ('125','9','add','1316237582');
INSERT INTO uchome_friendlog VALUES ('494','9','add','1316237582');
INSERT INTO uchome_friendlog VALUES ('17','9','add','1316237582');
INSERT INTO uchome_friendlog VALUES ('244','9','add','1316237582');
INSERT INTO uchome_friendlog VALUES ('537','10','add','1316535582');
INSERT INTO uchome_friendlog VALUES ('274','10','add','1316535582');
INSERT INTO uchome_friendlog VALUES ('15','10','add','1316535582');
INSERT INTO uchome_friendlog VALUES ('125','10','add','1316535582');
INSERT INTO uchome_friendlog VALUES ('494','10','add','1316535582');
INSERT INTO uchome_friendlog VALUES ('17','10','add','1316535582');
INSERT INTO uchome_friendlog VALUES ('244','10','add','1316535582');

DROP TABLE IF EXISTS uchome_invite;
CREATE TABLE uchome_invite (
  id mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  `code` varchar(20) NOT NULL default '',
  fuid mediumint(8) unsigned NOT NULL default '0',
  fusername varchar(15) NOT NULL default '',
  `type` tinyint(1) NOT NULL default '0',
  email varchar(100) NOT NULL default '',
  appid mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY uid (uid)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=gbk AUTO_INCREMENT=172;

INSERT INTO uchome_invite VALUES ('1','9','','26','xiaobaizj','0','','0');
INSERT INTO uchome_invite VALUES ('2','9','','28','zzz','0','','0');
INSERT INTO uchome_invite VALUES ('3','9','','29','asdzxc','0','','0');
INSERT INTO uchome_invite VALUES ('4','9','','30','三八一六九6042','0','','0');
INSERT INTO uchome_invite VALUES ('5','9','','34','liliangliang','0','','0');
INSERT INTO uchome_invite VALUES ('6','9','','35','BNRW','0','','0');
INSERT INTO uchome_invite VALUES ('7','9','','37','diablo','0','','0');
INSERT INTO uchome_invite VALUES ('8','9','','38','andylau','0','','0');
INSERT INTO uchome_invite VALUES ('9','9','','39','ashice','0','','0');
INSERT INTO uchome_invite VALUES ('10','9','','40','gswt','0','','0');
INSERT INTO uchome_invite VALUES ('11','9','','3','evyt','0','','0');
INSERT INTO uchome_invite VALUES ('12','9','','42','wode','0','','0');
INSERT INTO uchome_invite VALUES ('13','9','','44','denglp','0','','0');
INSERT INTO uchome_invite VALUES ('14','9','','47','Larry','0','','0');
INSERT INTO uchome_invite VALUES ('15','9','','51','langbi','0','','0');
INSERT INTO uchome_invite VALUES ('16','9','','52','ming','0','','0');
INSERT INTO uchome_invite VALUES ('17','9','','55','chy','0','','0');
INSERT INTO uchome_invite VALUES ('18','9','','57','luoyonyi','0','','0');
INSERT INTO uchome_invite VALUES ('19','9','','58','huaynie','0','','0');
INSERT INTO uchome_invite VALUES ('20','9','','64','liusuo','0','','0');
INSERT INTO uchome_invite VALUES ('21','9','','68','YANGZENGJUN','0','','0');
INSERT INTO uchome_invite VALUES ('22','1','','69','hujiahujia','0','','0');
INSERT INTO uchome_invite VALUES ('23','1','','70','qq872300214','0','','0');
INSERT INTO uchome_invite VALUES ('24','1','','72','PPXY','0','','0');
INSERT INTO uchome_invite VALUES ('25','9','','73','yanluo','0','','0');
INSERT INTO uchome_invite VALUES ('26','1','','74','leo','0','','0');
INSERT INTO uchome_invite VALUES ('27','1','','75','linwenyi','0','','0');
INSERT INTO uchome_invite VALUES ('28','1','','76','asd','0','','0');
INSERT INTO uchome_invite VALUES ('29','9','','84','jianghai','0','','0');
INSERT INTO uchome_invite VALUES ('30','1','','85','tanglao','0','','0');
INSERT INTO uchome_invite VALUES ('31','9','','90','xiaxuebianjie','0','','0');
INSERT INTO uchome_invite VALUES ('32','9','','97','wbd','0','','0');
INSERT INTO uchome_invite VALUES ('33','1','','98','sihan','0','','0');
INSERT INTO uchome_invite VALUES ('34','1','','99','wzs','0','','0');
INSERT INTO uchome_invite VALUES ('35','1','','100','lixizheng','0','','0');
INSERT INTO uchome_invite VALUES ('36','9','','101','lvxiaoqi','0','','0');
INSERT INTO uchome_invite VALUES ('37','1','','104','gugu','0','','0');
INSERT INTO uchome_invite VALUES ('38','1','','106','happyboy5330','0','','0');
INSERT INTO uchome_invite VALUES ('39','9','','102','alanpolo','0','','0');
INSERT INTO uchome_invite VALUES ('40','1','','112','shenhan','0','','0');
INSERT INTO uchome_invite VALUES ('41','1','','113','hanhan','0','','0');
INSERT INTO uchome_invite VALUES ('42','1','','117','lxfku','0','','0');
INSERT INTO uchome_invite VALUES ('43','9','','120','younger','0','','0');
INSERT INTO uchome_invite VALUES ('44','1','','122','delong','0','','0');
INSERT INTO uchome_invite VALUES ('45','125','','127','ailove','0','','0');
INSERT INTO uchome_invite VALUES ('46','1','','129','hjh','0','','0');
INSERT INTO uchome_invite VALUES ('47','1','','130','ado83','0','','0');
INSERT INTO uchome_invite VALUES ('48','1','','138','cbaabc','0','','0');
INSERT INTO uchome_invite VALUES ('49','1','','140','alloc','0','','0');
INSERT INTO uchome_invite VALUES ('50','1','','148','sunzhigang18','0','','0');
INSERT INTO uchome_invite VALUES ('51','9','','153','modinglin','0','','0');
INSERT INTO uchome_invite VALUES ('52','1','','155','zht_tao','0','','0');
INSERT INTO uchome_invite VALUES ('53','1','','157','cartervin','0','','0');
INSERT INTO uchome_invite VALUES ('54','1','','161','weizhang','0','','0');
INSERT INTO uchome_invite VALUES ('55','1','','164','afu','0','','0');
INSERT INTO uchome_invite VALUES ('56','1','','165','huang','0','','0');
INSERT INTO uchome_invite VALUES ('57','1','','166','youlan','0','','0');
INSERT INTO uchome_invite VALUES ('58','9','','170','lang','0','','0');
INSERT INTO uchome_invite VALUES ('59','9','','175','open','0','','0');
INSERT INTO uchome_invite VALUES ('60','9','','177','iangbo','0','','0');
INSERT INTO uchome_invite VALUES ('61','9','','178','kekin','0','','0');
INSERT INTO uchome_invite VALUES ('62','9','','180','allen','0','','0');
INSERT INTO uchome_invite VALUES ('63','9','','181','DGMG','0','','0');
INSERT INTO uchome_invite VALUES ('64','9','','176','MAYJJ','0','','0');
INSERT INTO uchome_invite VALUES ('65','9','','182','sdsd','0','','0');
INSERT INTO uchome_invite VALUES ('66','9','','186','wuyukun','0','','0');
INSERT INTO uchome_invite VALUES ('67','9','','188','tianci','0','','0');
INSERT INTO uchome_invite VALUES ('68','9','','193','tiantianxiangri','0','','0');
INSERT INTO uchome_invite VALUES ('69','1','','194','asdfghjkl','0','','0');
INSERT INTO uchome_invite VALUES ('70','9','','195','QQA','0','','0');
INSERT INTO uchome_invite VALUES ('71','1','','197','zyzy','0','','0');
INSERT INTO uchome_invite VALUES ('72','9','','200','pcaff','0','','0');
INSERT INTO uchome_invite VALUES ('73','202','','206','zhylbj','0','','0');
INSERT INTO uchome_invite VALUES ('74','202','','209','yiyaheihei','0','','0');
INSERT INTO uchome_invite VALUES ('75','9','','209','yiyaheihei','0','','0');
INSERT INTO uchome_invite VALUES ('76','1','','215','zingy','0','','0');
INSERT INTO uchome_invite VALUES ('77','9','','222','Loveyou','0','','0');
INSERT INTO uchome_invite VALUES ('78','1','','224','KING','0','','0');
INSERT INTO uchome_invite VALUES ('79','1','','211','yhkwy','0','','0');
INSERT INTO uchome_invite VALUES ('80','9','','227','ererer','0','','0');
INSERT INTO uchome_invite VALUES ('81','202','','230','lijianhang','0','','0');
INSERT INTO uchome_invite VALUES ('82','1','','232','skyzhaojian','0','','0');
INSERT INTO uchome_invite VALUES ('83','9','','211','yhkwy','0','','0');
INSERT INTO uchome_invite VALUES ('84','1','','239','QWERTY','0','','0');
INSERT INTO uchome_invite VALUES ('85','202','','240','zhaojiawen','0','','0');
INSERT INTO uchome_invite VALUES ('86','1','','241','liuyu','0','','0');
INSERT INTO uchome_invite VALUES ('87','1','','243','zhengwenxiang','0','','0');
INSERT INTO uchome_invite VALUES ('88','1','','244','zhangguozhou','0','','0');
INSERT INTO uchome_invite VALUES ('89','9','','245','leyi','0','','0');
INSERT INTO uchome_invite VALUES ('90','9','','246','fanwei','0','','0');
INSERT INTO uchome_invite VALUES ('91','9','','248','xiaodaidai','0','','0');
INSERT INTO uchome_invite VALUES ('92','9','','249','xixiaodaidaiao','0','','0');
INSERT INTO uchome_invite VALUES ('93','9','','250','xuanhong','0','','0');
INSERT INTO uchome_invite VALUES ('94','202','','251','vip','0','','0');
INSERT INTO uchome_invite VALUES ('95','125','','263','ONEI','0','','0');
INSERT INTO uchome_invite VALUES ('96','1','','270','DFMN','0','','0');
INSERT INTO uchome_invite VALUES ('97','9','','276','meinu','0','','0');
INSERT INTO uchome_invite VALUES ('98','9','','277','Daniel','0','','0');
INSERT INTO uchome_invite VALUES ('99','1','','279','heilongjiang','0','','0');
INSERT INTO uchome_invite VALUES ('100','1','','285','DOUDOU','0','','0');
INSERT INTO uchome_invite VALUES ('101','1','','287','gougou','0','','0');
INSERT INTO uchome_invite VALUES ('102','1','','288','HEMINGFU','0','','0');
INSERT INTO uchome_invite VALUES ('103','9','','304','cyh','0','','0');
INSERT INTO uchome_invite VALUES ('104','1','','309','ROCKYOU','0','','0');
INSERT INTO uchome_invite VALUES ('105','1','','321','cowboy','0','','0');
INSERT INTO uchome_invite VALUES ('106','9','','333','nihao','0','','0');
INSERT INTO uchome_invite VALUES ('107','1','','339','yangsong1','0','','0');
INSERT INTO uchome_invite VALUES ('108','1','','341','zhouping','0','','0');
INSERT INTO uchome_invite VALUES ('109','9','','346','sccdwh','0','','0');
INSERT INTO uchome_invite VALUES ('110','9','','349','chengjun','0','','0');
INSERT INTO uchome_invite VALUES ('111','1','','350','HEMINF','0','','0');
INSERT INTO uchome_invite VALUES ('112','357','','362','shangxianyue','0','','0');
INSERT INTO uchome_invite VALUES ('113','363','','364','ZHUANSHIZHUBAN','0','','0');
INSERT INTO uchome_invite VALUES ('114','363','','381','jony','0','','0');
INSERT INTO uchome_invite VALUES ('115','363','','382','attack','0','','0');
INSERT INTO uchome_invite VALUES ('116','363','','383','zyfzyf','0','','0');
INSERT INTO uchome_invite VALUES ('117','363','','386','mytwd','0','','0');
INSERT INTO uchome_invite VALUES ('118','363','','388','zhanghai','0','','0');
INSERT INTO uchome_invite VALUES ('119','363','','389','zhzhjie','0','','0');
INSERT INTO uchome_invite VALUES ('120','363','','391','jiangshangren','0','','0');
INSERT INTO uchome_invite VALUES ('121','363','','392','ucdn','0','','0');
INSERT INTO uchome_invite VALUES ('122','363','','394','ouyangtn','0','','0');
INSERT INTO uchome_invite VALUES ('123','363','','396','rulerbye','0','','0');
INSERT INTO uchome_invite VALUES ('124','202','','397','csnoviceo','0','','0');
INSERT INTO uchome_invite VALUES ('125','363','','399','panjunshan','0','','0');
INSERT INTO uchome_invite VALUES ('126','363','','400','chenhuabing','0','','0');
INSERT INTO uchome_invite VALUES ('127','9','','401','MYXS','0','','0');
INSERT INTO uchome_invite VALUES ('128','363','','403','mamama','0','','0');
INSERT INTO uchome_invite VALUES ('129','1','','410','pancb','0','','0');
INSERT INTO uchome_invite VALUES ('130','202','','419','kankanshuixian','0','','0');
INSERT INTO uchome_invite VALUES ('131','363','','425','yanghuanzhang','0','','0');
INSERT INTO uchome_invite VALUES ('132','363','','428','beibei','0','','0');
INSERT INTO uchome_invite VALUES ('133','363','','430','sanshao','0','','0');
INSERT INTO uchome_invite VALUES ('134','363','','431','banjianbi','0','','0');
INSERT INTO uchome_invite VALUES ('135','363','','432','wangkun','0','','0');
INSERT INTO uchome_invite VALUES ('136','363','','434','rrppnn','0','','0');
INSERT INTO uchome_invite VALUES ('137','363','','435','lyym','0','','0');
INSERT INTO uchome_invite VALUES ('138','1','','441','qwee','0','','0');
INSERT INTO uchome_invite VALUES ('139','363','','445','DYY','0','','0');
INSERT INTO uchome_invite VALUES ('140','363','','447','olfarmer','0','','0');
INSERT INTO uchome_invite VALUES ('141','363','','451','wuyul','0','','0');
INSERT INTO uchome_invite VALUES ('142','363','','453','ffsfsa','0','','0');
INSERT INTO uchome_invite VALUES ('143','363','','455','longgui','0','','0');
INSERT INTO uchome_invite VALUES ('144','363','','456','woshisheidegege','0','','0');
INSERT INTO uchome_invite VALUES ('145','1','','457','fgh3697278','0','','0');
INSERT INTO uchome_invite VALUES ('146','363','','458','bluesea','0','','0');
INSERT INTO uchome_invite VALUES ('147','458','','462','JONE','0','','0');
INSERT INTO uchome_invite VALUES ('148','458','','431','banjianbi','0','','0');
INSERT INTO uchome_invite VALUES ('149','386','','466','Edward','0','','0');
INSERT INTO uchome_invite VALUES ('150','363','','467','yanyu','0','','0');
INSERT INTO uchome_invite VALUES ('151','363','','470','jtwyslq','0','','0');
INSERT INTO uchome_invite VALUES ('152','1','','471','jaene','0','','0');
INSERT INTO uchome_invite VALUES ('153','363','','474','yanlei','0','','0');
INSERT INTO uchome_invite VALUES ('154','363','','475','jinjianping','0','','0');
INSERT INTO uchome_invite VALUES ('155','386','','476','sunjunlin','0','','0');
INSERT INTO uchome_invite VALUES ('156','458','','478','zxxboy','0','','0');
INSERT INTO uchome_invite VALUES ('157','363','','479','tigern','0','','0');
INSERT INTO uchome_invite VALUES ('158','363','','480','qqyyzz','0','','0');
INSERT INTO uchome_invite VALUES ('159','363','','487','syfsyfsyf','0','','0');
INSERT INTO uchome_invite VALUES ('160','363','','482','wxwttf','0','','0');
INSERT INTO uchome_invite VALUES ('161','458','','517','rabishi123','0','','0');
INSERT INTO uchome_invite VALUES ('162','458','','523','lqz','0','','0');
INSERT INTO uchome_invite VALUES ('163','9','','537','demonpig','0','','0');
INSERT INTO uchome_invite VALUES ('164','458','','542','Breeze','0','','0');
INSERT INTO uchome_invite VALUES ('165','458','','434','rrppnn','0','','0');
INSERT INTO uchome_invite VALUES ('166','363','','556','wwwqq001','0','','0');
INSERT INTO uchome_invite VALUES ('167','540','','557','sejianjian','0','','0');
INSERT INTO uchome_invite VALUES ('168','363','','560','kinggg','0','','0');
INSERT INTO uchome_invite VALUES ('169','363','','580','haiti','0','','0');
INSERT INTO uchome_invite VALUES ('170','363','','583','jackxiao','0','','0');
INSERT INTO uchome_invite VALUES ('171','363','','592','abu','0','','0');

DROP TABLE IF EXISTS uchome_log;
CREATE TABLE uchome_log (
  logid mediumint(8) unsigned NOT NULL auto_increment,
  id mediumint(8) unsigned NOT NULL default '0',
  idtype char(20) NOT NULL default '',
  PRIMARY KEY  (logid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_magic;
CREATE TABLE uchome_magic (
  mid varchar(15) NOT NULL default '',
  `name` varchar(30) NOT NULL default '',
  description text NOT NULL,
  forbiddengid text NOT NULL,
  charge smallint(6) unsigned NOT NULL default '0',
  experience smallint(6) unsigned NOT NULL default '0',
  provideperoid int(10) unsigned NOT NULL default '0',
  providecount smallint(6) unsigned NOT NULL default '0',
  useperoid int(10) unsigned NOT NULL default '0',
  usecount smallint(6) unsigned NOT NULL default '0',
  displayorder smallint(6) unsigned NOT NULL default '0',
  custom text NOT NULL,
  `close` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (mid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_magic VALUES ('invisible','隐身草','让自己隐身登录，不显示在线，24小时内有效','','50','5','86400','10','86400','1','0','','0');
INSERT INTO uchome_magic VALUES ('friendnum','好友增容卡','在允许添加的最多好友数限制外，增加10个好友名额','','30','3','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('attachsize','附件增容卡','使用一次，可以给自己增加 10M 的附件空间','','30','3','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('thunder','雷鸣之声','发布一条全站信息，让大家知道自己上线了','','500','5','86400','5','86400','1','0','','0');
INSERT INTO uchome_magic VALUES ('updateline','救生圈','把指定对象的发布时间更新为当前时间','','200','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('downdateline','时空机','把指定对象的发布时间修改为过去的时间','','250','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('color','彩色灯','把指定对象的标题变成彩色的','','50','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('hot','热点灯','把指定对象的热度增加站点推荐的热点值','','50','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('visit','互访卡','随机选择10个好友，向其打招呼、留言或访问空间','','20','2','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('icon','彩虹蛋','给指定对象的标题前面增加图标（最多8个图标）','','20','2','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('flicker','彩虹炫','让评论、留言的文字闪烁起来','','30','3','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('gift','红包卡','在自己的空间埋下积分红包送给来访者','','20','2','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('superstar','超级明星','在个人主页，给自己的头像增加超级明星标识','','30','3','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('viewmagiclog','八卦镜','查看指定用户最近使用的道具记录','','100','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('viewmagic','透视镜','查看指定用户当前持有的道具','','100','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('viewvisitor','偷窥镜','查看指定用户最近访问过的10个空间','','100','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('call','点名卡','发通知给自己的好友，让他们来查看指定的对象','','50','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('coupon','代金券','购买道具时折换一定量的积分','','0','0','0','0','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('frame','相框','给自己的照片添上相框','','30','3','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('bgimage','信纸','给指定的对象添加信纸背景','','30','3','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('doodle','涂鸦板','允许在留言、评论等操作时使用涂鸦板','','30','3','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('anonymous','匿名卡','在指定的地方，让自己的名字显示为匿名','','50','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('reveal','照妖镜','可以查看一次匿名用户的真实身份','','100','5','86400','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('license','道具转让许可证','使用许可证，将道具赠送给指定好友','','10','1','3600','999','0','1','0','','0');
INSERT INTO uchome_magic VALUES ('detector','探测器','探测埋了红包的空间','','10','1','86400','999','0','1','0','','0');

DROP TABLE IF EXISTS uchome_magicinlog;
CREATE TABLE uchome_magicinlog (
  logid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  mid varchar(15) NOT NULL default '',
  count smallint(6) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  fromid mediumint(8) unsigned NOT NULL default '0',
  credit smallint(6) unsigned NOT NULL default '0',
  dateline int(10) NOT NULL default '0',
  PRIMARY KEY  (logid),
  KEY uid (uid,dateline),
  KEY `type` (`type`,fromid,dateline)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk AUTO_INCREMENT=2;

INSERT INTO uchome_magicinlog VALUES ('1','1','admin','invisible','1','1','0','50','1314934184');

DROP TABLE IF EXISTS uchome_magicstore;
CREATE TABLE uchome_magicstore (
  mid varchar(15) NOT NULL default '',
  `storage` smallint(6) unsigned NOT NULL default '0',
  lastprovide int(10) unsigned NOT NULL default '0',
  sellcount int(8) unsigned NOT NULL default '0',
  sellcredit int(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (mid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_magicstore VALUES ('invisible','10','1314934186','1','50');
INSERT INTO uchome_magicstore VALUES ('friendnum','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('attachsize','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('thunder','5','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('updateline','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('downdateline','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('color','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('hot','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('visit','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('icon','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('flicker','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('gift','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('superstar','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('viewmagiclog','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('viewmagic','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('viewvisitor','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('call','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('frame','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('bgimage','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('doodle','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('anonymous','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('reveal','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('license','999','1312915699','0','0');
INSERT INTO uchome_magicstore VALUES ('detector','999','1312915699','0','0');

DROP TABLE IF EXISTS uchome_magicuselog;
CREATE TABLE uchome_magicuselog (
  logid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  mid varchar(15) NOT NULL default '',
  id mediumint(8) unsigned NOT NULL default '0',
  idtype varchar(20) NOT NULL default '',
  count mediumint(8) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  expire int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (logid),
  KEY uid (uid,mid),
  KEY id (id,idtype)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk AUTO_INCREMENT=2;

INSERT INTO uchome_magicuselog VALUES ('1','1','admin','invisible','0','','1','','1314934185','1315020585');

DROP TABLE IF EXISTS uchome_mailcron;
CREATE TABLE uchome_mailcron (
  cid mediumint(8) unsigned NOT NULL auto_increment,
  touid mediumint(8) unsigned NOT NULL default '0',
  email varchar(100) NOT NULL default '',
  sendtime int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (cid),
  KEY sendtime (sendtime)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=gbk AUTO_INCREMENT=108;

INSERT INTO uchome_mailcron VALUES ('99','0','1004674655@qq.com','0');
INSERT INTO uchome_mailcron VALUES ('100','0','86064366@qq.com','0');
INSERT INTO uchome_mailcron VALUES ('101','0','860643668@qq.com','0');
INSERT INTO uchome_mailcron VALUES ('102','0','xiaoyezi@126.com','0');
INSERT INTO uchome_mailcron VALUES ('103','0','871656@qq.com','0');
INSERT INTO uchome_mailcron VALUES ('104','0','8546416@qq.com','0');
INSERT INTO uchome_mailcron VALUES ('105','0','141835464@qq.com','0');
INSERT INTO uchome_mailcron VALUES ('106','0','yy3431777@163.com','0');
INSERT INTO uchome_mailcron VALUES ('107','0','545425@qq.com','0');

DROP TABLE IF EXISTS uchome_mailqueue;
CREATE TABLE uchome_mailqueue (
  qid mediumint(8) unsigned NOT NULL auto_increment,
  cid mediumint(8) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  message text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (qid),
  KEY mcid (cid,dateline)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=gbk AUTO_INCREMENT=109;

INSERT INTO uchome_mailqueue VALUES ('100','99','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=5e0dAiqaNiHliWw%2B67vgtWcDjAfDaKaIbf5jWbRwBeCR5lIGkVfws%2FHCzJ3BzIOP\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=5e0dAiqaNiHliWw%2B67vgtWcDjAfDaKaIbf5jWbRwBeCR5lIGkVfws%2FHCzJ3BzIOP</a>','1314929403');
INSERT INTO uchome_mailqueue VALUES ('101','100','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=f28dqFhSO1K%2B2esWcvmNQjwPadnazUTuTKs%2FpYbLONhKA0sjF3Un4VatPWIeIg\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=f28dqFhSO1K%2B2esWcvmNQjwPadnazUTuTKs%2FpYbLONhKA0sjF3Un4VatPWIeIg</a>','1314936507');
INSERT INTO uchome_mailqueue VALUES ('102','101','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=a76dC53Z4Yhg5aaGZUeLEg6W2V9xsUAHkA2sN4f7TDR2Dl4A7G6Q0zl5jWBd%2BHQ\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=a76dC53Z4Yhg5aaGZUeLEg6W2V9xsUAHkA2sN4f7TDR2Dl4A7G6Q0zl5jWBd%2BHQ</a>','1314938156');
INSERT INTO uchome_mailqueue VALUES ('103','102','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=963ewV9eloidKYBVE%2BBXf2oIp2wnJ8d8bvpaI6vMsq4plG2rbT%2FdqSo3LeFMrhQ\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=963ewV9eloidKYBVE%2BBXf2oIp2wnJ8d8bvpaI6vMsq4plG2rbT%2FdqSo3LeFMrhQ</a>','1315016549');
INSERT INTO uchome_mailqueue VALUES ('104','103','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=47a17TAkE6DXgeO8QEqagS6MvK4oBkEzkO%2BbVrhz7Zvbqcq2uN0PyIJc6CU\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=47a17TAkE6DXgeO8QEqagS6MvK4oBkEzkO%2BbVrhz7Zvbqcq2uN0PyIJc6CU</a>','1315017741');
INSERT INTO uchome_mailqueue VALUES ('105','104','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=f588zPkB1%2FIk2NHgNpPnsOGK6tVJxfnz7O2bJMk9Hj5Y9%2FstLSjzh8DHjhuC\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=f588zPkB1%2FIk2NHgNpPnsOGK6tVJxfnz7O2bJMk9Hj5Y9%2FstLSjzh8DHjhuC</a>','1316139290');
INSERT INTO uchome_mailqueue VALUES ('106','105','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=fad0GVlDTgZi%2FgDmh9NO4jzkCdQ6KS2%2F1StGHUW3PY6ixByK75ZKtKUK%2F4jzgAs\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=fad0GVlDTgZi%2FgDmh9NO4jzkCdQ6KS2%2F1StGHUW3PY6ixByK75ZKtKUK%2F4jzgAs</a>','1316140528');
INSERT INTO uchome_mailqueue VALUES ('107','106','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=a920i8InA8GviM0ueeHcEWoTXejrJg6LQU1Rc0KofAyT7dfDPDs5QmZ629lGa1Nn\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=a920i8InA8GviM0ueeHcEWoTXejrJg6LQU1Rc0KofAyT7dfDPDs5QmZ629lGa1Nn</a>','1316237582');
INSERT INTO uchome_mailqueue VALUES ('108','107','您的邮箱激活邮件','请复制下面的激活链接到浏览器进行访问，以便激活你的邮箱。<br>邮箱激活链接:<br><a href=\"http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=dc8dXHDRz%2BLSveQyn0juSMup8WXJS0SEDXOVD0kAspgInxA%2BQD2muDEG9zmn\" target=\"_blank\">http://www.zibo3.com/do.php?ac=emailcheck&amp;hash=dc8dXHDRz%2BLSveQyn0juSMup8WXJS0SEDXOVD0kAspgInxA%2BQD2muDEG9zmn</a>','1316535582');

DROP TABLE IF EXISTS uchome_mardpay;
CREATE TABLE uchome_mardpay (
  pid int(8) NOT NULL auto_increment,
  payno varchar(32) NOT NULL,
  payuid int(8) NOT NULL,
  paymcard double(10,2) NOT NULL,
  paynote varchar(100) default NULL,
  paytext varchar(100) NOT NULL,
  paytime datetime default NULL,
  PRIMARY KEY  (pid)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=gbk AUTO_INCREMENT=70;

INSERT INTO uchome_mardpay VALUES ('1','','5','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-05 20:41:22');
INSERT INTO uchome_mardpay VALUES ('2','','7','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-05 20:45:30');
INSERT INTO uchome_mardpay VALUES ('3','','9','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-05 22:26:59');
INSERT INTO uchome_mardpay VALUES ('4','','10','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-05 22:28:25');
INSERT INTO uchome_mardpay VALUES ('5','','11','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-05 22:31:45');
INSERT INTO uchome_mardpay VALUES ('6','','12','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-05 22:41:09');
INSERT INTO uchome_mardpay VALUES ('7','','13','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-05 22:46:50');
INSERT INTO uchome_mardpay VALUES ('8','','15','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-05 23:49:12');
INSERT INTO uchome_mardpay VALUES ('9','1249550758','21','30.00','3','积分兑换VIP消费30积分(增加800天VIP服务).','2009-08-06 17:25:58');
INSERT INTO uchome_mardpay VALUES ('10','','54','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-06 22:56:50');
INSERT INTO uchome_mardpay VALUES ('11','','55','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-06 23:19:50');
INSERT INTO uchome_mardpay VALUES ('12','','109','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-08 03:32:36');
INSERT INTO uchome_mardpay VALUES ('13','','142','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-08 17:56:18');
INSERT INTO uchome_mardpay VALUES ('14','','143','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-08 18:11:42');
INSERT INTO uchome_mardpay VALUES ('15','','149','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-08 21:15:43');
INSERT INTO uchome_mardpay VALUES ('16','','163','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-09 07:14:59');
INSERT INTO uchome_mardpay VALUES ('17','','166','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-09 08:42:11');
INSERT INTO uchome_mardpay VALUES ('18','1249808582','21','0.00','5','减少0天VIP服务.','2009-08-09 17:03:02');
INSERT INTO uchome_mardpay VALUES ('19','','194','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-09 21:50:14');
INSERT INTO uchome_mardpay VALUES ('20','','197','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-10 00:29:26');
INSERT INTO uchome_mardpay VALUES ('21','','229','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-10 18:21:27');
INSERT INTO uchome_mardpay VALUES ('22','','237','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-11 02:39:03');
INSERT INTO uchome_mardpay VALUES ('23','','296','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-14 19:35:58');
INSERT INTO uchome_mardpay VALUES ('24','','307','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-15 17:39:40');
INSERT INTO uchome_mardpay VALUES ('25','','308','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-15 19:37:28');
INSERT INTO uchome_mardpay VALUES ('26','','314','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-16 14:27:37');
INSERT INTO uchome_mardpay VALUES ('27','','328','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-17 13:41:19');
INSERT INTO uchome_mardpay VALUES ('28','','345','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-18 11:54:25');
INSERT INTO uchome_mardpay VALUES ('29','','354','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-19 10:12:28');
INSERT INTO uchome_mardpay VALUES ('30','','360','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-19 20:12:19');
INSERT INTO uchome_mardpay VALUES ('31','1250697701','368','0.00','4','激活VIP状态(增加3天VIP服务).','2009-08-20 00:01:41');
INSERT INTO uchome_mardpay VALUES ('32','1250697744','360','0.00','5','取消VIP状态(减少360天VIP服务).','2009-08-20 00:02:24');
INSERT INTO uchome_mardpay VALUES ('33','1250697755','354','0.00','5','取消VIP状态(减少360天VIP服务).','2009-08-20 00:02:35');
INSERT INTO uchome_mardpay VALUES ('34','1250698659','368','0.00','5','取消VIP状态(减少3天VIP服务).','2009-08-20 00:17:39');
INSERT INTO uchome_mardpay VALUES ('35','','408','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-22 13:13:59');
INSERT INTO uchome_mardpay VALUES ('36','','444','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-24 15:47:54');
INSERT INTO uchome_mardpay VALUES ('37','1251108689','363','300.00','3','积分兑换VIP消费300积分(增加30天VIP服务).','2009-08-24 18:11:29');
INSERT INTO uchome_mardpay VALUES ('38','','457','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-24 22:45:18');
INSERT INTO uchome_mardpay VALUES ('39','','460','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-24 23:55:47');
INSERT INTO uchome_mardpay VALUES ('40','','486','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-25 14:52:12');
INSERT INTO uchome_mardpay VALUES ('41','','490','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-25 17:57:07');
INSERT INTO uchome_mardpay VALUES ('42','','494','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-25 23:48:48');
INSERT INTO uchome_mardpay VALUES ('43','','508','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-26 10:03:39');
INSERT INTO uchome_mardpay VALUES ('44','','531','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-26 16:10:00');
INSERT INTO uchome_mardpay VALUES ('45','','538','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-26 19:00:08');
INSERT INTO uchome_mardpay VALUES ('46','1251306458','363','0.00','5','减少0天VIP服务.','2009-08-27 01:07:38');
INSERT INTO uchome_mardpay VALUES ('47','','551','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-27 14:01:49');
INSERT INTO uchome_mardpay VALUES ('48','','563','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-27 18:06:02');
INSERT INTO uchome_mardpay VALUES ('49','','564','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-27 18:15:25');
INSERT INTO uchome_mardpay VALUES ('50','','566','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-27 19:02:12');
INSERT INTO uchome_mardpay VALUES ('51','1251388391','570','0.00','4','激活VIP状态(增加3天VIP服务).','2009-08-27 23:53:11');
INSERT INTO uchome_mardpay VALUES ('52','','574','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-28 00:11:15');
INSERT INTO uchome_mardpay VALUES ('53','1251390193','574','0.00','5','取消VIP状态(减少360天VIP服务).','2009-08-28 00:23:13');
INSERT INTO uchome_mardpay VALUES ('54','1251390230','551','0.00','5','取消VIP状态(减少360天VIP服务).','2009-08-28 00:23:50');
INSERT INTO uchome_mardpay VALUES ('55','1251390251','508','0.00','5','取消VIP状态(减少360天VIP服务).','2009-08-28 00:24:11');
INSERT INTO uchome_mardpay VALUES ('56','1251390271','486','0.00','5','取消VIP状态(减少360天VIP服务).','2009-08-28 00:24:31');
INSERT INTO uchome_mardpay VALUES ('57','1251390290','460','0.00','5','取消VIP状态(减少360天VIP服务).','2009-08-28 00:24:50');
INSERT INTO uchome_mardpay VALUES ('58','1251390310','494','0.00','5','取消VIP状态(减少360天VIP服务).','2009-08-28 00:25:10');
INSERT INTO uchome_mardpay VALUES ('59','','582','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-28 12:38:08');
INSERT INTO uchome_mardpay VALUES ('60','','590','0.00','4','女性网友注册(增加3天VIP服务)','2009-08-28 15:38:24');
INSERT INTO uchome_mardpay VALUES ('61','1312932997','592','0.00','4','激活VIP状态(增加3天VIP服务).','2011-08-10 07:36:37');
INSERT INTO uchome_mardpay VALUES ('62','','3','0.00','4','女性网友注册(增加3天VIP服务)','2011-08-10 14:35:54');
INSERT INTO uchome_mardpay VALUES ('63','','4','0.00','4','女性网友注册(增加3天VIP服务)','2011-08-10 22:27:39');
INSERT INTO uchome_mardpay VALUES ('64','1312993421','2','0.00','4','激活VIP状态(增加3天VIP服务).','2011-08-11 00:23:41');
INSERT INTO uchome_mardpay VALUES ('65','1314934110','592','0.00','4','激活VIP状态(增加3天VIP服务).','2011-09-02 11:28:30');
INSERT INTO uchome_mardpay VALUES ('66','1314938687','2','0.00','4','激活VIP状态(增加3天VIP服务).','2011-09-02 12:44:47');
INSERT INTO uchome_mardpay VALUES ('67','1314938695','2','0.00','4','激活VIP状态(增加360天VIP服务).','2011-09-02 12:44:55');
INSERT INTO uchome_mardpay VALUES ('68','1314938713','3','0.00','4','激活VIP状态(增加360天VIP服务).','2011-09-02 12:45:13');
INSERT INTO uchome_mardpay VALUES ('69','1314938722','4','0.00','4','激活VIP状态(增加360天VIP服务).','2011-09-02 12:45:22');

DROP TABLE IF EXISTS uchome_member;
CREATE TABLE uchome_member (
  uid mediumint(8) unsigned NOT NULL auto_increment,
  username char(15) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  PRIMARY KEY  (uid)
) ENGINE=MyISAM AUTO_INCREMENT=593 DEFAULT CHARSET=gbk AUTO_INCREMENT=593;

INSERT INTO uchome_member VALUES ('1','admin','f5d35bbe942a097c975ff9c8127ce4d3');
INSERT INTO uchome_member VALUES ('2','羊爱上狼','f037697f332b2f0f65f8639565305e94');
INSERT INTO uchome_member VALUES ('3','情缘难了','6ef4478468ac68ec6359d4fcce5b09c8');
INSERT INTO uchome_member VALUES ('4','找个美女','3b7d781bbbe82feefa1d184819238ff5');
INSERT INTO uchome_member VALUES ('5','小叶子','022f1706cbe8943d8631e9baaa6c31f4');
INSERT INTO uchome_member VALUES ('6','校内网','623390ef89ce0800d31323f35dbcf1ad');
INSERT INTO uchome_member VALUES ('7','小女子','f1429e41b502e3f588f4391a5e2fc008');
INSERT INTO uchome_member VALUES ('8','5lyx','1b1ef116d0902f2df5d118625a17c446');
INSERT INTO uchome_member VALUES ('9','changchneg','757c35b45414fbcadf291d5bcc903cce');
INSERT INTO uchome_member VALUES ('10','fenghu','666a4a811ea2ee47b5c16dcc2bd4e91d');
INSERT INTO uchome_member VALUES ('11','jingshui','f47c3b8fa084c159be824d37e174bc29');
INSERT INTO uchome_member VALUES ('12','xuelian','0664f5005305fb31bcb0f7f796bc3ce5');
INSERT INTO uchome_member VALUES ('13','feifei','372274090a32701ef8f842c614efa4e0');
INSERT INTO uchome_member VALUES ('14','jjkj','7bae1e5f780a4b992a2d854e1a84eb7d');
INSERT INTO uchome_member VALUES ('15','lingling','6c5b508d318595ab35640702a7cf0628');
INSERT INTO uchome_member VALUES ('16','niaoked','23c6a460315df2de19cdefc8ce1d68bf');
INSERT INTO uchome_member VALUES ('17','yaya','8eeb6bdd25bc7acdaffc18ae76d3890c');
INSERT INTO uchome_member VALUES ('18','yanzi','d892791c5af7713d0e12a996365f0930');
INSERT INTO uchome_member VALUES ('19','susu','82e1aea3eeb71b5423eea11c2c4f291c');
INSERT INTO uchome_member VALUES ('20','traveler','1b57ae955643cfca9e1097f9118a6004');
INSERT INTO uchome_member VALUES ('21','wangyang','d16cff6a3cb6d7916fa0920397f4f168');
INSERT INTO uchome_member VALUES ('22','zhijun','8b8e6acc2477152151eb79a702de2ec0');
INSERT INTO uchome_member VALUES ('23','xgyinqing','d2b555fffd40244c96d737742386ab9e');
INSERT INTO uchome_member VALUES ('24','ywgg','d81a2a995fbd6523f4fcf4ec2c46fc2f');
INSERT INTO uchome_member VALUES ('25','huanglang','633fa0ca795f399388461bf8004f2ccf');
INSERT INTO uchome_member VALUES ('26','xiaobaizj','d39e7d5421afb3754fdae30f25cf1a0c');
INSERT INTO uchome_member VALUES ('27','tianzi','9803f78a46db59a1ef64e16c18b38b1d');
INSERT INTO uchome_member VALUES ('28','zzz','223c881b53165d4736091faa427e9107');
INSERT INTO uchome_member VALUES ('29','asdzxc','cbc965b92a890fe09636a36cc77de3cb');
INSERT INTO uchome_member VALUES ('30','norye','afe1027750204833e27d21aa9cc133f3');
INSERT INTO uchome_member VALUES ('31','andy','fa8cc1be3ee68894d6de63bff5f612ca');
INSERT INTO uchome_member VALUES ('32','wjunhua','42aa7bc9a998c1e206a1a3a8017756c0');
INSERT INTO uchome_member VALUES ('33','tiancaigui','2a021752ac36d2cedd4135fdd35d5ba4');
INSERT INTO uchome_member VALUES ('34','liliangliang','0fde98b2e82834db3c6ffc4f4c8acf2c');
INSERT INTO uchome_member VALUES ('35','BNRW','556c8f90cf35151a4c96165710d75eaa');
INSERT INTO uchome_member VALUES ('36','Allan','a60cba3244d9777e7550ff338170a84e');
INSERT INTO uchome_member VALUES ('37','diablo','c42ab9a56bb6974e048634be452e13af');
INSERT INTO uchome_member VALUES ('38','andylau','14af4feaba3bab3bf1a4467af70117b4');
INSERT INTO uchome_member VALUES ('39','ashice','1583c15f475a348f2b70a6f1a50b4273');
INSERT INTO uchome_member VALUES ('40','gswt','6f00c0e90a2b4f74d46ca6d53a36893b');
INSERT INTO uchome_member VALUES ('41','liangdong','1a8c67cad0a8a8b06733b2131af74467');
INSERT INTO uchome_member VALUES ('42','wode','524d48720fb146ae5600103df0f829d3');
INSERT INTO uchome_member VALUES ('43','love','3fd0163803c1fa8319f65c20ece21186');
INSERT INTO uchome_member VALUES ('44','denglp','3360fbed4e2a70c4bb32d8c80a611363');
INSERT INTO uchome_member VALUES ('45','xiaozhougod','f412b68c339dc196e5d2b8292cfce881');
INSERT INTO uchome_member VALUES ('46','ma876401970','854f742c321747bb993cb1dd363b7b94');
INSERT INTO uchome_member VALUES ('47','Larry','bd5056966b458ceb921305e546562d26');
INSERT INTO uchome_member VALUES ('48','yesex','b248ebfda9cd908df87607c413e2102f');
INSERT INTO uchome_member VALUES ('49','piao','6f69af2c95efad1e7c05459ebfd7d908');
INSERT INTO uchome_member VALUES ('50','wjiusyangyong','d88f8688e85dad35b772f018f92c7222');
INSERT INTO uchome_member VALUES ('51','langbi','7f4956f4c7f92813341293c41cd0a9d3');
INSERT INTO uchome_member VALUES ('52','ming','de706c51c1ed906c8247da7d089f8290');
INSERT INTO uchome_member VALUES ('53','xingshengh','5a17b11164c2ad4237fc49850189f4ea');
INSERT INTO uchome_member VALUES ('54','zhangyan','0fe66fd2a2573883b4efefd3a06e6ab7');
INSERT INTO uchome_member VALUES ('55','chy','6b4a765db041e8110af8d3a95d8cc91b');
INSERT INTO uchome_member VALUES ('56','mylover','6e1628df9dcdbc214d8f8efee66a1610');
INSERT INTO uchome_member VALUES ('57','luoyonyi','7e696c73e79f4d66f9e3335494a9c5a0');
INSERT INTO uchome_member VALUES ('58','huaynie','5d66b4d79e2ed3d8f08d53169057b280');
INSERT INTO uchome_member VALUES ('59','yanlangtian','cdf3cbadc21a2aee9c8a67586c95a0cd');
INSERT INTO uchome_member VALUES ('60','hand','7b249c8f79417607f0e042794b9b3ab9');
INSERT INTO uchome_member VALUES ('61','zht5087655','0c8e640f2df4b4ade68db7d0a49de836');
INSERT INTO uchome_member VALUES ('62','asasu','f325349a3e19e73e45d3e6e14b24199b');
INSERT INTO uchome_member VALUES ('63','bashustar','b79c787048dcc456ffb434116bf1a08c');
INSERT INTO uchome_member VALUES ('64','liusuo','e73a23ff6aa7ec03a62942997685124c');
INSERT INTO uchome_member VALUES ('65','jimodeyewan','8b281631a81fbd4cbe36737a327a8e17');
INSERT INTO uchome_member VALUES ('66','chenqian','98878e1c99b9a30aca9dfd0960c01725');
INSERT INTO uchome_member VALUES ('67','pianist','97b56e98a97be63aed196108a581c171');
INSERT INTO uchome_member VALUES ('68','YANGZENGJUN','373c8ba74c1a55390b01bdf735b0b277');
INSERT INTO uchome_member VALUES ('69','hujiahujia','8b4e3942dd2086f5ce7a8da892a3743f');
INSERT INTO uchome_member VALUES ('70','qq872300214','6b6203fa579b0f697d2c344b687412e3');
INSERT INTO uchome_member VALUES ('71','wujie01','daa1121f2d0cd90e5edb51940024e76b');
INSERT INTO uchome_member VALUES ('72','PPXY','40cb0acc701369f9c03da6761a5247c8');
INSERT INTO uchome_member VALUES ('73','yanluo','6326157badf0be27e134898fe9210255');
INSERT INTO uchome_member VALUES ('74','leo','7b08ea8b18e7fd24a17490f8c1e98977');
INSERT INTO uchome_member VALUES ('75','linwenyi','3b1f6ed49a249f72478b9fd796d14f55');
INSERT INTO uchome_member VALUES ('76','asd','9f24e2696136594c6529add640bff1c3');
INSERT INTO uchome_member VALUES ('77','chinaxiami','ee24870a2a95182837a9e20dee3cc91e');
INSERT INTO uchome_member VALUES ('78','sevatte','2674bb644ba13460e11e753998661833');
INSERT INTO uchome_member VALUES ('79','shang','bf4bfb8e57960d307c395dd02d2cc208');
INSERT INTO uchome_member VALUES ('80','aaasdfdsf','4c92bab413c0275592d3e4af13435e40');
INSERT INTO uchome_member VALUES ('81','yhyfrend','961172bbb8c2ed91b90e673f6ebf3f8d');
INSERT INTO uchome_member VALUES ('82','zxzxzx','83460f1733392f799f5ea1b051ba66fe');
INSERT INTO uchome_member VALUES ('83','wyj','b5295fa15c356fa279209c1f4b542a20');
INSERT INTO uchome_member VALUES ('84','jianghai','3ce3b93db0e85729fe6ed303987530c5');
INSERT INTO uchome_member VALUES ('85','tanglao','a1dc4a917badb9ef08c47026faf3e9a3');
INSERT INTO uchome_member VALUES ('86','sdzx','097f5f48eef7e846a54e6cf0cd6284f6');
INSERT INTO uchome_member VALUES ('87','cec','9211e83817d5be0ebca58e77d7884146');
INSERT INTO uchome_member VALUES ('88','sorry','c1e1b975c27a86ba621f1fe789017aa6');
INSERT INTO uchome_member VALUES ('89','YMI','9b7c655febdfc4d97325986f868eee77');
INSERT INTO uchome_member VALUES ('90','xiaxuebianjie','fadc74043506f03a841cd71487ba9dda');
INSERT INTO uchome_member VALUES ('91','kuangniangao','0e2bc44bb0cb418d1ded7a12bb9bcc36');
INSERT INTO uchome_member VALUES ('92','haose','5071c1dc41d62ac8bf5fe299a63f0058');
INSERT INTO uchome_member VALUES ('93','czadko','fd3af75502ed956352cabe12f1fc4826');
INSERT INTO uchome_member VALUES ('94','FLY','4c18404cd1ec9ab764410ba0744e7c61');
INSERT INTO uchome_member VALUES ('95','ayzhoujian','d1dd0d04ee6a9ab793a04fae0f1b78b2');
INSERT INTO uchome_member VALUES ('96','abcdefg','204926727d1c03c991afd469c6e2df20');
INSERT INTO uchome_member VALUES ('97','wbd','2c98ddeb165913a6a7c39b8b35e66b81');
INSERT INTO uchome_member VALUES ('98','sihan','4b992d9940d664cdeeebd107fa4ea1ad');
INSERT INTO uchome_member VALUES ('99','wzs','a23a804e933d2e2a29031136f8dc5bf1');
INSERT INTO uchome_member VALUES ('100','lixizheng','6dcc3fa393bceb3e702e9b33542f24b9');
INSERT INTO uchome_member VALUES ('101','lvxiaoqi','6274bafe6dc9334c26909611b74bdde2');
INSERT INTO uchome_member VALUES ('102','alanpolo','ea7cf41e70be78c39dc472066cc890ac');
INSERT INTO uchome_member VALUES ('103','sylt','2e9302f6acd009af8ebcf21f583fea7e');
INSERT INTO uchome_member VALUES ('104','gugu','e08a08531a7a5a1ae99d7176e84e1fac');
INSERT INTO uchome_member VALUES ('105','yyc','3044e9f3a687a5beb6f3c062e0e4ccb2');
INSERT INTO uchome_member VALUES ('106','happyboy5330','a2c64ec1119e2c5c7038c914c297e487');
INSERT INTO uchome_member VALUES ('107','kang9335','7aae9df05fef47539751000b5ba69b1e');
INSERT INTO uchome_member VALUES ('108','simon','d3c6503409fcacf1f89df75917985fa5');
INSERT INTO uchome_member VALUES ('109','yycf','16b5df87d461844b27ff896003813384');
INSERT INTO uchome_member VALUES ('110','CCA','cb8dc5b9f17ae329adb06b7e728b1cc0');
INSERT INTO uchome_member VALUES ('111','hellobeijing','7e6128070fcb54065290a65b29bfdfbd');
INSERT INTO uchome_member VALUES ('112','shenhan','f51e1edd717c34dff35207cf8947a455');
INSERT INTO uchome_member VALUES ('113','hanhan','f6c36096b11e7bf765c82d6acf8cf920');
INSERT INTO uchome_member VALUES ('114','worinima','3edf7bf9de6c64d5457931ba815e2cf9');
INSERT INTO uchome_member VALUES ('115','hsz','570767c0c83fddf529faaefc246aaa28');
INSERT INTO uchome_member VALUES ('116','woyjh','2f2a6995dcacb1f1cff340433e059dbe');
INSERT INTO uchome_member VALUES ('117','lxfku','e7266393064d7bd5f06ea7dc2fdb22e5');
INSERT INTO uchome_member VALUES ('118','sosojust','8b2db0f5c4392b10339c65801af2162f');
INSERT INTO uchome_member VALUES ('119','sky','f3008565f3da8d79e003b67719eeefca');
INSERT INTO uchome_member VALUES ('120','younger','875642347f205f14bf194a3964e022b5');
INSERT INTO uchome_member VALUES ('121','SHR','5844f98b548759f6a80978a15c49933c');
INSERT INTO uchome_member VALUES ('122','delong','247304f53cca54196a50a375c751c393');
INSERT INTO uchome_member VALUES ('123','kivenlv','7a60c914398fefe2ad64cc2ba2e90b77');
INSERT INTO uchome_member VALUES ('124','cdscjk','b75d0152d13bfe7d4695fd54a3afbce1');
INSERT INTO uchome_member VALUES ('125','mylove','a304110a90f41d38f5fdb9fb999c44e1');
INSERT INTO uchome_member VALUES ('126','wangleiqq','cd8cdeb9d09e72024f0e7d11a1326652');
INSERT INTO uchome_member VALUES ('127','ailove','8d42dbb48560f0dde36345c30fcfed33');
INSERT INTO uchome_member VALUES ('128','zhanbo','97b00d0f660d25db1d54f5c0954d55bb');
INSERT INTO uchome_member VALUES ('129','hjh','fd0f29044a478955f78f893989918f51');
INSERT INTO uchome_member VALUES ('130','ado83','55b02008bd2d1c15c175c9cf838b7fce');
INSERT INTO uchome_member VALUES ('131','ding13052','0fa1a422ab93f7d98a9cecb8ef10d4a6');
INSERT INTO uchome_member VALUES ('132','payzy','0a1c405674f1dd6cf096c4b0b1e3366e');
INSERT INTO uchome_member VALUES ('133','mokemoke','7162dfacbb82fd04b2c268fa1010aa5c');
INSERT INTO uchome_member VALUES ('134','bluedryad','8bdc79441597dc7166bac1694c39b945');
INSERT INTO uchome_member VALUES ('135','iamwayney','0723f60ef83d4322d8b27ac677066787');
INSERT INTO uchome_member VALUES ('136','junyue','e5f2f24870b2d57d328bc35a852df49e');
INSERT INTO uchome_member VALUES ('137','junyuexiaogang','2fe37e4b69693d3537cbbfa17bfa5b13');
INSERT INTO uchome_member VALUES ('138','cbaabc','e080b9e00f89ba86532eed710b19971c');
INSERT INTO uchome_member VALUES ('139','popo','ebe78e539aefd13ea7813f7bc35facd1');
INSERT INTO uchome_member VALUES ('140','alloc','75d7722f01ec7cef14487a9e59f9032f');
INSERT INTO uchome_member VALUES ('141','aaaaaaaaqqqqq','b1265b0ffa462733d7d2538e1bcdf327');
INSERT INTO uchome_member VALUES ('142','bluedryed','39cfbc3816ffbc7c8528bad416859346');
INSERT INTO uchome_member VALUES ('143','dddkkkzhao','20a60827328633a3a76461deb827820e');
INSERT INTO uchome_member VALUES ('144','bejiyu','501460c02e2d3b1fb7522005c161b2f8');
INSERT INTO uchome_member VALUES ('145','mjhjhj','420af247393f3dbaf97544e869bc140c');
INSERT INTO uchome_member VALUES ('146','sunuma','0cf6f2ece711185e8f462b5b3825f812');
INSERT INTO uchome_member VALUES ('147','jbxx','8484e21671e79e2777ffdda75638287b');
INSERT INTO uchome_member VALUES ('148','sunzhigang18','175afc05918e6aa80a43d76790e92459');
INSERT INTO uchome_member VALUES ('149','sdsdg','af7845192c2527858a13048e4ef45475');
INSERT INTO uchome_member VALUES ('150','www','3a21d18c8a4da8085207237991cbcb68');
INSERT INTO uchome_member VALUES ('151','zrtyzrcx','08d62007dfb955e71bba04b972f6636e');
INSERT INTO uchome_member VALUES ('152','chenke','02d74d1ca42cb78d26cd96e7b4a3df4d');
INSERT INTO uchome_member VALUES ('153','modinglin','398e241a152af56d21a3678dcc1e30f0');
INSERT INTO uchome_member VALUES ('154','zhkabc','27f5012aeb78e501e72d4ac170209cb3');
INSERT INTO uchome_member VALUES ('155','zht_tao','3a232e877add78aac531c15581469dcb');
INSERT INTO uchome_member VALUES ('156','xiaoxiu','17bc039bcf8b1f0662a7267f94e3a1f7');
INSERT INTO uchome_member VALUES ('157','cartervin','adb3076735bb4be218bd63f365c7f82f');
INSERT INTO uchome_member VALUES ('158','shendaaaaa','eaa87d9a32f3a417bf5377d80c34b2b6');
INSERT INTO uchome_member VALUES ('159','lenovowww','482914ccb30c6f43981c1ec2a3e387ad');
INSERT INTO uchome_member VALUES ('160','shayetian','92c94f317cf74175b65a4e4948dacdc7');
INSERT INTO uchome_member VALUES ('161','weizhang','13cb282dae2d6b4c4552fdb9577b386e');
INSERT INTO uchome_member VALUES ('162','phoenix','b59436bdc0910f9b9e5edaa40508d177');
INSERT INTO uchome_member VALUES ('163','fujianxun','a60c9a69d2961aec1761a0b824f713e7');
INSERT INTO uchome_member VALUES ('164','afu','c5aa205005f26000a2709c41cc41ce50');
INSERT INTO uchome_member VALUES ('165','huang','06db462b107c707ecba0562e2ece1c40');
INSERT INTO uchome_member VALUES ('166','youlan','5a38588164086bc1635a93c6a441bf92');
INSERT INTO uchome_member VALUES ('167','ytl','437b7ca88eaf6ac660714c63877dbc4c');
INSERT INTO uchome_member VALUES ('168','yhhmww','f9cba02ae2c9c6fb4fb7ad06b7ae2128');
INSERT INTO uchome_member VALUES ('169','benchi','d78dbf193b299c4a86d01abb4733c194');
INSERT INTO uchome_member VALUES ('170','lang','1b7086237771729edced6af0d7361e1d');
INSERT INTO uchome_member VALUES ('171','lwb7624','8316dc131f6765927fa21559dff85ff6');
INSERT INTO uchome_member VALUES ('172','xuhuayong','9e74ab5364f1e1882b90f9d64a724518');
INSERT INTO uchome_member VALUES ('173','huha','cb24ff163df7a151af8235ca72b3c6cc');
INSERT INTO uchome_member VALUES ('174','qxz','61f648789793dc45c29d056f77d1e4ad');
INSERT INTO uchome_member VALUES ('175','open','40461e84fb49b6efbe6c509bed82c244');
INSERT INTO uchome_member VALUES ('176','MAYJJ','769ded3f667264038e1f2a624c048171');
INSERT INTO uchome_member VALUES ('177','iangbo','d638d8faae9b6d3ad0b43791e10b26f2');
INSERT INTO uchome_member VALUES ('178','kekin','7a3ccbbfa8fa66cabfec38c4b32dbc31');
INSERT INTO uchome_member VALUES ('179','wdb007007','51e2169d17090a3be9e8c6e66f470945');
INSERT INTO uchome_member VALUES ('180','allen','1c7e68e06cf2c1710f7d65b363577ee7');
INSERT INTO uchome_member VALUES ('181','DGMG','a21e760304040373e5876e6914ca9e2b');
INSERT INTO uchome_member VALUES ('182','sdsd','7ead08301c3e94062513bdcacb79ca86');
INSERT INTO uchome_member VALUES ('183','QINQUYUAN','27b76f7740b781c6a00205b6b345873b');
INSERT INTO uchome_member VALUES ('184','amao','dd279c0db72f9544b3e0dacc89d2d285');
INSERT INTO uchome_member VALUES ('185','qiying','c2dad1b660b265310a5f023f8d0ee16f');
INSERT INTO uchome_member VALUES ('186','wuyukun','d67e144a1eb2e133c6871d82519ed699');
INSERT INTO uchome_member VALUES ('187','jack','a8d36c9e6de92cb22b45bece1044c428');
INSERT INTO uchome_member VALUES ('188','tianci','78926cf75e2736171e1d3138d711989d');
INSERT INTO uchome_member VALUES ('189','tsingchao','d8a675e3233cb3364da7c3f14baabfd2');
INSERT INTO uchome_member VALUES ('190','ZHANGJING','3f5d5946d0d495e93f808a43b9157f64');
INSERT INTO uchome_member VALUES ('191','nzxsos','4904bce6066d51175474c713271f6f4d');
INSERT INTO uchome_member VALUES ('192','fulunda','73132b74fe39d965e873e32829619320');
INSERT INTO uchome_member VALUES ('193','tiantianxiangri','b6a4a99953762edd6f142e25f2359506');
INSERT INTO uchome_member VALUES ('194','asdfghjkl','80ab1c46f25c51db989e43f49e095d69');
INSERT INTO uchome_member VALUES ('195','QQA','9cc7c64d4a09285d6fe467392becd700');
INSERT INTO uchome_member VALUES ('196','wodeak','d59e2223fb1cbb981ed751661daceb14');
INSERT INTO uchome_member VALUES ('197','zyzy','40220493af4319a8f2f38eba58ed1c55');
INSERT INTO uchome_member VALUES ('198','kinghui','dff1b3cfb25a4d7808f2213d15edbb5c');
INSERT INTO uchome_member VALUES ('199','baiheily','31b69e0ead0e93d74857bd2c327bd2cd');
INSERT INTO uchome_member VALUES ('200','pcaff','018c2b5370ad01e61cfc177810ad962f');
INSERT INTO uchome_member VALUES ('201','ghkoivb','ff85ff9ab985c797b22795973946bf93');
INSERT INTO uchome_member VALUES ('202','mling','86c9be000ad4fa41604ef26d1296f0a2');
INSERT INTO uchome_member VALUES ('203','sbh7608','bca728efb050804d97d86abcf4ec9ab0');
INSERT INTO uchome_member VALUES ('204','jaycn','f09ec7ed53d6dd0e91dd1eaf5aedfd24');
INSERT INTO uchome_member VALUES ('205','geondri','242c8273bf1282025bde894715bc1703');
INSERT INTO uchome_member VALUES ('206','zhylbj','1e7d38bc0099ecb30fbb9679120a1787');
INSERT INTO uchome_member VALUES ('207','wwwwww','02c15d9e36968a908c06f5e590f0c775');
INSERT INTO uchome_member VALUES ('208','lchf','e5e54d3256ef6f5e1fe7257b2b9e7898');
INSERT INTO uchome_member VALUES ('209','yiyaheihei','c047c7ce7df135f0a9bed3252f9c0f6f');
INSERT INTO uchome_member VALUES ('210','wanghua','863a229f44e64995954686828b0685ed');
INSERT INTO uchome_member VALUES ('211','yhkwy','f030e47810489d0ae26adb262a41abe6');
INSERT INTO uchome_member VALUES ('212','abcdef','a59ad17054e6367e0581a679ce4bc685');
INSERT INTO uchome_member VALUES ('213','chengge','dd4d87238195283109651b55b1bb70c0');
INSERT INTO uchome_member VALUES ('214','subborn','eab40f277e167e6a8e9a2178b33781b1');
INSERT INTO uchome_member VALUES ('215','zingy','756daae8f868ba59e672ad5826214d1e');
INSERT INTO uchome_member VALUES ('216','soledad','02abd26517d76b85ac379dcaffb92361');
INSERT INTO uchome_member VALUES ('217','Xiaosunyang','97297a6b93b1e93f3eeccfb8b6adc775');
INSERT INTO uchome_member VALUES ('218','huqiaoa','04a59852782487c1758f876e31231702');
INSERT INTO uchome_member VALUES ('219','lgylgy','43df33dd4d344e8addaf39583a1fc34c');
INSERT INTO uchome_member VALUES ('220','lvshichun','e0772923e036e588696d27311dffa51b');
INSERT INTO uchome_member VALUES ('221','tonypeach','f9c97d5166ae316a453b9ad173353517');
INSERT INTO uchome_member VALUES ('222','Loveyou','645d544413cab9403bd4547afc21b357');
INSERT INTO uchome_member VALUES ('223','kor','763bddaf572d42f9e1b1ed0c83e32260');
INSERT INTO uchome_member VALUES ('224','KING','05fce47848f8f0eaca40b888be6ba062');
INSERT INTO uchome_member VALUES ('225','Lancelot','8397cd289c3f3be629ba638e42af2b4b');
INSERT INTO uchome_member VALUES ('226','NESCAFE','8dc014725edb0187e7dabc8680f5dcad');
INSERT INTO uchome_member VALUES ('227','ererer','aaf2025f3b1af0c4f2946a035102a73d');
INSERT INTO uchome_member VALUES ('228','hyhy','7f0756e60192f88012dac5eaea6a4db0');
INSERT INTO uchome_member VALUES ('229','lijianze102','45acb8ba415967557c44e7fcc29e1b62');
INSERT INTO uchome_member VALUES ('230','lijianhang','5eb241fc9bf30f3be406272ca4f8deb5');
INSERT INTO uchome_member VALUES ('231','sdokafei','cab765b9eb72f952812130cbeb8474b3');
INSERT INTO uchome_member VALUES ('232','skyzhaojian','86e27269e7baaa1899a76a3ee10ef194');
INSERT INTO uchome_member VALUES ('233','dmyhkwy','278de1e2ae67f817a526c39ae0bdc0da');
INSERT INTO uchome_member VALUES ('234','peter','0bcaa6b0f11331414b9ba7745dec6b73');
INSERT INTO uchome_member VALUES ('235','godwqe','7cb1218bd70e233424d1e710b8fa1b1b');
INSERT INTO uchome_member VALUES ('236','hahalym','648c31cf1bbf33de95f9d0d60592a159');
INSERT INTO uchome_member VALUES ('237','jiayou','9be5f3ce001a14da34ddd27ecbf93bca');
INSERT INTO uchome_member VALUES ('238','shaopu','a9c26ef3671dd4ba46e0f479adfb4edc');
INSERT INTO uchome_member VALUES ('239','QWERTY','9b741784fc59a9fc61420182ed0d019c');
INSERT INTO uchome_member VALUES ('240','zhaojiawen','38b5e4992b0691c11ed8b479f041505f');
INSERT INTO uchome_member VALUES ('241','liuyu','f0d7798c076985822ffd43c95aa8192e');
INSERT INTO uchome_member VALUES ('242','wcbxx','ed0ae72a043e0991433563e136a633df');
INSERT INTO uchome_member VALUES ('243','zhengwenxiang','1b0737cfc09037ad8efdab3082426a51');
INSERT INTO uchome_member VALUES ('244','zhangguozhou','04dddb9009c98ad923f75c823b2290de');
INSERT INTO uchome_member VALUES ('245','leyi','f70bce9c6d856580b764f18f813bc6af');
INSERT INTO uchome_member VALUES ('246','fanwei','6227ccfbe46465a04dadc96386830e0a');
INSERT INTO uchome_member VALUES ('247','zhangqx','0c994b8b38c2d1f6a027caab17c6fa83');
INSERT INTO uchome_member VALUES ('248','xiaodaidai','e97afeb618e0084eb5f847a480a983c9');
INSERT INTO uchome_member VALUES ('249','xixiaodaidaiao','efb213c73ea876d34a68c24aae35eb6d');
INSERT INTO uchome_member VALUES ('250','xuanhong','c4e5af2fd14157da83b8a13bf0b0d805');
INSERT INTO uchome_member VALUES ('251','vip','74d96529cf21c532b6f8b48120c6ee92');
INSERT INTO uchome_member VALUES ('252','baobao','a898a285c4bf2aa183ee947a722dcc70');
INSERT INTO uchome_member VALUES ('253','xiao3166','6956c15859d3b3aaf173a6da6c8bf97b');
INSERT INTO uchome_member VALUES ('254','sdwsq','7827e541b046fbd10456a7c6d50f2e2b');
INSERT INTO uchome_member VALUES ('255','abcd','a655a7ccb0f21fd24cd3d396bc32d22f');
INSERT INTO uchome_member VALUES ('256','darkeyes','5aaf4e2acd9eaa1d999b580487ed7557');
INSERT INTO uchome_member VALUES ('257','hacker','480dd74dcc1b3e834044ad10bc832895');
INSERT INTO uchome_member VALUES ('258','sxl525831','76738e33af3bc2c8137e8b851d77b02b');
INSERT INTO uchome_member VALUES ('259','zhuliuxiang','7be2578c5269bf61e27a1ab5478087ba');
INSERT INTO uchome_member VALUES ('260','bear114a','649f3549c456586014289faadedf1d1f');
INSERT INTO uchome_member VALUES ('261','danjin','fd1bc1bb8915b43aed39040efda7012f');
INSERT INTO uchome_member VALUES ('262','addmeaddme','b4f84a50843e4ae7fba4a8edbbed2325');
INSERT INTO uchome_member VALUES ('263','ONEI','c1188852e55b677f33b9a3942cc54e58');
INSERT INTO uchome_member VALUES ('264','寂寞梧桐','990709ad3b06e639a5ef1a01902723f9');
INSERT INTO uchome_member VALUES ('265','一夜情深','c158a2e05617938575ce73d1ef2a0062');
INSERT INTO uchome_member VALUES ('266','WOAIMEINV','2600a72e33a96c4aa7af56277f062af2');
INSERT INTO uchome_member VALUES ('267','wjly','0c60ac67cf2fde7e45ece3ba85f3de88');
INSERT INTO uchome_member VALUES ('268','yeepaykefu','314e1fdc0d9e8aa88bbbc61b34155410');
INSERT INTO uchome_member VALUES ('269','112930968','95f14b32cecd7435a4826eb78edbd8ca');
INSERT INTO uchome_member VALUES ('270','DFMN','28bad52851aff60950f13a3eb53e5248');
INSERT INTO uchome_member VALUES ('271','gaonifu','1aabba399f6357539300fd1ad4e0c721');
INSERT INTO uchome_member VALUES ('272','abbdbfcif','9b259c4387560d373bedcf3b9aa1302c');
INSERT INTO uchome_member VALUES ('273','shrfzw@163.com','f9089994f9b7c1edd680bc4efbc647b6');
INSERT INTO uchome_member VALUES ('274','GEXUAN','e49b072d791a179cb49d37ac734ca6e6');
INSERT INTO uchome_member VALUES ('275','kkbawubasijiu','f266812857fd2756bb880dd42d1cab43');
INSERT INTO uchome_member VALUES ('276','meinu','198e2aa9fa16b0e7bf908499ef5477f0');
INSERT INTO uchome_member VALUES ('277','Daniel','5f6a8aa1e0b0f420fd11edeeb2e8eb92');
INSERT INTO uchome_member VALUES ('278','huangyuan','0eea8d5822637a4af62e15df0976282b');
INSERT INTO uchome_member VALUES ('279','heilongjiang','7b9ae20dfe3be4a782fc4196c7d66b66');
INSERT INTO uchome_member VALUES ('280','eva','88f1f3aeb17bd2f13bc654be5484ef9f');
INSERT INTO uchome_member VALUES ('281','fangli','a4457bb2b312b486a33c5bf5a720f0b6');
INSERT INTO uchome_member VALUES ('282','ndfz','199c2ad47b219aca4b872d7e09c2858c');
INSERT INTO uchome_member VALUES ('283','LING','3f74c8a44f79a75238b4f3c47af0177a');
INSERT INTO uchome_member VALUES ('284','foxconn','2f96b09c8cdc843fcde3ab2adf58ee6d');
INSERT INTO uchome_member VALUES ('285','DOUDOU','8ad7bbee4df29847e8abb216f38e6509');
INSERT INTO uchome_member VALUES ('286','access','b812416494258160aa617ac3e392b470');
INSERT INTO uchome_member VALUES ('287','gougou','78d463f294ee002f827d64ea4df9a25a');
INSERT INTO uchome_member VALUES ('288','HEMINGFU','6e8ab173cb828e5ddd96f2b9f0e19295');
INSERT INTO uchome_member VALUES ('289','dsiphilia','55adf1d4de2b1b3c51dc540de88d29c5');
INSERT INTO uchome_member VALUES ('290','baibing4511','a02d1f224303c68b45a3a9e883a8e52f');
INSERT INTO uchome_member VALUES ('291','cnefi','972273abff28a8be31da6dae8193195a');
INSERT INTO uchome_member VALUES ('292','XHL','ccf1092d2809401ba69da4aa9ba3fe2e');
INSERT INTO uchome_member VALUES ('293','rrr','72edd74374e9ea545edfa93f4950aa24');
INSERT INTO uchome_member VALUES ('294','chaosenv','327dde8b667316cba32a978b983562c8');
INSERT INTO uchome_member VALUES ('295','white','47b415e6760e0810ba6c66caf5981c6d');
INSERT INTO uchome_member VALUES ('296','smartwolf','3952eff54ce28b137246e2e8062b7c7b');
INSERT INTO uchome_member VALUES ('297','niandezhu','41302425e0de4804cdb20a3c49acdaf3');
INSERT INTO uchome_member VALUES ('298','yewujiandao','e69e9f12d8a4fdcb88a16b6191c821b7');
INSERT INTO uchome_member VALUES ('299','suoli','2fabb9a619e5d876d10bc90d88f1ef49');
INSERT INTO uchome_member VALUES ('300','wanglong','46fa243ff33be6191ba3ebaddfc5f52a');
INSERT INTO uchome_member VALUES ('301','bkcui','9b482c993bebf4ca3946e2e5a7c17224');
INSERT INTO uchome_member VALUES ('302','lirong','eae1dfc9b08e15b7e0226f4bef6ca631');
INSERT INTO uchome_member VALUES ('303','STAR','c357ab3c2984682024bee6f36d33c04a');
INSERT INTO uchome_member VALUES ('304','cyh','f48343937475169095c8fa3308074ffb');
INSERT INTO uchome_member VALUES ('305','derek','48b6cb9f1313e154b3b89d76f50e16dd');
INSERT INTO uchome_member VALUES ('306','zhengheli','77a5bbe8d8aff6f2d4ea30bd0dbe0728');
INSERT INTO uchome_member VALUES ('307','Joyce','b71691aadff7a37ac43d561dc1c2a53b');
INSERT INTO uchome_member VALUES ('308','alinayun','f695478d0097105fbaeeff6aa6e3224c');
INSERT INTO uchome_member VALUES ('309','ROCKYOU','19ab2ff0ede4c7936a5492d627a3f3fc');
INSERT INTO uchome_member VALUES ('310','xialongchao','35c37f57d5a549e2c5bd16c47d4e83e3');
INSERT INTO uchome_member VALUES ('311','kuailan','1cdd35e3e2348da3b0c05a68de769738');
INSERT INTO uchome_member VALUES ('312','test','30bfd053bb4ed49914122d2eb8fd4c61');
INSERT INTO uchome_member VALUES ('313','mymy','3b8425f8373cf761a2e865ecbdce3c52');
INSERT INTO uchome_member VALUES ('314','mtmt','f4058b8cca92cec9ac7e790500757818');
INSERT INTO uchome_member VALUES ('315','mjmj','d38e655fb019f678bda516a317b601f6');
INSERT INTO uchome_member VALUES ('316','tuao','45618526d93d49d9c99b87271e1f41ff');
INSERT INTO uchome_member VALUES ('317','victor','980ef8713a324d4e59888a6b6c40ac3e');
INSERT INTO uchome_member VALUES ('318','ewind','89276981f342ff5670137854c2fd2aec');
INSERT INTO uchome_member VALUES ('319','cxpmpk','02b4a4c038bd26f001921db4e0d8893a');
INSERT INTO uchome_member VALUES ('320','xiaotian','18710d5b1a721fd06d06cc50ee832a72');
INSERT INTO uchome_member VALUES ('321','cowboy','9f5700c7c9d4b81bb002671eb9e3dc38');
INSERT INTO uchome_member VALUES ('322','jeffhdi','c1681655643b40614053c7e7e33965fa');
INSERT INTO uchome_member VALUES ('323','wcd','cd8c105623c766960eeb5c3067b57591');
INSERT INTO uchome_member VALUES ('324','pirate','fdc34e6c5bec4d784c683b76f23e7758');
INSERT INTO uchome_member VALUES ('325','moon','64349a4c49adc0945190bc7369bb7d6f');
INSERT INTO uchome_member VALUES ('326','jiangfang','a7a035ce73c32708a61201da6485235d');
INSERT INTO uchome_member VALUES ('327','amwayrs','f471b5dc75974981088866bd93680575');
INSERT INTO uchome_member VALUES ('328','jenny','fae7d2d57aa8977b093595fee2f21f17');
INSERT INTO uchome_member VALUES ('329','xiaoL','1b57bc00c6606fdc0666fa1162821311');
INSERT INTO uchome_member VALUES ('330','sb4y','9aa89b927fb2bb13794db7af6ef83e7a');
INSERT INTO uchome_member VALUES ('331','kuangyefeng','1c37e2d7529bb8295f5d6bf113e297e9');
INSERT INTO uchome_member VALUES ('332','Arlun','f1b778dc89956a0d1e1825b1c71ea3cd');
INSERT INTO uchome_member VALUES ('333','nihao','49ae904a138d8969047a248171f17a7d');
INSERT INTO uchome_member VALUES ('334','jim','735e78fa7a1efd768f86093478173e5e');
INSERT INTO uchome_member VALUES ('335','wdgfxz','2983d277d2aed942ebbb9b5d6ca2b2f8');
INSERT INTO uchome_member VALUES ('336','flyalimama','0a64fa64fe07d6a82e49ca3cf59c7d15');
INSERT INTO uchome_member VALUES ('337','andyooo','a7b458dc91c209f667b89aee06b248d1');
INSERT INTO uchome_member VALUES ('338','haoge','aa2ea61ce3a53055224e5bdfe4c01c0c');
INSERT INTO uchome_member VALUES ('339','yangsong1','8048868ec60ad0255871dd26fb4fdbc4');
INSERT INTO uchome_member VALUES ('340','xlx','7d20c0939b59d5cf3730ab63dd9e3786');
INSERT INTO uchome_member VALUES ('341','zhouping','5a719cf2f877843143ae2cd6ae9aef76');
INSERT INTO uchome_member VALUES ('342','shaofucao','5568a8195b6da744fa811258317dddf9');
INSERT INTO uchome_member VALUES ('343','dglfq','b4f84263326291dcbda4c28bb1dc8bbd');
INSERT INTO uchome_member VALUES ('344','nm5039','c9a7f86b8832bcc5e8522a9f3954f56f');
INSERT INTO uchome_member VALUES ('345','kingk','d8ec7ef9b4ed530cf1b28358b6692489');
INSERT INTO uchome_member VALUES ('346','sccdwh','7c0984a708183b11c6eda05f9035ad46');
INSERT INTO uchome_member VALUES ('347','UEHIWQOJDNCSA','ddeeb1b8a6b2b7d58db54915c0103edb');
INSERT INTO uchome_member VALUES ('348','ASDFG','348b10683d0de316984abeba2a845410');
INSERT INTO uchome_member VALUES ('349','chengjun','9a1c7f82d6884d150d65e16da3359725');
INSERT INTO uchome_member VALUES ('350','HEMINF','7f6315b4082d2e127df7a4c7fe696088');
INSERT INTO uchome_member VALUES ('351','phoenixqqq','425554cf57552757612361ae6df3b885');
INSERT INTO uchome_member VALUES ('352','sexlove','8d57e9d67a34e28bfdee294099fc4060');
INSERT INTO uchome_member VALUES ('353','cashier','cebe2d4aba8771fd1ff0dfd38653837b');
INSERT INTO uchome_member VALUES ('354','linxiaoxiao','6c7ed352d3b8d09ba6ec617a26fdefb2');
INSERT INTO uchome_member VALUES ('355','czy','777b52a56dff4b5a172fbaa1ace9d335');
INSERT INTO uchome_member VALUES ('356','wuhelo100','e021042cdba5e4b1bd048a8185f3b518');
INSERT INTO uchome_member VALUES ('357','dgoch','cf578abf01a65f05712652fbf7c3f8ff');
INSERT INTO uchome_member VALUES ('358','hele442517','bb87bedeb43dda14ca0cbb6a2368e627');
INSERT INTO uchome_member VALUES ('359','heguohua','00833ee98840c7a55422e088290b79f1');
INSERT INTO uchome_member VALUES ('360','BHJDR','bbfa5612e9f9aff79015e9bd9b05a59d');
INSERT INTO uchome_member VALUES ('361','kevin','3dd9e01ddf493912ba0070b6edd92e43');
INSERT INTO uchome_member VALUES ('362','shangxianyue','066951876e3c1c5304cd93e993127137');
INSERT INTO uchome_member VALUES ('363','yyifan','b42b123c381f46f1a516bb9526bb2d98');
INSERT INTO uchome_member VALUES ('364','ZHUANSHIZHUBAN','69f6066e3c3d11555675a18ed758a710');
INSERT INTO uchome_member VALUES ('365','Passionatesex','a80927d7314f5e1f59e83d47d4975f0e');
INSERT INTO uchome_member VALUES ('366','chysky','0facd8742d38fa86bc324bd15a6179c5');
INSERT INTO uchome_member VALUES ('367','enjoy','90a5746d058f966943784ca7162604c1');
INSERT INTO uchome_member VALUES ('368','外滩3号','55dcc19a3c1be0778ce7867673e47c23');
INSERT INTO uchome_member VALUES ('369','luhu','210f75452d4f53b0d360802508296618');
INSERT INTO uchome_member VALUES ('370','hhnhz','3f3a1f3189704b08467947f677a74e92');
INSERT INTO uchome_member VALUES ('371','zlfd','38bf67c4d2a00a5edf2874f0299ad4cd');
INSERT INTO uchome_member VALUES ('372','Zhaole','2e0cd6eae1f7024f13037c6d81e45ef9');
INSERT INTO uchome_member VALUES ('373','xtxbamboo','a711d98766f7855347b76433e4acb542');
INSERT INTO uchome_member VALUES ('374','zzlliu','924757daceac2df0db83d19f7f44ef89');
INSERT INTO uchome_member VALUES ('375','yangwang','72f79a9b125074bf81090d63058fb1c2');
INSERT INTO uchome_member VALUES ('376','zzl851022','e1e6916e22a811cee3534cbe536267f3');
INSERT INTO uchome_member VALUES ('377','Angle','7c914aa443fba278ce809c65b5507f54');
INSERT INTO uchome_member VALUES ('378','sxjj','9c31cd9d3a8b5c144887e6fc215976c9');
INSERT INTO uchome_member VALUES ('379','viki','f18d0e9583808958b08dc1d3e2d47ab0');
INSERT INTO uchome_member VALUES ('380','fffylyve','4a2a1b580a57180b065b10b5507c4c50');
INSERT INTO uchome_member VALUES ('381','jony','50e2239a662fa1aa6a0a531c8095c6f2');
INSERT INTO uchome_member VALUES ('382','attack','1eadb19de421846a3a7e20079c4edae5');
INSERT INTO uchome_member VALUES ('383','zyfzyf','f068d65ab49978c2cca9f40de9afe970');
INSERT INTO uchome_member VALUES ('384','gongqingssss','ad598ea0fddb6ae856a326d0e8435812');
INSERT INTO uchome_member VALUES ('385','caojun','ee83bed574be2d7c56c241d3c534da4b');
INSERT INTO uchome_member VALUES ('386','mytwd','36358eb4705843ee2a75a63896c3b387');
INSERT INTO uchome_member VALUES ('387','Lele','3b6aeec0271db02cdf4fff2aa1e33efb');
INSERT INTO uchome_member VALUES ('388','zhanghai','d0848e67f66ca0c6694489cddb691061');
INSERT INTO uchome_member VALUES ('389','zhzhjie','10d74d7460dce4707b3b1f7d56d606e3');
INSERT INTO uchome_member VALUES ('390','zuqiuxiansheng','2351f87946e57e773779c91835ed3b9d');
INSERT INTO uchome_member VALUES ('391','jiangshangren','6fc891a1da84cb311333967850ac8f14');
INSERT INTO uchome_member VALUES ('392','ucdn','3fce76ec4a1376b06c930267bbf3efc4');
INSERT INTO uchome_member VALUES ('393','lguo123','06b8e52d7506cd5cc68473a17b54881d');
INSERT INTO uchome_member VALUES ('394','ouyangtn','540d07f1902bf8fc209114ce5b15e5e6');
INSERT INTO uchome_member VALUES ('395','boyy','a460c26a95229d208f7bf4ef317052d7');
INSERT INTO uchome_member VALUES ('396','rulerbye','0d299bb1d6f1f66d6078766c49050cbb');
INSERT INTO uchome_member VALUES ('397','csnoviceo','d74b9215a6a1397fcfd73c23bbb5ab7a');
INSERT INTO uchome_member VALUES ('398','gaowei','b68634a1ed7b6637e834a22505817d05');
INSERT INTO uchome_member VALUES ('399','panjunshan','e82eed26826086c7fdd7c6c69f524586');
INSERT INTO uchome_member VALUES ('400','chenhuabing','8d7558eeaf92b118e1c20b5bc59c96f7');
INSERT INTO uchome_member VALUES ('401','MYXS','69991028559af87683a2ecb636ae925b');
INSERT INTO uchome_member VALUES ('402','caichaolun','29923f25682f6795b5f3f080e23977b0');
INSERT INTO uchome_member VALUES ('403','mamama','e2394dc63d5d8b4e65883780ea12e549');
INSERT INTO uchome_member VALUES ('404','1984lb','392a541a2621ba906973f08582f2a6f6');
INSERT INTO uchome_member VALUES ('405','piaopiao','2ad5129e64da3fb455b29769a3393b46');
INSERT INTO uchome_member VALUES ('406','crazytonight','15a71901a8918868d928f40aff419c48');
INSERT INTO uchome_member VALUES ('407','yuzhigong','f72641aaeba9480fed15354b6aa789e9');
INSERT INTO uchome_member VALUES ('408','jacking','553e43e07402850c6977989a295df5cf');
INSERT INTO uchome_member VALUES ('409','skypeng','9fd94d8fa62f3c6e05329cfeb385b716');
INSERT INTO uchome_member VALUES ('410','pancb','917da8adbf27584df4890d095b0b2f06');
INSERT INTO uchome_member VALUES ('411','xuqinghong74','7eb81564e0cbfd5c57fbe51777732d08');
INSERT INTO uchome_member VALUES ('412','robin','addb0c89e330e73d2f31d1ad137bb1bf');
INSERT INTO uchome_member VALUES ('413','guangtou','afe24946176be75beaf042cc030e6cf3');
INSERT INTO uchome_member VALUES ('414','MrIn','5318f9a11841cce08bd1fce7557c9859');
INSERT INTO uchome_member VALUES ('415','admin1','f47f1f97d0011fb0bfb751f9afdb4ecf');
INSERT INTO uchome_member VALUES ('416','mjknkj','e7185392152a53c0a3b0909e06ab93bd');
INSERT INTO uchome_member VALUES ('417','zhengyue','0e08eaf5e00fc1bca6f05325a6909464');
INSERT INTO uchome_member VALUES ('418','Awakensme','4a0a7f0f564dfb79a798b7a3f7481adc');
INSERT INTO uchome_member VALUES ('419','kankanshuixian','81f73bfcefbd791461e73667fccf369e');
INSERT INTO uchome_member VALUES ('420','woriamade','6d8ec446a12dbe6b297858b964b88da5');
INSERT INTO uchome_member VALUES ('421','TAKR','520d114349cb536026650396cfbcdfa3');
INSERT INTO uchome_member VALUES ('422','dchjdjs','4ea06fc8be7f1db718bda1d53c986877');
INSERT INTO uchome_member VALUES ('423','vienzhong','d686c41ea130bb5b58ff4bd98423d060');
INSERT INTO uchome_member VALUES ('424','hzh0123','d31ec6d1110dce1aa30cb4cdd7b6cb07');
INSERT INTO uchome_member VALUES ('425','yanghuanzhang','69954d6fe8196ebedbfdcf9627cf61ce');
INSERT INTO uchome_member VALUES ('426','jiwei','1441f5819fd348c21d82f438af6610a6');
INSERT INTO uchome_member VALUES ('427','luwendy','66edf4edbcb49c2469df3f677d7c51c4');
INSERT INTO uchome_member VALUES ('428','beibei','d0ce9adfc83755f437cb7ee1c9c5d1b5');
INSERT INTO uchome_member VALUES ('429','gyq','6bc7849e4967d15e33afc1a35fc7d965');
INSERT INTO uchome_member VALUES ('430','sanshao','a1ce9fda38ace7a0bdee53511491ab69');
INSERT INTO uchome_member VALUES ('431','banjianbi','15a6dd10ad84913bac15914f6f9aae01');
INSERT INTO uchome_member VALUES ('432','wangkun','ada73ed0f5056f476e250ccb3872c6b4');
INSERT INTO uchome_member VALUES ('433','justin','d0e3c971855544b4add59d0c1f10fef6');
INSERT INTO uchome_member VALUES ('434','rrppnn','4cd7c45e6a992bc282b84c65673c8c9c');
INSERT INTO uchome_member VALUES ('435','lyym','a26b6331c59103d54c6178b995be3bf7');
INSERT INTO uchome_member VALUES ('436','remao','b79fd8d91d8baab8493d5d0a8e5bd7b7');
INSERT INTO uchome_member VALUES ('437','xiangzl','cae702c5e40006d3e19ce4dc375d3c36');
INSERT INTO uchome_member VALUES ('438','xianglin188','1d1959fd3c112dba2ba59850b069dd21');
INSERT INTO uchome_member VALUES ('439','xiang','44c0b9b3b65327a183a4bf985192cbf9');
INSERT INTO uchome_member VALUES ('440','wcy','40b2be5a168b2f0e1cf0ab18095f6b64');
INSERT INTO uchome_member VALUES ('441','qwee','c412e0071e9bb363a1b8fe35fd28fef3');
INSERT INTO uchome_member VALUES ('442','franceco','180efe52c45867b55b549c7ec4e146bb');
INSERT INTO uchome_member VALUES ('443','dalin','84931a3532ad97ed4873c515633b9a12');
INSERT INTO uchome_member VALUES ('444','dlmdlm','4283a28085524b425b922b86bbedf9fc');
INSERT INTO uchome_member VALUES ('445','DYY','68509f0d81f51d3ef07a2f2e81f24823');
INSERT INTO uchome_member VALUES ('446','expert','eec71699396881f4c9378a753854911d');
INSERT INTO uchome_member VALUES ('447','olfarmer','102c9c8864404f08975e0b0d9ef33fcd');
INSERT INTO uchome_member VALUES ('448','lovesheng','c7cdc94dd93408e04464a14da6f61f75');
INSERT INTO uchome_member VALUES ('449','demonb','1f04fe6b004674eb0de4b6b449e8b4aa');
INSERT INTO uchome_member VALUES ('450','jfdskhkl','55ef7dd021b04e821fc17ff874cbc6f0');
INSERT INTO uchome_member VALUES ('451','wuyul','3db5b0051a1562095f2d55ceaba0f2b6');
INSERT INTO uchome_member VALUES ('452','xiaomaohai','46a73af113498997841786a13967ddbb');
INSERT INTO uchome_member VALUES ('453','ffsfsa','b0e7e854c48ccb18da84f2548e712e71');
INSERT INTO uchome_member VALUES ('454','yongge','869933c47f86167d25203faf195a1b12');
INSERT INTO uchome_member VALUES ('455','longgui','29611ea8633d4e002be313075378e1a2');
INSERT INTO uchome_member VALUES ('456','woshisheidegege','7ed872be64f7db09fccdced7ba4ff5ef');
INSERT INTO uchome_member VALUES ('457','fgh3697278','b57b97da78e36987a257b1811bb0ca2c');
INSERT INTO uchome_member VALUES ('458','bluesea','89576ebfa5d7de2ad5be00d7cca67985');
INSERT INTO uchome_member VALUES ('459','xujianzhou','c484ca48324f274e062b2b7fa0412ed3');
INSERT INTO uchome_member VALUES ('460','xihaibbs','2c9f7ee28bec91aeb8bc78ede5854600');
INSERT INTO uchome_member VALUES ('461','flykeer','6798f0eaa8a9dad89394e47177390001');
INSERT INTO uchome_member VALUES ('462','JONE','2a22a10f3f62e95dad477d8546978260');
INSERT INTO uchome_member VALUES ('463','zhaoqintang','bfd1311c1d7563aff98999c1a6337f19');
INSERT INTO uchome_member VALUES ('464','gudu','6a79d64f95fffa11cc818c28572b031c');
INSERT INTO uchome_member VALUES ('465','zqzqzq','e864ea5414901afa7cc83c45f19ab46d');
INSERT INTO uchome_member VALUES ('466','Edward','5646bef5d21e6525720e179a6a0c70d9');
INSERT INTO uchome_member VALUES ('467','yanyu','d99f2877ed780089578d38b21655f871');
INSERT INTO uchome_member VALUES ('468','浩南521','b48366ab984d26290a96f616d221b8b0');
INSERT INTO uchome_member VALUES ('469','semo','21ec97c745a6b17c2bf00ed28e050d61');
INSERT INTO uchome_member VALUES ('470','jtwyslq','8a5e125657d1f00165edaa3123da6531');
INSERT INTO uchome_member VALUES ('471','jaene','5fff339f766a2b716521c49f9af8d0fb');
INSERT INTO uchome_member VALUES ('472','sdfsdfsdf','ad02dea25305ec72008da667d4ca14b5');
INSERT INTO uchome_member VALUES ('473','yusiking','414ec1cf7b92efce27499c74b2d12412');
INSERT INTO uchome_member VALUES ('474','yanlei','e618b8ad00249de1d58be8d367acc750');
INSERT INTO uchome_member VALUES ('475','jinjianping','e4112d45129a5a28b5ff06458701f609');
INSERT INTO uchome_member VALUES ('476','sunjunlin','33c5015a90a2b9bdac2f4649266d24cd');
INSERT INTO uchome_member VALUES ('477','hdyzlll','6fe2ff23bfa6dc490b7544f3c7062465');
INSERT INTO uchome_member VALUES ('478','zxxboy','f8afc7d90a976280388725ab70e15c3f');
INSERT INTO uchome_member VALUES ('479','tigern','6a4cc4f68bfb64e6607be2af13004357');
INSERT INTO uchome_member VALUES ('480','qqyyzz','bb59ac3d05953147d8b76095bd633e76');
INSERT INTO uchome_member VALUES ('481','aaa','da7c9cb1a06e3e68c6dda895f21eb1e6');
INSERT INTO uchome_member VALUES ('482','wxwttf','3b776e39290e32fe2f5d50e7deed1d4d');
INSERT INTO uchome_member VALUES ('483','hhhj','c67cc5e1157990bb458a527b5218feb9');
INSERT INTO uchome_member VALUES ('484','capslock','3b8c683a401e336bdefee575ea1735c2');
INSERT INTO uchome_member VALUES ('485','kelly','c289ca28ac63f6f5a03bb7b66cd8a130');
INSERT INTO uchome_member VALUES ('486','ecapslock','95b0b1229528b65aa4b86382d4538422');
INSERT INTO uchome_member VALUES ('487','syfsyfsyf','7b32c5c3aadf2ad91157873189f077c5');
INSERT INTO uchome_member VALUES ('488','youyuantuoling','f287e0bed02386b21e760ff3ad5cd08a');
INSERT INTO uchome_member VALUES ('489','qwqw','21689e72e883445b700a9829d0ed40f6');
INSERT INTO uchome_member VALUES ('490','szyrdkj','4ad0af2a68617ad47d26f251bdd7e607');
INSERT INTO uchome_member VALUES ('491','ffeng','7efa06de05e02f5cd1c6ed1763179bfb');
INSERT INTO uchome_member VALUES ('492','yangjiajiang','c48d7b710c52a4a92189d5067edfabde');
INSERT INTO uchome_member VALUES ('493','lisen','fbbd8d41b88840cb7fc8471fd79c4d46');
INSERT INTO uchome_member VALUES ('494','wagamama','565b1c03cd08fa21b266370359fd1aeb');
INSERT INTO uchome_member VALUES ('495','zhangzhang','5ffcf6f9c348199d257b5ce06f4790a3');
INSERT INTO uchome_member VALUES ('496','eeeeee','11997cc01aa1406294072eb4cbb3f184');
INSERT INTO uchome_member VALUES ('497','ywj','a1ccce2c4020c4e9463e7cbd9a4f6761');
INSERT INTO uchome_member VALUES ('498','binxr','82b34377fe618cd36e5bfe674ec514e8');
INSERT INTO uchome_member VALUES ('499','afei','0e49616007e0be8fb2fc33901c69418f');
INSERT INTO uchome_member VALUES ('500','arstyulmp','e5ab58892c772378922654e008163d76');
INSERT INTO uchome_member VALUES ('501','fcq','45cb4e1fc4d871794caa678d69982643');
INSERT INTO uchome_member VALUES ('502','jiachunlin','f5566c1a4fb690ed75a717b24b7ce358');
INSERT INTO uchome_member VALUES ('503','jht','895b9953b716e708792f61e6d9f844c2');
INSERT INTO uchome_member VALUES ('504','feiyh','bb6e71403cf3f8c4d84906a042cd75eb');
INSERT INTO uchome_member VALUES ('505','xpr','31c402507e9be14c074e06b8e2a4572f');
INSERT INTO uchome_member VALUES ('506','wangzhenqiu','17219af4b009c7e27e0266c8d26496b6');
INSERT INTO uchome_member VALUES ('507','English','f2f848ccc189794fcf603c2a30492965');
INSERT INTO uchome_member VALUES ('508','caonima','28bd33689fa3abb99aaa52b4d966297f');
INSERT INTO uchome_member VALUES ('509','taylor','24fc3a4c92f207bf61c222071f0c944f');
INSERT INTO uchome_member VALUES ('510','skey654','1951800137edc912242884dc88eb82de');
INSERT INTO uchome_member VALUES ('511','wuming','56e6457b04b5f19be5e0769ae6fd47be');
INSERT INTO uchome_member VALUES ('512','fyjktjz','8e5bf80eda295c9767cc3981319eb334');
INSERT INTO uchome_member VALUES ('513','TOMO','c3f98f09e7c5f77bb19afd1e5fab557a');
INSERT INTO uchome_member VALUES ('514','chengguohui','d87b17609ffe835a60a218d1d4f57456');
INSERT INTO uchome_member VALUES ('515','RSDYC','6e8dbf6221983b2ff77cc106768c4380');
INSERT INTO uchome_member VALUES ('516','tree','238b9e884bf41bc55b95d6cfbeecca66');
INSERT INTO uchome_member VALUES ('517','rabishi123','691ffe73e5406179da9587493731a56e');
INSERT INTO uchome_member VALUES ('518','zoe','2222c1f08a6dedc62d302fddac522036');
INSERT INTO uchome_member VALUES ('519','happyjsl','616922bde7c735781d9d72b42b852014');
INSERT INTO uchome_member VALUES ('520','yzzk','e7e5154dab131cf280ceb7ab9eede267');
INSERT INTO uchome_member VALUES ('521','51party','5d46cb810b6ccd1d3c51254792d0f644');
INSERT INTO uchome_member VALUES ('522','cnya','4b38184193261d23361591932f23233d');
INSERT INTO uchome_member VALUES ('523','lqz','7ba0b1618ead668cb2223452d3677e73');
INSERT INTO uchome_member VALUES ('524','pengxiaoyao','5b1504bafd0871bcb69ac3c55162fe83');
INSERT INTO uchome_member VALUES ('525','zlgg','edc3eda11b1d803078fedfc70138de79');
INSERT INTO uchome_member VALUES ('526','wzwzwz','1069c601842ada85d7409f1c34d8edac');
INSERT INTO uchome_member VALUES ('527','fesunn','e4d116f453a9a3e2fb1fab5b32520c6e');
INSERT INTO uchome_member VALUES ('528','wuchao','522714b5840de197355d17049944ea04');
INSERT INTO uchome_member VALUES ('529','xxx','1550fbba9112c59d81185dfc0f32e3da');
INSERT INTO uchome_member VALUES ('530','tuiyue','7a52cac99f5d5c0e7f3f02fc2c4c3527');
INSERT INTO uchome_member VALUES ('531','zjjfb','2e28f33461fa0ae5943179bbca5ef992');
INSERT INTO uchome_member VALUES ('532','sohoqq','57d8c188ac03c32e0dd1f78eb3615939');
INSERT INTO uchome_member VALUES ('533','wangtao','cc56bfc6407ca0c87c3d44dfb2010306');
INSERT INTO uchome_member VALUES ('534','ABC','3b54895c7ad10da0932f6a7f5ba7ce06');
INSERT INTO uchome_member VALUES ('535','tianya','dd14aabc8cb598025ba9857991e883d2');
INSERT INTO uchome_member VALUES ('536','cwei','048f4baafa32187e25e3d9b6df73c50c');
INSERT INTO uchome_member VALUES ('537','demonpig','1a1f44fb7b90d43bb5cec1bb3074e429');
INSERT INTO uchome_member VALUES ('538','testd','557261d93456d44ba6d7bcd352236aa4');
INSERT INTO uchome_member VALUES ('539','ayu','8a9d72d562389f968fb68084561beabd');
INSERT INTO uchome_member VALUES ('540','opindex','cc0348089b4a4d244c0ed78854898d55');
INSERT INTO uchome_member VALUES ('541','fangyihu','aa0e3e4c04f291b1b7e2ba5020b8522c');
INSERT INTO uchome_member VALUES ('542','Breeze','f2723b9468f4b11852babd08af2de204');
INSERT INTO uchome_member VALUES ('543','jkgtuj','1135cfb506a99015315409032d404d40');
INSERT INTO uchome_member VALUES ('544','FAFDSFS','358649f170de18ec3bbcfce29f70042a');
INSERT INTO uchome_member VALUES ('545','shazhongtu','322649139ab11e31adba6f0e4ecd350d');
INSERT INTO uchome_member VALUES ('546','jame','0edb21778c72992610011c758eea61fc');
INSERT INTO uchome_member VALUES ('547','xinxing-jason','1d685e9617b8b8b329ca6a629870e9c5');
INSERT INTO uchome_member VALUES ('548','Dxxoo','c64c18f2d7b2844b92a42912c2235864');
INSERT INTO uchome_member VALUES ('549','tftest','d8f819496fa85ffca7e89c36d5a8e244');
INSERT INTO uchome_member VALUES ('550','0451fl','377e24160a38d37718bc1dba63fdc1e0');
INSERT INTO uchome_member VALUES ('551','weiki','f26d70117d528d3bba40b149ed44ff8e');
INSERT INTO uchome_member VALUES ('552','jinzhu3535','27d37c7600160f6f56060e33b61a764b');
INSERT INTO uchome_member VALUES ('553','liguojievip','cfc60a43c512b295ced7ee7c4ee97f7e');
INSERT INTO uchome_member VALUES ('554','zhadz','eec7643557f5e33a6a129d75284b83d7');
INSERT INTO uchome_member VALUES ('555','bingbing','17f6e7a4d93f2ebca32e77a00d82b11b');
INSERT INTO uchome_member VALUES ('556','wwwqq001','16f869963d263fc3868f9daab9b23f27');
INSERT INTO uchome_member VALUES ('557','sejianjian','de3578cad07abe63380ceff1d8e4ac3b');
INSERT INTO uchome_member VALUES ('558','xiaomomocom','04cc3367ca13153c89023c33d458d7e5');
INSERT INTO uchome_member VALUES ('559','lanxin','949700a162200b5c8a220e1eb1315faa');
INSERT INTO uchome_member VALUES ('560','kinggg','0f1cbd6ea4cddbf34f6606f03c4f7a63');
INSERT INTO uchome_member VALUES ('561','qqqqqqq','36bc5a4eecc661d2d1d8069cd08ef1f1');
INSERT INTO uchome_member VALUES ('562','tristan','7d90798133c027bf231c27cfeab43b11');
INSERT INTO uchome_member VALUES ('563','asdadfsdfs','147fcf742896bb8655cb863ad6fb8e82');
INSERT INTO uchome_member VALUES ('564','fhdsf','e33e96fbbe472adb502a829f12a61ee6');
INSERT INTO uchome_member VALUES ('565','fhhdf','1d83fefefb1d6ab78233a55eb69d2c91');
INSERT INTO uchome_member VALUES ('566','ttttt','ae94301a7350b12e0e5c89d5e586039b');
INSERT INTO uchome_member VALUES ('567','tombo','0e0850dcf8fad48887b1f398a3c5ed84');
INSERT INTO uchome_member VALUES ('568','hanggui','0de8684827412e64ce338b9954d68120');
INSERT INTO uchome_member VALUES ('569','akak','20c37c266110e56bd660dbeed4c74b5f');
INSERT INTO uchome_member VALUES ('570','laiba','d51229a1b4630cb23967cf0d6dd78a85');
INSERT INTO uchome_member VALUES ('571','mcb','7a2c14b976274f9df1fce12e71e0521b');
INSERT INTO uchome_member VALUES ('572','andstart','754f7553569cddf77f9daeabbb1e48a9');
INSERT INTO uchome_member VALUES ('573','laiziouran','e0e091e41477a3f59962b5042301f38d');
INSERT INTO uchome_member VALUES ('574','miky','fd5ee6b24a19f0f75491ca0e9a954283');
INSERT INTO uchome_member VALUES ('575','alsoon','22d2d412935874159d66431c00db8967');
INSERT INTO uchome_member VALUES ('576','zhenxinzhenyi','9f84fba730373c4dbdc7caeeac195a33');
INSERT INTO uchome_member VALUES ('577','tjh','f448a57652c4f0928e27ff5c6b4acda4');
INSERT INTO uchome_member VALUES ('578','nick','4a11a176cc555e9f7bd195dec1da062b');
INSERT INTO uchome_member VALUES ('579','biqi','27ef5018acb8e86fb55919dde3f447e9');
INSERT INTO uchome_member VALUES ('580','haiti','5bd67f45da5241afaf99a3d0b1020288');
INSERT INTO uchome_member VALUES ('581','banfuqing','3bfccebda5a2c41b82a0e0e17c22da2a');
INSERT INTO uchome_member VALUES ('582','ooo','b7005365c786c583faf06bafbe9bc195');
INSERT INTO uchome_member VALUES ('583','jackxiao','e5a168a8bea76bbe100e3ab3ae170cd7');
INSERT INTO uchome_member VALUES ('584','nino','d766fb594b38e6d4dbb2990d8fe97192');
INSERT INTO uchome_member VALUES ('585','yjucd','7a2dc5c940f52fa9493806ccf0c57e00');
INSERT INTO uchome_member VALUES ('586','feiyun18','74f102b7680b8a6f380a1708b70a0e5b');
INSERT INTO uchome_member VALUES ('587','woshishuige','cad85ab76b085cb421dde8f23b1e13f2');
INSERT INTO uchome_member VALUES ('588','ons','ae069ff1d8f420defcaa546695a87d47');
INSERT INTO uchome_member VALUES ('589','tuiyur','5b149d9ee8c5b403b40a87255e05ef34');
INSERT INTO uchome_member VALUES ('590','oms','d7a5c10fdff513e7733bfde093f4599a');
INSERT INTO uchome_member VALUES ('591','zhojin9480cn','bdcc7f31786c1141464db6aa4f0b71d0');
INSERT INTO uchome_member VALUES ('592','abu','939e52b033a0cbf2f8acb31e5501ef90');

DROP TABLE IF EXISTS uchome_mtag;
CREATE TABLE uchome_mtag (
  tagid mediumint(8) unsigned NOT NULL auto_increment,
  tagname varchar(40) NOT NULL default '',
  fieldid smallint(6) NOT NULL default '0',
  membernum mediumint(8) unsigned NOT NULL default '0',
  `close` tinyint(1) NOT NULL default '0',
  announcement text NOT NULL,
  pic varchar(150) NOT NULL default '',
  closeapply tinyint(1) NOT NULL default '0',
  joinperm tinyint(1) NOT NULL default '0',
  viewperm tinyint(1) NOT NULL default '0',
  moderator varchar(255) NOT NULL default '',
  threadnum mediumint(8) unsigned NOT NULL default '0',
  postnum mediumint(8) unsigned NOT NULL default '0',
  threadperm tinyint(1) NOT NULL default '0',
  postperm tinyint(1) NOT NULL default '0',
  recommend tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (tagid),
  KEY tagname (tagname),
  KEY fieldid (fieldid,membernum),
  KEY membernum (membernum),
  KEY threadnum (threadnum)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_mtaginvite;
CREATE TABLE uchome_mtaginvite (
  uid mediumint(8) unsigned NOT NULL default '0',
  tagid mediumint(8) unsigned NOT NULL default '0',
  fromuid mediumint(8) unsigned NOT NULL default '0',
  fromusername char(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,tagid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_myapp;
CREATE TABLE uchome_myapp (
  appid mediumint(8) unsigned NOT NULL default '0',
  appname varchar(60) NOT NULL default '',
  narrow tinyint(1) NOT NULL default '0',
  flag tinyint(1) NOT NULL default '0',
  version mediumint(8) unsigned NOT NULL default '0',
  displaymethod tinyint(1) NOT NULL default '0',
  displayorder smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (appid),
  KEY flag (flag,displayorder)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_myinvite;
CREATE TABLE uchome_myinvite (
  id mediumint(8) unsigned NOT NULL auto_increment,
  typename varchar(100) NOT NULL default '',
  appid mediumint(8) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  fromuid mediumint(8) unsigned NOT NULL default '0',
  touid mediumint(8) unsigned NOT NULL default '0',
  myml text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  `hash` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY `hash` (`hash`),
  KEY uid (touid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_notification;
CREATE TABLE uchome_notification (
  id mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `new` tinyint(1) NOT NULL default '0',
  authorid mediumint(8) unsigned NOT NULL default '0',
  author varchar(15) NOT NULL default '',
  note text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY uid (uid,`new`,dateline)
) ENGINE=MyISAM AUTO_INCREMENT=818 DEFAULT CHARSET=gbk AUTO_INCREMENT=818;

INSERT INTO uchome_notification VALUES ('1','20','friend','1','9','happy','和你成为了好友','1249541010');
INSERT INTO uchome_notification VALUES ('3','24','friend','1','21','wangyang','和你成为了好友','1249541632');
INSERT INTO uchome_notification VALUES ('5','24','friend','1','1','admin','和你成为了好友','1249541640');
INSERT INTO uchome_notification VALUES ('6','20','friend','1','1','admin','和你成为了好友','1249541647');
INSERT INTO uchome_notification VALUES ('8','24','friend','1','9','happy','和你成为了好友','1249541796');
INSERT INTO uchome_notification VALUES ('18','32','friend','1','9','happy','和你成为了好友','1249546395');
INSERT INTO uchome_notification VALUES ('19','34','friend','1','35','BNRW','和你成为了好友','1249546520');
INSERT INTO uchome_notification VALUES ('27','34','friend','1','21','wangyang','和你成为了好友','1249549920');
INSERT INTO uchome_notification VALUES ('31','36','friend','1','1','admin','和你成为了好友','1249553613');
INSERT INTO uchome_notification VALUES ('46','52','friend','1','3','evyt','和你成为了好友','1249582485');
INSERT INTO uchome_notification VALUES ('47','44','friend','1','3','evyt','和你成为了好友','1249582505');
INSERT INTO uchome_notification VALUES ('50','67','friend','1','3','evyt','和你成为了好友','1249610894');
INSERT INTO uchome_notification VALUES ('51','66','friend','1','3','evyt','和你成为了好友','1249610901');
INSERT INTO uchome_notification VALUES ('52','62','friend','1','9','happy','和你成为了好友','1249611087');
INSERT INTO uchome_notification VALUES ('65','84','friend','1','1','admin','和你成为了好友','1249632495');
INSERT INTO uchome_notification VALUES ('67','57','friend','1','1','admin','和你成为了好友','1249632501');
INSERT INTO uchome_notification VALUES ('69','94','friend','1','91','kuangniangao','和你成为了好友','1249636700');
INSERT INTO uchome_notification VALUES ('73','91','friend','1','96','abcdefg','和你成为了好友','1249639826');
INSERT INTO uchome_notification VALUES ('75','99','friend','1','96','abcdefg','和你成为了好友','1249640036');
INSERT INTO uchome_notification VALUES ('80','62','friend','1','46','ma876401970','和你成为了好友','1249644950');
INSERT INTO uchome_notification VALUES ('82','57','friend','1','46','ma876401970','和你成为了好友','1249644960');
INSERT INTO uchome_notification VALUES ('84','91','friend','1','9','happy','和你成为了好友','1249645100');
INSERT INTO uchome_notification VALUES ('85','85','friend','1','9','happy','和你成为了好友','1249645104');
INSERT INTO uchome_notification VALUES ('86','79','friend','1','9','happy','和你成为了好友','1249645114');
INSERT INTO uchome_notification VALUES ('88','104','friend','1','103','sylt','和你成为了好友','1249654065');
INSERT INTO uchome_notification VALUES ('91','84','friend','1','3','evyt','和你成为了好友','1249670864');
INSERT INTO uchome_notification VALUES ('94','67','friend','1','29','asdzxc','和你成为了好友','1249691902');
INSERT INTO uchome_notification VALUES ('95','110','friend','1','27','tianzi','和你成为了好友','1249698251');
INSERT INTO uchome_notification VALUES ('96','84','friend','1','27','tianzi','和你成为了好友','1249698257');
INSERT INTO uchome_notification VALUES ('97','66','friend','1','27','tianzi','和你成为了好友','1249698270');
INSERT INTO uchome_notification VALUES ('98','57','friend','1','27','tianzi','和你成为了好友','1249698286');
INSERT INTO uchome_notification VALUES ('99','52','friend','1','27','tianzi','和你成为了好友','1249698293');
INSERT INTO uchome_notification VALUES ('100','44','friend','1','27','tianzi','和你成为了好友','1249698298');
INSERT INTO uchome_notification VALUES ('101','36','friend','1','27','tianzi','和你成为了好友','1249698301');
INSERT INTO uchome_notification VALUES ('102','34','friend','1','27','tianzi','和你成为了好友','1249698307');
INSERT INTO uchome_notification VALUES ('106','116','friend','1','1','admin','和你成为了好友','1249714613');
INSERT INTO uchome_notification VALUES ('107','110','friend','1','1','admin','和你成为了好友','1249714615');
INSERT INTO uchome_notification VALUES ('112','132','friend','1','1','admin','和你成为了好友','1249719424');
INSERT INTO uchome_notification VALUES ('114','132','friend','1','125','mylove','和你成为了好友','1249720389');
INSERT INTO uchome_notification VALUES ('115','126','friend','1','125','mylove','和你成为了好友','1249720399');
INSERT INTO uchome_notification VALUES ('117','115','friend','1','103','sylt','和你成为了好友','1249721873');
INSERT INTO uchome_notification VALUES ('120','116','friend','1','64','liusuo','和你成为了好友','1249723809');
INSERT INTO uchome_notification VALUES ('121','67','friend','1','64','liusuo','和你成为了好友','1249723815');
INSERT INTO uchome_notification VALUES ('122','29','friend','1','64','liusuo','和你成为了好友','1249723846');
INSERT INTO uchome_notification VALUES ('123','66','friend','1','64','liusuo','和你成为了好友','1249723858');
INSERT INTO uchome_notification VALUES ('128','148','friend','1','9','happy','和你成为了好友','1249740195');
INSERT INTO uchome_notification VALUES ('131','119','friend','1','9','happy','和你成为了好友','1249740225');
INSERT INTO uchome_notification VALUES ('132','116','friend','1','9','happy','和你成为了好友','1249740229');
INSERT INTO uchome_notification VALUES ('133','110','friend','1','9','happy','和你成为了好友','1249740232');
INSERT INTO uchome_notification VALUES ('138','152','friend','1','134','bluedryad','和你成为了好友','1249755336');
INSERT INTO uchome_notification VALUES ('139','138','friend','1','135','iamwayney','和你成为了好友','1249761575');
INSERT INTO uchome_notification VALUES ('144','161','friend','1','96','abcdefg','和你成为了好友','1249779425');
INSERT INTO uchome_notification VALUES ('146','159','friend','1','9','happy','和你成为了好友','1249784932');
INSERT INTO uchome_notification VALUES ('151','148','friend','1','122','delong','和你成为了好友','1249794747');
INSERT INTO uchome_notification VALUES ('152','161','friend','1','27','tianzi','和你成为了好友','1249795769');
INSERT INTO uchome_notification VALUES ('153','159','friend','1','27','tianzi','和你成为了好友','1249795774');
INSERT INTO uchome_notification VALUES ('156','116','friend','1','27','tianzi','和你成为了好友','1249795785');
INSERT INTO uchome_notification VALUES ('167','183','friend','1','96','abcdefg','和你成为了好友','1249804587');
INSERT INTO uchome_notification VALUES ('170','159','friend','1','1','admin','和你成为了好友','1249808438');
INSERT INTO uchome_notification VALUES ('173','185','friend','1','1','admin','和你成为了好友','1249809059');
INSERT INTO uchome_notification VALUES ('178','91','friend','1','97','wbd','和你成为了好友','1249810802');
INSERT INTO uchome_notification VALUES ('179','185','friend','1','176','MAYJJ','和你成为了好友','1249810956');
INSERT INTO uchome_notification VALUES ('188','147','friend','1','58','huaynie','和你成为了好友','1249814174');
INSERT INTO uchome_notification VALUES ('189','119','friend','1','58','huaynie','和你成为了好友','1249814179');
INSERT INTO uchome_notification VALUES ('190','110','friend','1','58','huaynie','和你成为了好友','1249814181');
INSERT INTO uchome_notification VALUES ('191','101','friend','1','58','huaynie','和你成为了好友','1249814184');
INSERT INTO uchome_notification VALUES ('192','91','friend','1','58','huaynie','和你成为了好友','1249814187');
INSERT INTO uchome_notification VALUES ('193','85','friend','1','58','huaynie','和你成为了好友','1249814190');
INSERT INTO uchome_notification VALUES ('194','82','friend','1','58','huaynie','和你成为了好友','1249814192');
INSERT INTO uchome_notification VALUES ('196','72','friend','1','58','huaynie','和你成为了好友','1249814197');
INSERT INTO uchome_notification VALUES ('197','68','friend','1','58','huaynie','和你成为了好友','1249814201');
INSERT INTO uchome_notification VALUES ('199','63','friend','1','58','huaynie','和你成为了好友','1249814205');
INSERT INTO uchome_notification VALUES ('200','62','friend','1','58','huaynie','和你成为了好友','1249814209');
INSERT INTO uchome_notification VALUES ('203','185','friend','1','134','bluedryad','和你成为了好友','1249815224');
INSERT INTO uchome_notification VALUES ('205','192','friend','1','9','happy','和你成为了好友','1249821468');
INSERT INTO uchome_notification VALUES ('212','202','friend','1','134','bluedryad','和你成为了好友','1249863277');
INSERT INTO uchome_notification VALUES ('213','202','friend','1','206','zhylbj','接受了您的好友邀请','1249867050');
INSERT INTO uchome_notification VALUES ('215','202','friend','1','209','yiyaheihei','接受了您的好友邀请','1249868647');
INSERT INTO uchome_notification VALUES ('216','192','friend','1','1','admin','和你成为了好友','1249870444');
INSERT INTO uchome_notification VALUES ('217','30','friend','1','125','mylove','和你成为了好友','1249870608');
INSERT INTO uchome_notification VALUES ('221','208','friend','1','187','jack','和你成为了好友','1249871361');
INSERT INTO uchome_notification VALUES ('222','205','friend','1','187','jack','和你成为了好友','1249871453');
INSERT INTO uchome_notification VALUES ('224','209','friend','1','176','MAYJJ','和你成为了好友','1249874162');
INSERT INTO uchome_notification VALUES ('225','209','friend','1','134','bluedryad','和你成为了好友','1249875535');
INSERT INTO uchome_notification VALUES ('229','207','friend','1','9','happy','和你成为了好友','1249884941');
INSERT INTO uchome_notification VALUES ('232','202','friend','1','27','tianzi','和你成为了好友','1249885701');
INSERT INTO uchome_notification VALUES ('234','177','friend','1','27','tianzi','和你成为了好友','1249885714');
INSERT INTO uchome_notification VALUES ('238','209','friend','1','206','zhylbj','和你成为了好友','1249890967');
INSERT INTO uchome_notification VALUES ('239','210','friend','1','189','tsingchao','和你成为了好友','1249891438');
INSERT INTO uchome_notification VALUES ('240','200','friend','1','189','tsingchao','和你成为了好友','1249891442');
INSERT INTO uchome_notification VALUES ('241','192','friend','1','189','tsingchao','和你成为了好友','1249891448');
INSERT INTO uchome_notification VALUES ('242','202','friend','1','96','abcdefg','和你成为了好友','1249891781');
INSERT INTO uchome_notification VALUES ('245','185','friend','1','96','abcdefg','和你成为了好友','1249891807');
INSERT INTO uchome_notification VALUES ('247','203','friend','1','211','yhkwy','和你成为了好友','1249895185');
INSERT INTO uchome_notification VALUES ('252','206','friend','1','9','happy','和你成为了好友','1249899521');
INSERT INTO uchome_notification VALUES ('253','202','friend','1','230','lijianhang','接受了您的好友邀请','1249900687');
INSERT INTO uchome_notification VALUES ('262','200','friend','1','135','iamwayney','和你成为了好友','1249927196');
INSERT INTO uchome_notification VALUES ('266','202','friend','1','240','zhaojiawen','接受了您的好友邀请','1249951855');
INSERT INTO uchome_notification VALUES ('269','206','friend','1','96','abcdefg','和你成为了好友','1249955204');
INSERT INTO uchome_notification VALUES ('270','206','friend','1','214','subborn','和你成为了好友','1249956582');
INSERT INTO uchome_notification VALUES ('278','172','friend','1','242','wcbxx','和你成为了好友','1249963190');
INSERT INTO uchome_notification VALUES ('284','244','friend','1','27','tianzi','和你成为了好友','1249974392');
INSERT INTO uchome_notification VALUES ('286','206','friend','1','129','hjh','和你成为了好友','1249978149');
INSERT INTO uchome_notification VALUES ('290','249','friend','1','103','sylt','和你成为了好友','1249989366');
INSERT INTO uchome_notification VALUES ('291','209','friend','1','194','asdfghjkl','和你成为了好友','1249998306');
INSERT INTO uchome_notification VALUES ('292','249','friend','1','135','iamwayney','和你成为了好友','1249999167');
INSERT INTO uchome_notification VALUES ('293','202','friend','1','251','vip','接受了您的好友邀请','1250008128');
INSERT INTO uchome_notification VALUES ('295','206','friend','1','189','tsingchao','和你成为了好友','1250059088');
INSERT INTO uchome_notification VALUES ('304','267','friend','1','264','寂寞梧桐','和你成为了好友','1250123190');
INSERT INTO uchome_notification VALUES ('306','259','friend','1','27','tianzi','和你成为了好友','1250128221');
INSERT INTO uchome_notification VALUES ('310','265','friend','1','263','ONEI','和你成为了好友','1250139083');
INSERT INTO uchome_notification VALUES ('312','263','friend','1','189','tsingchao','和你成为了好友','1250145177');
INSERT INTO uchome_notification VALUES ('313','263','friend','1','255','abcd','和你成为了好友','1250148823');
INSERT INTO uchome_notification VALUES ('314','90','friend','1','87','cec','和你成为了好友','1250149870');
INSERT INTO uchome_notification VALUES ('315','91','friend','1','87','cec','和你成为了好友','1250149876');
INSERT INTO uchome_notification VALUES ('319','252','friend','1','176','MAYJJ','和你成为了好友','1250153549');
INSERT INTO uchome_notification VALUES ('323','259','friend','1','1','admin','和你成为了好友','1250169606');
INSERT INTO uchome_notification VALUES ('324','244','friend','1','125','mylove','和你成为了好友','1250169963');
INSERT INTO uchome_notification VALUES ('325','206','friend','1','125','mylove','和你成为了好友','1250169967');
INSERT INTO uchome_notification VALUES ('326','218','friend','1','125','mylove','和你成为了好友','1250169970');
INSERT INTO uchome_notification VALUES ('327','269','friend','1','103','sylt','和你成为了好友','1250170692');
INSERT INTO uchome_notification VALUES ('329','269','friend','1','135','iamwayney','和你成为了好友','1250172905');
INSERT INTO uchome_notification VALUES ('332','278','friend','1','176','MAYJJ','和你成为了好友','1250208710');
INSERT INTO uchome_notification VALUES ('333','278','friend','1','27','tianzi','和你成为了好友','1250211755');
INSERT INTO uchome_notification VALUES ('334','278','friend','1','214','subborn','和你成为了好友','1250217849');
INSERT INTO uchome_notification VALUES ('340','110','friend','1','73','yanluo','和你成为了好友','1250248058');
INSERT INTO uchome_notification VALUES ('341','91','friend','1','73','yanluo','和你成为了好友','1250248067');
INSERT INTO uchome_notification VALUES ('343','275','friend','1','274','GEXUAN','和你成为了好友','1250250275');
INSERT INTO uchome_notification VALUES ('344','161','friend','1','64','liusuo','和你成为了好友','1250261891');
INSERT INTO uchome_notification VALUES ('345','159','friend','1','64','liusuo','和你成为了好友','1250261902');
INSERT INTO uchome_notification VALUES ('347','299','friend','1','96','abcdefg','和你成为了好友','1250298118');
INSERT INTO uchome_notification VALUES ('348','247','friend','1','96','abcdefg','和你成为了好友','1250298278');
INSERT INTO uchome_notification VALUES ('349','246','friend','1','96','abcdefg','和你成为了好友','1250298339');
INSERT INTO uchome_notification VALUES ('350','242','friend','1','96','abcdefg','和你成为了好友','1250298389');
INSERT INTO uchome_notification VALUES ('351','295','friend','1','27','tianzi','和你成为了好友','1250299875');
INSERT INTO uchome_notification VALUES ('353','290','friend','1','27','tianzi','和你成为了好友','1250299885');
INSERT INTO uchome_notification VALUES ('355','295','friend','1','255','abcd','和你成为了好友','1250308766');
INSERT INTO uchome_notification VALUES ('356','285','friend','1','255','abcd','和你成为了好友','1250308804');
INSERT INTO uchome_notification VALUES ('358','302','friend','1','46','ma876401970','和你成为了好友','1250312514');
INSERT INTO uchome_notification VALUES ('359','266','friend','1','46','ma876401970','和你成为了好友','1250312519');
INSERT INTO uchome_notification VALUES ('360','246','friend','1','46','ma876401970','和你成为了好友','1250312524');
INSERT INTO uchome_notification VALUES ('361','244','friend','1','46','ma876401970','和你成为了好友','1250312539');
INSERT INTO uchome_notification VALUES ('362','230','friend','1','46','ma876401970','和你成为了好友','1250312566');
INSERT INTO uchome_notification VALUES ('363','207','friend','1','46','ma876401970','和你成为了好友','1250312568');
INSERT INTO uchome_notification VALUES ('364','202','friend','1','46','ma876401970','和你成为了好友','1250312574');
INSERT INTO uchome_notification VALUES ('367','176','friend','1','46','ma876401970','和你成为了好友','1250312590');
INSERT INTO uchome_notification VALUES ('368','179','friend','1','46','ma876401970','和你成为了好友','1250312597');
INSERT INTO uchome_notification VALUES ('369','170','friend','1','46','ma876401970','和你成为了好友','1250312601');
INSERT INTO uchome_notification VALUES ('370','168','friend','1','46','ma876401970','和你成为了好友','1250312606');
INSERT INTO uchome_notification VALUES ('371','165','friend','1','46','ma876401970','和你成为了好友','1250312614');
INSERT INTO uchome_notification VALUES ('372','161','friend','1','46','ma876401970','和你成为了好友','1250312620');
INSERT INTO uchome_notification VALUES ('373','159','friend','1','46','ma876401970','和你成为了好友','1250312626');
INSERT INTO uchome_notification VALUES ('375','147','friend','1','46','ma876401970','和你成为了好友','1250312637');
INSERT INTO uchome_notification VALUES ('376','119','friend','1','46','ma876401970','和你成为了好友','1250312642');
INSERT INTO uchome_notification VALUES ('377','116','friend','1','46','ma876401970','和你成为了好友','1250312649');
INSERT INTO uchome_notification VALUES ('378','115','friend','1','46','ma876401970','和你成为了好友','1250312658');
INSERT INTO uchome_notification VALUES ('382','306','friend','1','46','ma876401970','和你成为了好友','1250376149');
INSERT INTO uchome_notification VALUES ('385','304','friend','1','243','zhengwenxiang','和你成为了好友','1250400317');
INSERT INTO uchome_notification VALUES ('386','269','friend','1','232','skyzhaojian','和你成为了好友','1250411894');
INSERT INTO uchome_notification VALUES ('387','265','friend','1','232','skyzhaojian','和你成为了好友','1250411903');
INSERT INTO uchome_notification VALUES ('390','319','friend','1','187','jack','和你成为了好友','1250431141');
INSERT INTO uchome_notification VALUES ('391','302','friend','1','1','admin','和你成为了好友','1250436281');
INSERT INTO uchome_notification VALUES ('394','286','friend','1','1','admin','和你成为了好友','1250436290');
INSERT INTO uchome_notification VALUES ('396','287','friend','1','125','mylove','和你成为了好友','1250436472');
INSERT INTO uchome_notification VALUES ('397','320','friend','1','135','iamwayney','和你成为了好友','1250441006');
INSERT INTO uchome_notification VALUES ('398','46','friend','1','135','iamwayney','和你成为了好友','1250441023');
INSERT INTO uchome_notification VALUES ('400','320','friend','1','27','tianzi','和你成为了好友','1250469765');
INSERT INTO uchome_notification VALUES ('402','211','friend','1','122','delong','和你成为了好友','1250477684');
INSERT INTO uchome_notification VALUES ('403','209','friend','1','122','delong','和你成为了好友','1250477758');
INSERT INTO uchome_notification VALUES ('405','278','friend','1','122','delong','和你成为了好友','1250478389');
INSERT INTO uchome_notification VALUES ('406','203','friend','1','122','delong','和你成为了好友','1250478428');
INSERT INTO uchome_notification VALUES ('407','202','friend','1','122','delong','和你成为了好友','1250478479');
INSERT INTO uchome_notification VALUES ('408','46','friend','1','274','GEXUAN','和你成为了好友','1250482702');
INSERT INTO uchome_notification VALUES ('410','319','friend','1','232','skyzhaojian','和你成为了好友','1250491284');
INSERT INTO uchome_notification VALUES ('411','325','friend','1','255','abcd','和你成为了好友','1250494059');
INSERT INTO uchome_notification VALUES ('412','325','friend','1','96','abcdefg','和你成为了好友','1250503508');
INSERT INTO uchome_notification VALUES ('417','192','friend','1','188','tianci','和你成为了好友','1250540800');
INSERT INTO uchome_notification VALUES ('419','334','friend','1','96','abcdefg','和你成为了好友','1250557288');
INSERT INTO uchome_notification VALUES ('420','341','friend','1','27','tianzi','和你成为了好友','1250560972');
INSERT INTO uchome_notification VALUES ('421','325','friend','1','27','tianzi','和你成为了好友','1250560975');
INSERT INTO uchome_notification VALUES ('422','334','friend','1','232','skyzhaojian','和你成为了好友','1250574693');
INSERT INTO uchome_notification VALUES ('423','326','friend','1','274','GEXUAN','和你成为了好友','1250576120');
INSERT INTO uchome_notification VALUES ('424','326','friend','1','292','XHL','和你成为了好友','1250585398');
INSERT INTO uchome_notification VALUES ('426','325','friend','1','135','iamwayney','和你成为了好友','1250591474');
INSERT INTO uchome_notification VALUES ('429','348','friend','1','135','iamwayney','和你成为了好友','1250603714');
INSERT INTO uchome_notification VALUES ('430','352','friend','1','96','abcdefg','和你成为了好友','1250648130');
INSERT INTO uchome_notification VALUES ('432','325','friend','1','243','zhengwenxiang','和你成为了好友','1250648682');
INSERT INTO uchome_notification VALUES ('434','278','friend','1','277','Daniel','和你成为了好友','1250649714');
INSERT INTO uchome_notification VALUES ('436','352','friend','1','135','iamwayney','和你成为了好友','1250655996');
INSERT INTO uchome_notification VALUES ('440','358','friend','1','187','jack','和你成为了好友','1250683510');
INSERT INTO uchome_notification VALUES ('441','357','friend','1','187','jack','和你成为了好友','1250683526');
INSERT INTO uchome_notification VALUES ('442','357','friend','1','362','shangxianyue','接受了您的好友邀请','1250685916');
INSERT INTO uchome_notification VALUES ('444','364','friend','1','187','jack','和你成为了好友','1250690222');
INSERT INTO uchome_notification VALUES ('446','365','friend','1','187','jack','和你成为了好友','1250694264');
INSERT INTO uchome_notification VALUES ('447','365','friend','1','1','admin','和你成为了好友','1250698685');
INSERT INTO uchome_notification VALUES ('448','360','friend','1','1','admin','和你成为了好友','1250698687');
INSERT INTO uchome_notification VALUES ('450','325','friend','1','1','admin','和你成为了好友','1250698692');
INSERT INTO uchome_notification VALUES ('452','352','friend','1','339','yangsong1','和你成为了好友','1250708818');
INSERT INTO uchome_notification VALUES ('453','344','friend','1','339','yangsong1','和你成为了好友','1250708823');
INSERT INTO uchome_notification VALUES ('454','358','friend','1','135','iamwayney','和你成为了好友','1250734531');
INSERT INTO uchome_notification VALUES ('459','365','friend','1','27','tianzi','和你成为了好友','1250745895');
INSERT INTO uchome_notification VALUES ('461','352','friend','1','27','tianzi','和你成为了好友','1250745906');
INSERT INTO uchome_notification VALUES ('462','350','friend','1','27','tianzi','和你成为了好友','1250745909');
INSERT INTO uchome_notification VALUES ('470','326','friend','1','158','shendaaaaa','和你成为了好友','1250776502');
INSERT INTO uchome_notification VALUES ('475','374','friend','1','339','yangsong1','和你成为了好友','1250798051');
INSERT INTO uchome_notification VALUES ('476','384','friend','1','363','yyifan','和你成为了好友','1250810581');
INSERT INTO uchome_notification VALUES ('482','389','friend','1','96','abcdefg','和你成为了好友','1250819255');
INSERT INTO uchome_notification VALUES ('487','393','friend','1','371','zlfd','和你成为了好友','1250826312');
INSERT INTO uchome_notification VALUES ('488','395','friend','1','387','Lele','和你成为了好友','1250827981');
INSERT INTO uchome_notification VALUES ('494','389','friend','1','243','zhengwenxiang','和你成为了好友','1250831197');
INSERT INTO uchome_notification VALUES ('495','389','friend','1','232','skyzhaojian','和你成为了好友','1250831578');
INSERT INTO uchome_notification VALUES ('496','202','friend','1','397','csnoviceo','接受了您的好友邀请','1250833481');
INSERT INTO uchome_notification VALUES ('500','395','friend','1','355','czy','和你成为了好友','1250838368');
INSERT INTO uchome_notification VALUES ('506','334','friend','1','73','yanluo','和你成为了好友','1250856683');
INSERT INTO uchome_notification VALUES ('507','398','friend','1','383','zyfzyf','和你成为了好友','1250862400');
INSERT INTO uchome_notification VALUES ('508','384','friend','1','383','zyfzyf','和你成为了好友','1250862408');
INSERT INTO uchome_notification VALUES ('511','390','friend','1','339','yangsong1','和你成为了好友','1250876347');
INSERT INTO uchome_notification VALUES ('513','389','friend','1','339','yangsong1','和你成为了好友','1250876583');
INSERT INTO uchome_notification VALUES ('518','406','friend','1','135','iamwayney','和你成为了好友','1250921729');
INSERT INTO uchome_notification VALUES ('520','406','friend','1','372','Zhaole','和你成为了好友','1250921859');
INSERT INTO uchome_notification VALUES ('521','402','friend','1','27','tianzi','和你成为了好友','1250925952');
INSERT INTO uchome_notification VALUES ('522','395','friend','1','27','tianzi','和你成为了好友','1250925960');
INSERT INTO uchome_notification VALUES ('523','390','friend','1','27','tianzi','和你成为了好友','1250925987');
INSERT INTO uchome_notification VALUES ('524','278','friend','1','173','huha','和你成为了好友','1250927437');
INSERT INTO uchome_notification VALUES ('525','211','friend','1','173','huha','和你成为了好友','1250927444');
INSERT INTO uchome_notification VALUES ('528','176','friend','1','173','huha','和你成为了好友','1250927463');
INSERT INTO uchome_notification VALUES ('529','174','friend','1','173','huha','和你成为了好友','1250927467');
INSERT INTO uchome_notification VALUES ('540','415','friend','1','232','skyzhaojian','和你成为了好友','1251015487');
INSERT INTO uchome_notification VALUES ('543','202','friend','1','419','kankanshuixian','接受了您的好友邀请','1251026523');
INSERT INTO uchome_notification VALUES ('544','406','friend','1','355','czy','和你成为了好友','1251026839');
INSERT INTO uchome_notification VALUES ('552','425','friend','1','411','xuqinghong74','和你成为了好友','1251087752');
INSERT INTO uchome_notification VALUES ('556','435','friend','1','187','jack','和你成为了好友','1251090449');
INSERT INTO uchome_notification VALUES ('557','435','friend','1','411','xuqinghong74','和你成为了好友','1251091526');
INSERT INTO uchome_notification VALUES ('559','407','friend','1','173','huha','和你成为了好友','1251091564');
INSERT INTO uchome_notification VALUES ('566','439','friend','1','363','yyifan','和你成为了好友','1251100529');
INSERT INTO uchome_notification VALUES ('567','439','friend','1','232','skyzhaojian','和你成为了好友','1251102216');
INSERT INTO uchome_notification VALUES ('570','445','friend','1','355','czy','和你成为了好友','1251108206');
INSERT INTO uchome_notification VALUES ('571','419','friend','1','355','czy','和你成为了好友','1251108213');
INSERT INTO uchome_notification VALUES ('572','447','friend','1','96','abcdefg','和你成为了好友','1251109438');
INSERT INTO uchome_notification VALUES ('573','439','friend','1','96','abcdefg','和你成为了好友','1251109459');
INSERT INTO uchome_notification VALUES ('574','448','friend','1','371','zlfd','和你成为了好友','1251112598');
INSERT INTO uchome_notification VALUES ('577','448','friend','1','339','yangsong1','和你成为了好友','1251120039');
INSERT INTO uchome_notification VALUES ('578','439','friend','1','339','yangsong1','和你成为了好友','1251120067');
INSERT INTO uchome_notification VALUES ('589','452','friend','1','371','zlfd','和你成为了好友','1251127126');
INSERT INTO uchome_notification VALUES ('598','459','friend','1','431','banjianbi','和你成为了好友','1251130918');
INSERT INTO uchome_notification VALUES ('599','173','friend','1','431','banjianbi','和你成为了好友','1251130924');
INSERT INTO uchome_notification VALUES ('600','435','friend','1','431','banjianbi','和你成为了好友','1251130933');
INSERT INTO uchome_notification VALUES ('602','432','friend','1','431','banjianbi','和你成为了好友','1251130942');
INSERT INTO uchome_notification VALUES ('611','447','friend','1','411','xuqinghong74','和你成为了好友','1251158977');
INSERT INTO uchome_notification VALUES ('615','459','friend','1','96','abcdefg','和你成为了好友','1251160144');
INSERT INTO uchome_notification VALUES ('618','474','friend','1','371','zlfd','和你成为了好友','1251161982');
INSERT INTO uchome_notification VALUES ('621','339','friend','1','449','demonb','和你成为了好友','1251163779');
INSERT INTO uchome_notification VALUES ('624','459','friend','1','449','demonb','和你成为了好友','1251163920');
INSERT INTO uchome_notification VALUES ('625','453','friend','1','449','demonb','和你成为了好友','1251163929');
INSERT INTO uchome_notification VALUES ('628','269','friend','1','256','darkeyes','和你成为了好友','1251164625');
INSERT INTO uchome_notification VALUES ('629','259','friend','1','256','darkeyes','和你成为了好友','1251164663');
INSERT INTO uchome_notification VALUES ('630','263','friend','1','256','darkeyes','和你成为了好友','1251164793');
INSERT INTO uchome_notification VALUES ('631','474','friend','1','411','xuqinghong74','和你成为了好友','1251166567');
INSERT INTO uchome_notification VALUES ('647','474','friend','1','243','zhengwenxiang','和你成为了好友','1251180118');
INSERT INTO uchome_notification VALUES ('648','439','friend','1','243','zhengwenxiang','和你成为了好友','1251180161');
INSERT INTO uchome_notification VALUES ('649','425','friend','1','243','zhengwenxiang','和你成为了好友','1251180181');
INSERT INTO uchome_notification VALUES ('651','390','friend','1','373','xtxbamboo','和你成为了好友','1251180631');
INSERT INTO uchome_notification VALUES ('653','277','friend','1','373','xtxbamboo','和你成为了好友','1251180667');
INSERT INTO uchome_notification VALUES ('654','481','friend','1','355','czy','和你成为了好友','1251182524');
INSERT INTO uchome_notification VALUES ('657','448','friend','1','292','XHL','和你成为了好友','1251183288');
INSERT INTO uchome_notification VALUES ('663','459','friend','1','1','admin','和你成为了好友','1251186965');
INSERT INTO uchome_notification VALUES ('664','421','friend','1','1','admin','和你成为了好友','1251186967');
INSERT INTO uchome_notification VALUES ('666','390','friend','1','1','admin','和你成为了好友','1251186973');
INSERT INTO uchome_notification VALUES ('667','389','friend','1','1','admin','和你成为了好友','1251186976');
INSERT INTO uchome_notification VALUES ('668','370','friend','1','1','admin','和你成为了好友','1251186979');
INSERT INTO uchome_notification VALUES ('669','369','friend','1','1','admin','和你成为了好友','1251186982');
INSERT INTO uchome_notification VALUES ('670','474','friend','1','96','abcdefg','和你成为了好友','1251188967');
INSERT INTO uchome_notification VALUES ('674','483','friend','1','232','skyzhaojian','和你成为了好友','1251200944');
INSERT INTO uchome_notification VALUES ('676','471','friend','1','371','zlfd','和你成为了好友','1251202075');
INSERT INTO uchome_notification VALUES ('679','439','friend','1','135','iamwayney','和你成为了好友','1251206130');
INSERT INTO uchome_notification VALUES ('680','447','friend','1','135','iamwayney','和你成为了好友','1251206187');
INSERT INTO uchome_notification VALUES ('681','455','friend','1','135','iamwayney','和你成为了好友','1251206213');
INSERT INTO uchome_notification VALUES ('682','456','friend','1','135','iamwayney','和你成为了好友','1251206298');
INSERT INTO uchome_notification VALUES ('683','459','friend','1','135','iamwayney','和你成为了好友','1251206324');
INSERT INTO uchome_notification VALUES ('684','470','friend','1','135','iamwayney','和你成为了好友','1251206363');
INSERT INTO uchome_notification VALUES ('685','471','friend','1','135','iamwayney','和你成为了好友','1251206419');
INSERT INTO uchome_notification VALUES ('686','474','friend','1','135','iamwayney','和你成为了好友','1251206462');
INSERT INTO uchome_notification VALUES ('687','481','friend','1','135','iamwayney','和你成为了好友','1251206669');
INSERT INTO uchome_notification VALUES ('692','395','friend','1','158','shendaaaaa','和你成为了好友','1251215100');
INSERT INTO uchome_notification VALUES ('695','292','friend','1','458','bluesea','和你成为了好友','1251218681');
INSERT INTO uchome_notification VALUES ('701','470','friend','1','371','zlfd','和你成为了好友','1251245701');
INSERT INTO uchome_notification VALUES ('702','470','friend','1','449','demonb','和你成为了好友','1251249426');
INSERT INTO uchome_notification VALUES ('703','473','friend','1','449','demonb','和你成为了好友','1251249431');
INSERT INTO uchome_notification VALUES ('714','511','friend','1','512','fyjktjz','和你成为了好友','1251255045');
INSERT INTO uchome_notification VALUES ('721','512','friend','1','232','skyzhaojian','和你成为了好友','1251262664');
INSERT INTO uchome_notification VALUES ('724','476','friend','1','431','banjianbi','和你成为了好友','1251262964');
INSERT INTO uchome_notification VALUES ('725','467','friend','1','431','banjianbi','和你成为了好友','1251262969');
INSERT INTO uchome_notification VALUES ('728','483','friend','1','466','Edward','和你成为了好友','1251263054');
INSERT INTO uchome_notification VALUES ('731','292','friend','1','73','yanluo','和你成为了好友','1251268440');
INSERT INTO uchome_notification VALUES ('733','511','friend','1','411','xuqinghong74','和你成为了好友','1251270329');
INSERT INTO uchome_notification VALUES ('734','506','friend','1','411','xuqinghong74','和你成为了好友','1251270346');
INSERT INTO uchome_notification VALUES ('736','497','friend','1','187','jack','和你成为了好友','1251275754');
INSERT INTO uchome_notification VALUES ('737','158','friend','1','243','zhengwenxiang','和你成为了好友','1251275782');
INSERT INTO uchome_notification VALUES ('738','482','friend','1','243','zhengwenxiang','和你成为了好友','1251275789');
INSERT INTO uchome_notification VALUES ('739','527','friend','1','232','skyzhaojian','和你成为了好友','1251277882');
INSERT INTO uchome_notification VALUES ('741','506','friend','1','491','ffeng','和你成为了好友','1251282034');
INSERT INTO uchome_notification VALUES ('742','473','friend','1','491','ffeng','和你成为了好友','1251282056');
INSERT INTO uchome_notification VALUES ('745','521','friend','1','135','iamwayney','和你成为了好友','1251287269');
INSERT INTO uchome_notification VALUES ('746','517','friend','1','430','sanshao','和你成为了好友','1251292967');
INSERT INTO uchome_notification VALUES ('747','435','friend','1','434','rrppnn','和你成为了好友','1251299430');
INSERT INTO uchome_notification VALUES ('748','459','friend','1','64','liusuo','和你成为了好友','1251304432');
INSERT INTO uchome_notification VALUES ('749','326','friend','1','64','liusuo','和你成为了好友','1251304469');
INSERT INTO uchome_notification VALUES ('752','541','friend','1','434','rrppnn','和你成为了好友','1251328682');
INSERT INTO uchome_notification VALUES ('753','543','friend','1','434','rrppnn','和你成为了好友','1251328687');
INSERT INTO uchome_notification VALUES ('756','550','friend','1','232','skyzhaojian','和你成为了好友','1251350163');
INSERT INTO uchome_notification VALUES ('757','292','friend','1','301','bkcui','和你成为了好友','1251352690');
INSERT INTO uchome_notification VALUES ('759','158','friend','1','301','bkcui','和你成为了好友','1251352705');
INSERT INTO uchome_notification VALUES ('764','482','friend','1','499','afei','和你成为了好友','1251359844');
INSERT INTO uchome_notification VALUES ('765','554','friend','1','553','liguojievip','和你成为了好友','1251359997');
INSERT INTO uchome_notification VALUES ('766','517','friend','1','255','abcd','和你成为了好友','1251360557');
INSERT INTO uchome_notification VALUES ('767','477','friend','1','255','abcd','和你成为了好友','1251360593');
INSERT INTO uchome_notification VALUES ('776','562','friend','1','255','abcd','和你成为了好友','1251369742');
INSERT INTO uchome_notification VALUES ('779','566','friend','1','491','ffeng','和你成为了好友','1251371235');
INSERT INTO uchome_notification VALUES ('780','558','friend','1','499','afei','和你成为了好友','1251371834');
INSERT INTO uchome_notification VALUES ('782','553','friend','1','232','skyzhaojian','和你成为了好友','1251380409');
INSERT INTO uchome_notification VALUES ('783','562','friend','1','430','sanshao','和你成为了好友','1251388572');
INSERT INTO uchome_notification VALUES ('785','558','friend','1','458','bluesea','和你成为了好友','1251389480');
INSERT INTO uchome_notification VALUES ('791','558','friend','1','386','mytwd','和你成为了好友','1251394044');
INSERT INTO uchome_notification VALUES ('792','577','friend','1','371','zlfd','和你成为了好友','1251416568');
INSERT INTO uchome_notification VALUES ('793','577','friend','1','411','xuqinghong74','和你成为了好友','1251418043');
INSERT INTO uchome_notification VALUES ('796','572','friend','1','96','abcdefg','和你成为了好友','1251423051');
INSERT INTO uchome_notification VALUES ('797','458','friend','1','491','ffeng','和你成为了好友','1251423595');
INSERT INTO uchome_notification VALUES ('798','430','friend','1','491','ffeng','和你成为了好友','1251423604');
INSERT INTO uchome_notification VALUES ('799','556','friend','1','355','czy','和你成为了好友','1251434925');
INSERT INTO uchome_notification VALUES ('800','562','friend','1','355','czy','和你成为了好友','1251434936');
INSERT INTO uchome_notification VALUES ('801','558','friend','1','355','czy','和你成为了好友','1251434946');
INSERT INTO uchome_notification VALUES ('803','546','friend','1','462','JONE','和你成为了好友','1251436886');
INSERT INTO uchome_notification VALUES ('805','491','friend','1','568','hanggui','和你成为了好友','1251438254');
INSERT INTO uchome_notification VALUES ('807','473','friend','1','122','delong','和你成为了好友','1251447225');
INSERT INTO uchome_notification VALUES ('808','435','friend','1','122','delong','和你成为了好友','1251447308');
INSERT INTO uchome_notification VALUES ('809','363','friend','1','592','abu','接受了您的好友邀请','1251447393');
INSERT INTO uchome_notification VALUES ('810','568','friend','1','3','huangchunling','和你成为了好友','1312969573');
INSERT INTO uchome_notification VALUES ('811','277','friend','1','3','huangchunling','和你成为了好友','1312969581');
INSERT INTO uchome_notification VALUES ('812','212','friend','1','3','huangchunling','和你成为了好友','1312969587');
INSERT INTO uchome_notification VALUES ('813','176','friend','1','3','huangchunling','和你成为了好友','1312969591');
INSERT INTO uchome_notification VALUES ('814','177','friend','1','3','huangchunling','和你成为了好友','1312969600');
INSERT INTO uchome_notification VALUES ('815','116','friend','1','3','huangchunling','和你成为了好友','1312969604');
INSERT INTO uchome_notification VALUES ('816','110','friend','1','3','huangchunling','和你成为了好友','1312969609');
INSERT INTO uchome_notification VALUES ('817','7','friend','1','1','admin','和你成为了好友','1316576156');

DROP TABLE IF EXISTS uchome_pic;
CREATE TABLE uchome_pic (
  picid mediumint(8) NOT NULL auto_increment,
  albumid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  postip varchar(20) NOT NULL default '',
  filename varchar(100) NOT NULL default '',
  title varchar(255) NOT NULL default '',
  `type` varchar(20) NOT NULL default '',
  size int(10) unsigned NOT NULL default '0',
  filepath varchar(60) NOT NULL default '',
  thumb tinyint(1) NOT NULL default '0',
  remote tinyint(1) NOT NULL default '0',
  topicid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  hot mediumint(8) unsigned NOT NULL default '0',
  click_6 smallint(6) unsigned NOT NULL default '0',
  click_7 smallint(6) unsigned NOT NULL default '0',
  click_8 smallint(6) unsigned NOT NULL default '0',
  click_9 smallint(6) unsigned NOT NULL default '0',
  click_10 smallint(6) unsigned NOT NULL default '0',
  magicframe tinyint(6) NOT NULL default '0',
  PRIMARY KEY  (picid),
  KEY albumid (albumid,dateline),
  KEY topicid (topicid,dateline)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk AUTO_INCREMENT=2;

INSERT INTO uchome_pic VALUES ('1','1','1','1314928894','60.215.246.207','11.jpg','','image/pjpeg','381824','201109/2/1_13149288945Pz6.jpg','1','0','0','admin','0','0','0','0','0','0','0');

DROP TABLE IF EXISTS uchome_picfield;
CREATE TABLE uchome_picfield (
  picid mediumint(8) unsigned NOT NULL default '0',
  hotuser text NOT NULL,
  PRIMARY KEY  (picid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_poke;
CREATE TABLE uchome_poke (
  uid mediumint(8) unsigned NOT NULL default '0',
  fromuid mediumint(8) unsigned NOT NULL default '0',
  fromusername varchar(15) NOT NULL default '',
  note varchar(255) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  iconid smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,fromuid),
  KEY uid (uid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_poke VALUES ('32','21','wangyang','','1249550672','15');
INSERT INTO uchome_poke VALUES ('31','9','happy','','1249546871','4');
INSERT INTO uchome_poke VALUES ('19','17','yaya','','1249499634','26');
INSERT INTO uchome_poke VALUES ('16','9','happy','','1249499798','29');
INSERT INTO uchome_poke VALUES ('142','148','sunzhigang18','','1249734630','10');
INSERT INTO uchome_poke VALUES ('32','9','happy','','1249546434','15');
INSERT INTO uchome_poke VALUES ('57','27','tianzi','','1249698414','24');
INSERT INTO uchome_poke VALUES ('23','24','ywgg','','1249541174','5');
INSERT INTO uchome_poke VALUES ('9','274','GEXUAN','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316237582','0');
INSERT INTO uchome_poke VALUES ('20','24','ywgg','','1249541264','7');
INSERT INTO uchome_poke VALUES ('23','9','happy','','1249541283','6');
INSERT INTO uchome_poke VALUES ('25','24','ywgg','','1249541570','30');
INSERT INTO uchome_poke VALUES ('24','21','wangyang','','1249542002','24');
INSERT INTO uchome_poke VALUES ('24','9','happy','','1249541815','2');
INSERT INTO uchome_poke VALUES ('23','21','wangyang','','1249541994','24');
INSERT INTO uchome_poke VALUES ('33','9','happy','','1249546848','8');
INSERT INTO uchome_poke VALUES ('7','32','wjunhua','','1249544521','4');
INSERT INTO uchome_poke VALUES ('8','32','wjunhua','','1249544535','13');
INSERT INTO uchome_poke VALUES ('11','32','wjunhua','','1249544550','1');
INSERT INTO uchome_poke VALUES ('29','27','tianzi','','1249698348','0');
INSERT INTO uchome_poke VALUES ('35','9','happy','','1249546833','16');
INSERT INTO uchome_poke VALUES ('30','35','BNRW','','1249546031','5');
INSERT INTO uchome_poke VALUES ('34','35','BNRW','','1249546567','24');
INSERT INTO uchome_poke VALUES ('319','232','skyzhaojian','','1250491311','10');
INSERT INTO uchome_poke VALUES ('34','9','happy','','1249546791','14');
INSERT INTO uchome_poke VALUES ('20','9','happy','','1249547854','17');
INSERT INTO uchome_poke VALUES ('28','9','happy','','1249546896','25');
INSERT INTO uchome_poke VALUES ('21','9','happy','','1249552265','14');
INSERT INTO uchome_poke VALUES ('39','9','happy','','1249548837','4');
INSERT INTO uchome_poke VALUES ('35','38','andylau','','1249548636','0');
INSERT INTO uchome_poke VALUES ('110','3','evyt','','1249715866','13');
INSERT INTO uchome_poke VALUES ('39','29','asdzxc','','1249548683','2');
INSERT INTO uchome_poke VALUES ('36','9','happy','','1249548901','7');
INSERT INTO uchome_poke VALUES ('45','46','ma876401970','','1249555364','21');
INSERT INTO uchome_poke VALUES ('44','48','yesex','','1249557647','5');
INSERT INTO uchome_poke VALUES ('85','1','admin','','1249714641','24');
INSERT INTO uchome_poke VALUES ('41','46','ma876401970','','1249555588','30');
INSERT INTO uchome_poke VALUES ('29','46','ma876401970','','1249555618','13');
INSERT INTO uchome_poke VALUES ('115','46','ma876401970','','1250312458','7');
INSERT INTO uchome_poke VALUES ('26','57','luoyonyi','','1249574807','2');
INSERT INTO uchome_poke VALUES ('51','9','happy','','1249570197','5');
INSERT INTO uchome_poke VALUES ('58','73','yanluo','','1249615096','2');
INSERT INTO uchome_poke VALUES ('29','57','luoyonyi','','1249575216','1');
INSERT INTO uchome_poke VALUES ('57','58','huaynie','','1249576900','10');
INSERT INTO uchome_poke VALUES ('56','54','zhangyan','','1249575555','5');
INSERT INTO uchome_poke VALUES ('57','54','zhangyan','','1249575736','18');
INSERT INTO uchome_poke VALUES ('58','59','yanlangtian','','1249579317','5');
INSERT INTO uchome_poke VALUES ('58','65','jimodeyewan','','1249593382','3');
INSERT INTO uchome_poke VALUES ('57','60','hand','','1249579937','10');
INSERT INTO uchome_poke VALUES ('49','60','hand','','1249579987','1');
INSERT INTO uchome_poke VALUES ('32','61','zht5087655','','1249580961','3');
INSERT INTO uchome_poke VALUES ('58','64','liusuo','','1251304584','2');
INSERT INTO uchome_poke VALUES ('54','62','asasu','','1249582069','3');
INSERT INTO uchome_poke VALUES ('63','62','asasu','','1249581890','7');
INSERT INTO uchome_poke VALUES ('60','54','zhangyan','','1249581401','18');
INSERT INTO uchome_poke VALUES ('59','62','asasu','','1249582184','6');
INSERT INTO uchome_poke VALUES ('57','9','happy','','1249611144','12');
INSERT INTO uchome_poke VALUES ('65','9','happy','','1249611139','29');
INSERT INTO uchome_poke VALUES ('54','66','chenqian','','1249600419','27');
INSERT INTO uchome_poke VALUES ('58','53','xingshengh','','1249602074','5');
INSERT INTO uchome_poke VALUES ('29','69','hujiahujia','','1249608676','10');
INSERT INTO uchome_poke VALUES ('66','9','happy','','1249611109','21');
INSERT INTO uchome_poke VALUES ('102','3','evyt','','1249645209','13');
INSERT INTO uchome_poke VALUES ('51','73','yanluo','','1249615244','2');
INSERT INTO uchome_poke VALUES ('29','73','yanluo','','1249615328','3');
INSERT INTO uchome_poke VALUES ('91','9','happy','','1249645025','5');
INSERT INTO uchome_poke VALUES ('57','73','yanluo','','1249615455','3');
INSERT INTO uchome_poke VALUES ('54','75','linwenyi','','1249617819','24');
INSERT INTO uchome_poke VALUES ('83','84','jianghai','','1249625781','6');
INSERT INTO uchome_poke VALUES ('54','85','tanglao','','1249629279','6');
INSERT INTO uchome_poke VALUES ('65','85','tanglao','','1249626478','6');
INSERT INTO uchome_poke VALUES ('373','158','shendaaaaa','','1251215140','20');
INSERT INTO uchome_poke VALUES ('84','85','tanglao','','1249626564','6');
INSERT INTO uchome_poke VALUES ('57','85','tanglao','','1249626628','10');
INSERT INTO uchome_poke VALUES ('29','85','tanglao','','1249626658','7');
INSERT INTO uchome_poke VALUES ('44','1','admin','','1249714645','24');
INSERT INTO uchome_poke VALUES ('223','46','ma876401970','','1250312399','30');
INSERT INTO uchome_poke VALUES ('67','85','tanglao','','1249629066','2');
INSERT INTO uchome_poke VALUES ('58','187','jack','','1249814404','6');
INSERT INTO uchome_poke VALUES ('82','85','tanglao','','1249627685','2');
INSERT INTO uchome_poke VALUES ('81','85','tanglao','','1249628747','2');
INSERT INTO uchome_poke VALUES ('68','85','tanglao','','1249629101','6');
INSERT INTO uchome_poke VALUES ('21','89','YMI','','1249632126','24');
INSERT INTO uchome_poke VALUES ('80','89','YMI','','1249632260','10');
INSERT INTO uchome_poke VALUES ('7','89','YMI','','1249632303','20');
INSERT INTO uchome_poke VALUES ('32','89','YMI','','1249632333','2');
INSERT INTO uchome_poke VALUES ('17','89','YMI','','1249632392','4');
INSERT INTO uchome_poke VALUES ('89','90','xiaxuebianjie','','1249632581','6');
INSERT INTO uchome_poke VALUES ('85','9','happy','','1249645045','4');
INSERT INTO uchome_poke VALUES ('85','58','huaynie','','1249814390','3');
INSERT INTO uchome_poke VALUES ('57','91','kuangniangao','','1249636102','5');
INSERT INTO uchome_poke VALUES ('94','93','czadko','','1249636104','24');
INSERT INTO uchome_poke VALUES ('85','93','czadko','','1249636144','24');
INSERT INTO uchome_poke VALUES ('94','91','kuangniangao','','1249636708','2');
INSERT INTO uchome_poke VALUES ('96','91','kuangniangao','','1249637033','2');
INSERT INTO uchome_poke VALUES ('91','97','wbd','','1249810821','4');
INSERT INTO uchome_poke VALUES ('91','96','abcdefg','','1249640276','28');
INSERT INTO uchome_poke VALUES ('99','96','abcdefg','','1249640199','21');
INSERT INTO uchome_poke VALUES ('97','188','tianci','','1249812492','7');
INSERT INTO uchome_poke VALUES ('89','103','sylt','','1249649161','1');
INSERT INTO uchome_poke VALUES ('85','73','yanluo','','1250419173','2');
INSERT INTO uchome_poke VALUES ('91','102','alanpolo','','1249656109','13');
INSERT INTO uchome_poke VALUES ('99','103','sylt','','1249649937','10');
INSERT INTO uchome_poke VALUES ('104','103','sylt','','1249654149','2');
INSERT INTO uchome_poke VALUES ('96','9','happy','','1249656039','13');
INSERT INTO uchome_poke VALUES ('104','102','alanpolo','','1249656187','13');
INSERT INTO uchome_poke VALUES ('83','102','alanpolo','','1249656200','30');
INSERT INTO uchome_poke VALUES ('54','129','hjh','','1249890009','5');
INSERT INTO uchome_poke VALUES ('85','110','CCA','','1249677542','2');
INSERT INTO uchome_poke VALUES ('111','112','shenhan','','1249683270','10');
INSERT INTO uchome_poke VALUES ('9','46','ma876401970','','1250312452','7');
INSERT INTO uchome_poke VALUES ('48','115','hsz','','1249695564','1');
INSERT INTO uchome_poke VALUES ('49','115','hsz','','1249695613','1');
INSERT INTO uchome_poke VALUES ('56','115','hsz','','1249695655','1');
INSERT INTO uchome_poke VALUES ('57','115','hsz','','1249695691','1');
INSERT INTO uchome_poke VALUES ('101','115','hsz','','1249695744','1');
INSERT INTO uchome_poke VALUES ('121','46','ma876401970','','1250312462','7');
INSERT INTO uchome_poke VALUES ('32','27','tianzi','','1249698343','24');
INSERT INTO uchome_poke VALUES ('96','116','woyjh','','1249700517','2');
INSERT INTO uchome_poke VALUES ('244','46','ma876401970','','1250312472','7');
INSERT INTO uchome_poke VALUES ('88','117','lxfku','','1249701604','2');
INSERT INTO uchome_poke VALUES ('119','120','younger','','1249706826','8');
INSERT INTO uchome_poke VALUES ('174','9','happy','','1249800200','11');
INSERT INTO uchome_poke VALUES ('101','121','SHR','','1249710160','7');
INSERT INTO uchome_poke VALUES ('174','46','ma876401970','','1250312466','7');
INSERT INTO uchome_poke VALUES ('92','121','SHR','','1249710202','24');
INSERT INTO uchome_poke VALUES ('99','122','delong','','1249711070','2');
INSERT INTO uchome_poke VALUES ('221','223','kor','','1249885832','21');
INSERT INTO uchome_poke VALUES ('117','123','kivenlv','','1249711648','24');
INSERT INTO uchome_poke VALUES ('113','123','kivenlv','','1249711665','30');
INSERT INTO uchome_poke VALUES ('121','9','happy','','1249719489','27');
INSERT INTO uchome_poke VALUES ('123','122','delong','','1249795971','6');
INSERT INTO uchome_poke VALUES ('112','1','admin','','1249714631','24');
INSERT INTO uchome_poke VALUES ('164','129','hjh','','1249978488','24');
INSERT INTO uchome_poke VALUES ('130','131','ding13052','','1249716918','24');
INSERT INTO uchome_poke VALUES ('123','9','happy','','1249719465','18');
INSERT INTO uchome_poke VALUES ('126','125','mylove','','1249720434','23');
INSERT INTO uchome_poke VALUES ('129','9','happy','','1249987773','22');
INSERT INTO uchome_poke VALUES ('3','1','admin','','1249719446','19');
INSERT INTO uchome_poke VALUES ('132','125','mylove','','1249720430','14');
INSERT INTO uchome_poke VALUES ('138','27','tianzi','','1249795891','19');
INSERT INTO uchome_poke VALUES ('115','103','sylt','','1249721902','20');
INSERT INTO uchome_poke VALUES ('161','162','phoenix','','1249766577','3');
INSERT INTO uchome_poke VALUES ('130','152','chenke','','1249742882','3');
INSERT INTO uchome_poke VALUES ('138','133','mokemoke','','1249722924','3');
INSERT INTO uchome_poke VALUES ('308','387','Lele','','1250927840','6');
INSERT INTO uchome_poke VALUES ('164','125','mylove','','1249870634','21');
INSERT INTO uchome_poke VALUES ('134','129','hjh','','1249723479','21');
INSERT INTO uchome_poke VALUES ('133','125','mylove','','1249724631','5');
INSERT INTO uchome_poke VALUES ('133','9','happy','','1249740160','17');
INSERT INTO uchome_poke VALUES ('54','148','sunzhigang18','','1249734662','30');
INSERT INTO uchome_poke VALUES ('195','187','jack','','1249828571','2');
INSERT INTO uchome_poke VALUES ('148','147','jbxx','','1249735487','22');
INSERT INTO uchome_poke VALUES ('147','154','zhkabc','','1249743560','24');
INSERT INTO uchome_poke VALUES ('205','209','yiyaheihei','','1249870761','29');
INSERT INTO uchome_poke VALUES ('121','154','zhkabc','','1249743697','7');
INSERT INTO uchome_poke VALUES ('200','135','iamwayney','','1249927177','2');
INSERT INTO uchome_poke VALUES ('134','154','zhkabc','','1249745299','30');
INSERT INTO uchome_poke VALUES ('170','171','lwb7624','','1249791352','3');
INSERT INTO uchome_poke VALUES ('134','157','cartervin','','1249745604','7');
INSERT INTO uchome_poke VALUES ('24','156','xiaoxiu','','1249745615','3');
INSERT INTO uchome_poke VALUES ('146','157','cartervin','','1249745632','4');
INSERT INTO uchome_poke VALUES ('155','1','admin','','1249809075','16');
INSERT INTO uchome_poke VALUES ('152','158','shendaaaaa','','1249748348','19');
INSERT INTO uchome_poke VALUES ('155','160','shayetian','','1249760549','1');
INSERT INTO uchome_poke VALUES ('134','158','shendaaaaa','','1249908404','20');
INSERT INTO uchome_poke VALUES ('138','135','iamwayney','','1249761616','0');
INSERT INTO uchome_poke VALUES ('54','164','afu','','1249773629','6');
INSERT INTO uchome_poke VALUES ('154','125','mylove','','1249870641','18');
INSERT INTO uchome_poke VALUES ('67','164','afu','','1249773693','26');
INSERT INTO uchome_poke VALUES ('247','129','hjh','','1249978557','21');
INSERT INTO uchome_poke VALUES ('96','164','afu','','1249773727','17');
INSERT INTO uchome_poke VALUES ('98','164','afu','','1249773748','10');
INSERT INTO uchome_poke VALUES ('70','164','afu','','1249773772','28');
INSERT INTO uchome_poke VALUES ('151','30','norye','','1249800893','8');
INSERT INTO uchome_poke VALUES ('154','9','happy','','1249784703','11');
INSERT INTO uchome_poke VALUES ('21','164','afu','','1249773879','7');
INSERT INTO uchome_poke VALUES ('103','165','huang','','1249777436','20');
INSERT INTO uchome_poke VALUES ('342','1','admin','','1251358839','7');
INSERT INTO uchome_poke VALUES ('164','96','abcdefg','','1250992201','24');
INSERT INTO uchome_poke VALUES ('116','96','abcdefg','','1249780002','10');
INSERT INTO uchome_poke VALUES ('164','9','happy','','1249784685','11');
INSERT INTO uchome_poke VALUES ('134','171','lwb7624','','1249791562','2');
INSERT INTO uchome_poke VALUES ('144','171','lwb7624','','1249791525','3');
INSERT INTO uchome_poke VALUES ('168','122','delong','','1249794699','7');
INSERT INTO uchome_poke VALUES ('148','122','delong','','1249794725','7');
INSERT INTO uchome_poke VALUES ('116','27','tianzi','','1249795836','19');
INSERT INTO uchome_poke VALUES ('177','9','happy','','1249801023','11');
INSERT INTO uchome_poke VALUES ('178','9','happy','','1249801038','15');
INSERT INTO uchome_poke VALUES ('177','176','MAYJJ','','1249801618','24');
INSERT INTO uchome_poke VALUES ('54','177','iangbo','','1249801273','10');
INSERT INTO uchome_poke VALUES ('155','176','MAYJJ','','1249801293','30');
INSERT INTO uchome_poke VALUES ('154','176','MAYJJ','','1249801315','24');
INSERT INTO uchome_poke VALUES ('162','176','MAYJJ','','1249801410','24');
INSERT INTO uchome_poke VALUES ('178','176','MAYJJ','','1249801751','5');
INSERT INTO uchome_poke VALUES ('54','189','tsingchao','','1249811604','30');
INSERT INTO uchome_poke VALUES ('164','176','MAYJJ','','1249802609','5');
INSERT INTO uchome_poke VALUES ('203','206','zhylbj','','1249890988','2');
INSERT INTO uchome_poke VALUES ('54','96','abcdefg','','1250303726','2');
INSERT INTO uchome_poke VALUES ('54','176','MAYJJ','','1249802911','10');
INSERT INTO uchome_poke VALUES ('175','176','MAYJJ','','1249803478','10');
INSERT INTO uchome_poke VALUES ('177','96','abcdefg','','1249803765','21');
INSERT INTO uchome_poke VALUES ('181','96','abcdefg','','1249893881','21');
INSERT INTO uchome_poke VALUES ('183','176','MAYJJ','','1249804659','7');
INSERT INTO uchome_poke VALUES ('152','176','MAYJJ','','1249805591','7');
INSERT INTO uchome_poke VALUES ('134','176','MAYJJ','','1249805700','13');
INSERT INTO uchome_poke VALUES ('184','185','qiying','','1249807477','3');
INSERT INTO uchome_poke VALUES ('183','185','qiying','','1249807963','1');
INSERT INTO uchome_poke VALUES ('101','97','wbd','','1249811279','6');
INSERT INTO uchome_poke VALUES ('157','1','admin','','1249809070','15');
INSERT INTO uchome_poke VALUES ('181','30','norye','','1249809848','30');
INSERT INTO uchome_poke VALUES ('185','9','happy','','1249810429','16');
INSERT INTO uchome_poke VALUES ('118','97','wbd','','1249810989','7');
INSERT INTO uchome_poke VALUES ('185','176','MAYJJ','','1249811001','10');
INSERT INTO uchome_poke VALUES ('208','211','yhkwy','','1249874544','0');
INSERT INTO uchome_poke VALUES ('96','97','wbd','','1249811104','24');
INSERT INTO uchome_poke VALUES ('30','189','tsingchao','','1249811619','30');
INSERT INTO uchome_poke VALUES ('97','9','happy','','1249813170','8');
INSERT INTO uchome_poke VALUES ('21','206','zhylbj','','1249867153','2');
INSERT INTO uchome_poke VALUES ('30','97','wbd','','1249811677','7');
INSERT INTO uchome_poke VALUES ('97','187','jack','','1249811742','24');
INSERT INTO uchome_poke VALUES ('189','187','jack','','1249813006','13');
INSERT INTO uchome_poke VALUES ('58','188','tianci','','1249814845','7');
INSERT INTO uchome_poke VALUES ('91','58','huaynie','','1249814385','3');
INSERT INTO uchome_poke VALUES ('134','187','jack','','1249828659','24');
INSERT INTO uchome_poke VALUES ('202','240','zhaojiawen','','1249952012','24');
INSERT INTO uchome_poke VALUES ('189','192','fulunda','','1249818615','30');
INSERT INTO uchome_poke VALUES ('188','192','fulunda','','1249818700','2');
INSERT INTO uchome_poke VALUES ('30','192','fulunda','','1249818785','5');
INSERT INTO uchome_poke VALUES ('29','192','fulunda','','1249818999','5');
INSERT INTO uchome_poke VALUES ('129','122','delong','','1250478149','24');
INSERT INTO uchome_poke VALUES ('192','9','happy','','1249821510','23');
INSERT INTO uchome_poke VALUES ('148','103','sylt','','1249825856','20');
INSERT INTO uchome_poke VALUES ('196','187','jack','','1249829003','24');
INSERT INTO uchome_poke VALUES ('194','187','jack','','1249829017','24');
INSERT INTO uchome_poke VALUES ('134','195','QQA','','1249832431','24');
INSERT INTO uchome_poke VALUES ('58','199','baiheily','','1249839223','10');
INSERT INTO uchome_poke VALUES ('198','223','kor','','1249885811','21');
INSERT INTO uchome_poke VALUES ('270','1','admin','','1251358853','6');
INSERT INTO uchome_poke VALUES ('196','201','ghkoivb','','1249861023','1');
INSERT INTO uchome_poke VALUES ('192','122','delong','','1250478141','24');
INSERT INTO uchome_poke VALUES ('330','331','kuangyefeng','','1250494982','7');
INSERT INTO uchome_poke VALUES ('125','218','huqiaoa','','1249879909','6');
INSERT INTO uchome_poke VALUES ('202','187','jack','','1249862693','24');
INSERT INTO uchome_poke VALUES ('103','203','sbh7608','','1249863985','2');
INSERT INTO uchome_poke VALUES ('179','203','sbh7608','','1249864004','2');
INSERT INTO uchome_poke VALUES ('202','203','sbh7608','','1249864099','2');
INSERT INTO uchome_poke VALUES ('210','187','jack','','1249876061','6');
INSERT INTO uchome_poke VALUES ('196','222','Loveyou','','1249883550','18');
INSERT INTO uchome_poke VALUES ('205','207','wwwwww','','1249867477','10');
INSERT INTO uchome_poke VALUES ('202','207','wwwwww','','1249867986','10');
INSERT INTO uchome_poke VALUES ('222','211','yhkwy','','1249891358','3');
INSERT INTO uchome_poke VALUES ('194','209','yiyaheihei','','1249868992','7');
INSERT INTO uchome_poke VALUES ('181','241','liuyu','','1249953656','2');
INSERT INTO uchome_poke VALUES ('202','209','yiyaheihei','','1249869737','30');
INSERT INTO uchome_poke VALUES ('209','187','jack','','1249871497','24');
INSERT INTO uchome_poke VALUES ('208','210','wanghua','','1249871799','5');
INSERT INTO uchome_poke VALUES ('209','9','happy','','1249874310','20');
INSERT INTO uchome_poke VALUES ('216','217','Xiaosunyang','','1249878984','3');
INSERT INTO uchome_poke VALUES ('203','223','kor','','1249885647','21');
INSERT INTO uchome_poke VALUES ('125','187','jack','','1249885377','19');
INSERT INTO uchome_poke VALUES ('196','219','lgylgy','','1249881512','7');
INSERT INTO uchome_poke VALUES ('213','220','lvshichun','','1249881564','7');
INSERT INTO uchome_poke VALUES ('286','1','admin','','1251358848','5');
INSERT INTO uchome_poke VALUES ('210','222','Loveyou','','1249883633','5');
INSERT INTO uchome_poke VALUES ('202','222','Loveyou','','1249883696','1');
INSERT INTO uchome_poke VALUES ('238','241','liuyu','','1249953263','2');
INSERT INTO uchome_poke VALUES ('125','223','kor','','1249885672','21');
INSERT INTO uchome_poke VALUES ('211','96','abcdefg','','1249955126','21');
INSERT INTO uchome_poke VALUES ('189','230','lijianhang','','1249901618','7');
INSERT INTO uchome_poke VALUES ('215','223','kor','','1249885884','21');
INSERT INTO uchome_poke VALUES ('206','211','yhkwy','','1249895714','6');
INSERT INTO uchome_poke VALUES ('196','223','kor','','1249886345','21');
INSERT INTO uchome_poke VALUES ('224','223','kor','','1249886697','21');
INSERT INTO uchome_poke VALUES ('9','27','tianzi','','1250048142','22');
INSERT INTO uchome_poke VALUES ('221','27','tianzi','','1249895362','24');
INSERT INTO uchome_poke VALUES ('134','223','kor','','1249887262','2');
INSERT INTO uchome_poke VALUES ('249','103','sylt','','1249989552','2');
INSERT INTO uchome_poke VALUES ('552','355','czy','','1251363226','6');
INSERT INTO uchome_poke VALUES ('570','9','happy','','1251388365','0');
INSERT INTO uchome_poke VALUES ('202','96','abcdefg','','1249893191','21');
INSERT INTO uchome_poke VALUES ('185','96','abcdefg','','1249893040','20');
INSERT INTO uchome_poke VALUES ('97','96','abcdefg','','1250308530','22');
INSERT INTO uchome_poke VALUES ('189','96','abcdefg','','1249893111','2');
INSERT INTO uchome_poke VALUES ('96','226','NESCAFE','','1249893581','19');
INSERT INTO uchome_poke VALUES ('223','211','yhkwy','','1249895123','2');
INSERT INTO uchome_poke VALUES ('203','211','yhkwy','','1249895233','6');
INSERT INTO uchome_poke VALUES ('223','214','subborn','','1249959502','3');
INSERT INTO uchome_poke VALUES ('218','27','tianzi','','1249895426','24');
INSERT INTO uchome_poke VALUES ('174','211','yhkwy','','1249895516','3');
INSERT INTO uchome_poke VALUES ('498','500','arstyulmp','','1251251113','6');
INSERT INTO uchome_poke VALUES ('96','211','yhkwy','','1249895540','3');
INSERT INTO uchome_poke VALUES ('125','129','hjh','','1249978276','24');
INSERT INTO uchome_poke VALUES ('165','122','delong','','1250478102','6');
INSERT INTO uchome_poke VALUES ('174','173','huha','','1250927554','5');
INSERT INTO uchome_poke VALUES ('103','211','yhkwy','','1249917750','6');
INSERT INTO uchome_poke VALUES ('21','211','yhkwy','','1249896413','2');
INSERT INTO uchome_poke VALUES ('223','9','happy','','1249899469','18');
INSERT INTO uchome_poke VALUES ('229','9','happy','','1249917581','16');
INSERT INTO uchome_poke VALUES ('211','1','admin','','1251358872','11');
INSERT INTO uchome_poke VALUES ('30','241','liuyu','','1249953624','2');
INSERT INTO uchome_poke VALUES ('211','226','NESCAFE','','1249920971','7');
INSERT INTO uchome_poke VALUES ('230','231','sdokafei','','1249909796','7');
INSERT INTO uchome_poke VALUES ('122','232','skyzhaojian','','1251015508','7');
INSERT INTO uchome_poke VALUES ('211','233','dmyhkwy','','1249923382','2');
INSERT INTO uchome_poke VALUES ('360','1','admin','','1251358835','21');
INSERT INTO uchome_poke VALUES ('165','241','liuyu','','1249953234','2');
INSERT INTO uchome_poke VALUES ('259','158','shendaaaaa','','1250172863','6');
INSERT INTO uchome_poke VALUES ('225','236','hahalym','','1249929486','15');
INSERT INTO uchome_poke VALUES ('134','191','nzxsos','','1249934714','1');
INSERT INTO uchome_poke VALUES ('206','96','abcdefg','','1249955185','20');
INSERT INTO uchome_poke VALUES ('96','242','wcbxx','','1249957431','2');
INSERT INTO uchome_poke VALUES ('211','214','subborn','','1249959365','1');
INSERT INTO uchome_poke VALUES ('249','187','jack','','1249974756','24');
INSERT INTO uchome_poke VALUES ('172','242','wcbxx','','1249963232','20');
INSERT INTO uchome_poke VALUES ('238','223','kor','','1249965493','6');
INSERT INTO uchome_poke VALUES ('242','223','kor','','1249965579','2');
INSERT INTO uchome_poke VALUES ('96','223','kor','','1249965605','2');
INSERT INTO uchome_poke VALUES ('188','129','hjh','','1249978237','21');
INSERT INTO uchome_poke VALUES ('237','223','kor','','1249965725','2');
INSERT INTO uchome_poke VALUES ('9','96','abcdefg','','1250497862','30');
INSERT INTO uchome_poke VALUES ('3','244','zhangguozhou','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314936507','0');
INSERT INTO uchome_poke VALUES ('125','244','zhangguozhou','','1249969057','10');
INSERT INTO uchome_poke VALUES ('96','247','zhangqx','','1249972855','30');
INSERT INTO uchome_poke VALUES ('125','287','gougou','','1250208728','6');
INSERT INTO uchome_poke VALUES ('235','249','xixiaodaidaiao','','1249973799','13');
INSERT INTO uchome_poke VALUES ('211','27','tianzi','','1249974448','11');
INSERT INTO uchome_poke VALUES ('265','27','tianzi','','1250128272','7');
INSERT INTO uchome_poke VALUES ('240','251','vip','','1250008386','30');
INSERT INTO uchome_poke VALUES ('7','252','baobao','','1250010166','0');
INSERT INTO uchome_poke VALUES ('46','274','GEXUAN','','1250482832','7');
INSERT INTO uchome_poke VALUES ('272','264','寂寞梧桐','','1250139587','30');
INSERT INTO uchome_poke VALUES ('9','255','abcd','','1250039420','6');
INSERT INTO uchome_poke VALUES ('260','255','abcd','','1250070927','6');
INSERT INTO uchome_poke VALUES ('295','255','abcd','','1250308870','6');
INSERT INTO uchome_poke VALUES ('259','187','jack','','1250072495','24');
INSERT INTO uchome_poke VALUES ('258','187','jack','','1250072524','24');
INSERT INTO uchome_poke VALUES ('140','264','寂寞梧桐','','1250082707','3');
INSERT INTO uchome_poke VALUES ('140','1','admin','','1251358865','19');
INSERT INTO uchome_poke VALUES ('264','232','skyzhaojian','','1250778017','7');
INSERT INTO uchome_poke VALUES ('103','232','skyzhaojian','','1250777997','24');
INSERT INTO uchome_poke VALUES ('265','264','寂寞梧桐','','1250123142','24');
INSERT INTO uchome_poke VALUES ('54','270','DFMN','','1250920104','6');
INSERT INTO uchome_poke VALUES ('9','265','一夜情深','','1250085587','8');
INSERT INTO uchome_poke VALUES ('265','226','NESCAFE','','1250087695','9');
INSERT INTO uchome_poke VALUES ('278','27','tianzi','','1250211811','6');
INSERT INTO uchome_poke VALUES ('267','265','一夜情深','','1250089247','8');
INSERT INTO uchome_poke VALUES ('265','187','jack','','1250120122','6');
INSERT INTO uchome_poke VALUES ('267','264','寂寞梧桐','','1250123180','30');
INSERT INTO uchome_poke VALUES ('263','187','jack','','1250140505','6');
INSERT INTO uchome_poke VALUES ('9','271','gaonifu','','1250136247','16');
INSERT INTO uchome_poke VALUES ('251','271','gaonifu','','1250136723','3');
INSERT INTO uchome_poke VALUES ('265','271','gaonifu','','1250136758','3');
INSERT INTO uchome_poke VALUES ('264','1','admin','','1251358861','19');
INSERT INTO uchome_poke VALUES ('91','87','cec','','1250149883','6');
INSERT INTO uchome_poke VALUES ('271','264','寂寞梧桐','','1250139579','7');
INSERT INTO uchome_poke VALUES ('265','272','abbdbfcif','','1250137997','30');
INSERT INTO uchome_poke VALUES ('271','272','abbdbfcif','','1250138060','1');
INSERT INTO uchome_poke VALUES ('272','273','shrfzw@163.com','','1250138361','30');
INSERT INTO uchome_poke VALUES ('165','278','huangyuan','','1250154999','10');
INSERT INTO uchome_poke VALUES ('265','263','ONEI','','1250139113','24');
INSERT INTO uchome_poke VALUES ('271','263','ONEI','','1250139141','13');
INSERT INTO uchome_poke VALUES ('189','274','GEXUAN','','1250250731','10');
INSERT INTO uchome_poke VALUES ('54','276','meinu','','1250153112','7');
INSERT INTO uchome_poke VALUES ('271','274','GEXUAN','','1250147194','24');
INSERT INTO uchome_poke VALUES ('263','255','abcd','','1250308708','6');
INSERT INTO uchome_poke VALUES ('271','87','cec','','1250149839','6');
INSERT INTO uchome_poke VALUES ('90','87','cec','','1250149887','6');
INSERT INTO uchome_poke VALUES ('535','540','opindex','','1251306700','18');
INSERT INTO uchome_poke VALUES ('200','122','delong','','1251010415','6');
INSERT INTO uchome_poke VALUES ('211','173','huha','','1250927543','2');
INSERT INTO uchome_poke VALUES ('103','214','subborn','','1250217898','6');
INSERT INTO uchome_poke VALUES ('271','278','huangyuan','','1250155178','13');
INSERT INTO uchome_poke VALUES ('271','1','admin','','1251358857','16');
INSERT INTO uchome_poke VALUES ('87','278','huangyuan','','1250155879','7');
INSERT INTO uchome_poke VALUES ('265','270','DFMN','','1250161009','6');
INSERT INTO uchome_poke VALUES ('271','214','subborn','','1250229676','7');
INSERT INTO uchome_poke VALUES ('439','232','skyzhaojian','','1251102222','7');
INSERT INTO uchome_poke VALUES ('278','103','sylt','','1250161975','5');
INSERT INTO uchome_poke VALUES ('271','232','skyzhaojian','','1250164124','24');
INSERT INTO uchome_poke VALUES ('264','269','112930968','','1250166846','8');
INSERT INTO uchome_poke VALUES ('9','158','shendaaaaa','','1250170814','11');
INSERT INTO uchome_poke VALUES ('87','158','shendaaaaa','','1250170249','13');
INSERT INTO uchome_poke VALUES ('269','103','sylt','','1250170703','10');
INSERT INTO uchome_poke VALUES ('165','158','shendaaaaa','','1250170793','13');
INSERT INTO uchome_poke VALUES ('252','135','iamwayney','','1250352059','2');
INSERT INTO uchome_poke VALUES ('291','292','XHL','','1250243596','2');
INSERT INTO uchome_poke VALUES ('96','255','abcd','','1250828706','20');
INSERT INTO uchome_poke VALUES ('189','292','XHL','','1250243670','10');
INSERT INTO uchome_poke VALUES ('176','292','XHL','','1250243705','2');
INSERT INTO uchome_poke VALUES ('103','292','XHL','','1250319621','6');
INSERT INTO uchome_poke VALUES ('87','292','XHL','','1250244176','6');
INSERT INTO uchome_poke VALUES ('304','73','yanluo','','1250856878','2');
INSERT INTO uchome_poke VALUES ('306','46','ma876401970','','1250376130','7');
INSERT INTO uchome_poke VALUES ('91','73','yanluo','','1250419041','20');
INSERT INTO uchome_poke VALUES ('110','73','yanluo','','1250248085','6');
INSERT INTO uchome_poke VALUES ('9','73','yanluo','','1250856795','6');
INSERT INTO uchome_poke VALUES ('46','1','admin','','1251358843','22');
INSERT INTO uchome_poke VALUES ('304','243','zhengwenxiang','','1250831753','7');
INSERT INTO uchome_poke VALUES ('283','298','yewujiandao','','1250263728','24');
INSERT INTO uchome_poke VALUES ('308','232','skyzhaojian','','1250411997','7');
INSERT INTO uchome_poke VALUES ('298','135','iamwayney','','1250275159','2');
INSERT INTO uchome_poke VALUES ('290','158','shendaaaaa','','1250282427','6');
INSERT INTO uchome_poke VALUES ('143','301','bkcui','','1250283425','3');
INSERT INTO uchome_poke VALUES ('278','301','bkcui','','1250283500','21');
INSERT INTO uchome_poke VALUES ('459','371','zlfd','','1251418026','24');
INSERT INTO uchome_poke VALUES ('96','301','bkcui','','1250283610','7');
INSERT INTO uchome_poke VALUES ('271','301','bkcui','','1250283812','7');
INSERT INTO uchome_poke VALUES ('553','232','skyzhaojian','','1251380428','24');
INSERT INTO uchome_poke VALUES ('125','301','bkcui','','1250283958','7');
INSERT INTO uchome_poke VALUES ('299','96','abcdefg','','1250298108','2');
INSERT INTO uchome_poke VALUES ('247','96','abcdefg','','1250497698','6');
INSERT INTO uchome_poke VALUES ('246','96','abcdefg','','1250298321','20');
INSERT INTO uchome_poke VALUES ('242','96','abcdefg','','1250298372','7');
INSERT INTO uchome_poke VALUES ('285','255','abcd','','1250308781','6');
INSERT INTO uchome_poke VALUES ('103','243','zhengwenxiang','','1251005682','27');
INSERT INTO uchome_poke VALUES ('310','311','kuailan','','1250344078','5');
INSERT INTO uchome_poke VALUES ('570','274','GEXUAN','','1251388365','0');
INSERT INTO uchome_poke VALUES ('87','64','liusuo','','1251304489','7');
INSERT INTO uchome_poke VALUES ('87','243','zhengwenxiang','','1250300574','22');
INSERT INTO uchome_poke VALUES ('296','243','zhengwenxiang','','1250300624','7');
INSERT INTO uchome_poke VALUES ('125','243','zhengwenxiang','','1250300985','24');
INSERT INTO uchome_poke VALUES ('302','243','zhengwenxiang','','1250471048','10');
INSERT INTO uchome_poke VALUES ('300','243','zhengwenxiang','','1250301487','20');
INSERT INTO uchome_poke VALUES ('303','73','yanluo','','1250856861','2');
INSERT INTO uchome_poke VALUES ('189','243','zhengwenxiang','','1250303262','7');
INSERT INTO uchome_poke VALUES ('285','243','zhengwenxiang','','1250303312','5');
INSERT INTO uchome_poke VALUES ('176','243','zhengwenxiang','','1250303379','20');
INSERT INTO uchome_poke VALUES ('300','274','GEXUAN','','1250400720','2');
INSERT INTO uchome_poke VALUES ('114','73','yanluo','','1250419070','20');
INSERT INTO uchome_poke VALUES ('91','303','STAR','','1250306094','7');
INSERT INTO uchome_poke VALUES ('203','255','abcd','','1250571102','2');
INSERT INTO uchome_poke VALUES ('75','73','yanluo','','1250419375','6');
INSERT INTO uchome_poke VALUES ('103','255','abcd','','1250392935','16');
INSERT INTO uchome_poke VALUES ('259','306','zhengheli','','1250326810','20');
INSERT INTO uchome_poke VALUES ('485','371','zlfd','','1251183425','6');
INSERT INTO uchome_poke VALUES ('303','243','zhengwenxiang','','1250400397','20');
INSERT INTO uchome_poke VALUES ('390','243','zhengwenxiang','','1251180775','13');
INSERT INTO uchome_poke VALUES ('9','277','Daniel','','1250665135','21');
INSERT INTO uchome_poke VALUES ('166','73','yanluo','','1250856831','2');
INSERT INTO uchome_poke VALUES ('300','73','yanluo','','1250419448','3');
INSERT INTO uchome_poke VALUES ('344','339','yangsong1','','1250708892','20');
INSERT INTO uchome_poke VALUES ('103','319','cxpmpk','','1250428648','30');
INSERT INTO uchome_poke VALUES ('313','319','cxpmpk','','1250428668','27');
INSERT INTO uchome_poke VALUES ('46','135','iamwayney','','1250465633','3');
INSERT INTO uchome_poke VALUES ('319','187','jack','','1250431166','24');
INSERT INTO uchome_poke VALUES ('46','243','zhengwenxiang','','1250470891','24');
INSERT INTO uchome_poke VALUES ('314','243','zhengwenxiang','','1250831771','7');
INSERT INTO uchome_poke VALUES ('312','243','zhengwenxiang','','1250471073','20');
INSERT INTO uchome_poke VALUES ('310','324','pirate','','1250475728','10');
INSERT INTO uchome_poke VALUES ('278','122','delong','','1250478400','6');
INSERT INTO uchome_poke VALUES ('211','122','delong','','1250478091','6');
INSERT INTO uchome_poke VALUES ('328','331','kuangyefeng','','1250495036','7');
INSERT INTO uchome_poke VALUES ('46','331','kuangyefeng','','1250495150','2');
INSERT INTO uchome_poke VALUES ('125','331','kuangyefeng','','1250495190','5');
INSERT INTO uchome_poke VALUES ('325','96','abcdefg','','1250497618','2');
INSERT INTO uchome_poke VALUES ('310','332','Arlun','','1250507204','5');
INSERT INTO uchome_poke VALUES ('323','332','Arlun','','1250507854','24');
INSERT INTO uchome_poke VALUES ('319','332','Arlun','','1250507889','24');
INSERT INTO uchome_poke VALUES ('308','339','yangsong1','','1250538605','20');
INSERT INTO uchome_poke VALUES ('335','334','jim','','1250518187','3');
INSERT INTO uchome_poke VALUES ('46','336','flyalimama','','1250519950','7');
INSERT INTO uchome_poke VALUES ('165','336','flyalimama','','1250520087','30');
INSERT INTO uchome_poke VALUES ('134','336','flyalimama','','1250520162','29');
INSERT INTO uchome_poke VALUES ('87','336','flyalimama','','1250520186','25');
INSERT INTO uchome_poke VALUES ('340','188','tianci','','1250540845','30');
INSERT INTO uchome_poke VALUES ('103','188','tianci','','1250540882','10');
INSERT INTO uchome_poke VALUES ('338','188','tianci','','1250540898','10');
INSERT INTO uchome_poke VALUES ('331','188','tianci','','1250540913','10');
INSERT INTO uchome_poke VALUES ('373','277','Daniel','','1250751199','6');
INSERT INTO uchome_poke VALUES ('334','96','abcdefg','','1250557299','2');
INSERT INTO uchome_poke VALUES ('326','292','XHL','','1250585616','6');
INSERT INTO uchome_poke VALUES ('355','232','skyzhaojian','','1251200974','6');
INSERT INTO uchome_poke VALUES ('342','96','abcdefg','','1250563772','21');
INSERT INTO uchome_poke VALUES ('103','344','nm5039','','1250566030','10');
INSERT INTO uchome_poke VALUES ('326','344','nm5039','','1250566154','24');
INSERT INTO uchome_poke VALUES ('387','292','XHL','','1251183422','7');
INSERT INTO uchome_poke VALUES ('334','232','skyzhaojian','','1250574704','7');
INSERT INTO uchome_poke VALUES ('340','348','ASDFG','','1250593140','7');
INSERT INTO uchome_poke VALUES ('8','346','sccdwh','','1250586571','7');
INSERT INTO uchome_poke VALUES ('73','243','zhengwenxiang','','1251275906','7');
INSERT INTO uchome_poke VALUES ('341','347','UEHIWQOJDNCSA','','1250587322','29');
INSERT INTO uchome_poke VALUES ('329','347','UEHIWQOJDNCSA','','1250587338','19');
INSERT INTO uchome_poke VALUES ('332','243','zhengwenxiang','','1251005699','20');
INSERT INTO uchome_poke VALUES ('115','371','zlfd','','1250743781','6');
INSERT INTO uchome_poke VALUES ('356','135','iamwayney','','1250734616','30');
INSERT INTO uchome_poke VALUES ('326','348','ASDFG','','1250593277','7');
INSERT INTO uchome_poke VALUES ('58','395','boyy','','1250826802','3');
INSERT INTO uchome_poke VALUES ('277','363','yyifan','','1251100632','6');
INSERT INTO uchome_poke VALUES ('27','372','Zhaole','','1250926424','20');
INSERT INTO uchome_poke VALUES ('352','96','abcdefg','','1250648255','16');
INSERT INTO uchome_poke VALUES ('331','243','zhengwenxiang','','1251180837','20');
INSERT INTO uchome_poke VALUES ('512','371','zlfd','','1251261263','6');
INSERT INTO uchome_poke VALUES ('135','355','czy','','1250849265','0');
INSERT INTO uchome_poke VALUES ('341','243','zhengwenxiang','','1251005714','7');
INSERT INTO uchome_poke VALUES ('351','243','zhengwenxiang','','1250649187','24');
INSERT INTO uchome_poke VALUES ('365','187','jack','','1250694275','6');
INSERT INTO uchome_poke VALUES ('278','277','Daniel','','1250649720','0');
INSERT INTO uchome_poke VALUES ('354','243','zhengwenxiang','','1251005818','6');
INSERT INTO uchome_poke VALUES ('340','277','Daniel','','1250665447','21');
INSERT INTO uchome_poke VALUES ('103','277','Daniel','','1250650474','6');
INSERT INTO uchome_poke VALUES ('342','277','Daniel','','1250650504','9');
INSERT INTO uchome_poke VALUES ('335','277','Daniel','','1250650531','1');
INSERT INTO uchome_poke VALUES ('492','158','shendaaaaa','','1251215163','10');
INSERT INTO uchome_poke VALUES ('391','371','zlfd','','1250820146','6');
INSERT INTO uchome_poke VALUES ('191','243','zhengwenxiang','','1251005595','22');
INSERT INTO uchome_poke VALUES ('348','135','iamwayney','','1250655909','26');
INSERT INTO uchome_poke VALUES ('466','480','qqyyzz','','1251345697','5');
INSERT INTO uchome_poke VALUES ('255','371','zlfd','','1251115127','6');
INSERT INTO uchome_poke VALUES ('363','371','zlfd','','1251416713','24');
INSERT INTO uchome_poke VALUES ('358','187','jack','','1250683558','6');
INSERT INTO uchome_poke VALUES ('219','362','shangxianyue','','1250686051','6');
INSERT INTO uchome_poke VALUES ('332','129','hjh','','1250687590','24');
INSERT INTO uchome_poke VALUES ('367','369','luhu','','1250703446','10');
INSERT INTO uchome_poke VALUES ('96','365','Passionatesex','','1250693210','3');
INSERT INTO uchome_poke VALUES ('383','363','yyifan','','1250773349','20');
INSERT INTO uchome_poke VALUES ('357','365','Passionatesex','','1250693399','3');
INSERT INTO uchome_poke VALUES ('365','96','abcdefg','','1250741150','20');
INSERT INTO uchome_poke VALUES ('135','386','mytwd','','1251215486','30');
INSERT INTO uchome_poke VALUES ('457','363','yyifan','','1251188544','6');
INSERT INTO uchome_poke VALUES ('352','339','yangsong1','','1250708946','7');
INSERT INTO uchome_poke VALUES ('358','339','yangsong1','','1250709229','20');
INSERT INTO uchome_poke VALUES ('369','339','yangsong1','','1250709583','5');
INSERT INTO uchome_poke VALUES ('374','339','yangsong1','','1250798070','21');
INSERT INTO uchome_poke VALUES ('340','339','yangsong1','','1250710195','20');
INSERT INTO uchome_poke VALUES ('348','339','yangsong1','','1250710589','20');
INSERT INTO uchome_poke VALUES ('349','339','yangsong1','','1250710638','7');
INSERT INTO uchome_poke VALUES ('219','339','yangsong1','','1250710671','20');
INSERT INTO uchome_poke VALUES ('350','339','yangsong1','','1250710696','20');
INSERT INTO uchome_poke VALUES ('351','339','yangsong1','','1250710723','7');
INSERT INTO uchome_poke VALUES ('354','339','yangsong1','','1250710758','20');
INSERT INTO uchome_poke VALUES ('387','386','mytwd','','1251128625','6');
INSERT INTO uchome_poke VALUES ('158','1','admin','','1251358798','23');
INSERT INTO uchome_poke VALUES ('358','355','czy','','1250730730','7');
INSERT INTO uchome_poke VALUES ('370','355','czy','','1250730897','7');
INSERT INTO uchome_poke VALUES ('122','371','zlfd','','1250739486','6');
INSERT INTO uchome_poke VALUES ('367','355','czy','','1250731011','7');
INSERT INTO uchome_poke VALUES ('365','355','czy','','1250731075','7');
INSERT INTO uchome_poke VALUES ('361','355','czy','','1250731134','7');
INSERT INTO uchome_poke VALUES ('373','232','skyzhaojian','','1250778076','7');
INSERT INTO uchome_poke VALUES ('357','355','czy','','1250731248','7');
INSERT INTO uchome_poke VALUES ('173','491','ffeng','','1251287650','6');
INSERT INTO uchome_poke VALUES ('387','232','skyzhaojian','','1251004156','7');
INSERT INTO uchome_poke VALUES ('96','372','Zhaole','','1250927204','6');
INSERT INTO uchome_poke VALUES ('219','371','zlfd','','1250745672','24');
INSERT INTO uchome_poke VALUES ('353','355','czy','','1250731443','7');
INSERT INTO uchome_poke VALUES ('352','355','czy','','1250731469','7');
INSERT INTO uchome_poke VALUES ('350','355','czy','','1250731507','7');
INSERT INTO uchome_poke VALUES ('347','355','czy','','1250731576','7');
INSERT INTO uchome_poke VALUES ('346','355','czy','','1250731600','7');
INSERT INTO uchome_poke VALUES ('382','363','yyifan','','1250773072','6');
INSERT INTO uchome_poke VALUES ('355','339','yangsong1','','1251119890','22');
INSERT INTO uchome_poke VALUES ('122','187','jack','','1250741002','6');
INSERT INTO uchome_poke VALUES ('358','371','zlfd','','1250733879','6');
INSERT INTO uchome_poke VALUES ('365','135','iamwayney','','1250734557','3');
INSERT INTO uchome_poke VALUES ('364','277','Daniel','','1250751298','6');
INSERT INTO uchome_poke VALUES ('30','363','yyifan','','1250773093','6');
INSERT INTO uchome_poke VALUES ('389','232','skyzhaojian','','1250831583','7');
INSERT INTO uchome_poke VALUES ('361','243','zhengwenxiang','','1251005839','7');
INSERT INTO uchome_poke VALUES ('364','158','shendaaaaa','','1250778259','13');
INSERT INTO uchome_poke VALUES ('395','27','tianzi','','1250926022','6');
INSERT INTO uchome_poke VALUES ('373','371','zlfd','','1250820533','6');
INSERT INTO uchome_poke VALUES ('383','384','gongqingssss','','1250773749','15');
INSERT INTO uchome_poke VALUES ('384','386','mytwd','','1250775925','3');
INSERT INTO uchome_poke VALUES ('390','394','ouyangtn','','1250825139','7');
INSERT INTO uchome_poke VALUES ('383','386','mytwd','','1250864934','6');
INSERT INTO uchome_poke VALUES ('46','158','shendaaaaa','','1250776292','13');
INSERT INTO uchome_poke VALUES ('326','158','shendaaaaa','','1250776509','13');
INSERT INTO uchome_poke VALUES ('30','158','shendaaaaa','','1250777318','13');
INSERT INTO uchome_poke VALUES ('503','232','skyzhaojian','','1251259935','7');
INSERT INTO uchome_poke VALUES ('389','371','zlfd','','1250826503','6');
INSERT INTO uchome_poke VALUES ('191','232','skyzhaojian','','1250831674','7');
INSERT INTO uchome_poke VALUES ('453','339','yangsong1','','1251120357','7');
INSERT INTO uchome_poke VALUES ('358','73','yanluo','','1251268571','20');
INSERT INTO uchome_poke VALUES ('388','339','yangsong1','','1250798519','20');
INSERT INTO uchome_poke VALUES ('389','96','abcdefg','','1250819265','20');
INSERT INTO uchome_poke VALUES ('9','411','xuqinghong74','','1250953048','20');
INSERT INTO uchome_poke VALUES ('370','390','zuqiuxiansheng','','1250812573','24');
INSERT INTO uchome_poke VALUES ('58','390','zuqiuxiansheng','','1250812671','10');
INSERT INTO uchome_poke VALUES ('134','390','zuqiuxiansheng','','1250812708','29');
INSERT INTO uchome_poke VALUES ('405','243','zhengwenxiang','','1251005528','7');
INSERT INTO uchome_poke VALUES ('308','390','zuqiuxiansheng','','1250812785','23');
INSERT INTO uchome_poke VALUES ('122','390','zuqiuxiansheng','','1250812895','30');
INSERT INTO uchome_poke VALUES ('373','390','zuqiuxiansheng','','1250812925','30');
INSERT INTO uchome_poke VALUES ('392','371','zlfd','','1250851907','6');
INSERT INTO uchome_poke VALUES ('96','390','zuqiuxiansheng','','1250813064','12');
INSERT INTO uchome_poke VALUES ('322','390','zuqiuxiansheng','','1250813136','19');
INSERT INTO uchome_poke VALUES ('371','243','zhengwenxiang','','1251447941','10');
INSERT INTO uchome_poke VALUES ('389','390','zuqiuxiansheng','','1250813527','27');
INSERT INTO uchome_poke VALUES ('486','489','qwqw','','1251192162','0');
INSERT INTO uchome_poke VALUES ('53','390','zuqiuxiansheng','','1250813581','25');
INSERT INTO uchome_poke VALUES ('143','391','jiangshangren','','1250814722','30');
INSERT INTO uchome_poke VALUES ('5','391','jiangshangren','','1250814740','30');
INSERT INTO uchome_poke VALUES ('149','391','jiangshangren','','1250814784','30');
INSERT INTO uchome_poke VALUES ('55','391','jiangshangren','','1250814804','24');
INSERT INTO uchome_poke VALUES ('390','391','jiangshangren','','1250814838','30');
INSERT INTO uchome_poke VALUES ('328','392','ucdn','','1250816763','10');
INSERT INTO uchome_poke VALUES ('388','363','yyifan','','1251100619','6');
INSERT INTO uchome_poke VALUES ('339','232','skyzhaojian','','1251127520','6');
INSERT INTO uchome_poke VALUES ('390','96','abcdefg','','1250910152','6');
INSERT INTO uchome_poke VALUES ('392','363','yyifan','','1251100610','6');
INSERT INTO uchome_poke VALUES ('387','339','yangsong1','','1251119871','11');
INSERT INTO uchome_poke VALUES ('191','371','zlfd','','1250820205','6');
INSERT INTO uchome_poke VALUES ('388','371','zlfd','','1250820241','6');
INSERT INTO uchome_poke VALUES ('255','135','iamwayney','','1251206792','20');
INSERT INTO uchome_poke VALUES ('389','243','zhengwenxiang','','1250831212','20');
INSERT INTO uchome_poke VALUES ('135','158','shendaaaaa','','1251215048','13');
INSERT INTO uchome_poke VALUES ('53','371','zlfd','','1250820317','6');
INSERT INTO uchome_poke VALUES ('385','232','skyzhaojian','','1251216714','22');
INSERT INTO uchome_poke VALUES ('383','371','zlfd','','1250851809','6');
INSERT INTO uchome_poke VALUES ('382','371','zlfd','','1250851985','6');
INSERT INTO uchome_poke VALUES ('30','371','zlfd','','1250820401','6');
INSERT INTO uchome_poke VALUES ('380','371','zlfd','','1250820416','6');
INSERT INTO uchome_poke VALUES ('379','371','zlfd','','1250820433','6');
INSERT INTO uchome_poke VALUES ('377','371','zlfd','','1250820450','6');
INSERT INTO uchome_poke VALUES ('374','371','zlfd','','1250822827','24');
INSERT INTO uchome_poke VALUES ('390','27','tianzi','','1250926040','6');
INSERT INTO uchome_poke VALUES ('372','339','yangsong1','','1251119555','21');
INSERT INTO uchome_poke VALUES ('378','371','zlfd','','1250826379','24');
INSERT INTO uchome_poke VALUES ('346','371','zlfd','','1250820573','6');
INSERT INTO uchome_poke VALUES ('369','371','zlfd','','1250820605','6');
INSERT INTO uchome_poke VALUES ('370','371','zlfd','','1250820620','6');
INSERT INTO uchome_poke VALUES ('373','498','binxr','','1251234089','21');
INSERT INTO uchome_poke VALUES ('238','371','zlfd','','1250821026','6');
INSERT INTO uchome_poke VALUES ('103','371','zlfd','','1250821047','6');
INSERT INTO uchome_poke VALUES ('205','371','zlfd','','1250821064','6');
INSERT INTO uchome_poke VALUES ('265','371','zlfd','','1250853625','24');
INSERT INTO uchome_poke VALUES ('269','371','zlfd','','1250821129','6');
INSERT INTO uchome_poke VALUES ('271','371','zlfd','','1250821153','6');
INSERT INTO uchome_poke VALUES ('339','243','zhengwenxiang','','1251180261','7');
INSERT INTO uchome_poke VALUES ('308','371','zlfd','','1250821179','6');
INSERT INTO uchome_poke VALUES ('319','371','zlfd','','1250853581','6');
INSERT INTO uchome_poke VALUES ('9','371','zlfd','','1250821227','6');
INSERT INTO uchome_poke VALUES ('46','371','zlfd','','1250821241','6');
INSERT INTO uchome_poke VALUES ('58','371','zlfd','','1250821262','6');
INSERT INTO uchome_poke VALUES ('176','371','zlfd','','1250821287','6');
INSERT INTO uchome_poke VALUES ('134','371','zlfd','','1250821301','6');
INSERT INTO uchome_poke VALUES ('189','371','zlfd','','1250821319','6');
INSERT INTO uchome_poke VALUES ('202','371','zlfd','','1250821333','6');
INSERT INTO uchome_poke VALUES ('5','371','zlfd','','1250821359','6');
INSERT INTO uchome_poke VALUES ('7','371','zlfd','','1250821372','6');
INSERT INTO uchome_poke VALUES ('10','371','zlfd','','1250821394','6');
INSERT INTO uchome_poke VALUES ('11','371','zlfd','','1250821407','6');
INSERT INTO uchome_poke VALUES ('13','371','zlfd','','1250853670','24');
INSERT INTO uchome_poke VALUES ('15','371','zlfd','','1250821440','6');
INSERT INTO uchome_poke VALUES ('55','371','zlfd','','1250821473','6');
INSERT INTO uchome_poke VALUES ('109','371','zlfd','','1250821485','6');
INSERT INTO uchome_poke VALUES ('142','371','zlfd','','1250821498','6');
INSERT INTO uchome_poke VALUES ('143','371','zlfd','','1250821512','6');
INSERT INTO uchome_poke VALUES ('149','371','zlfd','','1250821544','6');
INSERT INTO uchome_poke VALUES ('163','371','zlfd','','1250821557','6');
INSERT INTO uchome_poke VALUES ('166','371','zlfd','','1250821571','6');
INSERT INTO uchome_poke VALUES ('194','371','zlfd','','1250821582','6');
INSERT INTO uchome_poke VALUES ('197','371','zlfd','','1250821596','6');
INSERT INTO uchome_poke VALUES ('62','371','zlfd','','1250822706','6');
INSERT INTO uchome_poke VALUES ('21','371','zlfd','','1250822723','6');
INSERT INTO uchome_poke VALUES ('324','371','zlfd','','1250822753','6');
INSERT INTO uchome_poke VALUES ('163','393','lguo123','','1250823246','7');
INSERT INTO uchome_poke VALUES ('393','371','zlfd','','1250851925','6');
INSERT INTO uchome_poke VALUES ('392','393','lguo123','','1250823482','7');
INSERT INTO uchome_poke VALUES ('403','371','zlfd','','1250851693','6');
INSERT INTO uchome_poke VALUES ('255','256','darkeyes','','1251164778','2');
INSERT INTO uchome_poke VALUES ('375','394','ouyangtn','','1250825198','7');
INSERT INTO uchome_poke VALUES ('473','491','ffeng','','1251282252','20');
INSERT INTO uchome_poke VALUES ('383','378','sxjj','','1250825295','14');
INSERT INTO uchome_poke VALUES ('58','378','sxjj','','1250825315','27');
INSERT INTO uchome_poke VALUES ('46','378','sxjj','','1250825330','30');
INSERT INTO uchome_poke VALUES ('387','372','Zhaole','','1250949327','6');
INSERT INTO uchome_poke VALUES ('125','378','sxjj','','1250825457','11');
INSERT INTO uchome_poke VALUES ('174','372','Zhaole','','1250929382','20');
INSERT INTO uchome_poke VALUES ('255','387','Lele','','1250856436','7');
INSERT INTO uchome_poke VALUES ('390','339','yangsong1','','1251119986','20');
INSERT INTO uchome_poke VALUES ('395','355','czy','','1250839639','21');
INSERT INTO uchome_poke VALUES ('292','135','iamwayney','','1251206834','27');
INSERT INTO uchome_poke VALUES ('402','371','zlfd','','1250851743','6');
INSERT INTO uchome_poke VALUES ('382','243','zhengwenxiang','','1251006040','24');
INSERT INTO uchome_poke VALUES ('255','355','czy','','1251437109','6');
INSERT INTO uchome_poke VALUES ('373','397','csnoviceo','','1250833734','6');
INSERT INTO uchome_poke VALUES ('383','398','gaowei','','1250835092','7');
INSERT INTO uchome_poke VALUES ('473','430','sanshao','','1251207286','24');
INSERT INTO uchome_poke VALUES ('122','422','dchjdjs','','1251039156','24');
INSERT INTO uchome_poke VALUES ('393','397','csnoviceo','','1250835339','3');
INSERT INTO uchome_poke VALUES ('381','397','csnoviceo','','1250835376','6');
INSERT INTO uchome_poke VALUES ('398','397','csnoviceo','','1250835426','13');
INSERT INTO uchome_poke VALUES ('202','397','csnoviceo','','1250836133','4');
INSERT INTO uchome_poke VALUES ('397','401','MYXS','','1250840247','10');
INSERT INTO uchome_poke VALUES ('398','243','zhengwenxiang','','1250840376','20');
INSERT INTO uchome_poke VALUES ('401','243','zhengwenxiang','','1250840415','20');
INSERT INTO uchome_poke VALUES ('399','243','zhengwenxiang','','1250840441','6');
INSERT INTO uchome_poke VALUES ('397','243','zhengwenxiang','','1250840479','24');
INSERT INTO uchome_poke VALUES ('402','243','zhengwenxiang','','1251005576','13');
INSERT INTO uchome_poke VALUES ('398','402','caichaolun','','1250841227','27');
INSERT INTO uchome_poke VALUES ('397','402','caichaolun','','1250841251','12');
INSERT INTO uchome_poke VALUES ('46','73','yanluo','','1251268539','20');
INSERT INTO uchome_poke VALUES ('392','402','caichaolun','','1250841396','3');
INSERT INTO uchome_poke VALUES ('402','403','mamama','','1250842945','30');
INSERT INTO uchome_poke VALUES ('308','403','mamama','','1250842986','24');
INSERT INTO uchome_poke VALUES ('402','355','czy','','1250912616','6');
INSERT INTO uchome_poke VALUES ('403','355','czy','','1250912601','6');
INSERT INTO uchome_poke VALUES ('396','355','czy','','1250843698','7');
INSERT INTO uchome_poke VALUES ('397','355','czy','','1250843785','7');
INSERT INTO uchome_poke VALUES ('383','355','czy','','1250843862','7');
INSERT INTO uchome_poke VALUES ('173','73','yanluo','','1251268421','6');
INSERT INTO uchome_poke VALUES ('389','355','czy','','1250843998','7');
INSERT INTO uchome_poke VALUES ('390','355','czy','','1250844106','7');
INSERT INTO uchome_poke VALUES ('402','387','Lele','','1250856420','6');
INSERT INTO uchome_poke VALUES ('402','73','yanluo','','1250856977','2');
INSERT INTO uchome_poke VALUES ('398','355','czy','','1250844604','7');
INSERT INTO uchome_poke VALUES ('255','96','abcdefg','','1250846491','5');
INSERT INTO uchome_poke VALUES ('398','232','skyzhaojian','','1250855217','7');
INSERT INTO uchome_poke VALUES ('404','371','zlfd','','1250851758','6');
INSERT INTO uchome_poke VALUES ('401','371','zlfd','','1250851776','6');
INSERT INTO uchome_poke VALUES ('399','371','zlfd','','1250851794','6');
INSERT INTO uchome_poke VALUES ('397','371','zlfd','','1250851829','6');
INSERT INTO uchome_poke VALUES ('396','371','zlfd','','1250851862','6');
INSERT INTO uchome_poke VALUES ('394','256','darkeyes','','1251164756','6');
INSERT INTO uchome_poke VALUES ('372','371','zlfd','','1250993270','2');
INSERT INTO uchome_poke VALUES ('397','372','Zhaole','','1250856048','3');
INSERT INTO uchome_poke VALUES ('372','243','zhengwenxiang','','1251005427','28');
INSERT INTO uchome_poke VALUES ('402','187','jack','','1250856972','6');
INSERT INTO uchome_poke VALUES ('447','96','abcdefg','','1251160171','30');
INSERT INTO uchome_poke VALUES ('395','407','yuzhigong','','1250986385','30');
INSERT INTO uchome_poke VALUES ('27','243','zhengwenxiang','','1251276145','28');
INSERT INTO uchome_poke VALUES ('255','339','yangsong1','','1251119881','22');
INSERT INTO uchome_poke VALUES ('383','232','skyzhaojian','','1251127696','7');
INSERT INTO uchome_poke VALUES ('103','386','mytwd','','1251128620','6');
INSERT INTO uchome_poke VALUES ('389','339','yangsong1','','1250876575','7');
INSERT INTO uchome_poke VALUES ('255','372','Zhaole','','1250924118','20');
INSERT INTO uchome_poke VALUES ('399','339','yangsong1','','1250876727','20');
INSERT INTO uchome_poke VALUES ('27','339','yangsong1','','1251119569','17');
INSERT INTO uchome_poke VALUES ('486','371','zlfd','','1251183396','6');
INSERT INTO uchome_poke VALUES ('406','372','Zhaole','','1250927310','6');
INSERT INTO uchome_poke VALUES ('449','470','jtwyslq','','1251203174','7');
INSERT INTO uchome_poke VALUES ('270','27','tianzi','','1250926013','24');
INSERT INTO uchome_poke VALUES ('407','387','Lele','','1250927548','6');
INSERT INTO uchome_poke VALUES ('9','232','skyzhaojian','','1251004199','7');
INSERT INTO uchome_poke VALUES ('397','387','Lele','','1250924675','20');
INSERT INTO uchome_poke VALUES ('389','387','Lele','','1250924798','20');
INSERT INTO uchome_poke VALUES ('278','173','huha','','1250927770','6');
INSERT INTO uchome_poke VALUES ('372','173','huha','','1251091633','3');
INSERT INTO uchome_poke VALUES ('407','232','skyzhaojian','','1251004139','7');
INSERT INTO uchome_poke VALUES ('173','411','xuqinghong74','','1251102298','27');
INSERT INTO uchome_poke VALUES ('452','430','sanshao','','1251122052','10');
INSERT INTO uchome_poke VALUES ('402','418','Awakensme','','1251024223','24');
INSERT INTO uchome_poke VALUES ('387','173','huha','','1251091619','13');
INSERT INTO uchome_poke VALUES ('27','411','xuqinghong74','','1250953151','20');
INSERT INTO uchome_poke VALUES ('498','371','zlfd','','1251246924','24');
INSERT INTO uchome_poke VALUES ('255','292','XHL','','1251183384','23');
INSERT INTO uchome_poke VALUES ('46','411','xuqinghong74','','1250953551','20');
INSERT INTO uchome_poke VALUES ('255','411','xuqinghong74','','1250953646','20');
INSERT INTO uchome_poke VALUES ('134','411','xuqinghong74','','1250953682','20');
INSERT INTO uchome_poke VALUES ('217','411','xuqinghong74','','1250953737','20');
INSERT INTO uchome_poke VALUES ('373','411','xuqinghong74','','1250953949','20');
INSERT INTO uchome_poke VALUES ('402','411','xuqinghong74','','1250954097','20');
INSERT INTO uchome_poke VALUES ('54','407','yuzhigong','','1250985500','22');
INSERT INTO uchome_poke VALUES ('406','355','czy','','1251026873','6');
INSERT INTO uchome_poke VALUES ('387','407','yuzhigong','','1250985763','11');
INSERT INTO uchome_poke VALUES ('420','421','TAKR','','1251031308','24');
INSERT INTO uchome_poke VALUES ('191','411','xuqinghong74','','1250997632','20');
INSERT INTO uchome_poke VALUES ('425','363','yyifan','','1251100577','6');
INSERT INTO uchome_poke VALUES ('403','407','yuzhigong','','1250986315','30');
INSERT INTO uchome_poke VALUES ('407','411','xuqinghong74','','1251087838','17');
INSERT INTO uchome_poke VALUES ('96','411','xuqinghong74','','1250997168','22');
INSERT INTO uchome_poke VALUES ('87','411','xuqinghong74','','1250997651','20');
INSERT INTO uchome_poke VALUES ('353','411','xuqinghong74','','1250997687','20');
INSERT INTO uchome_poke VALUES ('409','411','xuqinghong74','','1250997765','20');
INSERT INTO uchome_poke VALUES ('513','431','banjianbi','','1251263191','5');
INSERT INTO uchome_poke VALUES ('27','274','GEXUAN','','1251001851','26');
INSERT INTO uchome_poke VALUES ('475','371','zlfd','','1251177655','2');
INSERT INTO uchome_poke VALUES ('122','243','zhengwenxiang','','1251180586','20');
INSERT INTO uchome_poke VALUES ('474','96','abcdefg','','1251188977','20');
INSERT INTO uchome_poke VALUES ('3','494','wagamama','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314936507','0');
INSERT INTO uchome_poke VALUES ('395','243','zhengwenxiang','','1251006083','24');
INSERT INTO uchome_poke VALUES ('417','411','xuqinghong74','','1251012995','20');
INSERT INTO uchome_poke VALUES ('122','418','Awakensme','','1251022450','20');
INSERT INTO uchome_poke VALUES ('158','386','mytwd','','1251216106','6');
INSERT INTO uchome_poke VALUES ('122','411','xuqinghong74','','1251013020','20');
INSERT INTO uchome_poke VALUES ('416','411','xuqinghong74','','1251013051','20');
INSERT INTO uchome_poke VALUES ('415','411','xuqinghong74','','1251013081','20');
INSERT INTO uchome_poke VALUES ('403','411','xuqinghong74','','1251013144','20');
INSERT INTO uchome_poke VALUES ('415','232','skyzhaojian','','1251015493','7');
INSERT INTO uchome_poke VALUES ('407','371','zlfd','','1251115182','24');
INSERT INTO uchome_poke VALUES ('425','411','xuqinghong74','','1251088136','21');
INSERT INTO uchome_poke VALUES ('417','422','dchjdjs','','1251039300','7');
INSERT INTO uchome_poke VALUES ('134','431','banjianbi','','1251087879','5');
INSERT INTO uchome_poke VALUES ('435','187','jack','','1251090484','6');
INSERT INTO uchome_poke VALUES ('339','449','demonb','','1251163796','6');
INSERT INTO uchome_poke VALUES ('355','243','zhengwenxiang','','1251180248','27');
INSERT INTO uchome_poke VALUES ('428','363','yyifan','','1251100591','6');
INSERT INTO uchome_poke VALUES ('255','425','yanghuanzhang','','1251083880','20');
INSERT INTO uchome_poke VALUES ('343','429','gyq','','1251085100','2');
INSERT INTO uchome_poke VALUES ('435','355','czy','','1251108614','6');
INSERT INTO uchome_poke VALUES ('46','429','gyq','','1251085334','6');
INSERT INTO uchome_poke VALUES ('9','429','gyq','','1251085379','6');
INSERT INTO uchome_poke VALUES ('430','432','wangkun','','1251087348','2');
INSERT INTO uchome_poke VALUES ('407','173','huha','','1251091598','21');
INSERT INTO uchome_poke VALUES ('433','431','banjianbi','','1251087751','6');
INSERT INTO uchome_poke VALUES ('430','431','banjianbi','','1251087766','6');
INSERT INTO uchome_poke VALUES ('448','355','czy','','1251108438','6');
INSERT INTO uchome_poke VALUES ('308','431','banjianbi','','1251087944','13');
INSERT INTO uchome_poke VALUES ('473','158','shendaaaaa','','1251215181','20');
INSERT INTO uchome_poke VALUES ('431','411','xuqinghong74','','1251087994','20');
INSERT INTO uchome_poke VALUES ('473','371','zlfd','','1251249065','30');
INSERT INTO uchome_poke VALUES ('428','411','xuqinghong74','','1251088078','20');
INSERT INTO uchome_poke VALUES ('431','430','sanshao','','1251088333','2');
INSERT INTO uchome_poke VALUES ('478','477','hdyzlll','','1251175213','8');
INSERT INTO uchome_poke VALUES ('429','411','xuqinghong74','','1251159048','21');
INSERT INTO uchome_poke VALUES ('435','411','xuqinghong74','','1251091555','20');
INSERT INTO uchome_poke VALUES ('431','173','huha','','1251091586','6');
INSERT INTO uchome_poke VALUES ('437','411','xuqinghong74','','1251091731','21');
INSERT INTO uchome_poke VALUES ('430','411','xuqinghong74','','1251159043','17');
INSERT INTO uchome_poke VALUES ('255','438','xianglin188','','1251093891','30');
INSERT INTO uchome_poke VALUES ('439','438','xianglin188','','1251094108','30');
INSERT INTO uchome_poke VALUES ('441','411','xuqinghong74','','1251097210','17');
INSERT INTO uchome_poke VALUES ('173','187','jack','','1251097958','6');
INSERT INTO uchome_poke VALUES ('444','411','xuqinghong74','','1251100357','20');
INSERT INTO uchome_poke VALUES ('387','355','czy','','1251110145','6');
INSERT INTO uchome_poke VALUES ('443','232','skyzhaojian','','1251102249','7');
INSERT INTO uchome_poke VALUES ('446','411','xuqinghong74','','1251159028','19');
INSERT INTO uchome_poke VALUES ('96','447','olfarmer','','1251105092','6');
INSERT INTO uchome_poke VALUES ('9','447','olfarmer','','1251105205','5');
INSERT INTO uchome_poke VALUES ('460','371','zlfd','','1251159040','6');
INSERT INTO uchome_poke VALUES ('506','517','rabishi123','','1251260422','7');
INSERT INTO uchome_poke VALUES ('444','371','zlfd','','1251112626','3');
INSERT INTO uchome_poke VALUES ('447','363','yyifan','','1251108517','6');
INSERT INTO uchome_poke VALUES ('447','371','zlfd','','1251106892','24');
INSERT INTO uchome_poke VALUES ('407','448','lovesheng','','1251107034','24');
INSERT INTO uchome_poke VALUES ('448','371','zlfd','','1251158246','24');
INSERT INTO uchome_poke VALUES ('134','448','lovesheng','','1251107240','24');
INSERT INTO uchome_poke VALUES ('426','371','zlfd','','1251115155','6');
INSERT INTO uchome_poke VALUES ('438','371','zlfd','','1251114804','6');
INSERT INTO uchome_poke VALUES ('461','371','zlfd','','1251158195','6');
INSERT INTO uchome_poke VALUES ('357','444','dlmdlm','','1251108769','3');
INSERT INTO uchome_poke VALUES ('438','450','jfdskhkl','','1251112613','7');
INSERT INTO uchome_poke VALUES ('96','371','zlfd','','1251258383','24');
INSERT INTO uchome_poke VALUES ('451','371','zlfd','','1251162991','24');
INSERT INTO uchome_poke VALUES ('435','371','zlfd','','1251115031','24');
INSERT INTO uchome_poke VALUES ('446','371','zlfd','','1251114871','6');
INSERT INTO uchome_poke VALUES ('452','371','zlfd','','1251114900','6');
INSERT INTO uchome_poke VALUES ('442','371','zlfd','','1251114918','6');
INSERT INTO uchome_poke VALUES ('441','371','zlfd','','1251114948','6');
INSERT INTO uchome_poke VALUES ('440','371','zlfd','','1251114961','6');
INSERT INTO uchome_poke VALUES ('439','371','zlfd','','1251114975','6');
INSERT INTO uchome_poke VALUES ('173','371','zlfd','','1251114992','6');
INSERT INTO uchome_poke VALUES ('437','371','zlfd','','1251115009','6');
INSERT INTO uchome_poke VALUES ('433','371','zlfd','','1251115056','6');
INSERT INTO uchome_poke VALUES ('431','371','zlfd','','1251265449','6');
INSERT INTO uchome_poke VALUES ('430','371','zlfd','','1251191006','24');
INSERT INTO uchome_poke VALUES ('425','371','zlfd','','1251115169','6');
INSERT INTO uchome_poke VALUES ('58','449','demonb','','1251166248','6');
INSERT INTO uchome_poke VALUES ('255','477','hdyzlll','','1251178167','6');
INSERT INTO uchome_poke VALUES ('469','371','zlfd','','1251158123','6');
INSERT INTO uchome_poke VALUES ('453','449','demonb','','1251165349','24');
INSERT INTO uchome_poke VALUES ('373','473','yusiking','','1251199836','30');
INSERT INTO uchome_poke VALUES ('429','456','woshisheidegege','','1251124444','2');
INSERT INTO uchome_poke VALUES ('9','457','fgh3697278','','1251125360','0');
INSERT INTO uchome_poke VALUES ('472','371','zlfd','','1251198784','24');
INSERT INTO uchome_poke VALUES ('430','458','bluesea','','1251126570','7');
INSERT INTO uchome_poke VALUES ('448','243','zhengwenxiang','','1251180441','20');
INSERT INTO uchome_poke VALUES ('459','232','skyzhaojian','','1251178795','6');
INSERT INTO uchome_poke VALUES ('459','458','bluesea','','1251130539','6');
INSERT INTO uchome_poke VALUES ('430','232','skyzhaojian','','1251127515','7');
INSERT INTO uchome_poke VALUES ('73','411','xuqinghong74','','1251270383','26');
INSERT INTO uchome_poke VALUES ('433','459','xujianzhou','','1251127957','7');
INSERT INTO uchome_poke VALUES ('339','386','mytwd','','1251128606','7');
INSERT INTO uchome_poke VALUES ('459','386','mytwd','','1251130548','11');
INSERT INTO uchome_poke VALUES ('292','232','skyzhaojian','','1251207325','30');
INSERT INTO uchome_poke VALUES ('460','232','skyzhaojian','','1251178872','24');
INSERT INTO uchome_poke VALUES ('460','465','zqzqzq','','1251131673','7');
INSERT INTO uchome_poke VALUES ('173','431','banjianbi','','1251263113','13');
INSERT INTO uchome_poke VALUES ('446','431','banjianbi','','1251130886','5');
INSERT INTO uchome_poke VALUES ('372','292','XHL','','1251183362','24');
INSERT INTO uchome_poke VALUES ('430','462','JONE','','1251219268','30');
INSERT INTO uchome_poke VALUES ('546','480','qqyyzz','','1251345664','2');
INSERT INTO uchome_poke VALUES ('256','371','zlfd','','1251177645','24');
INSERT INTO uchome_poke VALUES ('465','467','yanyu','','1251132933','6');
INSERT INTO uchome_poke VALUES ('464','467','yanyu','','1251132971','7');
INSERT INTO uchome_poke VALUES ('448','466','Edward','','1251139579','24');
INSERT INTO uchome_poke VALUES ('431','470','jtwyslq','','1251152666','7');
INSERT INTO uchome_poke VALUES ('464','470','jtwyslq','','1251152832','6');
INSERT INTO uchome_poke VALUES ('9','470','jtwyslq','','1251152953','6');
INSERT INTO uchome_poke VALUES ('355','411','xuqinghong74','','1251244688','21');
INSERT INTO uchome_poke VALUES ('444','470','jtwyslq','','1251153003','7');
INSERT INTO uchome_poke VALUES ('451','470','jtwyslq','','1251153026','7');
INSERT INTO uchome_poke VALUES ('455','470','jtwyslq','','1251153256','2');
INSERT INTO uchome_poke VALUES ('469','470','jtwyslq','','1251153127','2');
INSERT INTO uchome_poke VALUES ('468','470','jtwyslq','','1251153143','2');
INSERT INTO uchome_poke VALUES ('445','470','jtwyslq','','1251153169','2');
INSERT INTO uchome_poke VALUES ('448','470','jtwyslq','','1251153196','2');
INSERT INTO uchome_poke VALUES ('478','458','bluesea','','1251176038','30');
INSERT INTO uchome_poke VALUES ('355','470','jtwyslq','','1251153230','2');
INSERT INTO uchome_poke VALUES ('463','470','jtwyslq','','1251153277','2');
INSERT INTO uchome_poke VALUES ('465','470','jtwyslq','','1251153295','2');
INSERT INTO uchome_poke VALUES ('433','232','skyzhaojian','','1251219163','7');
INSERT INTO uchome_poke VALUES ('474','473','yusiking','','1251161712','6');
INSERT INTO uchome_poke VALUES ('417','473','yusiking','','1251161925','7');
INSERT INTO uchome_poke VALUES ('474','371','zlfd','','1251162939','24');
INSERT INTO uchome_poke VALUES ('452','449','demonb','','1251163890','6');
INSERT INTO uchome_poke VALUES ('249','371','zlfd','','1251198865','24');
INSERT INTO uchome_poke VALUES ('472','449','demonb','','1251164053','26');
INSERT INTO uchome_poke VALUES ('430','256','darkeyes','','1251164362','7');
INSERT INTO uchome_poke VALUES ('471','458','bluesea','','1251201108','6');
INSERT INTO uchome_poke VALUES ('429','449','demonb','','1251164581','7');
INSERT INTO uchome_poke VALUES ('492','473','yusiking','','1251199684','6');
INSERT INTO uchome_poke VALUES ('232','371','zlfd','','1251416600','30');
INSERT INTO uchome_poke VALUES ('259','449','demonb','','1251164735','21');
INSERT INTO uchome_poke VALUES ('355','256','darkeyes','','1251164740','5');
INSERT INTO uchome_poke VALUES ('478','371','zlfd','','1251177626','2');
INSERT INTO uchome_poke VALUES ('256','477','hdyzlll','','1251169767','10');
INSERT INTO uchome_poke VALUES ('430','386','mytwd','','1251172961','3');
INSERT INTO uchome_poke VALUES ('504','1','admin','','1251358803','16');
INSERT INTO uchome_poke VALUES ('478','255','abcd','','1251175603','20');
INSERT INTO uchome_poke VALUES ('439','255','abcd','','1251175634','2');
INSERT INTO uchome_poke VALUES ('455','135','iamwayney','','1251206813','2');
INSERT INTO uchome_poke VALUES ('256','255','abcd','','1251175782','20');
INSERT INTO uchome_poke VALUES ('464','255','abcd','','1251175881','6');
INSERT INTO uchome_poke VALUES ('470','462','JONE','','1251219390','30');
INSERT INTO uchome_poke VALUES ('355','478','zxxboy','','1251265199','7');
INSERT INTO uchome_poke VALUES ('474','243','zhengwenxiang','','1251180104','20');
INSERT INTO uchome_poke VALUES ('466','386','mytwd','','1251311235','11');
INSERT INTO uchome_poke VALUES ('433','243','zhengwenxiang','','1251276044','16');
INSERT INTO uchome_poke VALUES ('430','243','zhengwenxiang','','1251275737','28');
INSERT INTO uchome_poke VALUES ('383','243','zhengwenxiang','','1251180553','20');
INSERT INTO uchome_poke VALUES ('417','243','zhengwenxiang','','1251180727','24');
INSERT INTO uchome_poke VALUES ('256','355','czy','','1251435147','6');
INSERT INTO uchome_poke VALUES ('470','355','czy','','1251182407','7');
INSERT INTO uchome_poke VALUES ('135','371','zlfd','','1251245757','5');
INSERT INTO uchome_poke VALUES ('339','355','czy','','1251435133','6');
INSERT INTO uchome_poke VALUES ('481','355','czy','','1251182531','7');
INSERT INTO uchome_poke VALUES ('478','355','czy','','1251182569','7');
INSERT INTO uchome_poke VALUES ('473','411','xuqinghong74','','1251244692','21');
INSERT INTO uchome_poke VALUES ('308','487','syfsyfsyf','','1251185526','7');
INSERT INTO uchome_poke VALUES ('473','243','zhengwenxiang','','1251275870','6');
INSERT INTO uchome_poke VALUES ('483','371','zlfd','','1251183444','6');
INSERT INTO uchome_poke VALUES ('481','371','zlfd','','1251198828','10');
INSERT INTO uchome_poke VALUES ('292','371','zlfd','','1251245777','8');
INSERT INTO uchome_poke VALUES ('430','355','czy','','1251363343','6');
INSERT INTO uchome_poke VALUES ('476','371','zlfd','','1251191038','24');
INSERT INTO uchome_poke VALUES ('582','371','zlfd','','1251439072','24');
INSERT INTO uchome_poke VALUES ('135','411','xuqinghong74','','1251244697','21');
INSERT INTO uchome_poke VALUES ('249','491','ffeng','','1251195002','6');
INSERT INTO uchome_poke VALUES ('479','491','ffeng','','1251195038','3');
INSERT INTO uchome_poke VALUES ('474','491','ffeng','','1251195361','24');
INSERT INTO uchome_poke VALUES ('517','491','ffeng','','1251282270','6');
INSERT INTO uchome_poke VALUES ('492','371','zlfd','','1251198735','6');
INSERT INTO uchome_poke VALUES ('487','371','zlfd','','1251198800','24');
INSERT INTO uchome_poke VALUES ('470','371','zlfd','','1251245770','2');
INSERT INTO uchome_poke VALUES ('385','371','zlfd','','1251245743','6');
INSERT INTO uchome_poke VALUES ('492','232','skyzhaojian','','1251207376','7');
INSERT INTO uchome_poke VALUES ('473','458','bluesea','','1251218712','24');
INSERT INTO uchome_poke VALUES ('373','471','jaene','','1251199887','30');
INSERT INTO uchome_poke VALUES ('390','1','admin','','1251358814','13');
INSERT INTO uchome_poke VALUES ('135','243','zhengwenxiang','','1251349247','20');
INSERT INTO uchome_poke VALUES ('292','473','yusiking','','1251203655','6');
INSERT INTO uchome_poke VALUES ('122','473','yusiking','','1251200143','13');
INSERT INTO uchome_poke VALUES ('422','473','yusiking','','1251200176','11');
INSERT INTO uchome_poke VALUES ('425','473','yusiking','','1251200186','7');
INSERT INTO uchome_poke VALUES ('363','473','yusiking','','1251200193','13');
INSERT INTO uchome_poke VALUES ('471','473','yusiking','','1251202322','30');
INSERT INTO uchome_poke VALUES ('483','232','skyzhaojian','','1251200950','7');
INSERT INTO uchome_poke VALUES ('521','525','zlgg','','1251269683','10');
INSERT INTO uchome_poke VALUES ('471','371','zlfd','','1251261739','21');
INSERT INTO uchome_poke VALUES ('529','232','skyzhaojian','','1251348982','30');
INSERT INTO uchome_poke VALUES ('563','491','ffeng','','1251370027','7');
INSERT INTO uchome_poke VALUES ('387','473','yusiking','','1251203681','7');
INSERT INTO uchome_poke VALUES ('470','473','yusiking','','1251203695','11');
INSERT INTO uchome_poke VALUES ('64','386','mytwd','','1251311332','6');
INSERT INTO uchome_poke VALUES ('473','292','XHL','','1251204976','7');
INSERT INTO uchome_poke VALUES ('484','243','zhengwenxiang','','1251276015','7');
INSERT INTO uchome_poke VALUES ('292','385','caojun','','1251207972','30');
INSERT INTO uchome_poke VALUES ('135','462','JONE','','1251220721','30');
INSERT INTO uchome_poke VALUES ('406','385','caojun','','1251208925','24');
INSERT INTO uchome_poke VALUES ('471','158','shendaaaaa','','1251215232','20');
INSERT INTO uchome_poke VALUES ('459','158','shendaaaaa','','1251215297','20');
INSERT INTO uchome_poke VALUES ('470','386','mytwd','','1251215460','6');
INSERT INTO uchome_poke VALUES ('517','355','czy','','1251279843','10');
INSERT INTO uchome_poke VALUES ('473','462','JONE','','1251222279','30');
INSERT INTO uchome_poke VALUES ('158','243','zhengwenxiang','','1251275891','24');
INSERT INTO uchome_poke VALUES ('373','462','JONE','','1251219674','30');
INSERT INTO uchome_poke VALUES ('480','462','JONE','','1251437052','21');
INSERT INTO uchome_poke VALUES ('555','371','zlfd','','1251416680','6');
INSERT INTO uchome_poke VALUES ('489','462','JONE','','1251222313','30');
INSERT INTO uchome_poke VALUES ('430','498','binxr','','1251234151','24');
INSERT INTO uchome_poke VALUES ('473','498','binxr','','1251234198','24');
INSERT INTO uchome_poke VALUES ('471','498','binxr','','1251234301','24');
INSERT INTO uchome_poke VALUES ('135','498','binxr','','1251234451','24');
INSERT INTO uchome_poke VALUES ('158','498','binxr','','1251234431','21');
INSERT INTO uchome_poke VALUES ('492','411','xuqinghong74','','1251244652','20');
INSERT INTO uchome_poke VALUES ('449','517','rabishi123','','1251273470','10');
INSERT INTO uchome_poke VALUES ('430','499','afei','','1251360009','6');
INSERT INTO uchome_poke VALUES ('473','499','afei','','1251247216','10');
INSERT INTO uchome_poke VALUES ('473','449','demonb','','1251249438','30');
INSERT INTO uchome_poke VALUES ('482','371','zlfd','','1251251323','6');
INSERT INTO uchome_poke VALUES ('449','503','jht','','1251252225','3');
INSERT INTO uchome_poke VALUES ('505','503','jht','','1251251962','3');
INSERT INTO uchome_poke VALUES ('511','506','wangzhenqiu','','1251253811','7');
INSERT INTO uchome_poke VALUES ('498','503','jht','','1251252273','3');
INSERT INTO uchome_poke VALUES ('473','503','jht','','1251252245','3');
INSERT INTO uchome_poke VALUES ('508','503','jht','','1251252313','3');
INSERT INTO uchome_poke VALUES ('473','1','admin','','1251358808','12');
INSERT INTO uchome_poke VALUES ('513','503','jht','','1251253268','3');
INSERT INTO uchome_poke VALUES ('255','491','ffeng','','1251370531','16');
INSERT INTO uchome_poke VALUES ('511','503','jht','','1251254160','7');
INSERT INTO uchome_poke VALUES ('505','511','wuming','','1251252816','10');
INSERT INTO uchome_poke VALUES ('512','503','jht','','1251254110','16');
INSERT INTO uchome_poke VALUES ('511','504','feiyh','','1251254314','10');
INSERT INTO uchome_poke VALUES ('500','501','fcq','','1251254678','20');
INSERT INTO uchome_poke VALUES ('500','371','zlfd','','1251258455','6');
INSERT INTO uchome_poke VALUES ('506','511','wuming','','1251253178','10');
INSERT INTO uchome_poke VALUES ('433','507','English','','1251253186','7');
INSERT INTO uchome_poke VALUES ('471','517','rabishi123','','1251257239','10');
INSERT INTO uchome_poke VALUES ('433','503','jht','','1251253303','3');
INSERT INTO uchome_poke VALUES ('449','509','taylor','','1251253447','2');
INSERT INTO uchome_poke VALUES ('448','503','jht','','1251253776','3');
INSERT INTO uchome_poke VALUES ('459','503','jht','','1251253801','3');
INSERT INTO uchome_poke VALUES ('514','371','zlfd','','1251259469','24');
INSERT INTO uchome_poke VALUES ('508','371','zlfd','','1251254200','6');
INSERT INTO uchome_poke VALUES ('507','371','zlfd','','1251254220','6');
INSERT INTO uchome_poke VALUES ('516','371','zlfd','','1251258359','24');
INSERT INTO uchome_poke VALUES ('503','371','zlfd','','1251254301','6');
INSERT INTO uchome_poke VALUES ('516','515','RSDYC','','1251254266','24');
INSERT INTO uchome_poke VALUES ('514','515','RSDYC','','1251254604','13');
INSERT INTO uchome_poke VALUES ('513','501','fcq','','1251254380','20');
INSERT INTO uchome_poke VALUES ('503','504','feiyh','','1251254326','14');
INSERT INTO uchome_poke VALUES ('518','371','zlfd','','1251259164','24');
INSERT INTO uchome_poke VALUES ('513','506','wangzhenqiu','','1251254812','11');
INSERT INTO uchome_poke VALUES ('511','512','fyjktjz','','1251255058','5');
INSERT INTO uchome_poke VALUES ('506','515','RSDYC','','1251255158','10');
INSERT INTO uchome_poke VALUES ('135','501','fcq','','1251255301','20');
INSERT INTO uchome_poke VALUES ('515','506','wangzhenqiu','','1251255379','20');
INSERT INTO uchome_poke VALUES ('473','501','fcq','','1251255385','20');
INSERT INTO uchome_poke VALUES ('515','371','zlfd','','1251258370','24');
INSERT INTO uchome_poke VALUES ('521','371','zlfd','','1251262712','6');
INSERT INTO uchome_poke VALUES ('510','371','zlfd','','1251258411','6');
INSERT INTO uchome_poke VALUES ('503','517','rabishi123','','1251260731','10');
INSERT INTO uchome_poke VALUES ('506','491','ffeng','','1251258650','20');
INSERT INTO uchome_poke VALUES ('449','491','ffeng','','1251282323','3');
INSERT INTO uchome_poke VALUES ('135','96','abcdefg','','1251344970','30');
INSERT INTO uchome_poke VALUES ('355','462','JONE','','1251282441','8');
INSERT INTO uchome_poke VALUES ('520','371','zlfd','','1251261285','6');
INSERT INTO uchome_poke VALUES ('512','232','skyzhaojian','','1251262688','7');
INSERT INTO uchome_poke VALUES ('466','371','zlfd','','1251265378','7');
INSERT INTO uchome_poke VALUES ('385','466','Edward','','1251263036','3');
INSERT INTO uchome_poke VALUES ('483','466','Edward','','1251263064','3');
INSERT INTO uchome_poke VALUES ('386','232','skyzhaojian','','1251348977','26');
INSERT INTO uchome_poke VALUES ('498','431','banjianbi','','1251263239','7');
INSERT INTO uchome_poke VALUES ('431','517','rabishi123','','1251273434','10');
INSERT INTO uchome_poke VALUES ('517','232','skyzhaojian','','1251278031','22');
INSERT INTO uchome_poke VALUES ('526','232','skyzhaojian','','1251278020','7');
INSERT INTO uchome_poke VALUES ('301','551','weiki','','1251353516','7');
INSERT INTO uchome_poke VALUES ('521','73','yanluo','','1251268706','2');
INSERT INTO uchome_poke VALUES ('26','588','ons','','1251444830','7');
INSERT INTO uchome_poke VALUES ('158','301','bkcui','','1251352776','6');
INSERT INTO uchome_poke VALUES ('506','411','xuqinghong74','','1251270373','26');
INSERT INTO uchome_poke VALUES ('446','517','rabishi123','','1251273553','28');
INSERT INTO uchome_poke VALUES ('473','517','rabishi123','','1251273580','19');
INSERT INTO uchome_poke VALUES ('520','517','rabishi123','','1251273603','1');
INSERT INTO uchome_poke VALUES ('271','517','rabishi123','','1251273620','7');
INSERT INTO uchome_poke VALUES ('73','355','czy','','1251277443','6');
INSERT INTO uchome_poke VALUES ('527','517','rabishi123','','1251273856','2');
INSERT INTO uchome_poke VALUES ('292','96','abcdefg','','1251334453','30');
INSERT INTO uchome_poke VALUES ('490','517','rabishi123','','1251273983','10');
INSERT INTO uchome_poke VALUES ('461','517','rabishi123','','1251274280','7');
INSERT INTO uchome_poke VALUES ('460','517','rabishi123','','1251274415','6');
INSERT INTO uchome_poke VALUES ('531','529','xxx','','1251274653','24');
INSERT INTO uchome_poke VALUES ('449','527','fesunn','','1251275306','13');
INSERT INTO uchome_poke VALUES ('531','527','fesunn','','1251275345','6');
INSERT INTO uchome_poke VALUES ('581','355','czy','','1251437064','6');
INSERT INTO uchome_poke VALUES ('498','243','zhengwenxiang','','1251276076','7');
INSERT INTO uchome_poke VALUES ('368','530','tuiyue','','1251276351','24');
INSERT INTO uchome_poke VALUES ('526','504','feiyh','','1251277159','10');
INSERT INTO uchome_poke VALUES ('511','355','czy','','1251277494','7');
INSERT INTO uchome_poke VALUES ('525','355','czy','','1251277551','7');
INSERT INTO uchome_poke VALUES ('518','355','czy','','1251442159','7');
INSERT INTO uchome_poke VALUES ('431','355','czy','','1251277606','7');
INSERT INTO uchome_poke VALUES ('512','355','czy','','1251277699','7');
INSERT INTO uchome_poke VALUES ('535','536','cwei','','1251282672','3');
INSERT INTO uchome_poke VALUES ('587','243','zhengwenxiang','','1251447990','24');
INSERT INTO uchome_poke VALUES ('368','355','czy','','1251279883','7');
INSERT INTO uchome_poke VALUES ('531','355','czy','','1251279941','7');
INSERT INTO uchome_poke VALUES ('524','355','czy','','1251279962','7');
INSERT INTO uchome_poke VALUES ('526','355','czy','','1251280009','6');
INSERT INTO uchome_poke VALUES ('504','355','czy','','1251280033','7');
INSERT INTO uchome_poke VALUES ('520','533','wangtao','','1251280103','1');
INSERT INTO uchome_poke VALUES ('541','491','ffeng','','1251348312','2');
INSERT INTO uchome_poke VALUES ('531','534','ABC','','1251281184','30');
INSERT INTO uchome_poke VALUES ('583','355','czy','','1251437018','6');
INSERT INTO uchome_poke VALUES ('355','1','admin','','1251358793','22');
INSERT INTO uchome_poke VALUES ('73','535','tianya','','1251281755','7');
INSERT INTO uchome_poke VALUES ('504','462','JONE','','1251282420','30');
INSERT INTO uchome_poke VALUES ('517','430','sanshao','','1251292976','2');
INSERT INTO uchome_poke VALUES ('9','537','demonpig','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316237582','0');
INSERT INTO uchome_poke VALUES ('534','187','jack','','1251285061','6');
INSERT INTO uchome_poke VALUES ('435','434','rrppnn','','1251299438','3');
INSERT INTO uchome_poke VALUES ('576','537','demonpig','','1251389541','0');
INSERT INTO uchome_poke VALUES ('543','434','rrppnn','','1251328709','2');
INSERT INTO uchome_poke VALUES ('582','355','czy','','1251437044','6');
INSERT INTO uchome_poke VALUES ('539','543','jkgtuj','','1251324120','2');
INSERT INTO uchome_poke VALUES ('517','411','xuqinghong74','','1251331947','6');
INSERT INTO uchome_poke VALUES ('544','546','jame','','1251326215','21');
INSERT INTO uchome_poke VALUES ('541','434','rrppnn','','1251328703','7');
INSERT INTO uchome_poke VALUES ('539','547','xinxing-jason','','1251338880','10');
INSERT INTO uchome_poke VALUES ('135','547','xinxing-jason','','1251339070','12');
INSERT INTO uchome_poke VALUES ('513','547','xinxing-jason','','1251339083','10');
INSERT INTO uchome_poke VALUES ('537','547','xinxing-jason','','1251339126','1');
INSERT INTO uchome_poke VALUES ('504','547','xinxing-jason','','1251339143','6');
INSERT INTO uchome_poke VALUES ('526','547','xinxing-jason','','1251339160','10');
INSERT INTO uchome_poke VALUES ('64','547','xinxing-jason','','1251339193','3');
INSERT INTO uchome_poke VALUES ('87','547','xinxing-jason','','1251339205','12');
INSERT INTO uchome_poke VALUES ('381','547','xinxing-jason','','1251339218','10');
INSERT INTO uchome_poke VALUES ('397','547','xinxing-jason','','1251339232','13');
INSERT INTO uchome_poke VALUES ('372','547','xinxing-jason','','1251339243','15');
INSERT INTO uchome_poke VALUES ('386','243','zhengwenxiang','','1251348969','22');
INSERT INTO uchome_poke VALUES ('433','547','xinxing-jason','','1251339287','6');
INSERT INTO uchome_poke VALUES ('449','547','xinxing-jason','','1251339301','29');
INSERT INTO uchome_poke VALUES ('512','547','xinxing-jason','','1251339312','13');
INSERT INTO uchome_poke VALUES ('503','547','xinxing-jason','','1251339324','15');
INSERT INTO uchome_poke VALUES ('518','547','xinxing-jason','','1251339351','10');
INSERT INTO uchome_poke VALUES ('386','547','xinxing-jason','','1251339384','5');
INSERT INTO uchome_poke VALUES ('472','547','xinxing-jason','','1251339399','29');
INSERT INTO uchome_poke VALUES ('64','243','zhengwenxiang','','1251348983','16');
INSERT INTO uchome_poke VALUES ('96','187','jack','','1251387441','6');
INSERT INTO uchome_poke VALUES ('386','458','bluesea','','1251344435','6');
INSERT INTO uchome_poke VALUES ('547','187','jack','','1251387434','6');
INSERT INTO uchome_poke VALUES ('548','232','skyzhaojian','','1251349052','7');
INSERT INTO uchome_poke VALUES ('547','243','zhengwenxiang','','1251348962','13');
INSERT INTO uchome_poke VALUES ('511','243','zhengwenxiang','','1251349097','24');
INSERT INTO uchome_poke VALUES ('517','243','zhengwenxiang','','1251349128','24');
INSERT INTO uchome_poke VALUES ('549','243','zhengwenxiang','','1251349149','7');
INSERT INTO uchome_poke VALUES ('326','243','zhengwenxiang','','1251349186','24');
INSERT INTO uchome_poke VALUES ('566','491','ffeng','','1251371261','9');
INSERT INTO uchome_poke VALUES ('301','96','abcdefg','','1251354868','6');
INSERT INTO uchome_poke VALUES ('549','355','czy','','1251444824','6');
INSERT INTO uchome_poke VALUES ('569','537','demonpig','','1251385054','0');
INSERT INTO uchome_poke VALUES ('7','553','liguojievip','','1251358054','2');
INSERT INTO uchome_poke VALUES ('125','555','bingbing','','1251361187','10');
INSERT INTO uchome_poke VALUES ('556','537','demonpig','','1251364631','0');
INSERT INTO uchome_poke VALUES ('274','555','bingbing','','1251361195','7');
INSERT INTO uchome_poke VALUES ('556','274','GEXUAN','','1251364631','0');
INSERT INTO uchome_poke VALUES ('556','9','happy','','1251364631','0');
INSERT INTO uchome_poke VALUES ('557','537','demonpig','','1251365649','0');
INSERT INTO uchome_poke VALUES ('551','232','skyzhaojian','','1251380433','24');
INSERT INTO uchome_poke VALUES ('17','555','bingbing','','1251359705','6');
INSERT INTO uchome_poke VALUES ('517','255','abcd','','1251360565','6');
INSERT INTO uchome_poke VALUES ('477','255','abcd','','1251360603','6');
INSERT INTO uchome_poke VALUES ('430','491','ffeng','','1251423623','2');
INSERT INTO uchome_poke VALUES ('556','15','lingling','','1251364631','0');
INSERT INTO uchome_poke VALUES ('556','125','mylove','','1251364631','0');
INSERT INTO uchome_poke VALUES ('556','17','yaya','','1251364631','0');
INSERT INTO uchome_poke VALUES ('553','1','admin','','1251370325','9');
INSERT INTO uchome_poke VALUES ('557','274','GEXUAN','','1251365649','0');
INSERT INTO uchome_poke VALUES ('557','9','happy','','1251365649','0');
INSERT INTO uchome_poke VALUES ('557','15','lingling','','1251365649','0');
INSERT INTO uchome_poke VALUES ('557','125','mylove','','1251365649','0');
INSERT INTO uchome_poke VALUES ('557','17','yaya','','1251365649','0');
INSERT INTO uchome_poke VALUES ('561','537','demonpig','','1251367197','0');
INSERT INTO uchome_poke VALUES ('537','558','xiaomomocom','','1251367118','3');
INSERT INTO uchome_poke VALUES ('274','558','xiaomomocom','','1251367112','3');
INSERT INTO uchome_poke VALUES ('125','558','xiaomomocom','','1251370697','13');
INSERT INTO uchome_poke VALUES ('9','558','xiaomomocom','','1251369646','3');
INSERT INTO uchome_poke VALUES ('15','558','xiaomomocom','','1251367096','0');
INSERT INTO uchome_poke VALUES ('559','537','demonpig','','1251366186','0');
INSERT INTO uchome_poke VALUES ('559','274','GEXUAN','','1251366186','0');
INSERT INTO uchome_poke VALUES ('559','9','happy','','1251366186','0');
INSERT INTO uchome_poke VALUES ('559','15','lingling','','1251366186','0');
INSERT INTO uchome_poke VALUES ('559','125','mylove','','1251366186','0');
INSERT INTO uchome_poke VALUES ('559','17','yaya','','1251366186','0');
INSERT INTO uchome_poke VALUES ('560','537','demonpig','','1251367015','0');
INSERT INTO uchome_poke VALUES ('560','274','GEXUAN','','1251367015','0');
INSERT INTO uchome_poke VALUES ('560','9','happy','','1251367015','0');
INSERT INTO uchome_poke VALUES ('560','15','lingling','','1251367015','0');
INSERT INTO uchome_poke VALUES ('560','125','mylove','','1251367015','0');
INSERT INTO uchome_poke VALUES ('560','17','yaya','','1251367015','0');
INSERT INTO uchome_poke VALUES ('363','560','kinggg','','1251367057','0');
INSERT INTO uchome_poke VALUES ('17','558','xiaomomocom','','1251367090','0');
INSERT INTO uchome_poke VALUES ('561','274','GEXUAN','','1251367197','0');
INSERT INTO uchome_poke VALUES ('561','9','happy','','1251367197','0');
INSERT INTO uchome_poke VALUES ('561','15','lingling','','1251367197','0');
INSERT INTO uchome_poke VALUES ('561','125','mylove','','1251367197','0');
INSERT INTO uchome_poke VALUES ('561','17','yaya','','1251367197','0');
INSERT INTO uchome_poke VALUES ('570','537','demonpig','','1251388365','0');
INSERT INTO uchome_poke VALUES ('562','537','demonpig','','1251367319','0');
INSERT INTO uchome_poke VALUES ('9','562','tristan','','1251367950','24');
INSERT INTO uchome_poke VALUES ('562','9','happy','','1251367319','0');
INSERT INTO uchome_poke VALUES ('562','15','lingling','','1251367319','0');
INSERT INTO uchome_poke VALUES ('562','125','mylove','','1251367319','0');
INSERT INTO uchome_poke VALUES ('562','17','yaya','','1251367319','0');
INSERT INTO uchome_poke VALUES ('559','562','tristan','','1251367546','3');
INSERT INTO uchome_poke VALUES ('563','537','demonpig','','1251367562','0');
INSERT INTO uchome_poke VALUES ('563','274','GEXUAN','','1251367562','0');
INSERT INTO uchome_poke VALUES ('563','9','happy','','1251367562','0');
INSERT INTO uchome_poke VALUES ('563','15','lingling','','1251367562','0');
INSERT INTO uchome_poke VALUES ('563','125','mylove','','1251367562','0');
INSERT INTO uchome_poke VALUES ('563','17','yaya','','1251367562','0');
INSERT INTO uchome_poke VALUES ('560','562','tristan','','1251367648','3');
INSERT INTO uchome_poke VALUES ('560','558','xiaomomocom','','1251367756','2');
INSERT INTO uchome_poke VALUES ('274','562','tristan','','1251367922','3');
INSERT INTO uchome_poke VALUES ('482','491','ffeng','','1251367999','2');
INSERT INTO uchome_poke VALUES ('540','558','xiaomomocom','','1251368842','3');
INSERT INTO uchome_poke VALUES ('537','564','fhdsf','','1251368469','10');
INSERT INTO uchome_poke VALUES ('274','564','fhdsf','','1251368465','5');
INSERT INTO uchome_poke VALUES ('9','564','fhdsf','','1251368459','30');
INSERT INTO uchome_poke VALUES ('15','564','fhdsf','','1251368453','26');
INSERT INTO uchome_poke VALUES ('125','564','fhdsf','','1251368448','9');
INSERT INTO uchome_poke VALUES ('561','558','xiaomomocom','','1251368217','3');
INSERT INTO uchome_poke VALUES ('17','564','fhdsf','','1251368444','24');
INSERT INTO uchome_poke VALUES ('563','558','xiaomomocom','','1251370314','3');
INSERT INTO uchome_poke VALUES ('562','558','xiaomomocom','','1251368400','3');
INSERT INTO uchome_poke VALUES ('255','558','xiaomomocom','','1251369863','6');
INSERT INTO uchome_poke VALUES ('491','232','skyzhaojian','','1251380438','16');
INSERT INTO uchome_poke VALUES ('562','255','abcd','','1251369771','20');
INSERT INTO uchome_poke VALUES ('125','491','ffeng','','1251369978','7');
INSERT INTO uchome_poke VALUES ('561','187','jack','','1251387445','6');
INSERT INTO uchome_poke VALUES ('554','491','ffeng','','1251369042','2');
INSERT INTO uchome_poke VALUES ('551','558','xiaomomocom','','1251369833','8');
INSERT INTO uchome_poke VALUES ('564','558','xiaomomocom','','1251369814','21');
INSERT INTO uchome_poke VALUES ('565','537','demonpig','','1251369822','0');
INSERT INTO uchome_poke VALUES ('565','274','GEXUAN','','1251369822','0');
INSERT INTO uchome_poke VALUES ('565','9','happy','','1251369822','0');
INSERT INTO uchome_poke VALUES ('565','15','lingling','','1251369822','0');
INSERT INTO uchome_poke VALUES ('565','125','mylove','','1251369822','0');
INSERT INTO uchome_poke VALUES ('565','17','yaya','','1251369822','0');
INSERT INTO uchome_poke VALUES ('473','255','abcd','','1251369860','6');
INSERT INTO uchome_poke VALUES ('565','558','xiaomomocom','','1251370115','3');
INSERT INTO uchome_poke VALUES ('232','458','bluesea','','1251389517','6');
INSERT INTO uchome_poke VALUES ('301','491','ffeng','','1251370204','10');
INSERT INTO uchome_poke VALUES ('557','491','ffeng','','1251370225','4');
INSERT INTO uchome_poke VALUES ('567','15','lingling','','1251373384','0');
INSERT INTO uchome_poke VALUES ('546','491','ffeng','','1251370569','7');
INSERT INTO uchome_poke VALUES ('566','558','xiaomomocom','','1251371425','3');
INSERT INTO uchome_poke VALUES ('567','9','happy','','1251373384','0');
INSERT INTO uchome_poke VALUES ('567','274','GEXUAN','','1251373384','0');
INSERT INTO uchome_poke VALUES ('555','558','xiaomomocom','','1251371442','3');
INSERT INTO uchome_poke VALUES ('567','537','demonpig','','1251373384','0');
INSERT INTO uchome_poke VALUES ('491','558','xiaomomocom','','1251371327','24');
INSERT INTO uchome_poke VALUES ('567','125','mylove','','1251373384','0');
INSERT INTO uchome_poke VALUES ('567','17','yaya','','1251373384','0');
INSERT INTO uchome_poke VALUES ('458','371','zlfd','','1251416587','6');
INSERT INTO uchome_poke VALUES ('537','568','hanggui','','1251406388','21');
INSERT INTO uchome_poke VALUES ('274','568','hanggui','','1251406383','21');
INSERT INTO uchome_poke VALUES ('9','568','hanggui','','1251415182','21');
INSERT INTO uchome_poke VALUES ('15','568','hanggui','','1251406368','21');
INSERT INTO uchome_poke VALUES ('125','568','hanggui','','1251406360','21');
INSERT INTO uchome_poke VALUES ('564','568','hanggui','','1251374532','2');
INSERT INTO uchome_poke VALUES ('530','529','xxx','','1251375373','10');
INSERT INTO uchome_poke VALUES ('569','274','GEXUAN','','1251385054','0');
INSERT INTO uchome_poke VALUES ('569','9','happy','','1251385054','0');
INSERT INTO uchome_poke VALUES ('569','15','lingling','','1251385054','0');
INSERT INTO uchome_poke VALUES ('569','125','mylove','','1251385054','0');
INSERT INTO uchome_poke VALUES ('569','17','yaya','','1251385054','0');
INSERT INTO uchome_poke VALUES ('570','15','lingling','','1251388365','0');
INSERT INTO uchome_poke VALUES ('570','125','mylove','','1251388365','0');
INSERT INTO uchome_poke VALUES ('570','17','yaya','','1251388365','0');
INSERT INTO uchome_poke VALUES ('566','430','sanshao','','1251388682','0');
INSERT INTO uchome_poke VALUES ('574','537','demonpig','','1251389475','0');
INSERT INTO uchome_poke VALUES ('537','571','mcb','','1251389072','5');
INSERT INTO uchome_poke VALUES ('274','571','mcb','','1251389068','5');
INSERT INTO uchome_poke VALUES ('9','571','mcb','','1251389064','5');
INSERT INTO uchome_poke VALUES ('15','571','mcb','','1251389060','5');
INSERT INTO uchome_poke VALUES ('572','537','demonpig','','1251389047','0');
INSERT INTO uchome_poke VALUES ('17','571','mcb','','1251389023','5');
INSERT INTO uchome_poke VALUES ('572','274','GEXUAN','','1251389047','0');
INSERT INTO uchome_poke VALUES ('572','9','happy','','1251389047','0');
INSERT INTO uchome_poke VALUES ('572','15','lingling','','1251389047','0');
INSERT INTO uchome_poke VALUES ('572','125','mylove','','1251389047','0');
INSERT INTO uchome_poke VALUES ('572','17','yaya','','1251389047','0');
INSERT INTO uchome_poke VALUES ('125','571','mcb','','1251389055','5');
INSERT INTO uchome_poke VALUES ('574','274','GEXUAN','','1251389475','0');
INSERT INTO uchome_poke VALUES ('274','573','laiziouran','','1251389437','29');
INSERT INTO uchome_poke VALUES ('9','573','laiziouran','','1251389424','21');
INSERT INTO uchome_poke VALUES ('537','573','laiziouran','','1251389461','3');
INSERT INTO uchome_poke VALUES ('125','573','laiziouran','','1251389444','23');
INSERT INTO uchome_poke VALUES ('581','537','demonpig','','1251431863','0');
INSERT INTO uchome_poke VALUES ('17','573','laiziouran','','1251389417','24');
INSERT INTO uchome_poke VALUES ('15','573','laiziouran','','1251389409','24');
INSERT INTO uchome_poke VALUES ('574','9','happy','','1251389475','0');
INSERT INTO uchome_poke VALUES ('574','15','lingling','','1251389475','0');
INSERT INTO uchome_poke VALUES ('574','125','mylove','','1251389475','0');
INSERT INTO uchome_poke VALUES ('574','17','yaya','','1251389475','0');
INSERT INTO uchome_poke VALUES ('575','537','demonpig','','1251389476','0');
INSERT INTO uchome_poke VALUES ('575','274','GEXUAN','','1251389476','0');
INSERT INTO uchome_poke VALUES ('575','9','happy','','1251389476','0');
INSERT INTO uchome_poke VALUES ('575','15','lingling','','1251389476','0');
INSERT INTO uchome_poke VALUES ('575','125','mylove','','1251389476','0');
INSERT INTO uchome_poke VALUES ('575','17','yaya','','1251389476','0');
INSERT INTO uchome_poke VALUES ('491','458','bluesea','','1251389512','6');
INSERT INTO uchome_poke VALUES ('576','274','GEXUAN','','1251389541','0');
INSERT INTO uchome_poke VALUES ('576','9','happy','','1251389541','0');
INSERT INTO uchome_poke VALUES ('576','15','lingling','','1251389541','0');
INSERT INTO uchome_poke VALUES ('576','125','mylove','','1251389541','0');
INSERT INTO uchome_poke VALUES ('576','17','yaya','','1251389541','0');
INSERT INTO uchome_poke VALUES ('576','577','tjh','','1251389868','7');
INSERT INTO uchome_poke VALUES ('537','577','tjh','','1251389764','21');
INSERT INTO uchome_poke VALUES ('274','577','tjh','','1251389757','22');
INSERT INTO uchome_poke VALUES ('9','577','tjh','','1251389749','30');
INSERT INTO uchome_poke VALUES ('15','577','tjh','','1251389745','29');
INSERT INTO uchome_poke VALUES ('458','576','zhenxinzhenyi','','1251389732','10');
INSERT INTO uchome_poke VALUES ('578','537','demonpig','','1251389698','0');
INSERT INTO uchome_poke VALUES ('578','274','GEXUAN','','1251389698','0');
INSERT INTO uchome_poke VALUES ('578','9','happy','','1251389698','0');
INSERT INTO uchome_poke VALUES ('578','15','lingling','','1251389698','0');
INSERT INTO uchome_poke VALUES ('578','125','mylove','','1251389698','0');
INSERT INTO uchome_poke VALUES ('578','17','yaya','','1251389698','0');
INSERT INTO uchome_poke VALUES ('17','577','tjh','','1251389732','20');
INSERT INTO uchome_poke VALUES ('125','577','tjh','','1251389740','5');
INSERT INTO uchome_poke VALUES ('549','434','rrppnn','','1251389912','0');
INSERT INTO uchome_poke VALUES ('576','573','laiziouran','','1251390422','21');
INSERT INTO uchome_poke VALUES ('557','579','biqi','','1251391412','5');
INSERT INTO uchome_poke VALUES ('537','579','biqi','','1251391258','24');
INSERT INTO uchome_poke VALUES ('274','579','biqi','','1251391254','10');
INSERT INTO uchome_poke VALUES ('125','579','biqi','','1251391246','10');
INSERT INTO uchome_poke VALUES ('9','579','biqi','','1251391250','10');
INSERT INTO uchome_poke VALUES ('15','579','biqi','','1251391238','20');
INSERT INTO uchome_poke VALUES ('17','568','hanggui','','1251406346','21');
INSERT INTO uchome_poke VALUES ('17','579','biqi','','1251391230','5');
INSERT INTO uchome_poke VALUES ('577','576','zhenxinzhenyi','','1251391470','13');
INSERT INTO uchome_poke VALUES ('576','1','admin','','1251391476','6');
INSERT INTO uchome_poke VALUES ('570','371','zlfd','','1251416730','24');
INSERT INTO uchome_poke VALUES ('579','371','zlfd','','1251416743','24');
INSERT INTO uchome_poke VALUES ('569','371','zlfd','','1251416784','24');
INSERT INTO uchome_poke VALUES ('551','411','xuqinghong74','','1251418063','7');
INSERT INTO uchome_poke VALUES ('580','537','demonpig','','1251420831','0');
INSERT INTO uchome_poke VALUES ('580','274','GEXUAN','','1251420831','0');
INSERT INTO uchome_poke VALUES ('580','9','happy','','1251420831','0');
INSERT INTO uchome_poke VALUES ('580','15','lingling','','1251420831','0');
INSERT INTO uchome_poke VALUES ('580','125','mylove','','1251420831','0');
INSERT INTO uchome_poke VALUES ('580','17','yaya','','1251420831','0');
INSERT INTO uchome_poke VALUES ('547','580','haiti','','1251422161','7');
INSERT INTO uchome_poke VALUES ('551','580','haiti','','1251422198','7');
INSERT INTO uchome_poke VALUES ('1','580','haiti','','1251422214','30');
INSERT INTO uchome_poke VALUES ('38','580','haiti','','1251422255','30');
INSERT INTO uchome_poke VALUES ('462','371','zlfd','','1251438680','30');
INSERT INTO uchome_poke VALUES ('458','491','ffeng','','1251423617','2');
INSERT INTO uchome_poke VALUES ('581','274','GEXUAN','','1251431863','0');
INSERT INTO uchome_poke VALUES ('581','9','happy','','1251431863','0');
INSERT INTO uchome_poke VALUES ('581','15','lingling','','1251431863','0');
INSERT INTO uchome_poke VALUES ('581','125','mylove','','1251431863','0');
INSERT INTO uchome_poke VALUES ('581','17','yaya','','1251431863','0');
INSERT INTO uchome_poke VALUES ('101','581','banfuqing','','1251432040','13');
INSERT INTO uchome_poke VALUES ('585','371','zlfd','','1251438723','24');
INSERT INTO uchome_poke VALUES ('1','581','banfuqing','','1251432385','30');
INSERT INTO uchome_poke VALUES ('562','581','banfuqing','','1251432516','6');
INSERT INTO uchome_poke VALUES ('411','581','banfuqing','','1251432719','30');
INSERT INTO uchome_poke VALUES ('588','537','demonpig','','1251444742','0');
INSERT INTO uchome_poke VALUES ('537','582','ooo','','1251435823','10');
INSERT INTO uchome_poke VALUES ('274','582','ooo','','1251435816','10');
INSERT INTO uchome_poke VALUES ('9','582','ooo','','1251435811','10');
INSERT INTO uchome_poke VALUES ('15','582','ooo','','1251435804','10');
INSERT INTO uchome_poke VALUES ('125','582','ooo','','1251435784','10');
INSERT INTO uchome_poke VALUES ('581','371','zlfd','','1251438692','24');
INSERT INTO uchome_poke VALUES ('558','355','czy','','1251434964','6');
INSERT INTO uchome_poke VALUES ('562','355','czy','','1251434971','6');
INSERT INTO uchome_poke VALUES ('1','355','czy','','1251435105','6');
INSERT INTO uchome_poke VALUES ('232','355','czy','','1251435119','6');
INSERT INTO uchome_poke VALUES ('583','537','demonpig','','1251435579','0');
INSERT INTO uchome_poke VALUES ('583','274','GEXUAN','','1251435579','0');
INSERT INTO uchome_poke VALUES ('583','9','happy','','1251435579','0');
INSERT INTO uchome_poke VALUES ('583','15','lingling','','1251435579','0');
INSERT INTO uchome_poke VALUES ('583','125','mylove','','1251435579','0');
INSERT INTO uchome_poke VALUES ('583','17','yaya','','1251435579','0');
INSERT INTO uchome_poke VALUES ('17','582','ooo','','1251435772','10');
INSERT INTO uchome_poke VALUES ('588','274','GEXUAN','','1251444742','0');
INSERT INTO uchome_poke VALUES ('588','9','happy','','1251444742','0');
INSERT INTO uchome_poke VALUES ('587','584','nino','','1251443068','20');
INSERT INTO uchome_poke VALUES ('15','584','nino','','1251442701','29');
INSERT INTO uchome_poke VALUES ('125','584','nino','','1251442695','29');
INSERT INTO uchome_poke VALUES ('26','584','nino','','1251436193','29');
INSERT INTO uchome_poke VALUES ('582','584','nino','','1251436322','20');
INSERT INTO uchome_poke VALUES ('537','584','nino','','1251443114','11');
INSERT INTO uchome_poke VALUES ('274','584','nino','','1251443109','11');
INSERT INTO uchome_poke VALUES ('9','584','nino','','1251443100','11');
INSERT INTO uchome_poke VALUES ('232','462','JONE','','1251437016','24');
INSERT INTO uchome_poke VALUES ('386','462','JONE','','1251437031','8');
INSERT INTO uchome_poke VALUES ('458','462','JONE','','1251437045','22');
INSERT INTO uchome_poke VALUES ('577','355','czy','','1251437155','6');
INSERT INTO uchome_poke VALUES ('576','355','czy','','1251437175','6');
INSERT INTO uchome_poke VALUES ('575','355','czy','','1251437193','6');
INSERT INTO uchome_poke VALUES ('573','355','czy','','1251437271','6');
INSERT INTO uchome_poke VALUES ('569','355','czy','','1251437349','6');
INSERT INTO uchome_poke VALUES ('96','355','czy','','1251437482','6');
INSERT INTO uchome_poke VALUES ('579','355','czy','','1251437508','6');
INSERT INTO uchome_poke VALUES ('570','355','czy','','1251442062','6');
INSERT INTO uchome_poke VALUES ('585','537','demonpig','','1251438064','0');
INSERT INTO uchome_poke VALUES ('585','274','GEXUAN','','1251438064','0');
INSERT INTO uchome_poke VALUES ('585','9','happy','','1251438064','0');
INSERT INTO uchome_poke VALUES ('585','15','lingling','','1251438064','0');
INSERT INTO uchome_poke VALUES ('585','125','mylove','','1251438064','0');
INSERT INTO uchome_poke VALUES ('585','17','yaya','','1251438064','0');
INSERT INTO uchome_poke VALUES ('96','568','hanggui','','1251438425','21');
INSERT INTO uchome_poke VALUES ('586','537','demonpig','','1251439038','0');
INSERT INTO uchome_poke VALUES ('586','274','GEXUAN','','1251439038','0');
INSERT INTO uchome_poke VALUES ('586','9','happy','','1251439038','0');
INSERT INTO uchome_poke VALUES ('586','15','lingling','','1251439038','0');
INSERT INTO uchome_poke VALUES ('586','125','mylove','','1251439038','0');
INSERT INTO uchome_poke VALUES ('586','17','yaya','','1251439038','0');
INSERT INTO uchome_poke VALUES ('17','584','nino','','1251442686','11');
INSERT INTO uchome_poke VALUES ('587','537','demonpig','','1251441079','0');
INSERT INTO uchome_poke VALUES ('587','274','GEXUAN','','1251441079','0');
INSERT INTO uchome_poke VALUES ('587','9','happy','','1251441079','0');
INSERT INTO uchome_poke VALUES ('587','15','lingling','','1251441079','0');
INSERT INTO uchome_poke VALUES ('587','125','mylove','','1251441079','0');
INSERT INTO uchome_poke VALUES ('587','17','yaya','','1251441079','0');
INSERT INTO uchome_poke VALUES ('555','355','czy','','1251441989','6');
INSERT INTO uchome_poke VALUES ('546','355','czy','','1251442028','6');
INSERT INTO uchome_poke VALUES ('434','355','czy','','1251442044','6');
INSERT INTO uchome_poke VALUES ('592','537','demonpig','','1251447393','0');
INSERT INTO uchome_poke VALUES ('499','355','czy','','1251442130','6');
INSERT INTO uchome_poke VALUES ('503','355','czy','','1251442146','7');
INSERT INTO uchome_poke VALUES ('355','584','nino','','1251442678','11');
INSERT INTO uchome_poke VALUES ('588','15','lingling','','1251444742','0');
INSERT INTO uchome_poke VALUES ('588','125','mylove','','1251444742','0');
INSERT INTO uchome_poke VALUES ('588','17','yaya','','1251444742','0');
INSERT INTO uchome_poke VALUES ('589','537','demonpig','','1251444821','0');
INSERT INTO uchome_poke VALUES ('589','274','GEXUAN','','1251444821','0');
INSERT INTO uchome_poke VALUES ('589','9','happy','','1251444821','0');
INSERT INTO uchome_poke VALUES ('589','15','lingling','','1251444821','0');
INSERT INTO uchome_poke VALUES ('589','125','mylove','','1251444821','0');
INSERT INTO uchome_poke VALUES ('589','17','yaya','','1251444821','0');
INSERT INTO uchome_poke VALUES ('590','537','demonpig','','1251445104','0');
INSERT INTO uchome_poke VALUES ('590','274','GEXUAN','','1251445104','0');
INSERT INTO uchome_poke VALUES ('590','9','happy','','1251445104','0');
INSERT INTO uchome_poke VALUES ('590','15','lingling','','1251445104','0');
INSERT INTO uchome_poke VALUES ('592','274','GEXUAN','','1251447393','0');
INSERT INTO uchome_poke VALUES ('125','590','oms','','1251445156','9');
INSERT INTO uchome_poke VALUES ('591','537','demonpig','','1251445137','0');
INSERT INTO uchome_poke VALUES ('591','274','GEXUAN','','1251445137','0');
INSERT INTO uchome_poke VALUES ('591','9','happy','','1251445137','0');
INSERT INTO uchome_poke VALUES ('591','15','lingling','','1251445137','0');
INSERT INTO uchome_poke VALUES ('591','125','mylove','','1251445137','0');
INSERT INTO uchome_poke VALUES ('591','17','yaya','','1251445137','0');
INSERT INTO uchome_poke VALUES ('17','590','oms','','1251445147','6');
INSERT INTO uchome_poke VALUES ('592','9','happy','','1251447393','0');
INSERT INTO uchome_poke VALUES ('592','15','lingling','','1251447393','0');
INSERT INTO uchome_poke VALUES ('592','125','mylove','','1251447393','0');
INSERT INTO uchome_poke VALUES ('592','17','yaya','','1251447393','0');
INSERT INTO uchome_poke VALUES ('435','122','delong','','1251447470','24');
INSERT INTO uchome_poke VALUES ('470','122','delong','','1251447485','24');
INSERT INTO uchome_poke VALUES ('1','243','zhengwenxiang','','1251447935','13');
INSERT INTO uchome_poke VALUES ('2','537','demonpig','拥抱一下，美女（帅哥）Q我，我想找情人-【淄博旮旯爱情公寓】','1314929403','0');
INSERT INTO uchome_poke VALUES ('2','274','GEXUAN','拥抱一下，美女（帅哥）Q我，我想找情人-【淄博旮旯爱情公寓】','1314929403','0');
INSERT INTO uchome_poke VALUES ('2','9','happy','拥抱一下，美女（帅哥）Q我，我想找情人-【淄博旮旯爱情公寓】','1314929403','0');
INSERT INTO uchome_poke VALUES ('2','15','lingling','拥抱一下，美女（帅哥）Q我，我想找情人-【淄博旮旯爱情公寓】','1314929403','0');
INSERT INTO uchome_poke VALUES ('2','125','mylove','拥抱一下，美女（帅哥）Q我，我想找情人-【淄博旮旯爱情公寓】','1314929403','0');
INSERT INTO uchome_poke VALUES ('2','17','yaya','拥抱一下，美女（帅哥）Q我，我想找情人-【淄博旮旯爱情公寓】','1314929403','0');
INSERT INTO uchome_poke VALUES ('3','537','demonpig','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314936507','0');
INSERT INTO uchome_poke VALUES ('3','274','GEXUAN','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314936507','0');
INSERT INTO uchome_poke VALUES ('3','9','happy','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314936507','0');
INSERT INTO uchome_poke VALUES ('3','15','lingling','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314936507','0');
INSERT INTO uchome_poke VALUES ('3','125','mylove','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314936507','0');
INSERT INTO uchome_poke VALUES ('3','17','yaya','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314936507','0');
INSERT INTO uchome_poke VALUES ('4','537','demonpig','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314938156','0');
INSERT INTO uchome_poke VALUES ('4','274','GEXUAN','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314938156','0');
INSERT INTO uchome_poke VALUES ('4','9','happy','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314938156','0');
INSERT INTO uchome_poke VALUES ('4','15','lingling','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314938156','0');
INSERT INTO uchome_poke VALUES ('4','125','mylove','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314938156','0');
INSERT INTO uchome_poke VALUES ('4','17','yaya','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314938156','0');
INSERT INTO uchome_poke VALUES ('2','494','wagamama','拥抱一下，美女（帅哥）Q我，我想找情人-【淄博旮旯爱情公寓】','1314929403','0');
INSERT INTO uchome_poke VALUES ('2','244','zhangguozhou','拥抱一下，美女（帅哥）Q我，我想找情人-【淄博旮旯爱情公寓】','1314929403','0');
INSERT INTO uchome_poke VALUES ('4','494','wagamama','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314938156','0');
INSERT INTO uchome_poke VALUES ('4','244','zhangguozhou','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1314938156','0');
INSERT INTO uchome_poke VALUES ('5','537','demonpig','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315016549','0');
INSERT INTO uchome_poke VALUES ('5','274','GEXUAN','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315016549','0');
INSERT INTO uchome_poke VALUES ('5','9','happy','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315016549','0');
INSERT INTO uchome_poke VALUES ('5','15','lingling','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315016549','0');
INSERT INTO uchome_poke VALUES ('5','125','mylove','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315016549','0');
INSERT INTO uchome_poke VALUES ('5','494','wagamama','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315016549','0');
INSERT INTO uchome_poke VALUES ('5','17','yaya','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315016549','0');
INSERT INTO uchome_poke VALUES ('5','244','zhangguozhou','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315016549','0');
INSERT INTO uchome_poke VALUES ('6','537','demonpig','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315017741','0');
INSERT INTO uchome_poke VALUES ('6','274','GEXUAN','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315017741','0');
INSERT INTO uchome_poke VALUES ('6','9','happy','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315017741','0');
INSERT INTO uchome_poke VALUES ('6','15','lingling','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315017741','0');
INSERT INTO uchome_poke VALUES ('6','125','mylove','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315017741','0');
INSERT INTO uchome_poke VALUES ('6','494','wagamama','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315017741','0');
INSERT INTO uchome_poke VALUES ('6','17','yaya','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315017741','0');
INSERT INTO uchome_poke VALUES ('6','244','zhangguozhou','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1315017741','0');
INSERT INTO uchome_poke VALUES ('7','537','demonpig','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316139290','0');
INSERT INTO uchome_poke VALUES ('7','274','GEXUAN','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316139290','0');
INSERT INTO uchome_poke VALUES ('7','9','happy','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316139290','0');
INSERT INTO uchome_poke VALUES ('7','15','lingling','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316139290','0');
INSERT INTO uchome_poke VALUES ('7','125','mylove','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316139290','0');
INSERT INTO uchome_poke VALUES ('7','494','wagamama','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316139290','0');
INSERT INTO uchome_poke VALUES ('7','17','yaya','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316139290','0');
INSERT INTO uchome_poke VALUES ('7','244','zhangguozhou','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316139290','0');
INSERT INTO uchome_poke VALUES ('8','537','demonpig','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316140528','0');
INSERT INTO uchome_poke VALUES ('8','274','GEXUAN','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316140528','0');
INSERT INTO uchome_poke VALUES ('8','9','happy','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316140528','0');
INSERT INTO uchome_poke VALUES ('8','15','lingling','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316140528','0');
INSERT INTO uchome_poke VALUES ('8','125','mylove','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316140528','0');
INSERT INTO uchome_poke VALUES ('8','494','wagamama','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316140528','0');
INSERT INTO uchome_poke VALUES ('8','17','yaya','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316140528','0');
INSERT INTO uchome_poke VALUES ('9','15','lingling','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316237582','0');
INSERT INTO uchome_poke VALUES ('9','125','mylove','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316237582','0');
INSERT INTO uchome_poke VALUES ('9','494','wagamama','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316237582','0');
INSERT INTO uchome_poke VALUES ('9','17','yaya','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316237582','0');
INSERT INTO uchome_poke VALUES ('9','244','zhangguozhou','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316237582','0');
INSERT INTO uchome_poke VALUES ('10','537','demonpig','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316535582','0');
INSERT INTO uchome_poke VALUES ('10','274','GEXUAN','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316535582','0');
INSERT INTO uchome_poke VALUES ('10','15','lingling','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316535582','0');
INSERT INTO uchome_poke VALUES ('10','125','mylove','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316535582','0');
INSERT INTO uchome_poke VALUES ('10','494','wagamama','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316535582','0');
INSERT INTO uchome_poke VALUES ('10','17','yaya','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316535582','0');
INSERT INTO uchome_poke VALUES ('10','244','zhangguozhou','拥抱一下，请Q我，我想找情人-【淄博旮旯爱情公寓】','1316535582','0');

DROP TABLE IF EXISTS uchome_poll;
CREATE TABLE uchome_poll (
  pid mediumint(8) unsigned NOT NULL auto_increment,
  topicid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  `subject` char(80) NOT NULL default '',
  voternum mediumint(8) unsigned NOT NULL default '0',
  replynum mediumint(8) unsigned NOT NULL default '0',
  multiple tinyint(1) NOT NULL default '0',
  maxchoice tinyint(3) NOT NULL default '0',
  sex tinyint(1) NOT NULL default '0',
  noreply tinyint(1) NOT NULL default '0',
  credit mediumint(8) unsigned NOT NULL default '0',
  percredit mediumint(8) unsigned NOT NULL default '0',
  expiration int(10) unsigned NOT NULL default '0',
  lastvote int(10) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  hot mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (pid),
  KEY uid (uid,dateline),
  KEY topicid (topicid,dateline),
  KEY voternum (voternum),
  KEY dateline (dateline),
  KEY lastvote (lastvote),
  KEY hot (hot),
  KEY percredit (percredit)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_pollfield;
CREATE TABLE uchome_pollfield (
  pid mediumint(8) unsigned NOT NULL default '0',
  notify tinyint(1) NOT NULL default '0',
  message text NOT NULL,
  summary text NOT NULL,
  `option` text NOT NULL,
  invite text NOT NULL,
  hotuser text NOT NULL,
  PRIMARY KEY  (pid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_polloption;
CREATE TABLE uchome_polloption (
  oid mediumint(8) unsigned NOT NULL auto_increment,
  pid mediumint(8) unsigned NOT NULL default '0',
  votenum mediumint(8) unsigned NOT NULL default '0',
  `option` varchar(100) NOT NULL default '',
  PRIMARY KEY  (oid),
  KEY pid (pid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_polluser;
CREATE TABLE uchome_polluser (
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  pid mediumint(8) unsigned NOT NULL default '0',
  `option` text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,pid),
  KEY pid (pid,dateline),
  KEY uid (uid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_post;
CREATE TABLE uchome_post (
  pid int(10) unsigned NOT NULL auto_increment,
  tagid mediumint(8) unsigned NOT NULL default '0',
  tid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  ip varchar(20) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  message text NOT NULL,
  pic varchar(255) NOT NULL default '',
  isthread tinyint(1) NOT NULL default '0',
  hotuser text NOT NULL,
  PRIMARY KEY  (pid),
  KEY tid (tid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_profield;
CREATE TABLE uchome_profield (
  fieldid smallint(6) unsigned NOT NULL auto_increment,
  title varchar(80) NOT NULL default '',
  note varchar(255) NOT NULL default '',
  formtype varchar(20) NOT NULL default '0',
  inputnum smallint(3) unsigned NOT NULL default '0',
  choice text NOT NULL,
  mtagminnum smallint(6) unsigned NOT NULL default '0',
  manualmoderator tinyint(1) NOT NULL default '0',
  manualmember tinyint(1) NOT NULL default '0',
  displayorder tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (fieldid)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk AUTO_INCREMENT=4;

INSERT INTO uchome_profield VALUES ('1','自由联盟','','text','100','','0','0','1','0');
INSERT INTO uchome_profield VALUES ('2','地区联盟','','text','100','','0','0','1','0');
INSERT INTO uchome_profield VALUES ('3','兴趣联盟','','text','100','','0','0','1','0');

DROP TABLE IF EXISTS uchome_profilefield;
CREATE TABLE uchome_profilefield (
  fieldid smallint(6) unsigned NOT NULL auto_increment,
  title varchar(80) NOT NULL default '',
  note varchar(255) NOT NULL default '',
  formtype varchar(20) NOT NULL default '0',
  maxsize tinyint(3) unsigned NOT NULL default '0',
  required tinyint(1) NOT NULL default '0',
  invisible tinyint(1) NOT NULL default '0',
  allowsearch tinyint(1) NOT NULL default '0',
  choice text NOT NULL,
  displayorder tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (fieldid)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk AUTO_INCREMENT=13;

INSERT INTO uchome_profilefield VALUES ('1','我愿意为对方提供','','select','50','1','0','0','情感和生活帮助\r\n情感帮助\r\n生活帮助\r\n不提供帮助','5');
INSERT INTO uchome_profilefield VALUES ('2','我希望获得帮助','','select','50','1','0','0','情感和生活帮助\r\n情感帮助\r\n生活帮助\r\n其它帮助','6');
INSERT INTO uchome_profilefield VALUES ('7','第一次见面希望','','select','50','1','0','0','一起看电影，跳舞\r\n如果喜欢，可以拉拉手\r\n如果喜欢，可以拥抱接吻\r\n不排除进一步可能性','11');
INSERT INTO uchome_profilefield VALUES ('8','我的爱好','','select','50','1','0','0','拥抱 浪漫 打情骂俏','9');
INSERT INTO uchome_profilefield VALUES ('3','我的外貌','','select','50','1','0','0','健康 大方 阳光\r\n漂亮 气质 倾国倾城 \r\n健壮 帅气 绅士气质','7');
INSERT INTO uchome_profilefield VALUES ('4','我的个性','','select','50','1','0','0','活泼 可爱 激情 浪漫\r\n成熟 稳重 激情 浪漫','8');
INSERT INTO uchome_profilefield VALUES ('6','我的性爱观念','','select','50','1','0','0','开放 认同一夜情','10');
INSERT INTO uchome_profilefield VALUES ('9','我的交友宣言','','select','50','1','0','0','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','4');
INSERT INTO uchome_profilefield VALUES ('10','年收入','','select','50','1','0','0','1-3万\r\n3-5万\r\n5-10万\r\n10-20万\r\n20-50万\r\n50-100万\r\n100万以上','1');
INSERT INTO uchome_profilefield VALUES ('11','最高学历','','select','50','1','0','0','专科\r\n初中\r\n高中\r\n中专\r\n本科\r\n研究生\r\n博士','2');
INSERT INTO uchome_profilefield VALUES ('12','从事职业','','select','50','1','0','0','普通员工\r\n护士\r\n服务员\r\n模特\r\n自由职业\r\n学生\r\n设计师\r\n技术员\r\n运动员\r\n教师\r\n教授\r\n董事长\r\n总经理\r\n经理\r\n企业家\r\n个体老板\r\n公务员\r\n律师\r\n医生\r\n演员\r\n管理人员\r\n职业经理人\r\n其他','3');

DROP TABLE IF EXISTS uchome_report;
CREATE TABLE uchome_report (
  rid mediumint(8) unsigned NOT NULL auto_increment,
  id mediumint(8) unsigned NOT NULL default '0',
  idtype varchar(15) NOT NULL default '',
  `new` tinyint(1) NOT NULL default '0',
  num smallint(6) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  reason text NOT NULL,
  uids text NOT NULL,
  PRIMARY KEY  (rid),
  KEY id (id,idtype,num,dateline),
  KEY `new` (`new`,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_session;
CREATE TABLE uchome_session (
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  lastactivity int(10) unsigned NOT NULL default '0',
  ip int(10) unsigned NOT NULL default '0',
  magichidden tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (uid),
  KEY ip (ip),
  KEY lastactivity (lastactivity)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

INSERT INTO uchome_session VALUES ('1','admin','f5d35bbe942a097c975ff9c8127ce4d3','1316576160','112240121','0');

DROP TABLE IF EXISTS uchome_share;
CREATE TABLE uchome_share (
  sid mediumint(8) unsigned NOT NULL auto_increment,
  `type` varchar(30) NOT NULL default '',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  hash_data varchar(32) NOT NULL default '',
  title_template text NOT NULL,
  body_template text NOT NULL,
  body_data text NOT NULL,
  body_general text NOT NULL,
  image varchar(255) NOT NULL default '',
  image_link varchar(255) NOT NULL default '',
  topicid mediumint(8) unsigned NOT NULL default '0',
  hot mediumint(8) unsigned NOT NULL default '0',
  hotuser text NOT NULL,
  PRIMARY KEY  (sid),
  KEY uid (uid,dateline),
  KEY dateline (dateline),
  KEY topicid (topicid,dateline),
  KEY hot (hot)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_show;
CREATE TABLE uchome_show (
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  credit int(10) unsigned NOT NULL default '0',
  note varchar(100) NOT NULL default '',
  PRIMARY KEY  (uid),
  KEY credit (credit)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_space;
CREATE TABLE uchome_space (
  uid mediumint(8) unsigned NOT NULL default '0',
  groupid smallint(6) unsigned NOT NULL default '0',
  credit int(10) NOT NULL default '0',
  username char(15) NOT NULL default '',
  `name` char(20) NOT NULL default '',
  namestatus tinyint(1) NOT NULL default '0',
  domain char(15) NOT NULL default '',
  viewnum int(10) unsigned NOT NULL default '0',
  notenum int(10) unsigned NOT NULL default '0',
  friendnum int(10) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  updatetime int(10) unsigned NOT NULL default '0',
  lastsearch int(10) unsigned NOT NULL default '0',
  lastpost int(10) unsigned NOT NULL default '0',
  lastlogin int(10) unsigned NOT NULL default '0',
  lastsend int(10) unsigned NOT NULL default '0',
  attachsize int(10) unsigned NOT NULL default '0',
  addsize int(10) unsigned NOT NULL default '0',
  flag tinyint(1) NOT NULL default '0',
  newpm smallint(6) unsigned NOT NULL default '0',
  avatar tinyint(1) NOT NULL default '0',
  ip int(10) unsigned NOT NULL default '0',
  mood smallint(6) unsigned NOT NULL default '0',
  experience int(10) NOT NULL default '0',
  videostatus tinyint(1) NOT NULL default '0',
  addfriendnum smallint(6) unsigned NOT NULL default '0',
  mtaginvitenum smallint(6) unsigned NOT NULL default '0',
  eventinvitenum smallint(6) unsigned NOT NULL default '0',
  myinvitenum smallint(6) unsigned NOT NULL default '0',
  pokenum smallint(6) unsigned NOT NULL default '0',
  doingnum smallint(6) unsigned NOT NULL default '0',
  blognum smallint(6) unsigned NOT NULL default '0',
  albumnum smallint(6) unsigned NOT NULL default '0',
  threadnum smallint(6) unsigned NOT NULL default '0',
  pollnum smallint(6) unsigned NOT NULL default '0',
  eventnum smallint(6) unsigned NOT NULL default '0',
  sharenum smallint(6) unsigned NOT NULL default '0',
  addfriend smallint(6) unsigned NOT NULL default '0',
  regip char(15) NOT NULL default '',
  PRIMARY KEY  (uid),
  KEY username (username),
  KEY domain (domain),
  KEY ip (ip),
  KEY updatetime (updatetime),
  KEY mood (mood)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_space VALUES ('1','1','632','admin','小博','1','','317','0','92','1249458950','1314943499','1312985682','1314938477','1316576142','0','381824','0','1','0','1','112240121','0','560','0','2','0','0','0','0','0','4','1','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('3','5','1','情缘难了','','1','','2','0','8','1314936507','0','0','0','1316137108','0','0','0','0','0','0','60215247','0','0','0','0','0','0','0','9','0','0','0','0','0','0','0','0','60.215.246.207');
INSERT INTO uchome_space VALUES ('4','5','1','找个美女','','1','','1','0','8','1314938156','0','0','0','1316139227','0','0','0','0','0','0','60215247','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','60.215.246.207');
INSERT INTO uchome_space VALUES ('5','5','1','小叶子','','1','','0','0','8','1315016549','0','0','0','1315016549','0','0','0','0','0','0','60215242','0','0','0','0','0','0','0','10','0','0','0','0','0','0','0','0','60.215.242.27');
INSERT INTO uchome_space VALUES ('6','5','1','校内网','','0','','1','0','8','1315017741','0','0','0','1315017741','0','0','0','0','0','0','60215242','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','60.215.242.27');
INSERT INTO uchome_space VALUES ('7','5','1','小女子','','0','','0','1','9','1316139290','0','0','0','1316139290','0','0','0','0','0','0','60215247','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','60.215.247.246');
INSERT INTO uchome_space VALUES ('8','5','1','5lyx','','0','','1','0','8','1316140528','0','0','0','1316140528','0','0','0','0','0','0','219129072','0','0','0','0','0','0','0','9','0','0','0','0','0','0','0','0','219.129.72.13');
INSERT INTO uchome_space VALUES ('9','5','1','changchneg','','0','','0','0','7','1316237582','1316238034','0','0','1316238708','0','0','0','0','0','1','112240110','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','112.240.110.87');
INSERT INTO uchome_space VALUES ('10','5','1','fenghu','','0','','0','0','7','1316535582','0','0','0','1316535582','0','0','0','0','0','0','116224027','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','116.224.27.220');
INSERT INTO uchome_space VALUES ('11','3','0','jingshui','','0','','10','0','0','1249482705','0','0','0','1249498998','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('12','3','0','xuelian','','0','','5','0','0','1249483269','0','0','0','1249483302','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('13','3','0','feifei','','0','','8','0','0','1249483610','0','0','0','1249483610','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('14','5','0','jjkj','','0','','8','0','0','1249486138','0','0','0','1249486138','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('15','3','0','lingling','','0','','8','0','47','1249487352','0','0','0','1249487352','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('16','5','0','niaoked','','0','','2','0','0','1249488928','0','0','0','1249490948','0','0','0','0','0','0','121037022','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('17','5','0','yaya','','0','','23','0','47','1249489804','0','0','0','1249631937','0','0','0','0','0','0','221237064','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('18','5','0','yanzi','','0','','0','0','0','1249490127','0','0','0','1249490127','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('19','5','0','susu','','0','','7','0','0','1249491017','0','0','0','1249499155','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('20','5','0','traveler','','0','','13','2','2','1249540677','0','0','0','1249540677','0','0','0','0','0','0','118113204','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('21','3','42','wangyang','','0','','60','0','6','1249540925','1249542333','0','0','1249549786','0','0','0','0','0','1','118112220','0','42','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('22','5','0','zhijun','','0','','4','0','0','1249540936','0','0','0','1249540936','0','0','0','0','0','0','124042080','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('23','5','0','xgyinqing','','0','','4','0','0','1249541020','0','0','0','1249541020','0','0','0','0','0','0','222209158','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('24','5','0','ywgg','','0','','21','3','4','1249541067','0','0','0','1249541067','0','0','0','0','0','0','58061031','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('25','5','0','huanglang','','0','','8','0','1','1249541366','0','0','0','1249541366','0','0','0','0','0','0','59109003','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('26','5','0','xiaobaizj','','0','','8','0','1','1249541922','0','0','0','1249541922','0','0','0','0','0','0','222172227','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('27','5','28','tianzi','','0','','190','0','47','1249542858','1250745853','0','0','1250925942','0','0','0','0','0','1','118112219','0','28','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('28','5','0','zzz','','0','','9','0','1','1249543024','0','0','0','1249543024','0','0','0','0','0','0','113106201','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('29','5','20','asdzxc','','0','','47','1','8','1249543102','1249543210','0','0','1249690889','0','0','0','0','0','1','222210127','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('30','5','0','norye','','0','','35','1','2','1249544026','0','0','0','1250772368','0','0','0','0','0','0','110186023','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('31','5','0','andy','','0','','7','0','0','1249544254','0','0','0','1249544254','0','0','0','0','0','0','222214044','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('32','5','0','wjunhua','','0','','19','1','1','1249544338','0','0','0','1249544569','0','0','0','0','0','0','113067000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('33','5','0','tiancaigui','','0','','8','0','0','1249544849','0','0','0','1249544849','0','0','0','0','0','0','61154215','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('34','5','0','liliangliang','','0','','8','3','4','1249545630','0','0','0','1249545630','0','0','0','0','0','0','115170137','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('35','5','0','BNRW','','0','','7','0','2','1249545714','0','0','0','1249545906','0','0','0','0','0','0','222208255','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('36','5','0','Allan','','0','','7','2','4','1249546183','1249546828','0','0','1249546183','0','0','0','0','0','1','125087099','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('37','0','0','diablo','','0','','3','0','1','1249548432','0','0','0','1249548432','0','0','0','0','0','0','123103067','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('38','5','0','andylau','','0','','6','0','1','1249548505','0','0','0','1249548505','0','0','0','0','0','0','124161168','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('39','5','0','ashice','','0','','7','0','2','1249548621','0','0','0','1249548621','0','0','0','0','0','0','119099185','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('40','5','0','gswt','','0','','5','0','1','1249549638','0','0','0','1249549638','0','0','0','0','0','0','125069136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('41','5','0','liangdong','','0','','7','0','0','1249552837','0','0','0','1249552837','0','0','0','0','0','0','221236038','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('42','5','0','wode','','0','','8','0','1','1249553699','0','0','0','1249553699','0','0','0','0','0','0','118112231','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('43','5','0','love','','0','','7','0','0','1249554026','0','0','0','1249556392','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('44','5','0','denglp','','0','','7','2','3','1249554207','0','0','0','1249554207','0','0','0','0','0','0','222211050','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('45','5','0','xiaozhougod','','0','','7','0','0','1249554485','0','0','0','1249554485','0','0','0','0','0','0','113106201','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('46','5','0','ma876401970','','0','','107','2','32','1249555285','1249555509','0','0','1250439154','0','0','0','0','0','1','122240130','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('47','0','0','Larry','','0','','3','0','1','1249555379','0','0','0','1249555379','0','0','0','0','0','0','118119200','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('48','5','20','yesex','','0','','10','0','0','1249556984','1249557120','0','0','1249556984','0','0','0','0','0','1','119007049','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('49','5','0','piao','','0','','17','0','0','1249557339','0','0','0','1249557909','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('50','0','0','wjiusyangyong','','0','','4','0','0','1249558115','0','0','0','1249558115','0','0','0','0','0','0','221237162','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('51','5','0','langbi','','0','','8','0','1','1249563431','0','0','0','1249563431','0','0','0','0','0','0','123006139','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('52','5','0','ming','','0','','6','2','3','1249566004','0','0','0','1249566004','0','0','0','0','0','0','218009244','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('53','5','0','xingshengh','','0','','17','0','3','1249567636','0','0','0','1250776186','0','0','0','0','0','0','125065054','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('54','3','0','zhangyan','','0','','145','0','1','1249570610','0','0','0','1249574792','0','0','0','0','0','0','221237073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('55','3','0','chy','','0','','10','0','1','1249571990','0','0','0','1249571990','0','0','0','0','0','0','61157098','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('56','5','0','mylover','','0','','6','0','0','1249573296','0','0','0','1249573296','0','0','0','0','0','0','61163073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('57','5','20','luoyonyi','','0','','30','3','4','1249574574','1249574622','0','0','1249574574','0','0','0','0','0','1','222210238','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('58','5','0','huaynie','','0','','82','0','17','1249576843','1249814101','0','0','1249814101','0','0','0','0','0','1','222211011','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('59','5','0','yanlangtian','','0','','4','0','0','1249579291','0','0','0','1249582113','0','0','0','0','0','0','219237227','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('60','5','0','hand','','0','','5','0','0','1249579768','0','0','0','1249579768','0','0','0','0','0','0','119005056','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('61','5','0','zht5087655','','0','','7','0','0','1249580454','0','0','0','1249580454','0','0','0','0','0','0','222212125','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('62','5','22','asasu','','0','','26','3','5','1249580567','1249580755','0','0','1249580567','0','0','0','0','0','1','111167147','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('63','5','0','bashustar','','0','','12','1','2','1249581164','0','0','0','1249581164','0','0','0','0','0','0','221234040','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('64','5','4','liusuo','','0','','48','0','16','1249581314','0','0','0','1251304361','0','0','0','0','0','0','118124141','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('65','5','0','jimodeyewan','','0','','7','0','0','1249593107','0','0','0','1249593107','0','0','0','0','0','0','117136022','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('66','5','0','chenqian','','0','','9','3','3','1249600262','0','0','0','1249600262','0','0','0','0','0','0','61157133','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('67','5','0','pianist','','0','','15','3','3','1249605084','1249605123','0','0','1249605084','0','0','0','0','0','1','218081220','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('68','5','0','YANGZENGJUN','','0','','5','1','2','1249605504','0','0','0','1249605504','0','0','0','0','0','0','60213242','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('69','5','0','hujiahujia','','0','','3','0','1','1249608463','1249608648','0','0','1249608463','0','0','0','0','0','1','219139190','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('70','0','0','qq872300214','','0','','13','0','1','1249611117','0','0','0','1249611117','0','0','0','0','0','0','218026179','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('71','5','0','wujie01','','0','','1','0','0','1249612286','0','0','0','1249612286','0','0','0','0','0','0','59111032','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('72','5','0','PPXY','','0','','2','1','2','1249613186','0','0','0','1249613637','0','0','0','0','0','0','59044063','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('73','5','20','yanluo','','0','','46','0','12','1249614277','1249614606','0','0','1251268380','0','0','0','0','0','1','219131048','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('74','5','0','leo','','0','','5','0','1','1249615297','0','0','0','1249615297','0','0','0','0','0','0','219134044','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('75','5','0','linwenyi','','0','','12','0','1','1249617474','0','0','0','1249617474','0','0','0','0','0','0','116113172','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('76','5','0','asd','','0','','2','0','1','1249618426','0','0','0','1249618426','0','0','0','0','0','0','122231210','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('77','5','0','chinaxiami','','0','','2','0','0','1249621489','0','0','0','1249621489','0','0','0','0','0','0','222211196','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('78','5','0','sevatte','','0','','0','0','0','1249622551','0','0','0','1249622551','0','0','0','0','0','0','222214136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('79','5','0','shang','','0','','5','1','1','1249623987','1249624229','0','0','1249623987','0','0','0','0','0','1','58051084','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('80','5','0','aaasdfdsf','','0','','5','0','0','1249624873','0','0','0','1249624873','0','0','0','0','0','0','125071046','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('81','5','0','yhyfrend','','0','','5','0','1','1249624965','0','0','0','1249624965','0','0','0','0','0','0','125071189','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('82','5','0','zxzxzx','','0','','3','1','2','1249625087','0','0','0','1249625087','0','0','0','0','0','0','120007061','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('83','5','0','wyj','','0','','14','0','2','1249625100','0','0','0','1249625100','0','0','0','0','0','0','202115128','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('84','5','0','jianghai','','0','','8','3','4','1249625621','0','0','0','1249625621','0','0','0','0','0','0','222209199','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('85','5','0','tanglao','','0','','16','2','3','1249626265','0','0','0','1249636100','0','0','0','0','0','0','222245191','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('86','5','0','sdzx','','0','','2','0','0','1249626740','0','0','0','1249626740','0','0','0','0','0','0','125095160','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('87','5','0','cec','','0','','55','0','4','1249626816','0','0','0','1250558455','0','0','0','0','0','0','218089189','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('88','5','0','sorry','','0','','3','0','0','1249629448','0','0','0','1249629448','0','0','0','0','0','0','202180132','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('89','5','0','YMI','','0','','6','0','0','1249631800','0','0','0','1249631800','0','0','0','0','0','0','125093206','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('90','5','0','xiaxuebianjie','','0','','4','1','2','1249631806','0','0','0','1249631806','0','0','0','0','0','0','122070033','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('91','5','0','kuangniangao','','0','','18','6','7','1249635287','1249636478','0','0','1249635287','0','0','0','0','0','1','222209156','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('92','5','0','haose','','0','','3','0','0','1249635850','0','0','0','1249635850','0','0','0','0','0','0','60022087','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('93','5','0','czadko','','0','','4','0','0','1249636002','0','0','0','1249636002','0','0','0','0','0','0','120010010','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('94','5','0','FLY','','0','','8','1','1','1249636040','0','0','0','1249636040','0','0','0','0','0','0','125070054','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('95','5','20','ayzhoujian','','0','','1','0','0','1249636065','1249636345','0','0','1249636065','0','0','0','0','0','1','119126003','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('96','5','20','abcdefg','','0','','152','0','39','1249636729','1251253737','0','0','1251422635','0','0','0','0','0','0','119184174','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('97','5','0','wbd','','0','','18','0','5','1249637129','1249811488','0','0','1249811488','0','0','0','0','0','1','115195070','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('98','5','0','sihan','','0','','5','0','1','1249639191','0','0','0','1249639191','0','0','0','0','0','0','120008118','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('99','5','0','wzs','','0','','12','1','2','1249639711','0','0','0','1249639711','0','0','0','0','0','0','222085150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('100','0','0','lixizheng','','0','','2','0','1','1249640007','0','0','0','1249640007','0','0','0','0','0','0','124192123','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('101','5','0','lvxiaoqi','','0','','7','1','2','1249640488','0','0','0','1249640488','0','0','0','0','0','0','60195013','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('102','5','0','alanpolo','','0','','2','0','1','1249644332','0','0','0','1249656030','0','0','0','0','0','0','125069069','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('103','5','20','sylt','','0','','79','0','9','1249648924','1250161459','0','0','1250987557','0','0','0','0','0','1','61188222','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('104','5','0','gugu','','0','','6','1','2','1249650117','0','0','0','1249650117','0','0','0','0','0','0','59033070','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('105','5','2','yyc','','0','','6','0','0','1249653631','0','0','0','1249653631','0','0','0','0','0','0','220166011','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('106','5','0','happyboy5330','','0','','0','0','1','1249655923','0','0','0','1249655923','0','0','0','0','0','0','122158008','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('107','5','0','kang9335','','0','','2','0','0','1249658320','1249658559','0','0','1249658320','0','0','0','0','0','1','121034059','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('108','5','0','simon','','0','','2','0','0','1249662242','0','0','0','1249662242','0','0','0','0','0','0','120032240','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('109','3','0','yycf','','0','','22','0','0','1249673556','1249673711','0','0','1249677646','0','0','0','0','0','1','58049252','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('110','5','0','CCA','','0','','12','6','6','1249677110','0','0','0','1249677110','0','0','0','0','0','0','221225225','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('111','5','0','hellobeijing','','0','','7','0','0','1249681647','1249681834','0','0','1249681647','0','0','0','0','0','1','121012140','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('112','5','0','shenhan','','0','','8','0','1','1249683034','1249683240','0','0','1249683034','0','0','0','0','0','1','61189056','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('113','5','0','hanhan','','0','','10','0','1','1249687096','0','0','0','1249687096','0','0','0','0','0','0','117080125','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('114','5','0','worinima','','0','','4','0','0','1249694429','0','0','0','1249694429','0','0','0','0','0','0','125070227','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('115','5','20','hsz','','0','','14','2','2','1249695031','1249695297','0','0','1249695031','0','0','0','0','0','1','122048222','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('116','5','0','woyjh','','0','','11','6','6','1249700187','0','0','0','1249700187','0','0','0','0','0','0','221234040','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('117','5','0','lxfku','','0','','7','0','1','1249701248','0','0','0','1249701248','0','0','0','0','0','0','118248057','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('118','5','0','sosojust','','0','','2','0','0','1249704791','0','0','0','1249704791','0','0','0','0','0','0','222188240','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('119','5','0','sky','','0','','11','3','3','1249706410','0','0','0','1249706410','0','0','0','0','0','0','222086138','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('120','5','0','younger','','0','','4','0','1','1249706716','0','0','0','1249706716','0','0','0','0','0','0','211142211','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('121','5','0','SHR','','0','','10','0','0','1249709708','1249710263','0','0','1249709708','0','0','0','0','0','1','116029244','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('122','5','0','delong','','0','','83','0','13','1249710772','0','0','0','1251447120','0','0','0','0','0','0','218022173','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('123','5','0','kivenlv','','0','','12','0','0','1249711117','1249711433','0','0','1249711117','0','0','0','0','0','1','118117007','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('124','5','0','cdscjk','','0','','9','0','0','1249715162','0','0','0','1249715162','0','0','0','0','0','0','222213136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('125','5','20','mylove','','0','','85','0','61','1249715495','0','0','0','1251369951','0','0','0','0','0','0','221237079','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('126','5','0','wangleiqq','','0','','8','1','1','1249715524','0','0','0','1249715524','0','0','0','0','0','0','222209210','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('127','5','0','ailove','','0','','6','0','1','1249715880','0','0','0','1250436509','0','0','0','0','0','0','221237064','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('128','5','0','zhanbo','','0','','3','0','0','1249716128','0','0','0','1249716128','0','0','0','0','0','0','118113089','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('129','5','0','hjh','','0','','22','0','6','1249716693','0','0','0','1250687540','0','0','0','0','0','0','222244229','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('130','5','0','ado83','','0','','8','0','1','1249716807','0','0','0','1249716807','0','0','0','0','0','0','125066001','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('131','5','0','ding13052','','0','','3','0','0','1249716818','0','0','0','1249716818','0','0','0','0','0','0','121043158','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('132','5','0','payzy','','0','','8','2','2','1249716871','0','0','0','1249716871','0','0','0','0','0','0','125070229','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('133','5','0','mokemoke','','0','','6','0','0','1249720421','0','0','0','1249797290','0','0','0','0','0','0','218088020','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('134','5','0','bluedryad','','0','','79','0','13','1249721026','1249741153','0','0','1249925344','0','0','0','0','0','1','125065143','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('135','5','0','iamwayney','','0','','157','0','34','1249721413','1249761502','0','0','1251287208','0','0','0','0','0','1','123118196','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('136','0','0','junyue','','0','','3','0','0','1249721722','0','0','0','1249721722','0','0','0','0','0','0','222137189','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('137','5','0','junyuexiaogang','','0','','3','0','0','1249721751','0','0','0','1249721751','0','0','0','0','0','0','222137189','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('138','5','20','cbaabc','','0','','12','1','2','1249721815','1249722927','0','0','1249722730','0','0','0','0','0','1','221214240','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('139','5','0','popo','','0','','2','0','0','1249721957','0','0','0','1249721957','0','0','0','0','0','0','117040028','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('140','5','24','alloc','','0','','5','0','2','1249723298','1249902570','0','0','1250076395','0','0','0','0','0','1','218057200','0','24','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('141','5','0','aaaaaaaaqqqqq','','0','','0','0','0','1249723667','0','0','0','1249723667','0','0','0','0','0','0','116010055','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('142','3','0','bluedryed','','0','','9','0','0','1249725377','0','0','0','1249725377','0','0','0','0','0','0','222214091','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('143','3','0','dddkkkzhao','','0','','11','0','0','1249726302','0','0','0','1249726302','0','0','0','0','0','0','58052072','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('144','5','0','bejiyu','','0','','16','0','0','1249726747','0','0','0','1249783957','0','0','0','0','0','0','222247173','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('145','0','0','mjhjhj','','0','','0','0','0','1249728502','0','0','0','1249728502','0','0','0','0','0','0','60194066','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('146','5','0','sunuma','','0','','8','0','0','1249729028','0','0','0','1249729028','0','0','0','0','0','0','118114167','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('147','5','0','jbxx','','0','','9','2','3','1249734045','1249735133','0','0','1249734045','0','0','0','0','0','1','120011071','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('148','5','0','sunzhigang18','','0','','14','2','4','1249734284','1249734358','0','0','1249734284','0','0','0','0','0','1','122006153','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('149','3','0','sdsdg','','0','','13','0','0','1249737342','0','1249737463','0','1249737342','0','0','0','0','0','0','116254174','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('150','5','0','www','','0','','1','0','0','1249737369','1249737398','0','0','1249737369','0','0','0','0','0','1','218014150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('151','5','0','zrtyzrcx','','0','','9','0','0','1249740920','0','0','0','1250156496','0','0','0','0','0','0','124205070','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('152','5','0','chenke','','0','','8','1','1','1249742620','0','0','0','1249742620','0','0','0','0','0','0','221234040','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('153','0','0','modinglin','','0','','5','0','1','1249742696','0','0','0','1249742696','0','0','0','0','0','0','118112180','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('154','5','20','zhkabc','','0','','10','0','0','1249743234','0','0','0','1249743234','0','0','0','0','0','1','124090246','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('155','5','0','zht_tao','','0','','14','0','1','1249744151','0','0','0','1249744151','0','0','0','0','0','0','117061001','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('156','5','0','xiaoxiu','','0','','7','0','0','1249745389','1249745433','0','0','1249745389','0','0','0','0','0','1','218066211','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('157','5','0','cartervin','','0','','2','0','1','1249745450','0','0','0','1249745470','0','0','0','0','0','0','122243027','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('158','5','78','shendaaaaa','','0','','62','2','14','1249746616','1249747823','0','0','1251214968','0','0','0','0','0','1','222049205','0','78','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('159','5','0','lenovowww','','0','','10','5','5','1249752672','0','0','0','1249753087','0','0','0','0','0','0','222062110','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('160','5','0','shayetian','','0','','5','0','0','1249760465','0','0','0','1249760465','0','0','0','0','0','0','61182204','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('161','5','0','weizhang','','0','','12','4','5','1249766049','0','0','0','1249766049','0','0','0','0','0','0','58055226','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('162','5','0','phoenix','','0','','4','0','0','1249766449','1249767151','0','0','1249766690','0','0','0','0','0','1','124112072','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('163','3','0','fujianxun','','0','','8','0','0','1249773299','0','0','0','1249773299','0','0','0','0','0','0','119128141','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('164','5','0','afu','','0','','9','0','1','1249773506','0','0','0','1249773506','0','0','0','0','0','0','119128141','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('165','5','0','huang','','0','','31','1','3','1249775646','1249927941','0','0','1249927941','0','0','0','0','0','1','219135061','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('166','3','0','youlan','','0','','11','0','1','1249778531','0','0','0','1251347479','0','0','0','0','0','0','113225033','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('167','5','0','ytl','','0','','2','0','0','1249779110','1249779179','0','0','1249779110','0','0','0','0','0','1','59046080','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('168','5','20','yhhmww','','0','','9','1','2','1249782998','1249823654','0','0','1249823654','0','0','0','0','0','1','114219023','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('169','5','0','benchi','','0','','1','0','0','1249785462','1249785781','0','0','1249785462','0','0','0','0','0','1','218028182','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('170','5','0','lang','','0','','5','1','2','1249788770','0','0','0','1249788770','0','0','0','0','0','0','110184138','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('171','5','0','lwb7624','','0','','9','0','1','1249791320','0','0','0','1249791320','0','0','0','0','0','0','58060122','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('172','5','0','xuhuayong','','0','','6','1','1','1249794993','0','0','0','1249959396','0','0','0','0','0','0','125071236','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('173','5','20','huha','','0','','62','1','14','1249797160','1251091543','0','0','1251091543','0','0','0','0','0','1','218008068','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('174','5','0','qxz','','0','','19','1','1','1249799434','0','0','0','1249799434','0','0','0','0','0','0','60168224','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('175','5','0','open','','0','','2','0','1','1249800642','0','0','0','1249800642','0','0','0','0','0','0','220167053','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('176','5','20','MAYJJ','','0','','47','3','17','1249800779','1249950039','0','0','1250208681','0','0','0','0','0','1','222212226','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('177','5','0','iangbo','','0','','13','2','4','1249800795','1249800986','0','0','1249800795','0','0','0','0','0','1','118120012','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('178','0','0','kekin','','0','','6','0','1','1249800920','0','0','0','1249800920','0','0','0','0','0','0','218089187','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('179','5','0','wdb007007','','0','','8','1','1','1249801057','1249802066','0','0','1249801057','0','0','0','0','0','1','202107230','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('180','5','0','allen','','0','','4','0','1','1249801092','0','0','0','1249801092','0','0','0','0','0','0','125066052','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('181','5','0','DGMG','','0','','22','0','1','1249803412','0','0','0','1249803412','0','0','0','0','0','0','118124142','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('182','5','0','sdsd','','0','','3','0','1','1249803897','0','0','0','1249803897','0','0','0','0','0','0','116254174','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('183','5','0','QINQUYUAN','','0','','12','1','1','1249804260','0','0','0','1249804260','0','0','0','0','0','0','222177118','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('184','5','0','amao','','0','','9','0','0','1249805183','1249805290','0','0','1249805183','0','0','0','0','0','1','116196254','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('185','5','0','qiying','','0','','14','4','5','1249807103','0','0','0','1249807404','0','0','0','0','0','0','118113036','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('186','0','0','wuyukun','','0','','5','0','1','1249808693','1249808849','0','0','1249808693','0','0','0','0','0','1','118119081','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('187','5','0','jack','','0','','355','0','34','1249808757','1250140378','0','0','1251426838','0','0','0','0','0','1','125067014','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('188','5','20','tianci','','0','','23','0','9','1249809385','1250540736','0','0','1250540736','0','0','0','0','0','1','218006245','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('189','5','0','tsingchao','','0','','47','0','11','1249811354','0','0','0','1250221831','0','0','0','0','0','0','222209211','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('190','5','0','ZHANGJING','','0','','9','0','0','1249811706','1249811815','0','0','1249811706','0','0','0','0','0','1','221218185','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('191','5','0','nzxsos','','0','','35','0','1','1249815002','0','0','0','1250808678','0','0','0','0','0','0','116052004','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('192','5','0','fulunda','','0','','17','4','4','1249817494','0','0','0','1249817494','0','0','0','0','0','0','61235150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('193','5','0','tiantianxiangri','','0','','10','0','1','1249818351','0','0','0','1249818351','0','0','0','0','0','0','125071156','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('194','3','0','asdfghjkl','','0','','14','0','2','1249825814','0','0','0','1249998256','0','0','0','0','0','0','114217081','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('195','5','0','QQA','','0','','11','0','2','1249826310','0','0','0','1250006876','0','0','0','0','0','0','110184075','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('196','0','0','wodeak','','0','','13','0','0','1249828202','0','0','0','1249828202','0','0','0','0','0','0','119004136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('197','3','0','zyzy','','0','','11','0','1','1249835366','0','0','0','1249835366','0','0','0','0','0','0','118078223','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('198','5','0','kinghui','','0','','5','0','0','1249837497','0','0','0','1249837497','0','0','0','0','0','0','61144149','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('199','5','0','baiheily','','0','','9','0','0','1249839078','0','0','0','1249839985','0','0','0','0','0','0','222240219','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('200','5','0','pcaff','','0','','10','2','3','1249849406','0','0','0','1249849406','0','0','0','0','0','0','125071235','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('201','5','0','ghkoivb','','0','','0','0','0','1249860482','1249860837','0','0','1249860482','0','0','0','0','0','1','123164137','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('202','5','70','mling','','0','','40','12','13','1249862394','0','0','0','1249862394','0','0','0','0','0','0','123114160','0','70','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('203','5','0','sbh7608','','0','','26','2','4','1249863671','0','0','0','1249885516','0','0','0','0','0','0','61048048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('204','0','0','jaycn','','0','','4','0','0','1249865359','0','0','0','1249865359','0','0','0','0','0','0','123011060','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('205','5','0','geondri','','0','','15','1','1','1249866406','0','0','0','1249866406','0','0','0','0','0','0','125069105','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('206','5','20','zhylbj','','0','','38','6','13','1249867050','1249891308','0','0','1249897991','0','0','0','0','0','1','222062114','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('207','5','0','wwwwww','','0','','9','2','2','1249867394','0','0','0','1249867394','0','0','0','0','0','0','125033050','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('208','5','0','lchf','','0','','14','1','1','1249867828','0','0','0','1249867828','0','0','0','0','0','0','222169072','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('209','5','20','yiyaheihei','','0','','22','5','8','1249868647','1249869934','0','0','1249868647','0','0','0','0','0','1','123119239','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('210','5','0','wanghua','','0','','13','1','2','1249870618','1249871394','0','0','1249870618','0','0','0','0','0','1','125034184','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('211','5','0','yhkwy','','0','','39','2','10','1249873241','0','0','0','1249977070','0','0','0','0','0','0','58052121','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('212','5','0','abcdef','','0','','3','1','1','1249873931','0','0','0','1249873931','0','0','0','0','0','0','221217081','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('213','5','0','chengge','','0','','12','0','0','1249876078','0','0','0','1249876078','0','0','0','0','0','0','125070146','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('214','5','20','subborn','','0','','31','0','9','1249877028','1250521344','0','0','1250521344','0','0','0','0','0','1','218075156','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('215','5','0','zingy','','0','','6','0','1','1249877103','0','0','0','1249877103','0','0','0','0','0','0','222069171','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('216','0','0','soledad','','0','','3','0','0','1249877549','0','0','0','1249877549','0','0','0','0','0','0','125069130','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('217','5','0','Xiaosunyang','','0','','15','0','0','1249878541','0','0','0','1249878541','0','0','0','0','0','0','218030117','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('218','5','0','huqiaoa','','0','','9','1','1','1249879366','1249880126','0','0','1249879366','0','0','0','0','0','1','125086125','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('219','5','0','lgylgy','','0','','12','0','0','1249881068','1250598136','0','0','1250598136','0','0','0','0','0','1','221205203','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('220','5','0','lvshichun','','0','','5','0','0','1249881450','0','0','0','1249881450','0','0','0','0','0','0','118112255','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('221','5','20','tonypeach','','0','','9','0','0','1249882853','1249883036','0','0','1249882853','0','0','0','0','0','1','118113089','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('222','5','0','Loveyou','','0','','7','0','1','1249883369','1249883411','0','0','1249883369','0','0','0','0','0','1','220178057','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('223','5','20','kor','','0','','14','0','1','1249885390','1249885604','0','0','1249991825','0','0','0','0','0','1','124014064','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('224','5','0','KING','','0','','4','0','1','1249886648','1249887139','0','0','1249886648','0','0','0','0','0','1','117093053','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('225','5','0','Lancelot','','0','','8','0','0','1249888099','0','0','0','1249888099','0','0','0','0','0','0','125070111','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('226','5','20','NESCAFE','','0','','10','0','0','1249892152','1250192009','0','0','1250697424','0','0','0','0','0','1','119119097','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('227','0','0','ererer','','0','','4','0','1','1249895394','0','0','0','1249895394','0','0','0','0','0','0','119005239','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('228','5','0','hyhy','','0','','3','0','0','1249897512','0','0','0','1249897512','0','0','0','0','0','0','119006022','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('229','3','0','lijianze102','','0','','3','0','0','1249899687','0','0','0','1249899687','0','0','0','0','0','0','124206195','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('230','5','0','lijianhang','','0','','13','1','2','1249900687','0','0','0','1249900687','0','0','0','0','0','0','61051090','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('231','5','0','sdokafei','','0','','6','0','0','1249909282','0','0','0','1249909282','0','0','0','0','0','0','58208182','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('232','5','74','skyzhaojian','','0','','247','0','36','1249911651','1249980541','0','0','1251384672','0','0','0','0','0','1','58217218','0','74','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('233','5','0','dmyhkwy','','0','','10','0','1','1249922583','0','0','0','1250052208','0','0','0','0','0','0','61184189','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('234','5','0','peter','','0','','4','0','0','1249923031','0','0','0','1249923031','0','0','0','0','0','0','118114146','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('235','5','0','godwqe','','0','','4','0','0','1249925528','0','0','0','1251129369','0','0','0','0','0','0','222212102','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('236','5','0','hahalym','','0','','1','0','0','1249929205','0','0','0','1249929205','0','0','0','0','0','0','220176168','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('237','3','0','jiayou','','0','','5','0','0','1249929543','0','1249929691','1249929660','1249929543','0','0','0','0','0','0','220176168','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('238','5','0','shaopu','','0','','22','0','0','1249951351','1249951502','0','0','1249951351','0','0','0','0','0','1','59173154','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('239','0','0','QWERTY','','0','','1','0','1','1249951776','0','0','0','1249951776','0','0','0','0','0','0','218058220','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('240','5','0','zhaojiawen','','0','','8','0','1','1249951855','0','0','0','1249951855','0','0','0','0','0','0','60195183','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('241','5','0','liuyu','','0','','3','0','1','1249952502','0','0','0','1249952502','0','0','0','0','0','0','222135047','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('242','5','0','wcbxx','','0','','9','1','2','1249956988','0','0','0','1249963178','0','0','0','0','0','0','60014043','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('243','5','82','zhengwenxiang','','0','','119','0','26','1249961393','1251348893','0','0','1251447920','0','0','0','0','0','1','113079014','0','82','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('244','5','0','zhangguozhou','','0','','8','3','13','1249966557','0','0','0','1249966557','0','0','0','0','0','0','61174210','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('245','0','0','leyi','','0','','5','0','1','1249969426','0','0','0','1249969426','0','0','0','0','0','0','125034136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('246','5','0','fanwei','','0','','9','2','3','1249971805','0','0','0','1249971805','0','0','0','0','0','0','125065096','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('247','5','0','zhangqx','','0','','15','1','1','1249972614','0','0','0','1249972614','0','0','0','0','0','0','61149110','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('248','0','0','xiaodaidai','','0','','8','0','1','1249973349','0','0','0','1249973349','0','0','0','0','0','0','218089178','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('249','5','0','xixiaodaidaiao','','0','','23','2','3','1249973370','0','0','0','1251177595','0','0','0','0','0','0','218089178','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('250','5','0','xuanhong','','0','','1','0','1','1249980615','0','0','0','1249980615','0','0','0','0','0','0','118122115','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('251','5','0','vip','','0','','5','0','1','1250008128','0','0','0','1250008128','0','0','0','0','0','0','219238007','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('252','5','0','baobao','','0','','4','1','1','1250009700','1250010559','0','0','1250009700','0','0','0','0','0','1','121017056','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('253','5','0','xiao3166','','0','','1','0','0','1250020516','1250020623','0','0','1250020516','0','0','0','0','0','1','58039166','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('254','0','0','sdwsq','','0','','1','0','0','1250035544','0','0','0','1250035544','0','0','0','0','0','0','202110222','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('255','5','20','abcd','','0','','87','0','21','1250038004','1251083349','0','0','1251428219','0','0','0','0','0','1','119184174','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('256','5','0','darkeyes','','0','','28','0','4','1250047946','0','0','0','1251164291','0','0','0','0','0','0','221010089','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('257','5','0','hacker','','0','','8','0','0','1250048228','0','0','0','1250048228','0','0','0','0','0','0','222209142','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('258','0','0','sxl525831','','0','','6','0','0','1250052899','0','0','0','1250052899','0','0','0','0','0','0','123234053','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('259','5','0','zhuliuxiang','','0','','19','3','3','1250059637','0','0','0','1250059637','0','0','0','0','0','0','116232094','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('260','5','0','bear114a','','0','','4','0','0','1250062497','0','0','0','1250062497','0','0','0','0','0','0','118116203','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('261','5','0','danjin','','0','','6','0','0','1250063484','0','0','0','1250063484','0','0','0','0','0','0','119020047','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('262','5','0','addmeaddme','','0','','6','0','0','1250065123','0','0','0','1250068291','0','0','0','0','0','0','119040026','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('263','5','22','ONEI','','0','','31','3','7','1250071356','1250072258','0','0','1250138972','0','0','0','0','0','1','118112063','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('264','5','20','寂寞梧桐','','0','','42','0','4','1250082414','1250082624','0','0','1250164303','0','0','0','0','0','1','114217015','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('265','5','0','一夜情深','','0','','37','2','5','1250084846','0','0','0','1250084846','0','0','0','0','0','0','123150187','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('266','5','0','WOAIMEINV','','0','','2','1','1','1250086190','0','0','0','1250086190','0','0','0','0','0','0','117136000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('267','5','20','wjly','','0','','6','1','2','1250088163','0','0','0','1250088163','0','0','0','0','0','1','116001181','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('268','5','0','yeepaykefu','','0','','4','0','0','1250093628','0','0','0','1250093628','0','0','0','0','0','0','202091188','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('269','5','0','112930968','','0','','27','4','6','1250093815','0','0','0','1250165725','0','0','0','0','0','0','123150187','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('270','5','0','DFMN','','0','','17','0','2','1250134800','1250920482','0','0','1250920052','0','0','0','0','0','1','124161088','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('271','5','20','gaonifu','','0','','33','0','3','1250135509','1250228942','0','0','1250228942','0','0','0','0','0','1','218023003','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('272','5','0','abbdbfcif','','0','','8','0','1','1250137450','1250137688','0','0','1250137450','0','0','0','0','0','1','125067014','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('273','5','20','shrfzw@163.com','','0','','8','0','0','1250138013','1250138211','0','0','1250138013','0','0','0','0','0','1','218023003','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('274','5','0','GEXUAN','','0','','81','0','54','1250146007','0','0','0','1251352746','0','0','0','0','0','0','119007157','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('275','5','0','kkbawubasijiu','','0','','4','1','1','1250148116','0','0','0','1250148116','0','0','0','0','0','0','59172098','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('276','5','0','meinu','','0','','2','0','1','1250152949','0','0','0','1250152949','0','0','0','0','0','0','221010040','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('277','5','22','Daniel','','0','','35','2','7','1250153014','1250751419','0','0','1250836834','0','0','0','0','0','1','121068079','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('278','5','0','huangyuan','','0','','18','6','6','1250154804','1250155586','0','0','1250154804','0','0','0','0','0','1','218022177','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('279','5','0','heilongjiang','','0','','4','0','1','1250167890','1250167991','0','0','1250167890','0','0','0','0','0','1','122159056','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('280','5','0','eva','','0','','2','0','0','1250168160','1250168287','0','0','1250168160','0','0','0','0','0','1','222090036','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('281','5','0','fangli','','0','','7','0','0','1250168390','0','0','0','1250168390','0','0','0','0','0','0','222175150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('282','5','0','ndfz','','0','','4','0','0','1250170045','0','0','0','1250170045','0','0','0','0','0','0','125085014','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('283','0','0','LING','','0','','3','0','0','1250182227','0','0','0','1250182227','0','0','0','0','0','0','114246171','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('284','5','0','foxconn','','0','','2','0','0','1250194374','0','0','0','1250194374','0','0','0','0','0','0','113089237','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('285','5','0','DOUDOU','','0','','8','1','2','1250198954','1250199180','0','0','1250198954','0','0','0','0','0','1','218092006','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('286','5','0','access','','0','','2','1','1','1250208411','0','0','0','1250211879','0','0','0','0','0','0','119103069','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('287','5','20','gougou','','0','','1','1','2','1250208621','1250208848','0','0','1250208621','0','0','0','0','0','1','117026155','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('288','5','0','HEMINGFU','','0','','5','0','1','1250236469','0','0','0','1250236469','0','0','0','0','0','0','125070229','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('289','5','0','dsiphilia','','0','','3','0','0','1250238215','0','0','0','1250238215','0','0','0','0','0','0','222208049','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('290','5','0','baibing4511','','0','','4','1','1','1250240177','0','0','0','1250240177','0','0','0','0','0','0','123103046','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('291','5','0','cnefi','','0','','5','0','0','1250240225','0','0','0','1250240784','0','0','0','0','0','0','116007034','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('292','5','20','XHL','','0','','54','3','18','1250242118','1250242223','0','0','1251202860','0','0','0','0','0','1','218016149','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('293','5','0','rrr','','0','','0','0','0','1250246250','0','0','0','1250246250','0','0','0','0','0','0','113140035','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('294','5','0','chaosenv','','0','','1','0','0','1250247952','0','0','0','1250247952','0','0','0','0','0','0','113140035','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('295','5','0','white','','0','','10','2','2','1250248795','0','0','0','1250248795','0','0','0','0','0','0','221234040','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('296','3','0','smartwolf','','0','','28','0','0','1250249758','1250250154','0','0','1250249758','0','0','0','0','0','1','113140035','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('297','5','0','niandezhu','','0','','1','0','0','1250262771','0','0','0','1250262771','0','0','0','0','0','0','125065096','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('298','5','0','yewujiandao','','0','','7','0','0','1250263646','0','0','0','1250263646','0','0','0','0','0','0','219131062','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('299','5','0','suoli','','0','','6','1','1','1250265336','1250265396','0','0','1250265336','0','0','0','0','0','1','221234040','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('300','5','0','wanglong','','0','','5','0','0','1250272813','0','0','0','1250272813','0','0','0','0','0','0','113111249','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('301','5','0','bkcui','','0','','19','0','3','1250283234','0','0','0','1251352743','0','0','0','0','0','0','210021082','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('302','5','0','lirong','','0','','3','2','2','1250293557','0','0','0','1250293557','0','0','0','0','0','0','222216012','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('303','5','0','STAR','','0','','6','0','0','1250305929','0','0','0','1250305929','0','0','0','0','0','0','218088103','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('304','5','20','cyh','','0','','13','1','2','1250306181','1250306614','0','0','1250306181','0','0','0','0','0','1','123145108','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('305','5','0','derek','','0','','1','0','0','1250308238','0','0','0','1250308238','0','0','0','0','0','0','218089042','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('306','5','0','zhengheli','','0','','3','1','1','1250326352','0','0','0','1250326352','0','0','0','0','0','0','219133222','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('307','3','0','Joyce','','0','','30','0','0','1250329180','1250329346','0','0','1250329180','0','0','0','0','0','1','60015149','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('308','3','20','alinayun','','0','','39','0','0','1250336248','1250336467','0','0','1250336467','0','0','0','0','0','1','117081035','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('309','5','0','ROCKYOU','','0','','5','0','1','1250339999','0','0','0','1250339999','0','0','0','0','0','0','61178166','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('310','5','0','xialongchao','','0','','5','0','0','1250343817','0','0','0','1250343817','0','0','0','0','0','0','222208123','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('311','5','0','kuailan','','0','','1','0','0','1250343939','0','0','0','1250343939','0','0','0','0','0','0','119096220','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('312','5','0','test','','0','','2','0','0','1250352345','0','0','0','1250352345','0','0','0','0','0','0','116025022','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('313','5','0','mymy','','0','','4','0','0','1250403757','0','0','0','1250403757','0','0','0','0','0','0','121010097','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('314','3','0','mtmt','','0','','9','0','0','1250404057','0','1250404565','0','1250404773','0','0','0','0','0','0','121010097','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('315','5','0','mjmj','','0','','4','0','0','1250404630','0','0','0','1250404630','0','0','0','0','0','0','121010097','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('316','0','0','tuao','','0','','2','0','0','1250405626','0','0','0','1250405626','0','0','0','0','0','0','121020170','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('317','5','0','victor','','0','','0','0','0','1250412541','1250412806','0','0','1250412541','0','0','0','0','0','1','58048101','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('318','5','0','ewind','','0','','9','0','1','1250419019','1250419095','0','0','1251050054','0','0','0','0','0','1','220172207','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('319','5','0','cxpmpk','','0','','8','2','1','1250428525','0','0','0','1250428525','0','0','0','0','0','0','59108197','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('320','5','0','xiaotian','','0','','2','2','2','1250439001','0','0','0','1250439001','0','0','0','0','0','0','123188208','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('321','5','0','cowboy','','0','','5','0','1','1250445629','0','0','0','1250445629','0','0','0','0','0','0','121009232','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('322','5','0','jeffhdi','','0','','5','0','0','1250472345','1250472463','0','0','1250472345','0','0','0','0','0','1','116017081','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('323','5','0','wcd','','0','','7','0','0','1250472756','0','0','0','1250472756','0','0','0','0','0','0','222134101','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('324','5','22','pirate','','0','','2','0','0','1250474893','1250475136','0','0','1250474893','0','0','0','0','0','1','221178138','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('325','5','20','moon','','0','','13','6','6','1250480292','1250480435','0','0','1250480292','0','0','0','0','0','1','59111033','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('326','5','0','jiangfang','','0','','19','4','4','1250486573','0','0','0','1250486573','0','0','0','0','0','0','59038176','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('327','0','0','amwayrs','','0','','4','0','0','1250486664','0','0','0','1250486664','0','0','0','0','0','0','219131228','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('328','3','0','jenny','','0','','16','0','0','1250487679','0','0','0','1250487679','0','0','0','0','0','0','121228022','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('329','5','0','xiaoL','','0','','3','0','0','1250490901','0','0','0','1250490901','0','0','0','0','0','0','219128072','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('330','5','0','sb4y','','0','','1','0','0','1250494024','0','0','0','1250494024','0','0','0','0','0','0','124134026','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('331','5','0','kuangyefeng','','0','','23','0','0','1250494663','0','0','0','1250494663','0','0','0','0','0','0','218059159','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('332','5','20','Arlun','','0','','13','0','0','1250506745','1250506799','0','0','1250506745','0','0','0','0','0','1','121011127','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('333','5','0','nihao','','0','','2','0','1','1250516249','0','0','0','1250516249','0','0','0','0','0','0','119001202','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('334','5','0','jim','','0','','11','3','4','1250517685','0','0','0','1250517685','0','0','0','0','0','0','123065027','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('335','5','0','wdgfxz','','0','','14','0','1','1250517767','0','0','0','1250517767','0','0','0','0','0','0','218087152','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('336','5','0','flyalimama','','0','','5','0','0','1250519721','0','0','0','1250519721','0','0','0','0','0','0','115238073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('337','0','0','andyooo','','0','','2','0','0','1250519744','0','0','0','1250519744','0','0','0','0','0','0','221238010','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('338','5','0','haoge','','0','','5','0','0','1250522683','0','0','0','1250522683','0','0','0','0','0','0','123052068','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('339','5','72','yangsong1','','0','','73','1','18','1250537647','1250738911','0','0','1251119449','0','0','0','0','0','1','120002079','0','72','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('340','5','0','xlx','','0','','12','0','0','1250540249','0','0','0','1250540249','0','0','0','0','0','0','124067148','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('341','5','0','zhouping','','0','','22','1','2','1250541206','0','0','0','1250541206','0','0','0','0','0','0','221239058','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('342','5','0','shaofucao','','0','','7','0','0','1250562286','0','0','0','1250562286','0','0','0','0','0','0','123180206','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('343','5','0','dglfq','','0','','9','0','0','1250563433','0','0','0','1251084865','0','0','0','0','0','0','222180093','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('344','5','0','nm5039','','0','','11','1','1','1250565399','1250566621','0','0','1250565399','0','0','0','0','0','1','222209200','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('345','3','0','kingk','','0','','2','0','0','1250567665','0','0','0','1250567665','0','0','0','0','0','0','116077132','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('346','5','20','sccdwh','','0','','9','0','1','1250586493','1250586510','0','0','1250740817','0','0','0','0','0','1','221234040','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('347','5','0','UEHIWQOJDNCSA','','0','','5','0','0','1250587210','0','0','0','1250587210','0','0','0','0','0','0','219148083','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('348','5','0','ASDFG','','0','','17','1','1','1250592903','0','0','0','1250592903','0','0','0','0','0','0','61150084','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('349','5','20','chengjun','','0','','8','0','1','1250597398','1250597743','0','0','1250597398','0','0','0','0','0','1','125070241','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('350','5','0','HEMINF','','0','','7','1','2','1250600044','0','0','0','1250600044','0','0','0','0','0','0','119006019','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('351','0','0','phoenixqqq','','0','','10','0','0','1250611861','0','0','0','1250611861','0','0','0','0','0','0','159226143','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('352','5','20','sexlove','','0','','24','4','4','1250634114','1250634355','0','0','1250634114','0','0','0','0','0','1','120086107','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('353','5','0','cashier','','0','','8','0','0','1250640261','0','0','0','1250640965','0','0','0','0','0','0','58211021','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('354','0','20','linxiaoxiao','','0','','19','0','0','1250647947','1250648184','0','0','1250647947','0','0','0','0','0','1','121031166','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('355','5','0','czy','','0','','86','0','25','1250653190','1251374551','0','0','1251449982','0','0','0','0','0','0','221234040','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('356','5','0','wuhelo100','','0','','3','0','0','1250657519','0','0','0','1250657519','0','0','0','0','0','0','122080149','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('357','5','30','dgoch','','0','','23','2','1','1250675878','1250676703','0','0','1250679318','0','0','0','0','0','1','114095226','0','30','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('358','5','0','hele442517','','0','','17','2','1','1250678822','1250679156','0','0','1250678822','0','0','0','0','0','1','218028067','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('359','5','0','heguohua','','0','','3','0','0','1250682609','0','0','0','1250682609','0','0','0','0','0','0','59111033','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('360','0','0','BHJDR','','0','','9','1','1','1250683939','1250683978','1250684055','0','1250683939','0','0','0','0','0','1','124207217','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('361','5','0','kevin','','0','','13','0','0','1250684674','0','0','0','1250684674','0','0','0','0','0','0','58214120','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('362','5','0','shangxianyue','','0','','5','0','1','1250685916','0','0','0','1250685916','0','0','0','0','0','0','222247053','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('363','3','180','yyifan','','0','','172','1','54','1250687732','1250773214','1251444193','1251154585','1251443959','0','0','0','0','0','1','221194102','0','180','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('364','5','0','ZHUANSHIZHUBAN','','0','','13','1','2','1250689195','0','0','0','1250689195','0','0','0','0','0','0','119115026','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('365','5','0','Passionatesex','','0','','13','3','3','1250692671','1250692750','0','0','1250692671','0','0','0','0','0','1','59173011','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('366','5','0','chysky','','0','','9','0','0','1250696445','0','0','0','1250696445','0','0','0','0','0','0','116052094','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('367','5','0','enjoy','','0','','8','0','0','1250697159','0','0','0','1250697159','0','0','0','0','0','0','118112143','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('368','5','0','外滩3号','','0','','18','0','0','1250697623','0','1250698094','1250698225','1251279728','0','0','0','0','0','0','119118180','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('369','5','0','luhu','','0','','10','1','1','1250702750','0','0','0','1250713635','0','0','0','0','0','0','123159038','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('370','5','0','hhnhz','','0','','8','1','1','1250710896','0','0','0','1250710896','0','0','0','0','0','0','222240182','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('371','5','32','zlfd','','0','','168','0','23','1250730789','1251424239','0','0','1251438642','0','0','0','0','0','1','222062115','0','32','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('372','5','20','Zhaole','','0','','50','0','6','1250732396','1250949497','0','0','1250949497','0','0','0','0','0','1','117088245','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('373','5','20','xtxbamboo','','0','','36','0','4','1250743357','1250743539','0','0','1251180565','0','0','0','0','0','1','221214240','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('374','5','2','zzlliu','','0','','9','1','1','1250748688','0','0','0','1250748688','0','0','0','0','0','0','221217010','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('375','0','0','yangwang','','0','','5','0','0','1250755120','0','0','0','1250755120','0','0','0','0','0','0','119100180','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('376','5','0','zzl851022','','0','','3','0','0','1250756053','0','0','0','1250756053','0','0','0','0','0','0','221217010','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('377','5','0','Angle','','0','','6','0','0','1250756806','1250757293','0','0','1250756806','0','0','0','0','0','1','222069028','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('378','5','0','sxjj','','0','','6','0','0','1250758360','0','0','0','1250832795','0','0','0','0','0','0','222211039','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('379','5','0','viki','','0','','8','0','0','1250760725','0','0','0','1250760725','0','0','0','0','0','0','112122001','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('380','0','0','fffylyve','','0','','4','0','0','1250767233','0','0','0','1250767233','0','0','0','0','0','0','222086184','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('381','5','0','jony','','0','','10','0','1','1250772436','0','0','0','1250772436','0','0','0','0','0','0','112112244','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('382','5','0','attack','','0','','15','0','1','1250772817','0','0','0','1250772817','0','0','0','0','0','0','112115037','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('383','5','0','zyfzyf','','0','','46','0','4','1250773311','1251047022','0','0','1251047022','0','0','0','0','0','1','222211001','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('384','5','0','gongqingssss','','0','','42','2','2','1250773421','0','0','0','1250773421','0','0','0','0','0','0','222211026','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('385','5','74','caojun','','0','','25','0','5','1250773978','1251382665','0','0','1251382665','0','0','0','0','0','1','119137086','0','74','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('386','5','96','mytwd','','0','','81','0','20','1250774048','1250865039','0','0','1251394017','0','0','0','0','0','0','61188181','0','96','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('387','5','20','Lele','','0','','65','0','8','1250783614','1250948873','0','0','1250948873','0','0','0','0','0','1','117088245','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('388','5','0','zhanghai','','0','','8','0','1','1250796039','0','0','0','1250796039','0','0','0','0','0','0','116052163','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('389','5','0','zhzhjie','','0','','17','5','6','1250811277','0','0','0','1250811277','0','0','0','0','0','0','60006011','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('390','5','0','zuqiuxiansheng','','0','','39','4','7','1250812151','0','0','0','1250866981','0','0','0','0','0','0','221200100','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('391','5','0','jiangshangren','','0','','6','0','1','1250814570','0','0','0','1250814570','0','0','0','0','0','0','221237162','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('392','5','0','ucdn','','0','','13','0','1','1250816669','0','0','0','1250816669','0','0','0','0','0','0','118117005','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('393','5','0','lguo123','','0','','11','1','1','1250823069','0','0','0','1250823069','0','0','0','0','0','0','121204012','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('394','5','0','ouyangtn','','0','','9','0','1','1250824735','0','0','0','1250824735','0','0','0','0','0','0','218089032','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('395','5','0','boyy','','0','','30','4','4','1250826669','0','0','0','1250826669','0','0','0','0','0','0','113009083','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('396','5','20','rulerbye','','0','','4','0','1','1250830918','1250830983','0','0','1250830918','0','0','0','0','0','1','114246134','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('397','5','0','csnoviceo','','0','','19','0','1','1250833481','0','0','0','1250833481','0','0','0','0','0','0','119080016','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('398','5','0','gaowei','','0','','29','1','1','1250833707','0','0','0','1250834687','0','0','0','0','0','0','221234017','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('399','5','20','panjunshan','','0','','18','0','1','1250836615','1250836665','0','0','1250836615','0','0','0','0','0','1','125065087','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('400','0','0','chenhuabing','','0','','5','0','1','1250837578','0','0','0','1250837578','0','0','0','0','0','0','202098157','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('401','5','0','MYXS','','0','','5','0','1','1250840139','0','0','0','1250840139','0','0','0','0','0','0','118112089','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('402','5','0','caichaolun','','0','','26','1','1','1250840422','0','0','0','1250840422','0','0','0','0','0','0','118112082','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('403','5','0','mamama','','0','','16','0','1','1250842683','0','0','0','1250842683','0','0','0','0','0','0','61139091','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('404','5','0','1984lb','','0','','6','0','0','1250851138','0','0','0','1250851138','0','0','0','0','0','0','222211060','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('405','5','0','piaopiao','','0','','8','0','0','1250903396','0','0','0','1250903396','0','0','0','0','0','0','61177189','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('406','5','0','crazytonight','','0','','17','3','3','1250915465','0','0','0','1250915465','0','0','0','0','0','0','122158022','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('407','5','20','yuzhigong','','0','','21','1','3','1250917803','1250917929','0','0','1251065846','0','0','0','0','0','1','123168209','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('408','3','0','jacking','','0','','2','0','0','1250918038','0','1250918135','0','1250918038','0','0','0','0','0','0','218093094','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('409','5','0','skypeng','','0','','8','0','0','1250932778','0','0','0','1250932778','0','0','0','0','0','0','122224103','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('410','5','0','pancb','','0','','1','0','1','1250943036','0','0','0','1250943036','0','0','0','0','0','0','58212023','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('411','5','78','xuqinghong74','','0','','89','0','27','1250951164','1250954732','0','0','1251418026','0','0','0','0','0','1','222175186','0','78','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('412','5','0','robin','','0','','2','0','0','1250955099','0','0','0','1250955099','0','0','0','0','0','0','117068072','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('413','5','0','guangtou','','0','','1','0','0','1250964065','0','0','0','1250964788','0','0','0','0','0','0','202136056','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('414','5','0','MrIn','','0','','0','0','0','1250997508','0','0','0','1250997508','0','0','0','0','0','0','58249097','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('415','5','0','admin1','','0','','5','1','1','1251004184','0','0','0','1251004184','0','0','0','0','0','0','61160030','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('416','5','0','mjknkj','','0','','2','0','0','1251004997','0','0','0','1251004997','0','0','0','0','0','0','119142123','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('417','5','20','zhengyue','','0','','11','0','0','1251006639','1251006998','0','0','1251006998','0','0','0','0','0','1','124228089','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('418','5','0','Awakensme','','0','','5','0','0','1251021932','0','0','0','1251021932','0','0','0','0','0','0','60163148','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('419','5','0','kankanshuixian','','0','','8','1','2','1251026523','1251026728','0','0','1251026523','0','0','0','0','0','1','219237207','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('420','5','0','woriamade','','0','','3','0','0','1251027878','0','0','0','1251027878','0','0','0','0','0','0','220232071','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('421','5','20','TAKR','','0','','6','1','1','1251030596','1251031057','0','0','1251030596','0','0','0','0','0','1','211102168','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('422','5','0','dchjdjs','','0','','7','0','0','1251039071','0','0','0','1251039200','0','0','0','0','0','0','117008092','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('423','5','0','vienzhong','','0','','6','0','0','1251049751','1251049772','0','0','1251049751','0','0','0','0','0','1','119129252','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('424','5','0','hzh0123','','0','','1','0','0','1251078976','0','0','0','1251078976','0','0','0','0','0','0','220189021','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('425','5','0','yanghuanzhang','','0','','13','2','4','1251082670','0','0','0','1251082670','0','0','0','0','0','0','218071183','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('426','0','0','jiwei','','0','','4','0','0','1251082726','0','0','0','1251082726','0','0','0','0','0','0','61155085','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('427','5','0','luwendy','','0','','3','0','0','1251082838','1251082884','0','0','1251082838','0','0','0','0','0','1','114238030','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('428','5','0','beibei','','0','','4','0','1','1251083097','0','0','0','1251083097','0','0','0','0','0','0','117136022','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('429','5','0','gyq','','0','','14','0','2','1251084952','0','0','0','1251123484','0','0','0','0','0','0','117136014','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('430','5','20','sanshao','','0','','76','1','17','1251087062','1251292875','0','0','1251388517','0','0','0','0','0','0','124156098','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('431','5','0','banjianbi','','0','','38','0','13','1251087093','1251262713','0','0','1251262713','0','0','0','0','0','1','61138211','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('432','5','0','wangkun','','0','','6','1','2','1251087174','1251087252','0','0','1251087174','0','0','0','0','0','1','222045183','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('433','5','0','justin','','0','','24','0','0','1251087631','0','0','0','1251219121','0','0','0','0','0','0','116052165','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('434','5','0','rrppnn','','0','','25','0','6','1251089321','0','0','0','1251411061','0','0','0','0','0','0','222221245','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('435','5','0','lyym','','0','','15','5','6','1251089429','0','0','0','1251089429','0','0','0','0','0','0','116055033','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('436','5','0','remao','','0','','4','0','0','1251090373','0','0','0','1251090373','0','0','0','0','0','0','58040243','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('437','5','0','xiangzl','','0','','7','0','1','1251090741','0','0','0','1251090741','0','0','0','0','0','0','219151204','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('438','5','0','xianglin188','','0','','11','0','1','1251093617','0','0','0','1251093617','0','0','0','0','0','0','125084216','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('439','5','0','xiang','','0','','20','6','7','1251093827','0','0','0','1251093827','0','0','0','0','0','0','117094154','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('440','5','0','wcy','','0','','8','0','0','1251094892','0','0','0','1251094892','0','0','0','0','0','0','221236151','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('441','5','0','qwee','','0','','9','0','1','1251097166','1251097186','0','0','1251097166','0','0','0','0','0','1','60011240','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('442','5','2','franceco','','0','','8','0','0','1251098467','0','0','0','1251098467','0','0','0','0','0','0','59172185','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('443','5','0','dalin','','0','','7','0','0','1251098722','0','0','0','1251098722','0','0','0','0','0','0','117067178','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('444','3','0','dlmdlm','','0','','11','0','0','1251100074','0','1251108741','0','1251108573','0','0','0','0','0','0','219072149','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('445','5','0','DYY','','0','','6','1','2','1251102527','0','0','0','1251102527','0','0','0','0','0','0','219131245','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('446','5','0','expert','','0','','12','0','0','1251102638','0','0','0','1251102638','0','0','0','0','0','0','125114119','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('447','5','0','olfarmer','','0','','11','3','4','1251104816','0','0','0','1251104816','0','0','0','0','0','0','116054206','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('448','5','22','lovesheng','','0','','22','3','3','1251105630','1251106297','0','0','1251105630','0','0','0','0','0','1','58044017','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('449','5','20','demonb','','0','','60','0','7','1251110071','1251249374','0','0','1251272580','0','0','0','0','0','1','123247216','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('450','5','0','jfdskhkl','','0','','2','0','0','1251112443','0','0','0','1251126516','0','0','0','0','0','0','118249188','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('451','5','0','wuyul','','0','','7','0','1','1251113622','0','0','0','1251113622','0','0','0','0','0','0','123118147','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('452','5','0','xiaomaohai','','0','','14','1','1','1251114743','1251115716','0','0','1251114743','0','0','0','0','0','1','221000113','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('453','5','0','ffsfsa','','0','','14','1','2','1251115247','0','0','0','1251115247','0','0','0','0','0','0','116052145','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('454','5','0','yongge','','0','','6','0','0','1251118584','0','0','0','1251118584','0','0','0','0','0','0','121026035','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('455','5','0','longgui','','0','','6','1','2','1251123477','0','0','0','1251123477','0','0','0','0','0','0','113089180','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('456','5','0','woshisheidegege','','0','','2','1','2','1251123837','1251124097','0','0','1251123837','0','0','0','0','0','1','219148042','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('457','3','20','fgh3697278','','0','','5','0','1','1251125118','1251125166','0','0','1251125118','0','0','0','0','0','1','119100097','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('458','6','146','bluesea','','0','','96','1','20','1251125538','1251218612','0','0','1251389467','0','0','0','0','0','0','125107154','0','146','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('459','5','22','xujianzhou','','0','','46','6','9','1251127691','1251127928','0','0','1251127691','0','0','0','0','0','1','61157134','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('460','0','0','xihaibbs','','0','','15','0','0','1251129347','0','1251129446','0','1251129347','0','0','0','0','0','0','115152016','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('461','0','0','flykeer','','0','','2','0','0','1251129632','0','0','0','1251129632','0','0','0','0','0','0','222044014','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('462','5','0','JONE','','0','','33','0','9','1251129762','1251219922','0','0','1251436870','0','0','0','0','0','1','125107141','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('463','5','0','zhaoqintang','','0','','8','0','0','1251129898','1251130277','0','0','1251129898','0','0','0','0','0','1','218015120','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('464','5','20','gudu','','0','','10','0','0','1251130766','1251131049','0','0','1251130766','0','0','0','0','0','1','59053044','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('465','5','0','zqzqzq','','0','','6','0','0','1251131578','0','0','0','1251131578','0','0','0','0','0','0','116113077','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('466','5','0','Edward','','0','','19','0','5','1251132210','1251262951','0','0','1251262951','0','0','0','0','0','1','222223178','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('467','5','0','yanyu','','0','','18','1','2','1251132839','0','0','0','1251132839','0','0','0','0','0','0','218082181','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('468','5','0','浩南521','','0','','4','0','0','1251136507','0','0','0','1251136507','0','0','0','0','0','0','113065170','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('469','5','0','semo','','0','','4','0','0','1251138406','0','0','0','1251138406','0','0','0','0','0','0','222223178','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('470','5','0','jtwyslq','','0','','41','3','6','1251152293','0','0','0','1251202996','0','0','0','0','0','0','221131094','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('471','5','20','jaene','','0','','32','2','5','1251155650','1251199958','0','0','1251199781','0','0','0','0','0','1','58042144','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('472','5','0','sdfsdfsdf','','0','','15','0','0','1251157934','0','0','0','1251157934','0','0','0','0','0','0','116018190','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('473','5','20','yusiking','','0','','57','3','9','1251159590','1251203487','0','0','1251203487','0','0','0','0','0','1','58048007','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('474','5','0','yanlei','','0','','22','5','7','1251161004','0','0','0','1251161004','0','0','0','0','0','0','125034214','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('475','5','0','jinjianping','','0','','5','0','1','1251162593','0','0','0','1251162593','0','0','0','0','0','0','116226064','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('476','5','20','sunjunlin','','0','','14','1','3','1251163378','1251165930','0','0','1251165930','0','0','0','0','0','1','125068251','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('477','5','0','hdyzlll','','0','','25','1','4','1251164475','0','0','0','1251344927','0','0','0','0','0','0','119250054','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('478','5','20','zxxboy','','0','','27','0','16','1251166662','1251171726','0','0','1251265152','0','0','0','0','0','1','218075118','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('479','0','0','tigern','','0','','2','0','1','1251168194','0','0','0','1251168194','0','0','0','0','0','0','218026090','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('480','5','0','qqyyzz','','0','','10','0','3','1251169166','0','0','0','1251345597','0','0','0','0','0','0','58059184','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('481','5','0','aaa','','0','','15','2','2','1251174076','0','0','0','1251174076','0','0','0','0','0','0','219149103','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('482','5','20','wxwttf','','0','','15','2','5','1251174199','1251250671','0','0','1251250671','0','0','0','0','0','1','118077052','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('483','5','0','hhhj','','0','','6','2','2','1251179563','0','0','0','1251179563','0','0','0','0','0','0','114243010','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('484','5','0','capslock','','0','','7','0','0','1251181157','0','0','0','1251182518','0','0','0','0','0','0','222092008','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('485','0','0','kelly','','0','','4','0','0','1251182151','0','0','0','1251182151','0','0','0','0','0','0','60180086','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('486','0','0','ecapslock','','0','','3','0','0','1251183132','0','0','0','1251183132','0','0','0','0','0','0','222092008','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('487','5','0','syfsyfsyf','','0','','4','0','1','1251185379','0','0','0','1251185379','0','0','0','0','0','0','123052109','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('488','5','0','youyuantuoling','','0','','5','0','0','1251188994','1251189684','0','0','1251188994','0','0','0','0','0','1','124234248','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('489','5','0','qwqw','','0','','2','0','0','1251192075','0','0','0','1251192075','0','0','0','0','0','0','220173013','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('490','0','0','szyrdkj','','0','','2','0','0','1251194227','0','0','0','1251194227','0','0','0','0','0','0','58251108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('491','5','22','ffeng','','0','','34','1','9','1251194675','1251371211','0','0','1251434342','0','0','0','0','0','1','210021082','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('492','5','0','yangjiajiang','','0','','9','0','0','1251198659','1251198830','0','0','1251198659','0','0','0','0','0','1','222183080','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('493','5','0','lisen','','0','','6','0','0','1251207575','0','0','0','1251207575','0','0','0','0','0','0','123014041','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('494','0','0','wagamama','','0','','5','0','9','1251215328','0','1251216733','0','1251215328','0','0','0','0','0','0','58061116','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('495','5','0','zhangzhang','','0','','3','0','0','1251215779','0','0','0','1251215779','0','0','0','0','0','0','222134153','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('496','5','0','eeeeee','','0','','2','0','0','1251217840','0','0','0','1251217840','0','0','0','0','0','0','119123207','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('497','5','20','ywj','','0','','6','1','1','1251226872','1251226933','0','0','1251226872','0','0','0','0','0','1','221193064','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('498','5','0','binxr','','0','','15','0','0','1251233684','1251234003','0','0','1251233684','0','0','0','0','0','1','124228032','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('499','5','20','afei','','0','','12','0','4','1251246437','1251246456','0','0','1251384247','0','0','0','0','0','1','114219089','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('500','5','0','arstyulmp','','0','','8','0','0','1251250980','0','0','0','1251250980','0','0','0','0','0','0','61128167','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('501','5','20','fcq','','0','','3','0','0','1251251061','1251253611','0','0','1251253814','0','0','0','0','0','1','116025192','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('502','0','0','jiachunlin','','0','','4','0','0','1251251148','0','0','0','1251251148','0','0','0','0','0','0','125093072','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('503','5','20','jht','','0','','35','0','3','1251251284','1251251420','0','0','1251251284','0','0','0','0','0','1','122195233','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('504','5','0','feiyh','','0','','28','0','2','1251251607','0','0','0','1251277112','0','0','0','0','0','0','221007037','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('505','5','0','xpr','','0','','14','0','0','1251251768','0','0','0','1251251768','0','0','0','0','0','0','114233053','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('506','5','20','wangzhenqiu','','0','','26','2','6','1251252136','1251252217','0','0','1251252136','0','0','0','0','0','1','116228213','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('507','5','0','English','','0','','3','0','0','1251252139','1251252751','0','0','1251252139','0','0','0','0','0','1','117040028','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('508','0','0','caonima','','0','','7','0','0','1251252219','0','0','0','1251252219','0','0','0','0','0','0','123010113','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('509','5','0','taylor','','0','','7','0','0','1251252242','1251252832','0','0','1251252242','0','0','0','0','0','1','114093215','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('510','5','0','skey654','','0','','2','0','0','1251252460','0','0','0','1251252460','0','0','0','0','0','0','121205117','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('511','5','0','wuming','','0','','30','2','5','1251252523','0','0','0','1251252523','0','0','0','0','0','0','222223194','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('512','5','0','fyjktjz','','0','','40','1','3','1251252641','1251254941','0','0','1251260772','0','0','0','0','0','1','121008249','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('513','5','0','TOMO','','0','','18','0','0','1251252858','0','0','0','1251252858','0','0','0','0','0','0','121030016','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('514','5','0','chengguohui','','0','','16','0','0','1251253383','0','0','0','1251253383','0','0','0','0','0','0','218006099','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('515','5','0','RSDYC','','0','','10','0','1','1251254081','1251254545','0','0','1251254081','0','0','0','0','0','1','219152160','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('516','5','0','tree','','0','','11','0','0','1251254165','1251254183','0','0','1251254165','0','0','0','0','0','1','59032041','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('517','5','20','rabishi123','','0','','40','2','8','1251255397','1251256012','0','0','1251273130','0','0','0','0','0','1','122237222','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('518','5','0','zoe','','0','','12','0','0','1251257462','0','0','0','1251257462','0','0','0','0','0','0','221234040','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('519','5','0','happyjsl','','0','','3','0','0','1251257902','0','0','0','1251257902','0','0','0','0','0','0','59055139','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('520','5','0','yzzk','','0','','10','0','0','1251260633','0','0','0','1251260633','0','0','0','0','0','0','60191178','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('521','5','0','51party','','0','','12','1','1','1251261833','1251261850','0','0','1251261833','0','0','0','0','0','1','116228007','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('522','5','0','cnya','','0','','2','0','0','1251266392','0','0','0','1251266392','0','0','0','0','0','0','116024187','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('523','5','0','lqz','','0','','2','0','1','1251267313','0','0','0','1251267313','0','0','0','0','0','0','115056062','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('524','5','0','pengxiaoyao','','0','','3','0','0','1251267633','0','0','0','1251267633','0','0','0','0','0','0','123007067','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('525','5','0','zlgg','','0','','4','0','0','1251269328','0','0','0','1251269328','0','0','0','0','0','0','118112211','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('526','5','0','wzwzwz','','0','','6','0','0','1251270115','0','0','0','1251270115','0','0','0','0','0','0','61153031','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('527','5','0','fesunn','','0','','8','1','2','1251271306','0','0','0','1251431906','0','0','0','0','0','0','202192080','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('528','5','0','wuchao','','0','','2','0','0','1251271472','0','0','0','1251271472','0','0','0','0','0','0','124091056','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('529','5','2','xxx','','0','','8','0','0','1251273632','0','0','0','1251374897','0','0','0','0','0','0','123150187','0','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('530','5','0','tuiyue','','0','','12','0','0','1251274188','0','0','0','1251288217','0','0','0','0','0','0','113132021','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('531','0','0','zjjfb','','0','','12','0','0','1251274200','0','1251274248','0','1251274200','0','0','0','0','0','0','220169202','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('532','5','0','sohoqq','','0','','10','0','0','1251274360','0','0','0','1251274360','0','0','0','0','0','0','122227161','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('533','5','0','wangtao','','0','','5','0','0','1251280051','0','0','0','1251351650','0','0','0','0','0','0','119004115','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('534','5','0','ABC','','0','','3','0','0','1251280436','0','0','0','1251280436','0','0','0','0','0','0','114085176','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('535','5','0','tianya','','0','','9','0','0','1251281616','1251281650','0','0','1251286084','0','0','0','0','0','1','221011035','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('536','5','0','cwei','','0','','2','0','0','1251282353','0','0','0','1251282353','0','0','0','0','0','0','113250207','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('537','5','0','demonpig','','0','','10','0','47','1251283556','0','0','0','1251283556','0','0','0','0','0','0','219234081','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('538','0','0','testd','','0','','4','0','0','1251284408','0','1251284871','0','1251284408','0','0','0','0','0','0','116196095','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('539','5','0','ayu','','0','','7','0','0','1251294416','1251294499','0','0','1251294416','0','0','0','0','0','1','222209208','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('540','5','10','opindex','','0','','8','0','1','1251306622','0','0','0','1251365533','0','0','0','0','0','0','114104114','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('541','5','0','fangyihu','','0','','16','1','1','1251308378','1251308487','0','0','1251308378','0','0','0','0','0','1','121014250','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('542','5','0','Breeze','','0','','9','0','1','1251313789','0','0','0','1251313789','0','0','0','0','0','0','222221245','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('543','5','0','jkgtuj','','0','','5','1','1','1251323683','1251323898','0','0','1251323683','0','0','0','0','0','1','59044037','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('544','5','0','FAFDSFS','','0','','10','0','0','1251323971','0','0','0','1251323971','0','0','0','0','0','0','124229000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('545','5','0','shazhongtu','','0','','4','0','0','1251324746','0','0','0','1251324746','0','0','0','0','0','0','117033049','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('546','5','20','jame','','0','','12','1','2','1251325010','1251325724','0','0','1251415202','0','0','0','0','0','1','123152246','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('547','5','22','xinxing-jason','','0','','15','0','1','1251337942','1251341160','0','0','1251341160','0','0','0','0','0','1','58210110','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('548','5','0','Dxxoo','','0','','6','0','0','1251341634','0','0','0','1251341634','0','0','0','0','0','0','124227192','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('549','5','0','tftest','','0','','19','0','0','1251343533','0','0','0','1251343533','0','0','0','0','0','0','58248168','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('550','5','0','0451fl','','0','','6','1','1','1251349932','0','0','0','1251349932','0','0','0','0','0','0','125097015','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('551','0','0','weiki','','0','','41','0','3','1251352909','0','1251369727','1251355152','1251369470','0','0','0','0','0','0','210021082','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('552','0','0','jinzhu3535','','0','','3','0','0','1251352970','0','0','0','1251352970','0','0','0','0','0','0','123115253','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('553','5','0','liguojievip','','0','','9','1','3','1251357725','1251360275','0','0','1251357725','0','0','0','0','0','1','116228199','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('554','5','20','zhadz','','0','','5','1','1','1251359156','1251359521','0','0','1251359156','0','0','0','0','0','1','115193026','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('555','5','0','bingbing','','0','','13','0','6','1251359549','0','0','0','1251370175','0','0','0','0','0','0','221237079','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('556','5','0','wwwqq001','','0','','4','1','8','1251364631','0','0','0','1251364631','0','0','0','0','0','0','117068123','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('557','5','0','sejianjian','','0','','7','0','7','1251365649','0','0','0','1251365649','0','0','0','0','0','0','114104114','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('558','5','0','xiaomomocom','','0','','18','4','16','1251365821','0','0','0','1251365821','0','0','0','0','0','0','134159147','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('559','5','0','lanxin','','0','','5','0','6','1251366186','0','0','0','1251366186','0','0','0','0','0','0','222052098','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('560','5','0','kinggg','','0','','10','0','8','1251367015','0','0','0','1251367015','0','0','0','0','0','0','125046054','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('561','5','0','qqqqqqq','','0','','9','0','7','1251367197','0','0','0','1251367197','0','0','0','0','0','0','219239215','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('562','5','0','tristan','','0','','13','3','9','1251367319','0','0','0','1251367319','0','0','0','0','0','0','211088002','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('563','0','0','asdadfsdfs','','0','','9','0','6','1251367562','0','1251367954','1251368015','1251367562','0','0','0','0','0','0','219239215','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('564','0','0','fhdsf','','0','','13','0','7','1251368125','0','1251369038','0','1251368125','0','0','0','0','0','0','123054118','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('565','5','0','fhhdf','','0','','2','0','6','1251369822','0','0','0','1251369822','0','0','0','0','0','0','123054118','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('566','0','0','ttttt','','0','','7','1','7','1251370932','0','0','0','1251370932','0','0','0','0','0','0','210021082','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('567','0','0','tombo','','0','','1','0','6','1251373384','0','0','0','1251373384','0','0','0','0','0','0','116018171','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('568','5','20','hanggui','','0','','10','1','9','1251374016','1251374068','0','0','1251446124','0','0','0','0','0','1','60186128','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('569','5','0','akak','','0','','6','0','6','1251385054','0','0','0','1251385054','0','0','0','0','0','0','124135241','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('570','5','0','laiba','','0','','6','0','6','1251388365','0','0','0','1251444930','0','0','0','0','0','0','221237071','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('571','5','0','mcb','','0','','0','0','6','1251388999','0','0','0','1251388999','0','0','0','0','0','0','58059141','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('572','5','0','andstart','','0','','6','1','7','1251389047','0','0','0','1251389047','0','0','0','0','0','0','222044016','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('573','5','0','laiziouran','','0','','9','0','7','1251389103','0','0','0','1251389103','0','0','0','0','0','0','117086135','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('574','0','0','miky','','0','','1','0','6','1251389475','0','0','0','1251389475','0','0','0','0','0','0','221002136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('575','5','0','alsoon','','0','','3','0','6','1251389476','0','0','0','1251389476','0','0','0','0','0','0','218082244','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('576','5','0','zhenxinzhenyi','','0','','6','0','9','1251389541','0','0','0','1251389541','0','0','0','0','0','0','218002105','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('577','5','0','tjh','','0','','6','2','10','1251389573','0','0','0','1251389573','0','0','0','0','0','0','59037164','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('578','5','0','nick','','0','','3','0','6','1251389698','0','0','0','1251393520','0','0','0','0','0','0','219082239','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('579','5','0','biqi','','0','','2','0','6','1251390979','0','0','0','1251390979','0','0','0','0','0','0','115046112','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('580','5','0','haiti','','0','','1','0','7','1251420831','0','0','0','1251420831','0','0','0','0','0','0','58208196','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('581','5','0','banfuqing','','0','','3','0','6','1251431863','0','0','0','1251431863','0','0','0','0','0','0','113013214','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('582','0','22','ooo','','0','','8','0','6','1251434288','1251434920','0','0','1251434288','0','0','0','0','0','1','222062115','0','22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('583','5','0','jackxiao','','0','','7','0','8','1251435579','0','0','0','1251435579','0','0','0','0','0','0','222221224','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('584','5','20','nino','','0','','4','0','7','1251436085','1251436462','0','0','1251441818','0','0','0','0','0','1','218091212','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('585','5','0','yjucd','','0','','3','0','6','1251438064','0','0','0','1251447361','0','0','0','0','0','0','222141131','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('586','0','0','feiyun18','','0','','1','0','6','1251439038','0','0','0','1251439038','0','0','0','0','0','0','60009224','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('587','5','0','woshishuige','','0','','2','0','6','1251441079','0','0','0','1251441079','0','0','0','0','0','0','125107134','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('588','5','0','ons','','0','','1','0','6','1251444742','0','0','0','1251444742','0','0','0','0','0','0','125095091','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('589','5','0','tuiyur','','0','','0','0','6','1251444821','0','0','0','1251444821','0','0','0','0','0','0','124114071','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('590','0','0','oms','','0','','1','0','6','1251445104','0','1251445646','0','1251445104','0','0','0','0','0','0','125095091','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('591','5','0','zhojin9480cn','','0','','0','0','6','1251445137','0','0','0','1251445137','0','0','0','0','0','0','124207169','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('592','3','0','abu','','0','','1','0','7','1251447393','0','0','0','1251447393','0','0','0','0','0','0','222221176','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_space VALUES ('2','3','1','羊爱上狼','','1','','5','0','8','1314929403','1315119408','0','1315370734','1316136981','0','0','0','0','0','1','60215247','0','0','0','0','0','0','0','8','0','3','0','0','0','0','0','0','60.215.246.207');

DROP TABLE IF EXISTS uchome_spacefield;
CREATE TABLE uchome_spacefield (
  uid mediumint(8) unsigned NOT NULL default '0',
  sex tinyint(1) NOT NULL default '0',
  email varchar(100) NOT NULL default '',
  emailcheck tinyint(1) NOT NULL default '0',
  qq varchar(20) NOT NULL default '',
  msn varchar(80) NOT NULL default '',
  birthyear smallint(6) unsigned NOT NULL default '0',
  birthmonth tinyint(3) unsigned NOT NULL default '0',
  birthday tinyint(3) unsigned NOT NULL default '0',
  blood varchar(5) NOT NULL default '',
  marry tinyint(1) NOT NULL default '0',
  birthprovince varchar(20) NOT NULL default '',
  birthcity varchar(20) NOT NULL default '',
  resideprovince varchar(20) NOT NULL default '',
  residecity varchar(20) NOT NULL default '',
  note text NOT NULL,
  spacenote text NOT NULL,
  authstr varchar(20) NOT NULL default '',
  theme varchar(20) NOT NULL default '',
  nocss tinyint(1) NOT NULL default '0',
  menunum smallint(6) unsigned NOT NULL default '0',
  css mediumtext NOT NULL,
  privacy mediumtext NOT NULL,
  friend mediumtext NOT NULL,
  feedfriend mediumtext NOT NULL,
  sendmail mediumtext NOT NULL,
  field_1 varchar(50) NOT NULL default '',
  field_2 varchar(50) NOT NULL default '',
  field_3 varchar(50) NOT NULL default '',
  field_4 varchar(50) NOT NULL default '',
  newemail varchar(100) NOT NULL default '',
  mobile varchar(40) NOT NULL default '',
  msnrobot varchar(15) NOT NULL default '',
  msncstatus tinyint(1) NOT NULL default '0',
  videopic varchar(32) NOT NULL default '',
  magicstar tinyint(1) NOT NULL default '0',
  magicexpire int(10) unsigned NOT NULL default '0',
  timeoffset varchar(20) NOT NULL default '',
  field_6 varchar(50) NOT NULL default '',
  field_7 varchar(50) NOT NULL default '',
  field_8 varchar(50) NOT NULL default '',
  field_9 varchar(50) NOT NULL default '',
  field_10 varchar(50) NOT NULL default '',
  field_11 varchar(50) NOT NULL default '',
  field_12 varchar(50) NOT NULL default '',
  PRIMARY KEY  (uid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_spacefield VALUES ('1','1','','0','4522345789','','1980','7','2','A','1','山东','淄博','山东','淄博','','','','','0','0','','','187,21,553,360,259,243,96,576,491,390,355,286,270,140,129,36,29,577,558,385,369,370,389,386,421,459,457,325,365,214,292,302,241,211,192,194,188,185,159,166,157,155,132,110,116,112,53,57,64,84,85,20,24,7,471,441,410,350,341,339,321,309,288,287,285,279,244,239,232,224,215,197,165,164,161,148,138,130,122,117,113,106,104,100,99,98,76,75,74,72,70,69','187,21,553,360,259,243,96,576,491,390,355,286,270,140,129,36,29,577,558,385,369,370,389,386,421,459,457,325,365,214,292,302,241,211,192,194,188,185,159,166,157,155,132,110,116,112,53,57,64,84,85,20,24,7,471,441,410,350,341,339,321,309,288,287,285,279,244,239,232,224,215,197,165,164,161,148,138,130,122,117,113,106,104,100,99,98,76,75,74,72,70,69','','情感和生活帮助','情感和生活帮助','健壮 帅气 绅士气质','成熟 稳重 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','5-10万','专科','经理');
INSERT INTO uchome_spacefield VALUES ('3','1','86064366@qq.com','0','','','1985','4','1','O','1','山东','淄博','山东','淄博','','','','','0','0','','','537,274,9,15,125,494,17,244','537,274,9,15,125,494,17,244','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','活泼 可爱 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('4','1','860643668@qq.com','0','','','1987','7','16','B','1','山东','淄博','山东','淄博','','','','','0','0','','','537,274,9,15,125,494,17,244','537,274,9,15,125,494,17,244','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','活泼 可爱 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('5','2','xiaoyezi@126.com','0','','','1990','5','4','B','1','','','','','','','','','0','0','','','537,274,9,15,125,494,17,244','537,274,9,15,125,494,17,244','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','活泼 可爱 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('6','0','871656@qq.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','537,274,9,15,125,494,17,244','537,274,9,15,125,494,17,244','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('7','0','8546416@qq.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','244,1,17,494,125,15,9,274,537','244,1,17,494,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('8','0','141835464@qq.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','537,274,9,15,125,494,17,244','537,274,9,15,125,494,17,244','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('9','0','yy3431777@163.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','537,274,15,125,494,17,244','537,274,15,125,494,17,244','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('10','0','545425@qq.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','537,274,15,125,494,17,244','537,274,15,125,494,17,244','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('11','2','jingshui@163.com','0','792566030','','0','0','0','','0','','','','','','','','t5','0','0','','','','','','职高','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('12','2','xuelian@163.com','0','996309265','','0','0','0','','0','','','陕西','铜川','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('13','2','feifei@163.com','0','905397085','','0','0','0','','0','','','海南','海口','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('14','1','223@aa.cn','0','765438765','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('15','2','linlin@163.com','0','','','0','0','0','','0','山东','淄博','山东','淄博','','','','','0','0','','','10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555','10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','活泼 可爱 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('16','1','qq@qq.com','0','','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('17','2','yaya22@qq.com','0','656445044','','1984','10','5','A','1','山东','淄博','山东','淄博','','','','','0','0','','','10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555','10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','活泼 可爱 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('18','1','yanzi@qq.com','0','564580943','','0','0','0','','0','','','安徽','蚌埠','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('19','1','susu@qq.com','0','','','1987','6','11','A','1','贵州','铜仁','','','','','','','0','0','','','','','','大专','人力资源/行政/后勤','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('20','1','alongwalker@yahoo.com','0','289827332','','1980','9','25','A','1','陕西','咸阳','','','','','','','0','0','','','1,9','1,9','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('21','1','634572972@qq.com','0','634572972','33','1990','6','7','','1','四川','成都','','','','','','','0','0','','','9,24,1,27,29,34','9,24,1,27,29,34','','高中','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('22','1','865087050@qq.com','0','865087050','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('23','1','xgyinqing@mail.china.com','0','634964808','','0','0','0','','0','四川','成都','','','','','','','0','0','','','','','','本科','自由职业者','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('24','1','1016432428@qq.com','0','1016432428','','1985','5','2','','0','','','','','','','','','0','0','','','21,25,9,1','21,25,9,1','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('25','1','85108084@qq.com','0','85108084','','0','0','0','','0','','','北京','海淀','','','','','0','0','','','24','24','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('26','1','grasszj@yahoo.com.cn','0','14546526','','0','0','0','','0','','','四川','成都','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('27','1','714097114@qq.com','0','714097114','yy','1989','1','12','A','1','山东','淄博','山东','淄博','','','','','0','0','','','9,274,243,158,29,211,116,402,339,278,259,244,233,125,57,395,352,341,270,263,140,232,206,176,350,355,365,325,320,290,292,295,177,202,122,159,161,34,36,44,52,66,84,110,21,390,255','9,274,243,158,29,211,116,402,339,278,259,244,233,125,57,395,352,341,270,263,140,232,206,176,350,355,365,325,320,290,292,295,177,202,122,159,161,34,36,44,52,66,84,110,21,390,255','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','成熟 稳重 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('28','1','z519735488@126.com','0','519735488','','0','0','0','','0','','','','','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('29','1','1014750015@qq.com','0','1014750015','王伟明','1969','7','24','','2','四川','成都','四川','成都','','','','','0','0','','','1,21,9,36,27,39,64,67','1,21,9,36,27,39,64,67','','大专','医疗/护理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('31','1','www.zy450110@163.com','0','3796110','','1983','8','15','O','0','贵州','贵阳','','','','','','','0','0','','','','','','本科','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('30','1','norye@yahoo.cn','0','381696042','','0','0','0','','0','','','四川','绵阳','','','','','0','0','','','9,125','9,125','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('32','1','wjunhua168@126.com','0','1006581049','','1984','0','0','','1','广东','广州','','','','','','','0','0','','','9','9','','本科','生物/制药/医疗器械','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('33','1','tiancaigui123@tom.com','0','920842108','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('34','1','ll441238979@126.com','0','441238979','','1986','12','10','','1','辽宁','盘锦','','','','','','','0','0','','','9,27,21,35','9,27,21,35','','高中','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('35','1','465884847@qq.com','0','465884847','','0','0','0','','0','','','四川','达州','','','','','0','0','','','9,34','9,34','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('36','1','956757769@qq.com','0','956757769','','0','0','0','','1','重庆','','','','','','','','0','0','','','9,29,27,1','9,29,27,1','','本科','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('37','1','diablo910407@yahoo.cn','0','313489613','','0','0','0','','0','','','北京','丰台','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('38','1','461540282@qq.com','0','461540282','','1983','11','31','','1','','','','','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('39','1','415327720@.qq.com','0','415327720','','0','0','0','','0','','','湖北','武汉','','','','','0','0','','','29,9','29,9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('40','1','gswt_001@163.com','0','105858077','','0','0','0','','0','','','','','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('41','1','945395136@qq.com','0','945395136','','1992','1','24','A','1','四川','绵阳','','','','','','','0','0','','','','','','高中','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('42','1','401002736@qq.com','0','401002736','','1986','3','1','','1','四川','成都','','','','','','','0','0','','','9','9','','职高','市场拓展/公关商务','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('43','1','255545545@QQ.com','0','255545545','','1980','8','7','AB','1','北京','东城','上海','黄浦','','','','','0','0','','','','','','大专','自由职业者','找X伴侣','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('44','1','deng13350008167@163.com','0','82330690','','1977','2','3','O','1','四川','绵阳','','','','','','','0','0','','','9,27,3','9,27,3','','大专','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('45','1','416820364@qq.com','0','416820364','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('46','1','mayunxiang2008@163.com','0','876401970','','0','0','0','','0','','','','','','','','','0','0','','','9,73,62,64,87,274,135,306,115,116,119,147,158,159,161,165,168,170,179,176,188,187,202,207,230,244,246,266,302,53,57,58','9,73,62,64,87,274,135,306,115,116,119,147,158,159,161,165,168,170,179,176,188,187,202,207,230,244,246,266,302,53,57,58','','大专','自由职业者','E夜情,X伴侣,情人都可','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('47','1','457115674@qq.com','0','457115674','','0','0','0','','0','','','四川','乐山','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('48','1','393376201@qq.com','0','393376201','','1984','8','8','','0','四川','绵阳','','','','','','','0','0','','','','','','大专','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('49','1','paio@qq.com','0','45467843005','','0','0','0','','0','','','福建','莆田','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('50','1','wjiusyangyong@163.com','0','405310597','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('51','1','wodeweiyi666.@163.com','0','1061726641','sadasdasd','1984','10','2','','1','','','','','','','','','0','0','','','9','9','','高中','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('52','1','xuming3341355@163.com','0','345763574','','1980','1','31','','2','黑龙江','哈尔滨','','','','','','','0','0','','','9,27,3','9,27,3','','本科','保险','E夜情,X伴侣,情人都可','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('53','1','189381330@qq.com','0','189381330','','1984','7','3','','1','四川','绵阳','','','','','','','0','0','','','46,9,1','46,9,1','','','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('54','2','zhangyan@163.com','0','1007794273','','1986','4','27','AB','1','','','','','','','','','0','0','','','58','58','','大专','人力资源/行政/后勤','E夜情,X伴侣,情人都可','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('55','2','84202786@.qq.com','0','982308691','','0','0','0','','0','','','四川','绵阳','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('56','1','ddfsdf@163.com','0','3838438','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('57','1','1248021072@qq.com','0','1248021072','luoyonyi','1972','12','6','','2','四川','成都','','','','','','','0','0','','','9,27,46,1','9,27,46,1','','高中','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('58','1','niecheng168@sohu.com','0','453201191','','0','0','0','','0','四川','绵阳','四川','成都','','','','','0','0','','','9,62,63,64,68,72,73,82,85,91,101,110,119,147,46,187,54','9,62,63,64,68,72,73,82,85,91,101,110,119,147,46,187,54','','本科','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('59','1','yan_langtian@163.com','0','329015262','','0','0','0','','0','','','北京','海淀','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('60','1','496364169@qq.com','0','1131351158','','0','0','0','','0','','','','','','','','','0','0','','','','','','大专','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('61','1','371544947@qq.com','0','371544947','','1985','9','23','','0','四川','成都','','','','','','','0','0','','','','','','本科','设计/创意','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('62','1','nairenchen@163.com','0','566712','234','1987','8','17','O','1','天津','红挢','','','','','','','0','0','','','63,64,9,58,46','63,64,9,58,46','','职高','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('63','1','546546548@qq.com','0','46548445','','0','0','0','','0','','','四川','成都','','','','','0','0','','','62,58','62,58','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('64','1','liu512169@163.com','0','278629220','','1983','1','26','AB','1','四川','绵阳','','','','','','','0','0','','','58,9,62,243,29,87,67,116,46,1,459,159,161,134,66,326','58,9,62,243,29,87,67,116,46,1,459,159,161,134,66,326','','大专','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('65','1','woshimengqingwei@163.com','0','2123486','','1980','3','26','A','1','河北','邯郸','','','','','','','0','0','','','','','','本科','文学','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('66','1','chen.fggg@163.com','0','623056193','','1976','10','6','','0','四川','绵阳','','','','','','','0','0','','','3,64,27','3,64,27','','本科','高级管理','找X伴侣','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('67','1','york1213@yahoo.com.cn','0','','','1981','1','10','','2','上海','普陀','','','','','','','0','0','','','64,29,3','64,29,3','','硕士','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('68','1','013869515382000@163.COM','0','674758660','','0','0','0','','0','','','','','','','','','0','0','','','9,58','9,58','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('69','1','hujia343053@163.com','0','343053503','','1988','10','4','','0','湖北','襄樊','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('70','1','872300214@qq.com','0','872300214','','0','0','0','','0','','','山西','太原','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('71','1','wu_book@163.com','0','449404473','','0','0','0','','0','','','云南','潞西','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('72','1','laomangpxy@yeah.net','0','909723713','','1963','6','14','A','2','辽宁','沈阳','','','','','','','0','0','','','1,58','1,58','','本科','传媒/影视','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('73','1','375423490@qq.com','0','375423490','','1986','3','9','AB','1','四川','资阳','','','','','','','0','0','','','9,46,243,274,91,173,110,58,411,334,292,3','9,46,243,274,91,173,110,58,411,334,292,3','','大专','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('74','1','1033595792@qq.com','0','1033595792','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('75','1','360161529@qq.com','0','360161529','','0','0','0','','0','','','广东','茂名','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('76','1','690840176@qq.com','0','690840176','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('77','1','chinaxiami@163.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('78','1','88000838@qq.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('79','1','752994626@qq.com','0','752994626','','1991','5','6','O','1','重庆','九龙坡','','','','','','','0','0','','','9','9','','高中','','E夜情,X伴侣,情人都可','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('80','1','4532454@hotmail.com','0','65454121','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('81','1','yhyfrend@163.com','0','547312551','','1980','2','4','','2','湖北','武汉','','','','','','','0','0','','','83','83','','大专','传媒/影视','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('82','1','89605348@qq.com','0','89605348','','0','0','0','AB','1','','','','','','','','','0','0','','','83,58','83,58','','','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('83','1','wyjvswjn@126.com','0','545003341','','0','0','0','','0','','','四川','成都','','','','','0','0','','','82,81','82,81','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('84','1','jiangshangren39@163.com','0','269364081','','1979','8','6','B','2','重庆','江北','','','','','','','0','0','','','9,27,3,1','9,27,3,1','','本科','高级管理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('85','1','363470132@126.com','0','','','0','0','0','','0','湖南','张家界','','','','','','','0','0','','','1,9,58','1,9,58','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('86','1','123@sohu.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('87','1','cec@126.com','0','48522253','','0','0','0','','0','','','','','','','','','0','0','','','64,91,90,46','64,91,90,46','','大专','其它','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('88','1','gyt700524@163.com','0','814681397','','0','0','0','','0','','','','','','','','','0','0','','','','','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('89','1','dengjianxiang@yahoo.cn','0','529795759','','1981','10','21','','2','广东','东莞','','','','','','','0','0','','','','','','高中','自由职业者','找情人','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('90','1','zuohao36609208@sina.com','0','941647203','','1981','7','14','B','0','北京','朝阳','','','','','','','0','0','','','9,87','9,87','','本科','采购/贸易','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('91','1','248954067@email.com','0','248954067','','1987','8','7','','1','重庆','大足','','','','','','','0','0','','','94,58,9,96,73,87,97','94,58,9,96,73,87,97','','高中','其它','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('92','1','23434@sina.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('93','1','a3988@tom.com','0','1216973628','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('94','1','yugehaoku@yahoo.com.cn','0','','','0','0','0','','0','','','四川','成都','','','','','0','0','','','91','91','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('95','1','7873349432@qq.com','0','787334943','','1992','3','5','B','1','湖南','怀化','','','','','','','0','0','','','','','','高中','私营业主','','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('96','2','ta10003456@163.com','0','','','1990','8','26','B','1','山东','淄博','山东','淄博','','','1249963174	1	27gn9p','','0','0','','','187,371,9,255,292,247,91,390,202,99,474,189,447,363,411,135,352,246,185,183,1,568,301,478,389,334,242,211,176,459,470,439,372,355,325,299,206,161,572','187,371,9,255,292,247,91,390,202,99,474,189,447,363,411,135,352,246,185,183,1,568,301,478,389,334,242,211,176,459,470,439,372,355,325,299,206,161,572','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','活泼 可爱 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('97','1','wangbin2181@qq.com','0','972292181','','0','0','0','','0','四川','绵阳','','','','','','','0','0','','','91,188,176,9,187','91,188,176,9,187','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('98','1','sihan502@163.com','0','395179896','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('99','1','543556874@qq.com','0','','','1989','7','4','B','0','贵州','都匀','','','','','','','0','0','','','1,96','1,96','','大专','医疗/护理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('100','1','lizhengaimin@139.com','0','390297092','','0','0','0','','0','','','北京','朝阳','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('101','1','lvxiaoqi2544@163.com','0','46021227','lvxiaoqi@hotmail.com','0','0','0','B','1','湖南','株洲','','','','','','','0','0','','','9,58','9,58','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('102','1','alan9358@sina.com','0','280208229','','1986','3','25','A','1','四川','成都','','','','','','','0','0','','','9','9','','大专','其它','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('103','1','621721@163.com','0','9321918315','','0','0','0','A','2','四川','绵阳','','','','','','','0','0','','','214,292,115,249,211,104,243,269,232','214,292,115,249,211,104,243,269,232','','','质控/安检','','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('104','1','guweng609816001@yahoo.cn','0','609816001','','0','0','0','','0','','','','','','','','','0','0','','','1,103','1,103','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('105','1','yyc5521@qq.com','0','42339292','','1986','10','20','O','1','四川','德阳','','','','','','','0','0','','','','','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('106','1','happyboy533@163.com','0','','','0','0','0','','0','','','黑龙江','北安','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('107','1','kang9335@sina.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('108','1','yjx6688@126.com','0','','','0','0','0','','0','','','福建','厦门','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('109','2','zyhbjyh@126.com','0','517413695','','1986','0','0','O','0','湖北','武汉','','','','','','','0','0','','','','','','本科','自由职业者','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('110','1','769544549@qq.COM','0','769544549','','1963','11','5','','1','湖北','武汉','','','','','','','0','0','','','3,73,58,9,1,27','3,73,58,9,1,27','','大专','市场拓展/公关商务','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('111','1','bupt_peijun@163.com','0','147360364','','0','0','0','','0','','','广东','东莞','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('112','1','414531806@qq.com','0','414531806','','1990','10','24','O','0','辽宁','沈阳','','','','','','','0','0','','','1','1','','','其它','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('113','1','hanhan@163.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('114','1','184888447@qq.com','0','184888447','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('115','1','171740396@qq.com','0','171740396','富兴','1918','5','8','','2','湖南','衡阳','','','','','','','0','0','','','46,103','46,103','','博士','自由职业者','','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('116','1','348540486@qq.com','0','348540486','','0','0','0','','2','','','','','','','','','0','0','','','27,3,46,9,64,1','27,3,46,9,64,1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('117','1','271440820@qq.com','0','271440820','','1952','11','16','AB','1','湖南','郴州','','','','','','','0','0','','','1','1','','本科','人力资源/行政/后勤','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('118','1','suiyue1hao.chen@163.com','0','','','0','0','0','','0','','','江苏','常州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('119','1','xb025201@126.com','0','15799291','','1985','9','17','AB','0','四川','西昌','','','','','','','0','0','','','58,46,9','58,46,9','','大专','销售','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('120','1','boolint@126.com','0','945191934','','0','0','0','','1','湖南','长沙','','','','','','','0','0','','','9','9','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('121','1','475278659@.qq.com','0','475278659','SHR','1983','2','17','','0','广东','韶关','','','','','','','0','0','','','','','','大专','自由职业者','找E夜情','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('122','1','362254527@qq.com','0','362254527@qq.com','','1968','8','8','A','0','安徽','马鞍山','安徽','马鞍山','','','','','0','0','','','187,129,1,278,211,27,168,473,202,203,209,148,435','187,129,1,278,211,27,168,473,202,203,209,148,435','','大专','其它','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('123','1','kivenlv@163.com','0','79172559','','1983','6','1','O','1','四川','绵阳','四川','绵阳','','','','','0','0','','','','','','本科','高级管理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('124','1','pzhcjk@sohu.com','0','1142198948','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('125','2','1007794273@qq.com','0','1007794273','','1988','3','25','AB','1','山东','淄博','山东','淄博','','','','','0','0','','','187,126,132,287,292,218,206,244,30,176,127,10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555,263,129,27','187,126,132,287,292,218,206,244,30,176,127,10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555,263,129,27','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','活泼 可爱 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('126','1','90242@qq.com','0','902421','','1986','5','30','','1','四川','成都','','','','','','','0','0','','','125','125','','大专','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('127','1','1007794273@qq.com','0','1007794273','','1989','2','26','','1','四川','绵阳','','','','','','','0','0','','','125','125','','高中','销售','E夜情,X伴侣,情人都可','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('128','1','zhanbocd@sina.com','0','','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('129','1','347409412@qq.com','0','347409412','','0','0','0','','0','','','','','','','','','0','0','','','1,122,9,125,188,206','1,122,9,125,188,206','','大专','自由职业者','找情人','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('130','1','ado83@163.com','0','279261028','','1983','1','11','','1','四川','广安','','','','','','','0','0','','','1','1','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('131','1','hangge130@sina.com','0','386312864','','1990','4','2','','1','河北','邢台','','','','','','','0','0','','','','','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('132','1','872881941@qq.com','0','1051606165','','1982','11','19','AB','1','四川','南充','','','','','','','0','0','','','125,1','125,1','','大专','市场拓展/公关商务','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('133','1','moke667@163.com','0','9924254','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('134','1','blue_god945@yahoo.com.cn','0','392933133','','1985','1','22','O','1','四川','成都','四川','成都','','','','','0','0','','','187,171,135,232,214,206,209,202,185,176,152,158,64','187,171,135,232,214,206,209,202,185,176,152,158,64','','本科','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('135','1','iamwayeny@yahoo.cn','0','413923043','','1984','8','23','O','1','','','','','','','','','0','0','','','243,255,158,355,292,411,96,138,455,386,358,348,46,187,385,478,481,474,471,470,459,456,447,439,363,406,352,325,320,269,249,200,521,134','243,255,158,355,292,411,96,138,455,386,358,348,46,187,385,478,481,474,471,470,459,456,447,439,363,406,352,325,320,269,249,200,521,134','','硕士','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('136','1','hongxin@163.com','0','362676392','','0','0','0','','0','','','河南','郑州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('137','1','hongxin@163.com','0','362676392','','1969','5','18','','1','河南','郑州','','','','','','','0','0','','','','','','大专','采购/贸易','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('138','1','lysfycm@126.com','0','348786020','','1975','0','0','','2','山东','青岛','','','','','','','0','0','','','1,135','1,135','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('139','1','po369530246@126.com','0','1132352025','','0','0','0','','0','','','江西','南昌','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('140','1','guhuolv@163.com','0','41141055','guhuolv@163.com','1987','5','22','B','2','山东','济南','','','','','','','0','0','','','1,27','1,27','','大专','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('141','1','341231312@qq.com','0','1245874321','','0','0','0','','0','','','广西','南宁','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('142','2','liwenpin2214@yahoo.com.cn','0','390901392','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('143','2','771223746@qq.com','0','771226746','','0','0','0','','0','','','湖北','荆门','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('144','1','bejiyu@qq.com','0','121212121','','0','0','0','','0','','','湖南','长沙','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('145','1','dsdsadsa@163.com','0','172666088','','0','0','0','','0','','','青海','西宁','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('146','1','findline2008@sina.com','0','183044637','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('147','1','284395507@qq.com','0','284395507','','1990','1','28','','1','河北','沧州','','','','','','','0','0','','','148,46,58','148,46,58','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('148','1','xdcmtianlaiyin@yahoo.cn','0','516445044','','1987','11','4','','1','北京','朝阳','','','','','','','0','0','','','147,1,122,9','147,1,122,9','','本科','自由职业者','找E夜情','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('149','2','asdad@126.com','0','1224627924','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('150','1','wangzhao@1990.com','0','490216127','','2009','1','1','','1','安徽','蚌埠','','','','','','','0','0','','','','','','初中','自由职业者','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('151','1','1207027894@qq.com','0','1207027894','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('152','1','sixue1314@163.com','0','1051492867','','1983','10','28','','1','四川','成都','','','','','','','0','0','','','134','134','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('153','1','945094926@qq.com','0','945094926','','0','0','0','','0','','','海南','定安','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('154','1','zhk2009@vip.qq.com','0','1203487710','','1985','8','23','O','1','浙江','杭州','','','','','','','0','0','','','','','','大专','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('155','1','zht_zhang@yahoo.com.cn','0','254171738','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('156','1','940658052@qq.com','0','940658052','','1987','0','0','','1','','','','','','','','','0','0','','','','','','','','','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('157','1','229737703@qq.com','0','229737703','','1988','4','1','B','1','浙江','金华','','','','','','','0','0','','','1','1','','大专','旅游','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('158','1','xiaorenfo@sina.com','0','2354987','','1981','3','10','O','2','江苏','盐城','','','','','','','0','0','','','187,9,134,373,135,27,301,46,176,243,326,395,386,173','187,9,134,373,135,27,301,46,176,243,326,395,386,173','','本科','客户服务/技术支持','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('159','1','mail163hao@163.com','0','1063178309','','1981','2','13','','1','内蒙古','锡林浩特','','','','','','','0','0','','','46,64,1,27,9','46,64,1,27,9','','','','找X伴侣','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('160','1','shayetian@yahoo.com.cn','0','1078149001','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('161','1','weizhang@198.com','0','157524656','','1980','3','18','','2','湖北','鄂州','','','','','','','0','0','','','96,1,46,64,27','96,1,46,64,27','','高中','自由职业者','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('162','1','thzb@sina.com','0','718796010','','0','0','0','','0','','','安徽','阜阳','','','','','0','0','','','','','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('163','2','fujianxun2006@126.com','0','361270383','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('164','1','fujianxun2006@126.com','0','361270383','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','大专','自由职业者','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('165','1','yan826459153@qq.com','0','826459153','','1983','8','7','','1','广西','贵港','广西','贵港','','','','','0','0','','','1,9,46','1,9,46','','初中','自由职业者','找X伴侣','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('166','2','352282768@qq.com','0','352282768','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('167','1','yt2009l@163.com','0','609206286','晚秋','1966','5','28','A','2','辽宁','本溪','','','','','','','0','0','','','','','','本科','财会/审计/统计','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('168','1','yhhmww520@163.com','0','393318585','','1985','10','17','O','0','江苏','盐城','','','','','','','0','0','','','122,46','122,46','','本科','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('169','1','benchi666@yahoo.com.cn','0','56640690','','1985','9','23','A','1','河南','郑州','','','','','','','0','0','','','','','','本科','金融/证券/投资','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('170','1','gangwan112@126.com','0','937140773','','1980','10','10','','0','四川','成都','','','','','','','0','0','','','9,46','9,46','','','','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('171','1','535372007@qq.com','0','535372007','','0','0','0','','1','广东','汕头','广东','深圳','','','','','0','0','','','134','134','','高中','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('172','1','xuhuayong79@sohu.com','0','851720279','','0','0','0','','0','','','四川','成都','','','','','0','0','','','242','242','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('173','1','huanghao_77@sohu.com','0','136740410','','1979','12','6','O','2','黑龙江','哈尔滨','黑龙江','哈尔滨','','','','','0','0','','','372,411,174,278,407,387,176,187,211,73,9,431,363,158','372,411,174,278,407,387,176,187,211,73,9,431,363,158','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('174','1','qixianzheng10000@yahoo.com.cn','0','741930361','','1972','3','22','B','0','安徽','合肥','','','','','','','0','0','','','173','173','','本科','高级管理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('175','1','874592867@qq.com','0','874592867','','1983','1','1','','0','四川','绵阳','','','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('176','1','448777809@qq.com','0','1216902223','','1986','1','1','','1','四川','成都','四川','成都','','','','','0','0','','','177,9,185,134,173,252,206,188,125,96,278,158,209,3,46,27,97','177,9,185,134,173,252,206,188,125,96,278,158,209,3,46,27,97','','本科','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('177','1','329113841@qq.com','0','329113841','','1980','12','14','','0','四川','达州','','','','','','','0','0','','','9,176,3,27','9,176,3,27','','高中','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('178','1','scldt@126.com','0','1053293612','','0','0','0','','0','','','四川','成都','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('179','1','410863498@qq.com','0','410863498','','1985','1','5','','1','北京','崇文','','','','','','','0','0','','','46','46','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('180','1','hanwei@163.com','0','892254450','','0','0','0','','0','','','四川','广安','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('181','1','455658761@qq.com','0','455658761','','1981','12','14','','1','四川','绵阳','','','','','','','0','0','','','9','9','','职高','质控/安检','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('182','1','sdsd@126.com','0','1224627924','','0','0','0','','0','','','四川','成都','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('183','1','zmxxl@sina.com','0','347842284','','1973','12','8','A','2','四川','乐山','','','','','','','0','0','','','96','96','','大专','客户服务/技术支持','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('184','1','908664093@qq.com','0','908664093','','0','12','23','B','2','四川','绵阳','','','','','','','0','0','','','','','','技校','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('185','1','605506151@qq.com','0','605506151','','1979','1','23','','1','四川','成都','','','','','','','0','0','','','9,134,96,1,176','9,134,96,1,176','','大专','市场拓展/公关商务','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('186','1','wuyukun0707@qq.com','0','417282726','','0','0','0','','0','','','四川','资阳','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('187','1','122426396@qq.com','0','122426396','','1984','0','0','','1','山东','淄博','山东','淄博','','','','','0','0','','','96,9,264,263,125,134,189,191,209,195,255,232,363,158,1,173,122,265,547,46,243,202,58,435,210,188,365,271,208,97,497,364,135,205','96,9,264,263,125,134,189,191,209,195,255,232,363,158,1,173,122,265,547,46,243,202,58,435,210,188,365,271,208,97,497,364,135,205','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','成熟 稳重 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('188','1','xiezi23@yahoo.cn','0','646345220','','1982','9','20','','1','四川','成都','','','','','','','0','0','','','97,9,192,46,129,189,176,187,1','97,9,192,46,129,189,176,187,1','','本科','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('189','1','tsingchao2004@yahoo.com.cn','0','1183219617','','1986','12','11','B','1','四川','成都','','','','','','','0','0','','','187,200,210,263,269,192,188,206,274,96,9','187,200,210,263,269,192,188,206,274,96,9','','硕士','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('190','1','zhangjing123@qq.com','0','1007073568','','0','0','0','','0','','','北京','','','','','','0','0','','','','','','本科','医疗/护理','找情人','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('191','1','nzxsos@sina.com','0','237052081','','1989','10','21','B','1','云南','昆明','云南','昆明','','','','','0','0','','','187','187','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('192','1','971166916@QQ.COM','0','971166916','','1977','2','19','A','1','湖北','武汉','','','','','','','0','0','','','188,189,9,1','188,189,9,1','','技校','传媒/影视','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('193','1','birunkui@sogou.com','0','243490225','','1981','9','21','','1','四川','成都','','','','','','','0','0','','','9','9','','本科','教育/培训','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('194','2','54622845@qq.com','0','54622845','','0','0','0','','0','','','江苏','太仓','','','','','0','0','','','1,209','1,209','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('195','1','398202320@qq.com','0','398202320','','1981','3','7','','1','四川','成都','','','','','','','0','0','','','187,9','187,9','','硕士','其它','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('196','1','tclopp007@163.com','0','982151850','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('197','2','545158079@qq.com','0','545158079','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('198','1','kinghui11@hotmail.com','0','282054992','','0','0','0','','0','','','广东','广州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('199','1','270183214@qq.com','0','270183214','','1985','8','15','','1','湖南','永州','','','','','','','0','0','','','','','','本科','教育/培训','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('200','1','84008357@qq.com','0','916852285','','1986','11','6','','1','四川','成都','','','','','','','0','0','','','9,135,189','9,135,189','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('201','1','ghkoivb@163.com','0','643139123','','1983','1','25','','1','黑龙江','绥化','','','','','','','0','0','','','','','','','其它','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('202','1','cft051@163.com','0','913953847','','0','0','0','O','1','北京','','','','','','','','0','0','','','187,419,397,122,46,251,240,230,96,27,209,206,134','187,419,397,122,46,251,240,230,96,27,209,206,134','','大专','传媒/影视','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('203','1','sbh7608@163.com','0','32674532','','1981','5','8','O','1','北京','海淀','','','','','','','0','0','','','206,9,122,211','206,9,122,211','','硕士','自由职业者','E夜情,X伴侣,情人都可','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('204','1','445490184@qq.com','0','445490184','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('205','1','geondr3i@163.com','0','798138999','','0','0','0','','0','','','四川','成都','','','','','0','0','','','187','187','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('206','1','zhylbj@yahoo.com.cn','0','5462742','','1977','0','0','','0','','','','','','','','','0','0','','','211,27,202,203,176,129,214,9,209,125,189,96,134','211,27,202,203,176,129,214,9,209,125,189,96,134','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('207','1','792746496@QQ.com','0','792746496','','0','0','0','','1','','','','','','','','','0','0','','','46,9','46,9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('208','1','8984858@163.com','0','498497764','','0','0','0','','0','','','吉林','松原','','','','','0','0','','','187','187','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('209','1','qq@1586552.com','0','1586552','lzhtx@msn.com','1971','9','9','B','2','北京','海淀','北京','海淀','','','','','0','0','','','187,202,9,134,122,194,206,176','187,202,9,134,122,194,206,176','','硕士','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('210','1','474230499@qq.com','0','474230499','','1987','10','8','O','1','北京','大兴','','','','','','','0','0','','','187,189','187,189','','本科','高级管理','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('211','1','zzzwwwbbb@sina.com','0','','','0','0','1','','0','湖北','','','','','','','','0','0','','','1,27,206,103,9,214,203,173,122,96','1,27,206,103,9,214,203,173,122,96','','','其它','','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('212','1','sdfs@qq.com','0','131312313','','0','0','0','','0','','','','','','','','','0','0','','','3','3','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('213','1','1046902405@qq.com','0','1046902405','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('214','1','xiehaoxiang12345@163.com','0','535221240','','1987','3','2','B','1','四川','成都','四川','成都','','','','','0','0','','','271,278,223,134,292,103,206,211,1','271,278,223,134,292,103,206,211,1','','本科','传媒/影视','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('215','1','zhuzhao2quan@126.com','0','248755802','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('216','1','xtf20021630@sina.com','0','857019734','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('217','1','Wangxiao19830817@sina.com','0','95202901','','1982','6','15','B','1','','烟台','山东','济南','','','','','0','0','','','','','','大专','人力资源/行政/后勤','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('218','1','huqiaoa@163.com','0','1023532','','1988','1','7','','1','重庆','九龙坡','','','','','','','0','0','','','125','125','','本科','高级管理','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('219','1','694664069@qq.com','0','694664069','','0','0','0','','0','湖北','荆州','','','','','','','0','0','','','','','','','传媒/影视','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('220','1','heijei2003@yahoo.com.cn','0','3256333','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('221','1','296386432@QQ.com','0','296386432','','1988','1','8','','1','','','','','','','','','0','0','','','','','','','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('222','1','sqwfde@qq.com','0','734786447','','1989','5','2','O','1','安徽','合肥','','','','','','','0','0','','','9','9','','技校','','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('223','1','279066942@qq.com','0','279066942','','1987','7','21','','1','','','','','','','','','0','0','','','214','214','','大专','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('224','1','chenlong@764076008.com','0','764076008','','1991','1','19','','1','江苏','盐城','','','','','','','0','0','','','1','1','','大专','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('225','1','289693347@qq.com','0','1204893686','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('226','1','dfksdfh@163.com','0','11445544','sdfsdf5411','1983','10','17','AB','1','辽宁','沈阳','辽宁','沈阳','','','','','0','0','','','','','','博士','房地产/装修/物业','找E夜情','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('227','1','yuzheq11q11@126.com','0','13383766','','0','0','0','','0','','','四川','广安','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('228','1','lplp909@163.com','0','123456','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('229','2','lijianze102@126.com','0','553073375','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('230','1','lijianhang86@163.com','0','286815118','','1988','9','27','','1','北京','昌平','','','','','','','0','0','','','202,46','202,46','','大专','设计/创意','找X伴侣','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('231','1','57639363@163.COM','0','436054751','','0','0','0','','0','','','江苏','苏州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('232','1','870616514@qq.com','0','870616514','nn','1990','3','17','A','1','山东','淄博','山东','淄博','','','','','0','0','','','371,386,355,459,458,517,187,292,491,462,512,385,339,553,470,407,551,483,430,439,415,334,319,103,1,527,387,389,363,499,550,478,265,269,27,134','371,386,355,459,458,517,187,292,491,462,512,385,339,553,470,407,551,483,430,439,415,334,319,103,1,527,387,389,363,499,550,478,265,269,27,134','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','成熟 稳重 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('233','1','zzzwwwbbb828@sina.com','0','','','0','10','3','','2','四川','','','','','','','','0','0','','','27','27','','','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('234','1','wangqianshishen@souhu.com','0','635399457','','1990','4','6','AB','1','四川','成都','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('238','1','313535012@qq.com','0','313535012','','0','0','0','','0','','','湖北','武汉','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('235','1','liwenpin0001@yahoo.com.cn','0','12396761210','','1988','7','10','O','1','重庆','渝中','','','','','','','0','0','','','','','','本科','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('236','1','hahalym@qq.com','0','315041042','','0','0','0','','0','','','江西','宜春','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('237','2','jiayou@qq.com','0','315041042','','0','0','0','','0','','','江西','宜春','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('239','1','976541146@qq.com','0','976541146','','0','0','0','','0','','','山东','泰安','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('240','1','704210111@qq.com','0','704210111','','0','0','0','','0','','','北京','','','','','','0','0','','','202','202','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('241','1','liuyu6867@.163.com','0','157073747','','1970','0','0','','2','山东','威海','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('242','1','wcbxx@126.com','0','1229766959','','1974','4','24','','1','黑龙江','齐齐哈尔','','','','','','','0','0','','','172,96','172,96','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('243','1','zxs0803-0827@qq.com','0','303516956','郑文祥','1985','8','3','AB','1','江西','九江','广东','东莞','','','','','0','0','','','135,27,187,1,339,372,64,390,363,73,371,355,304,430,386,277,103,158,389,425,474,292,482,439,478,325','135,27,187,1,339,372,64,390,363,73,371,355,304,430,386,277,103,158,389,425,474,292,482,439,478,325','','高中','餐饮','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('244','1','304251749@qq.com','0','372520994','','0','0','0','','0','','','','','','','','','0','0','','','125,46,1,10,9,8,7,6,5,4,3,2,27','125,46,1,10,9,8,7,6,5,4,3,2,27','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('245','1','ggaixj@163.com','0','82953920','','0','0','0','','0','','','北京','朝阳','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('246','1','fanwei328@163.com','0','542024216','','0','0','0','','0','','','','','','','','','0','0','','','9,46,96','9,46,96','','大专','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('247','1','zhangqx731120@sina.com','0','453844829','','1973','11','20','','2','北京','朝阳','','','','','','','0','0','','','96','96','','本科','自由职业者','找X伴侣','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('248','1','aaa760610@126.com','0','749833693','','0','0','0','','0','','','四川','绵阳','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('249','1','aaa760610@126.com','0','749833693','','1976','6','0','O','2','四川','绵阳','','','','','','','0','0','','','9,135,103','9,135,103','','','','','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('250','1','614870264@qq.com','0','614870264','','0','0','0','','0','','','','','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('251','1','295352524@qq.com','0','295352524','','0','0','0','','0','','','','','','','','','0','0','','','202','202','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('252','1','www.@zhangchuang.com','0','819142621','','1980','12','18','O','2','北京','昌平','','','','','','','0','0','','','176','176','','本科','自由职业者','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('253','1','xioazhian88@126.com','0','401814963','','0','0','0','','0','','','上海','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('254','1','sd-wsq@163.com','0','290748340','','0','0','0','','0','','','山东','枣庄','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('255','1','ta10003456@163.com','0','634676305','','0','0','0','','0','山东','泰安','','','','','','','0','0','','','135,295,187,96,477,562,292,318,27,558,517,478,425,339,355,285,263,411,387,277,325','135,295,187,96,477,562,292,318,27,558,517,478,425,339,355,285,263,411,387,277,325','','','传媒/影视','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('256','1','darkeyes567@sina.com','0','923190719','','0','0','0','','2','','','四川','绵阳','','','','','0','0','','','355,259,269,263','355,259,269,263','','本科','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('257','1','hacker922@163.com','0','472162494','','0','0','0','','0','','','','','','','','','0','0','','','','','','硕士','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('258','1','sxl525831@163.com','0','995631256','','0','0','0','','0','','','山东','青岛','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('259','1','zhange-59@126.com','0','874479321','','0','0','0','','0','','','','','','','','','0','0','','','256,1,27','256,1,27','','大专','高级管理','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('260','1','16671018@qq.com','0','16671018','','1980','1','3','O','0','四川','攀枝花','','','','','','','0','0','','','','','','本科','自由职业者','找X伴侣','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('261','1','qilin82@sohu.com','0','98567','','1985','2','27','','2','甘肃','','','','','','','','0','0','','','','','','高中','自由职业者','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('262','1','6666@000.com','0','2222222','','0','0','0','','0','','','上海','长宁','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('263','1','baitanghu@yahoo.cn','0','36363993','kiven','1975','5','13','A','1','新疆','吐鲁番','四川','成都','','','','','0','0','','','187,255,265,125,256,189,27','187,255,265,125,256,189,27','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('264','1','1105674572@QQ.COM','0','1105674572','','1976','1','10','AB','2','安徽','蚌埠','江苏','苏州','','','','','0','0','','','187,265,267,269','187,265,267,269','','高中','自由职业者','找E夜情','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('265','1','112930968@qq.com','0','112930968','','1985','9','9','AB','1','四川','遂宁','四川','遂宁','','','','','0','0','','','187,267,264,232,263','187,267,264,232,263','','本科','金融/证券/投资','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('266','1','116051314@qq.com','0','116051314','','1982','1','17','','2','北京','密云','','','','','','','0','0','','','46','46','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('267','1','308839329@qq.com','0','308839329','','1979','1','25','A','0','广西','南宁','','','','','','','0','0','','','265,264','265,264','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('268','1','46465@shou.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('269','1','long_huo2005@126.com','0','752415562','','1985','9','9','AB','1','四川','遂宁','','','','','','','0','0','','','103,264,256,232,135,189','103,264,256,232,135,189','','本科','金融/证券/投资','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('270','1','wuquansheng688@tom.com','0','605903855','','1964','11','10','','2','四川','南充','','','','','','','0','0','','','1,27','1,27','','大专','教育/培训','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('271','1','shrfzw@163.com','0','4943048','','1987','1','20','AB','1','安徽','芜湖','安徽','芜湖','','','','','0','0','','','187,272,214','187,272,214','','本科','人力资源/行政/后勤','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('272','1','122426396@qq.com','0','122426396','','1984','1','0','','1','上海','长宁','','','','','','','0','0','','','271','271','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('273','1','shrfzw@163.com','0','4943048','','1987','1','20','AB','1','北京','朝阳','安徽','芜湖','','','','','0','0','','','','','','本科','人力资源/行政/后勤','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('274','1','14151546@QQ.COM','0','14151546','14151546','1981','10','26','','1','山东','淄博','山东','淄博','','','','','0','0','','','27,189,73,411,46,326,275,10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555','27,189,73,411,46,326,275,10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','成熟 稳重 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('275','1','366392545@qq.com','0','366392545','','1981','9','22','','1','湖北','武汉','','','','','','','0','0','','','274','274','','硕士','法律','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('276','1','lb1980@163.com','0','1134822003','','0','0','0','','0','','','','','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('277','1','840134392@qq.com','0','840134392','','1993','12','17','B','1','重庆','南岸','四川','成都','','','','','0','0','','','9,363,373,278,243,255,3','9,363,373,278,243,255,3','','高中','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('278','1','huangyuanzheng6@163.com','0','398661080','','1983','4','8','','1','重庆','涪陵','','','','','','','0','0','','','176,173,122,214,27,277','176,173,122,214,27,277','','本科','金融/证券/投资','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('279','1','shazhongjin2008@sina.com','0','601901582','','1955','1','1','B','2','黑龙江','哈尔滨','','','','','','','0','0','','','1','1','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('280','1','857461631@qq.com','0','857461631','','1991','2','15','B','0','陕西','渭南','','','','','','','0','0','','','','','','高中','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('281','1','fang7111@126.com','0','911871453','','0','0','0','','0','','','山东','济南','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('282','1','wang20061231@126.com','0','1245370205','','0','0','0','','0','','','重庆','江北','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('283','1','meili_zaixian@163.com','0','787563854','','0','0','0','','0','','','北京','海淀','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('284','1','762727192@qq.com','0','762727192','','0','0','0','','0','','','四川','泸州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('285','1','791020901@QQ.COM','0','791020901','','1992','6','29','','1','江苏','连云港','','','','','','','0','0','','','1,255','1,255','','高中','自由职业者','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('286','1','1111@qq.com','0','111111','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('287','1','chengchenghua@163.com','0','863805558','刘墉','1988','4','10','A','1','福建','宁德','福建','宁德','','','','','0','0','','','1,125','1,125','','初中','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('288','1','1244573235@qq.com','0','1244573235','','1976','8','8','O','0','北京','怀柔','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('289','1','conan2859@sina.com','0','994068653','','0','0','0','','0','四川','资阳','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('290','1','bmh1005@sina.com','0','965193963','','1985','10','20','','1','山东','','','','','','','','0','0','','','27','27','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('291','1','cnefi@cnefi.com','0','','','0','0','0','','0','','','陕西','宝鸡','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('292','1','bcxhl@163.com','0','275024086','','1981','9','10','A','2','广东','汕头','广东','惠州','','','','','0','0','','','103,371,96,387,232,255,135,326,372,27,448,125,1,243,214,301,73,458','103,371,96,387,232,255,135,326,372,27,448,125,1,243,214,301,73,458','','本科','高级管理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('293','1','rr@rr.rr','0','5555555','','0','0','0','','0','','','四川','自贡','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('294','1','ss@dd.ss','0','999','','0','0','0','','0','','','陕西','西安','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('295','1','roxiaobo@163.com','0','1013712246','','0','0','0','','0','','','','','','','','','0','0','','','255,27','255,27','','','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('296','2','ss@ss.ss','0','777777','','0','0','0','','0','','','广东','广州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('300','1','931345142@qq.com','0','931345142','','1989','8','4','A','1','广东','潮阳','','','','','','','0','0','','','','','','','采购/贸易','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('297','1','317823074@qq.com','0','317823074','','0','0','0','','0','','','四川','绵阳','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('298','1','zhangsj@desay.com','0','601152628','','0','0','0','','0','','','湖北','武汉','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('299','1','suoli2009@sina.com','0','340406904','','1977','7','17','','1','北京','西城','','','','','','','0','0','','','96','96','','硕士','金融/证券/投资','','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('301','1','bkcui@sohu.com','0','','','1981','1','1','','2','','','','','','','','','0','0','','','96,292,158','96,292,158','','硕士','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('302','1','LIRONG12139@163.COM','0','260556612','','1985','12','25','','1','广西','北海','','','','','','','0','0','','','1,46','1,46','','','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('303','1','86172535@QQ.COM','0','86172535','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('304','1','905348214@QQ.com','0','1207239562','','0','0','0','','0','','','','','','','','','0','0','','','9,243','9,243','','大专','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('305','1','derek81chen@yahoo.com.cn','0','447565648','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('306','1','670549000@163.com','0','670549000','','1987','12','6','','2','安徽','六安','','','','','','','0','0','','','46','46','','技校','私营业主','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('307','2','576802229@qq.com','0','707222628','','1984','8','27','','1','广东','深圳','','','','','','','0','0','','','','','','','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('308','2','1216801907@qq.com','0','1216801907','','1995','11','26','','1','福建','泉州','福建','泉州','','','','','0','0','','','','','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('309','1','XLBB2007@YAHOO.CN','0','1173135270','','0','0','0','','0','','','甘肃','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('310','1','xialong_1986@126.com','0','981010720','','1986','5','15','B','0','四川','','','','','','','','0','0','','','','','','本科','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('311','1','12089025@qq.com','0','12089025','','0','0','0','','0','','','','','','','','','0','0','','','','','','硕士','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('312','1','test@qq.com','0','9298388','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('313','1','12312333@qq.com','0','334234','','0','0','0','','0','','','甘肃','定西','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('314','2','255df2@tom.com','0','666554','','0','0','0','','0','','','上海','静安','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('315','1','qqq@qq.com','0','2342342','','0','0','0','','0','','','重庆','九龙坡','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('316','1','707622082@qq.com','0','707622082','','0','0','0','','0','','','河北','唐山','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('317','1','1587654345@163.com','0','1172768828','','0','0','0','','0','','','湖北','武汉','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('318','1','163@163.con','0','316960377','','0','0','0','','0','','','','','','','','','0','0','','','255','255','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('319','1','cxpmpk1234@126.com','0','540183532','','0','0','0','','0','','','','','','','','','0','0','','','232','232','','本科','其它','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('320','1','zqx2896@sina.com','0','920252456','','1983','3','10','','0','','','','','','','','','0','0','','','27,135','27,135','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('321','1','anew@nohack.cn','0','843856496','','0','0','0','','0','','','广东','广州','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('322','1','987428722@QQ.COM','0','','','1992','2','8','','1','广东','惠州','广东','惠州','','','','','0','0','','','','','','高中','财会/审计/统计','找E夜情','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('323','1','longzaihaijiao@sina.com','0','805444759','','0','0','0','','0','','','','','','','','','0','0','','','','','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('324','1','wj_hr@yahoo.cn','0','276084578','','1980','1','1','','1','黑龙江','哈尔滨','','','','','','','0','0','','','','','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('325','1','killlovemen@sohu.com','0','454625178','','0','0','0','','0','云南','丽江','','','','','','','0','0','','','1,243,135,27,96,255','1,243,135,27,96,255','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('326','1','786474671@qq.com','0','786474671','','1988','9','14','','0','江西','九江','','','','','','','0','0','','','64,158,292,274','64,158,292,274','','初中','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('327','1','amwayrs@126.com','0','','','0','0','0','','0','','','广东','英德','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('328','2','daqihexiaoqi@163.com','0','1194985346','','1988','10','8','B','1','江苏','南京','','','','','','','0','0','','','','','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('329','1','851510056@qq.com','0','851510056','','0','0','0','','0','','','广东','佛山','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('330','1','12@12.33','0','2356783','','0','0','0','','0','','','澳门','澳门','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('331','1','zjc0537myworld@163.com','0','','','0','0','0','','0','','','山东','济宁','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('332','1','463905463@qq.com','0','463905463','','1988','10','16','','1','广东','揭阳','','','','','','','0','0','','','','','','职高','','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('333','1','ll@qq.com','0','26524646','','0','0','0','','0','','','','','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('334','1','tel-249@163.com','0','30304550','','1980','5','18','','0','吉林','吉林','','','','','','','0','0','','','335,232,96,73','335,232,96,73','','','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('335','1','1193342329@qq.com','0','1193342329','1193342329@qq.com','1969','1','1','A','0','江西','赣州','','','','','','','0','0','','','334','334','','本科','高级管理','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('336','1','flyalimama@163.com','0','29368347','','0','0','0','','0','','','','','','','','','0','0','','','','','','本科','市场拓展/公关商务','找E夜情','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('337','1','163@163.com','0','9985644','','0','0','0','','0','','','天津','天津','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('338','1','hge783111@yahoo.cn','0','406115653','','1980','3','1','','1','河南','许昌','','','','','','','0','0','','','','','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('339','1','443259649@qq.com','0','443259649','g','1986','4','8','A','1','河北','保定','河北','保定','','','','','0','0','','','243,27,232,255,387,355,363,390,372,344,374,352,439,448,389,449,386,1','243,27,232,255,387,355,363,390,372,344,374,352,439,448,389,449,386,1','','技校','设计/创意','找E夜情','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('340','1','xlx4886@163.com','0','7465351','','1984','9','11','','1','内蒙古','海拉尔','','','','','','','0','0','','','','','','','','','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('341','1','991425313@qq.com','0','991425313','','0','0','0','','0','','','上海','闵行','','','','','0','0','','','1,27','1,27','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('342','1','xx@234234xx.xx','0','353310496','','1988','2','5','','1','河北','邯郸','','','','','','','0','0','','','','','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('343','1','dglfq@-ok126.com','0','734675615','','0','0','0','','0','','','','','','','','','0','0','','','','','','大专','自由职业者','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('344','1','879941906@qq.com','0','874592867','','1983','0','0','','0','四川','','','','','','','','0','0','','','339','339','','','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('345','2','vsyou1101@tom.com','0','1055942602','','0','0','0','','0','','','广东','深圳','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('346','1','1036593793@qq.com','0','1036593793','','1982','2','27','B','1','四川','成都','四川','成都','','','','','0','0','','','9','9','','硕士','市场拓展/公关商务','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('347','1','1091388072@qq.com','0','1091388072','','1986','4','5','','0','广西','河池','河北','唐山','','','','','0','0','','','','','','本科','客户服务/技术支持','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('348','1','WEMINWEN@163.COM','0','287109191','','1983','12','29','','1','陕西','渭南','','','','','','','0','0','','','135','135','','本科','自由职业者','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('349','1','350636825@qq.com','0','350636825','','1988','1','11','O','1','四川','眉山','','','','','','','0','0','','','9','9','','技校','自由职业者','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('350','1','835495806@qq.com','0','835495806','','1979','6','16','','0','','','','','','','','','0','0','','','1,27','1,27','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('351','1','jlala@flajalj.cn','0','32243435','','0','0','0','','0','','','四川','南充','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('352','1','sexlove666@126.com','0','731311993','sexlove666@126.com','1979','7','1','O','1','广东','深圳','','','','','','','0','0','','','27,135,339,96','27,135,339,96','','硕士','保健/美容','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('353','1','736078152@qq.com','0','736078152','','1990','1','1','B','1','江苏','太仓','','','','','','','0','0','','','','','','大专','客户服务/技术支持','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('354','2','914599605@qq.com','0','914599605','','1986','8','30','O','0','广西','南宁','广西','南宁','','','','','0','0','','','','','','本科','咨询/顾问','找情人','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('355','1','www.czy.cn@163.com','0','1067180466','','1971','3','3','O','2','四川','巴中','四川','成都','','','','','0','0','','','232,135,395,430,387,255,27,339,1,96,256,243,390,462,406,584,583,562,478,411,558,481,556,419,445','232,135,395,430,387,255,27,339,1,96,256,243,390,462,406,584,583,562,478,411,558,481,556,419,445','','大专','医疗/护理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('356','1','wuhelo100@163.com','0','45967840','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('357','1','358202949@qq.com','0','358202949','Jimmy','1985','1','27','AB','1','湖南','长沙','湖南','长沙','','','','','0','0','','','362','362','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('358','1','420321@163.com','0','656587525','','1985','4','7','B','1','湖北','十堰','','','','','','','0','0','','','135','135','','高中','自由职业者','找X伴侣','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('359','1','killlovemen@sohu.com','0','454625178','','0','0','0','','0','','','云南','丽江','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('361','1','61637975@qq.com','0','61637975','','1988','6','20','','0','江苏','苏州','','','','','','','0','0','','','','','','本科','其它','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('360','2','111@sdsd.com','0','11232323','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','找E夜情','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('362','1','dinglinjiang@163.com','0','1030940393','','0','0','0','','0','','','湖南','长沙','','','','','0','0','','','357','357','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('363','1','547674292@qq.com','0','547674292','','1973','5','1','B','2','山东','淄博','山东','淄博','','','','','0','0','','','371,187,411,439,173,425,232,383,339,429,447,96,432,431,430,428,384,386,382,277,560,487,458,435,434,392,388,243,592,583,580,556,482,135,480,479,475,474,470,467,456,455,453,451,445,403,400,399,396,394,391,389,381,364','371,187,411,439,173,425,232,383,339,429,447,96,432,431,430,428,384,386,382,277,560,487,458,435,434,392,388,243,592,583,580,556,482,135,480,479,475,474,470,467,456,455,453,451,445,403,400,399,396,394,391,389,381,364','','情感和生活帮助','情感和生活帮助','健壮 帅气 绅士气质','成熟 稳重 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('364','1','1025072446@qq.com','0','1025072446','','0','0','0','','0','','','','','','','','','0','0','','','363,187','363,187','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('365','1','280264255@QQ.COM','0','280264255','','1990','9','5','','1','湖北','武汉','','','','','','','0','0','','','187,27,1','187,27,1','','高中','客户服务/技术支持','找E夜情','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('366','1','chyjt@126.com','0','287298313','','0','0','0','','0','','','云南','昆明','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('367','1','sfddfs@sina.com','0','1020807187','','0','0','0','','1','','','','','','','','','0','0','','','','','','硕士','金融/证券/投资','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('368','1','yp831025@163.com','0','','','0','0','0','','0','','','辽宁','沈阳','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('369','1','757291711@qq.com','0','757291711','','0','0','0','','0','','','浙江','温州','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('370','1','hhnhz@sina.com','0','814823672','','1983','7','30','','2','辽宁','铁岭','','','','','','','0','0','','','1','1','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('371','1','fjmf0618@sina.com','0','243951110','','1970','6','6','O','2','北京','东城','北京','东城','','','','','0','0','','','232,473,363,471,96,393,243,411,458,448,292,430,474,477,466,470,491,478,577,506,482,386,452','232,473,363,471,96,393,243,411,458,448,292,430,474,477,466,470,491,478,577,506,482,386,452','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('372','1','601727572@qq.com','0','601727572@qq.com','','1969','8','18','','2','江苏','南京','江苏','南京','','','','','0','0','','','173,96,292,243,406,339','173,96,292,243,406,339','','本科','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('373','1','xtxbamboo@163.com','0','56351673','','1978','10','29','B','2','山东','泰安','山东','烟台','','','','','0','0','','','158,390,411,277','158,390,411,277','','硕士','医疗/护理','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('374','1','love11273588@163.com','0','120000644','','1985','11','27','','1','河北','保定','','','','','','','0','0','','','339','339','','大专','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('375','1','1219425690@qq.cnm','0','1219425690','','0','0','0','','0','','','湖北','恩施','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('376','1','zzl851022@sina.com','0','120000644','','0','0','0','','0','','','北京','崇文','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('377','1','fanjunq81988@163.com','0','867184454','*******','1988','2','15','','1','上海','浦东','','','','','','','0','0','','','','','','大专','销售','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('378','1','xiqi_123@163.com','0','82226387','','1981','2','11','O','1','四川','绵阳','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('379','1','1205877496@qq.com','0','1205877496','','1981','7','15','A','1','安徽','合肥','','','','','','','0','0','','','','','','本科','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('380','1','741605895@qq.com','0','741605895','','0','0','0','','0','','','贵州','都匀','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('381','1','934955823@qq.com','0','934955823','','1981','2','29','','1','云南','昆明','','','','','','','0','0','','','363','363','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('382','1','guo__guo@tom.com','0','794974174','','0','0','0','','0','','','','','','','','','0','0','','','363','363','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('383','1','404859594@qq.com','0','404859594','','1988','10','4','O','1','四川','绵阳','','','','','','','0','0','','','386,398,384,363','386,398,384,363','','','','','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('384','1','gongqingsong11@sina.com','0','513009455','','1982','6','16','','1','四川','绵阳','','','','','','','0','0','','','383,363','383,363','','大专','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('385','1','caojungggggggg@163.com','0','412041920','123456','1973','9','23','A','2','广东','深圳','广东','深圳','','','','','0','0','','','232,135,1,466,458','232,135,1,466,458','','大专','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('386','1','twd680901@21cn.com','0','1215804745','','1968','9','1','AB','2','四川','绵阳','四川','绵阳','','','','','0','0','','','458,459,232,383,462,158,135,363,243,466,430,387,339,478,1,477,371,434,476,558','458,459,232,383,462,158,135,363,243,466,430,387,339,478,1,477,371,434,476,558','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('387','1','564985307@qq.com','0','564985307','','1969','11','18','','2','上海','黄浦','江苏','南京','','','','','0','0','','','355,339,232,255,395,173,292,386','355,339,232,255,395,173,292,386','','本科','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('388','1','136089420@qq.com','0','136089420','','1967','4','21','','1','天津','武清','','','','','','','0','0','','','363','363','','本科','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('389','1','747648664@qq.com','0','747648664','','0','0','0','','0','河北','张家口','','','','','','','0','0','','','363,1,339,232,243,96','363,1,339,232,243,96','','大专','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('390','1','zuqiuxiansheng110@163.com','0','23080329','','1982','3','29','O','1','辽宁','沈阳','','','','','','','0','0','','','243,96,1,373,339,355,27','243,96,1,373,339,355,27','','本科','金融/证券/投资','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('391','1','jiangshangren39@163.com','0','269364081','','1978','10','27','B','2','四川','成都','','','','','','','0','0','','','363','363','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('392','1','326074375@QQ.com','0','326074375','','1983','9','10','O','1','四川','绵阳','','','','','','','0','0','','','363','363','','本科','咨询/顾问','','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('393','1','920401362@qq.com','0','920401362','','1962','8','18','','2','上海','徐汇','','','','','','','0','0','','','371','371','','双学士','私营业主','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('394','1','zhaorui_zr@126.com','0','605456212','','1974','4','5','O','2','四川','成都','','','','','','','0','0','','','363','363','','高中','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('395','1','xuming3341355@163.com','0','345763574','','1980','1','31','','0','黑龙江','','黑龙江','','','','','','0','0','','','158,27,355,387','158,27,355,387','','本科','保险','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('396','1','514389580@qq.com','0','514389580','','1987','7','18','','0','四川','成都','','','','','','','0','0','','','363','363','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('397','1','csnoviceo@yahoo.com.cn','0','1145728166','','1984','1','2','A','0','北京','东城','','','','','','','0','0','','','202','202','','本科','其它','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('398','1','gaowei8855@tom.com','0','576091344','','1986','8','25','B','1','湖北','恩施','','','','','','','0','0','','','383','383','','本科','人力资源/行政/后勤','找X伴侣','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('399','1','panjunshan@qq.com','0','315221382','','1982','6','17','O','0','四川','绵阳','','','','','','','0','0','','','363','363','','大专','质控/安检','找情人','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('400','1','chb1132@163.com','0','914832866','','0','0','0','','0','','','四川','绵阳','','','','','0','0','','','363','363','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('401','1','1146781318@qq.com','0','1146781318','','0','0','0','','0','','','四川','资阳','','','','','0','0','','','9','9','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('402','1','182448952@qq.com','0','182448952','','1985','2','10','AB','2','四川','巴中','','','','','','','0','0','','','27','27','','本科','房地产/装修/物业','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('403','1','gjx78798@163.com','0','1021113776','','0','0','0','','0','','','','','','','','','0','0','','','363','363','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('404','1','1984lb@163.com','0','','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('405','1','lgfxhpx@126.com','0','793722550','','0','0','0','','0','','','江苏','扬州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('406','1','crazy2005biye@163.com','0','295247079','','1983','7','23','','1','黑龙江','大庆','','','','','','','0','0','','','355,372,135','355,372,135','','本科','高级管理','找X伴侣','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('407','1','yacncom.hoo2008@yahoo.com.cn','0','812028019','','1969','1','15','','2','山东','潍坊','','','','','','','0','0','','','411,232,173','411,232,173','','','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('408','2','asdf@asdf.cn','0','12123569','','0','0','0','','0','','','山西','太原','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('409','1','zeng86112002@yahoo.com.cn','0','171804932','','1984','8','28','','1','湖南','长沙','','','','','','','0','0','','','','','','本科','教育/培训','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('410','1','pancb@163.com','0','653097069','','0','0','0','','0','','','','','','','','','0','0','','','1','1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('411','1','xqh741106@126.com','0','502338690','xqh741106@hotmail.com','1974','11','6','','2','山东','潍坊','山东','济南','','','1250954496	1	Ks0KMO','','0','0','','','407,274,473,173,435,425,371,135,96,506,517,73,373,355,430,429,437,577,568,511,458,478,474,447,431,363,255','407,274,473,173,435,425,371,135,96,506,517,73,373,355,430,429,437,577,568,511,458,478,474,447,431,363,255','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('412','1','handsomeshun@163.com','0','421229117','','0','0','0','','0','江苏','南京','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('413','1','chei@qq.com','0','781619263','','1959','3','6','','0','山东','青岛','','','','','','','0','0','','','','','','大专','人力资源/行政/后勤','找情人','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('414','1','11042677754@qq.com','0','1042677754','','0','0','0','','0','','','广东','广州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('415','1','8241232@qq.com','0','','','1987','2','26','','1','江西','景德镇','','','','','','','0','0','','','232','232','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('416','1','163@163.com','0','221125','','0','0','0','','0','','','四川','自贡','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('417','1','hyd0026132@126.com','0','784643041','无','1977','5','9','','1','湖南','衡阳','湖南','衡阳','','','','','0','0','','','','','','大专','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('418','1','shenjq@163.com','0','','','0','0','0','','0','','','浙江','嘉兴','','','','','0','0','','','','','','本科','销售','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('419','1','topv@foxmail.com','0','873996486','','1983','4','29','O','1','北京','东城','','','','','','','0','0','','','202,355','202,355','','本科','传媒/影视','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('420','1','408899016@qq.com','0','408899016','','1985','5','6','','2','','','','','','','','','0','0','','','','','','本科','','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('421','1','fanzhichaoai@126.com','0','422637808','','1988','1','2','','1','山东','枣庄','','','','','','','0','0','','','1','1','','大专','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('422','1','dchj325@163.com','0','60*7*6152','','0','0','0','','0','','','北京','东城','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('423','1','40650062@qq.com','0','40650062','','1990','9','16','O','1','广东','广州','','','','','','','0','0','','','','','','本科','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('424','1','931367873@qq.com','0','931367873','','1988','5','18','A','1','浙江','宁波','','','','','','','0','0','','','','','','大专','生物/制药/医疗器械','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('425','1','yanghuanzhang.hi@163.com','0','1092355443加我哦','','1981','10','6','A','2','浙江','余姚','','','','','','','0','0','','','255,363,243,411','255,363,243,411','','本科','采购/贸易','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('426','1','jiwei888cn@163.com','0','443170551','','0','0','0','','0','','','江苏','南通','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('427','1','1247463584@qq.com','0','1247463584','','1988','8','18','O','1','江苏','淮安','','','','','','','0','0','','','','','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('428','1','919791555@qq.com','0','919791555','','0','0','0','','0','','','','','','','','','0','0','','','363','363','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('429','1','878685384@qq.com','0','878685384','','1970','9','23','AB','1','吉林','吉林','','','','','','','0','0','','','411,363','411,363','','大专','高级管理','找E夜情','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('430','1','749228086@qq.com','0','749228086','','1987','3','5','','1','','','','','','','','','0','0','','','363,431,232,517,355,411,491,546,562,478,482,243,458,386,371,499,462','363,431,232,517,355,411,491,546,562,478,482,243,458,386,371,499,462','','大专','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('431','1','banjianbi@126.com','0','448386814','','1985','11','21','O','1','广西','百色','','','','','','','0','0','','','458,173,467,476,478,517,430,432,411,435,459,363,462','458,173,467,476,478,517,430,432,411,435,459,363,462','','本科','市场拓展/公关商务','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('432','1','328960114@qq.com','0','328960114','','1981','9','21','AB','2','四川','成都','','','','','','','0','0','','','363,431','363,431','','','仓储/物流','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('433','1','justinlwt@sina.com','0','77932551','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('434','1','yongping00080@163.com','0','497555885','','1988','4','8','','1','湖南','永州','云南','昆明','','','','','0','0','','','363,435,458,386,543,541','363,435,458,386,543,541','','硕士','','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('435','1','159878676@qq.com','0','159878676','','0','0','0','','0','','','云南','楚雄','','','','','0','0','','','363,122,434,431,411,187','363,122,434,431,411,187','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('436','1','16995557@qq.com','0','16995557','','0','0','0','','0','','','江苏','扬州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('437','1','yaomj888@sina.com','0','','','0','0','0','','0','','','四川','西昌','','','','','0','0','','','411','411','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('438','1','yaomj88@sina.com','0','','','0','0','0','','0','','','重庆','万州','','','','','0','0','','','439','439','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('439','1','xiangzou@msn.com','0','334273233','xiangzou@msn.com','1965','6','1','B','2','江苏','泰州','','','','','','','0','0','','','438,135,243,339,96,232,363','438,135,243,339,96,232,363','','本科','房地产/装修/物业','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('440','1','1097960108@qq.com','0','346596022','','1989','4','3','','1','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('441','1','woshisuiliang@163.cim','0','491071651','','1986','11','23','','1','黑龙江','七台河','','','','','','','0','0','','','1','1','','','','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('442','1','jeackey@126.com','0','1033329978','','1985','3','19','AB','1','湖北','武汉','湖北','武汉','','','','','0','0','','','','','','本科','自由职业者','找X伴侣','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('443','1','363173179@qq.com','0','363173179','','1987','0','0','','1','安徽','滁州','','','','','','','0','0','','','','','','高中','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('444','2','143wjm@126.com','0','24206906','','1976','7','0','','2','湖南','常德','','','','','','','0','0','','','','','','高中','销售','找X伴侣','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('445','1','731696364@qq.com','0','731696364','','1971','0','0','','2','广东','珠海','','','','','','','0','0','','','363,355','363,355','','本科','销售','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('446','1','1309802@163.com','0','','','0','0','0','','0','','','上海','黄浦','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('447','1','12155113@qq.com','0','12155113','','0','0','0','','1','云南','','','','','','','','0','0','','','363,411,96,135','363,411,96,135','','','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('448','1','baichenfeng@126.vom','0','799816685','枫','1989','3','24','B','1','湖南','永州','','','','','','','0','0','','','371,292,339','371,292,339','','本科','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('449','1','demonb@163.com','0','473470288','','0','0','0','','0','','','','','','','','','0','0','','','453,339,473,478,476,470,459','453,339,473,478,476,470,459','','','','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('450','1','329954031@QQ.com','0','329954031','','1982','0','0','','2','湖南','长沙','','','','','','','0','0','','','','','','技校','','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('451','1','357082798@qq.com','0','357082798','','1976','8','10','B','2','北京','朝阳','','','','','','','0','0','','','363','363','','高中','其它','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('452','1','woshilugusunyang@163.com','0','575690582','','1986','0','0','','1','','','','','','','','','0','0','','','371','371','','本科','','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('453','1','627929802@qq.com','0','627929802','','1983','3','5','O','0','云南','昆明','','','','','','','0','0','','','363,449','363,449','','大专','销售','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('454','1','xzy0321@163.com','0','1023209070','','1983','3','20','AB','1','北京','东城','','','','','','','0','0','','','','','','本科','房地产/装修/物业','找情人','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('455','1','954266328@qq.com','0','954266328','','1975','0','0','','0','','','','','','','','','0','0','','','135,363','135,363','','','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('456','1','340378534@sohu.com','0','340378534','','1976','11','2','','2','河北','沧州','','','','','','','0','0','','','363,135','363,135','','初中','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('457','2','fgh333@163.com','0','84948228','','0','8','5','O','2','湖北','武汉','','','','','','','0','0','','','1','1','','大专','销售','找情人','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('458','1','756480422@qq.com','0','756480422','QQ756480422','1982','6','24','B','1','浙江','绍兴','浙江','绍兴','','','','','0','0','','','386,232,371,462,459,363,430,473,471,491,558,292,385,478,431,434,542,523,517,411','386,232,371,462,459,363,430,473,471,491,558,292,385,478,431,434,542,523,517,411','','大专','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('459','1','643640091@qq.com','0','188664664','643640091','1988','1','16','','1','四川','绵阳','','','','','','','0','0','','','386,232,458,64,135,1,449,96,431','386,232,458,64,135,1,449,96,431','','本科','传媒/影视','E夜情,X伴侣,情人都可','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('460','2','112945580@qq.com','0','112945580','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('461','1','flykeer1007@163.com','0','420168453','','0','0','0','','0','','','浙江','绍兴','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('462','1','chenxinran880111@163.com','0','380246805','','1986','1','12','AB','1','浙江','绍兴','','','','','','','0','0','','','458,232,386,430,355,478,480,546,431','458,232,386,430,355,478,480,546,431','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('463','1','453735363@qq.com','0','453735363','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('464','1','shencaotianiang@qq.com','0','188664664','','0','0','0','','0','','','湖南','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('465','1','646640668@qq.com','0','646640668','','0','0','0','','0','','','河北','张家口','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('466','1','zhengjinyihebei@126.com','0','750852700','','1987','8','6','O','1','河北','保定','','','','','1251178370	1	SLb5zl','','0','0','','','371,386,385,480,483','371,386,385,480,483','','大专','其它','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('467','1','javafun0@sina.com','0','896657500','','0','0','0','','0','','','','','','','','','0','0','','','363,431','363,431','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('468','1','haonan521521@yahoo.cn','0','523169233','','0','0','0','','0','','','广东','广州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('469','1','zhangxian0104@163.com','0','1054258487','','0','0','0','','0','','','河北','承德','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('470','1','jtwyslq@163.com','0','862355400','','1975','11','25','','2','江苏','常州','','','','','','','0','0','','a:2:{s:4:\"view\";a:10:{s:5:\"index\";s:1:\"0\";s:7:\"profile\";s:1:\"0\";s:6:\"friend\";s:1:\"1\";s:4:\"wall\";s:1:\"1\";s:4:\"feed\";s:1:\"1\";s:4:\"mtag\";s:1:\"1\";s:5:\"doing\";s:1:\"1\";s:4:\"blog\";s:1:\"1\";s:5:\"album\";s:1:\"1\";s:5:\"share\";s:1:\"1\";}s:4:\"feed\";a:11:{s:5:\"doing\";s:1:\"1\";s:4:\"blog\";s:1:\"1\";s:5:\"album\";s:1:\"1\";s:6:\"upload\";s:1:\"1\";s:5:\"share\";s:1:\"1\";s:6:\"thread\";s:1:\"1\";s:4:\"post\";s:1:\"1\";s:4:\"mtag\";s:1:\"1\";s:6:\"friend\";s:1:\"1\";s:7:\"comment\";s:1:\"1\";s:5:\"trace\";s:1:\"1\";}}','363,232,96,371,449,135','363,232,96,371,449,135','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('471','1','849563975@qq.com','0','849563975','','1992','5','28','O','1','北京','东城','','','','','','','0','0','','','371,473,1,135,458','371,473,1,135,458','','高中','其它','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('472','1','sdf@sdfds.com','0','sdfsdf','','0','0','0','','0','','','广西','河池','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('473','1','jsj216@eyou.com','0','1046342024','1046342024','1980','1','23','A','1','湖北','武汉','','','','','','','0','0','','','371,474,458,471,411,449,122,491,478','371,474,458,471,411,449,122,491,478','','本科','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('474','1','songdayu2008@163.com','0','806247555','','1980','5','28','AB','0','辽宁','本溪','北京','','','','','','0','0','','','473,96,363,135,243,411,371','473,96,363,135,243,411,371','','高中','餐饮','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('475','1','1090698853@qq.com','0','1090698853','','1982','0','0','','0','江苏','启东','','','','','','','0','0','','','363','363','','','','E夜情,X伴侣,情人都可','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('476','1','sunjunlinwo@qq.com','0','283058937','','1987','10','6','','1','四川','广元','','','','','','','0','0','','','449,386,431','449,386,431','','','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('477','1','44045868@qq.com','0','44045868','','1981','6','22','O','2','北京','东城','','','','','','','0','0','','','478,371,386,255','478,371,386,255','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('478','1','zxxboy@163.com','0','420053501','','1984','2','23','','1','','','','','','','','','0','0','','','449,477,458,371,355,386,96,430,255,411,431,462,135,473,243,232','449,477,458,371,355,386,96,430,255,411,431,462,135,473,243,232','','大专','人力资源/行政/后勤','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('479','1','649057808@126.com','0','649057808','','0','0','0','','0','','','山西','太原','','','','','0','0','','','363','363','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('480','1','1171931610@qq.com','0','1171931610','','1983','4','28','','1','广东','东莞','广西','贵港','','','','','0','0','','','363,462,466','363,462,466','','大专','农/林/牧/渔业','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('481','1','523919617@qq.com','0','523919617','','0','0','0','','0','','','','','','','','','0','0','','','135,355','135,355','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('482','1','wxwstring@126.com','0','1228401156','','0','0','0','','0','','','','','','','','','0','0','','','363,371,430,243,499','363,371,430,243,499','','本科','其它','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('483','1','pengxy168@yahoo.com.cn','0','','','0','0','0','','0','','','','','','','','','0','0','','','466,232','466,232','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('484','1','capspy@gmail.com','0','','','1982','7','26','B','1','江苏','苏州','','','','','','','0','0','','','','','','','法律','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('485','1','canrong15co@163.com','0','986862345','','0','0','0','','0','','','浙江','温州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('486','2','capspywws@sdfk.com','0','','','0','0','0','','0','','','江苏','仪征','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('487','1','804403625@qq.com','0','804403625','','0','0','0','','0','','','河南','','','','','','0','0','','','363','363','','','','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('488','1','ctsy_68@163.com','0','1198659218','','0','0','0','','0','','','','','','','','','0','0','','','','','','本科','其它','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('489','1','liuijun2008@163.com','0','186446933','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('490','2','sdflaj@126.com','0','123586985','','0','0','0','','0','','','广东','深圳','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('491','1','bkcui@sohu.com','0','454346474','bokangcui@hotmail.com','1978','1','28','','2','云南','中甸','广东','广州','','','','','0','0','','','232,551,1,371,566,430,458,473,506','232,551,1,371,566,430,458,473,506','','硕士','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('492','1','yangli.yuhong@yahoo.com.cn','0','727506656','','0','0','0','','0','重庆','','','','','','','','0','0','','','','','','本科','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('493','1','519576225@qq.com','0','519576225','','0','0','0','','0','','','河南','郑州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('494','2','gloryman007@hotmail.com','0','1210486691','','0','0','0','','0','','','北京','东城','','','','','0','0','','','10,9,8,7,6,5,4,3,2','10,9,8,7,6,5,4,3,2','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('495','1','asdasas@163.com','0','8881974','','0','0','0','','0','','','山东','淄博','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('496','1','111@212da.dasdsa','0','111111','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('497','1','ywj19890825@163.com','0','302648916','','1989','8','25','O','1','天津','天津','','','','','','','0','0','','','187','187','','本科','其它','找情人','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('498','1','744357549@qq.com','0','744357549','','0','0','0','','0','','','','','','','','','0','0','','','','','','高中','餐饮','找X伴侣','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('499','1','karlfann12@163.com','0','673270249','','1990','1','0','B','1','江苏','苏州','','','','','','','0','0','','','430,482,232,558','430,482,232,558','','本科','房地产/装修/物业','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('500','1','lscl2009@sohu.com','0','392038285','','1939','12','15','A','2','重庆','万盛','','','','','','','0','0','','','','','','大专','私营业主','找情人','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('501','1','fcq909@126.com','0','404748490','','1976','8','24','AB','0','贵州','遵义','','','','','','','0','0','','','','','','技校','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('502','1','465376714@qq.com','0','465376714','','0','0','0','','0','','','广东','东莞','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('503','1','1123149296@qq.com','0','340055739','','1988','8','8','','1','','','','','','','','','0','0','','','512,511,504','512,511,504','','本科','文学','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('504','1','baipeng515@yahoo.com.cn','0','5826241','','1973','3','18','AB','2','甘肃','兰州','','','','','','','0','0','','','511,503','511,503','','本科','保险','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('505','1','403216962@qq.com','0','403216962','','0','0','0','','0','','','江苏','泰州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('506','1','1079758486@qq.com','0','1079758486','','1980','12','29','','2','江苏','启东','','','','','1251451448	1	v3818O','','0','0','','','511,517,515,371,411,491','511,517,515,371,411,491','','高中','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('507','1','30408654@qq.com','0','1030609910','','1990','3','3','AB','1','江西','南昌','','','','','','','0','0','','','','','','技校','销售','找X伴侣','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('508','2','caonima@caonima.com','0','4535345345','','0','0','0','','0','','','澳门','澳门','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('509','1','zhaokokuhei@163.c0m','0','76722179','','1973','1','28','O','1','上海','普陀','','','','','','','0','0','','','','','','大专','其它','E夜情,X伴侣,情人都可','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('512','1','547316530@qq.com','0','547316530','','1973','0','0','O','2','湖南','衡阳','广东','广州','','','','','0','0','','','503,511,232','503,511,232','','本科','教育/培训','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('510','1','skeyloveyou@yahoo.com.cn','0','155053098','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('511','1','www.qingxiangxinwo1@163.com','0','915059749','','1981','5','3','A','1','河北','石家庄','','','','','','','0','0','','','504,503,506,411,512','504,503,506,411,512','','本科','销售','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('513','1','904941359@qq.com','0','904941359','904941359','1971','6','8','','1','山西','大同','','','','','','','0','0','','','','','','高中','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('514','1','chengguohui6618001@126.com','0','339691095','','0','0','0','','0','','','福建','福安','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('515','1','646854810@qq.com','0','646854810','','1956','7','27','A','2','重庆','九龙坡','','','','','','','0','0','','','506','506','','大专','质控/安检','找E夜情','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('516','1','tree@yahoo.com','0','460107904','','0','0','0','','0','','','广东','河源','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('517','1','919215396@qq.com','0','919215396','','1986','1','1','AB','1','江苏','无锡','浙江','绍兴','','','','','0','0','','','232,458,431,527,506,411,255,430','232,458,431,527,506,411,255,430','','大专','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('518','1','00yy@163.com','0','553825910','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('519','1','iadgtgss456123@sina.com','0','906559589','','0','0','0','','0','','','湖北','武汉','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('520','1','guyun8509@yahoo.com.cn','0','43002126','','0','0','0','','0','','','浙江','台州','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('521','1','zentley@51party.cn','0','62000928','','0','0','0','','0','','','上海','黄浦','','','','','0','0','','','135','135','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('522','1','net21@126.com','0','12088112','','0','0','0','','0','','','广东','深圳','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('523','1','lqz@sina.com','0','1031132911','','1980','6','26','','2','河南','商丘','','','','','','','0','0','','','458','458','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('524','1','peng583691029@126.com','0','821661832','','1983','11','23','','0','河南','洛阳','','','','','','','0','0','','','','','','大专','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('525','1','zlok678@126.com','0','139113018','','0','0','0','','0','','','四川','雅安','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('526','1','wzwzwz@126.com','0','1315646','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('527','1','1240249161@qq.com','0','1240249161','','0','0','0','','0','','','','','','','','','0','0','','','517,232','517,232','','本科','客户服务/技术支持','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('528','1','chaochao_1987@qq.com','0','361064726','','0','0','0','','0','','','浙江','绍兴','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('529','1','fjs0618@sina.com','0','243951110','','1970','6','6','','2','北京','东城','','','','','','','0','0','','','','','','大专','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('530','1','motou12127@163.com','0','asdfasdf','','0','0','0','','0','','','山西','长治','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('531','2','dsfdsfds@ddd.com','0','934892','','0','0','0','','0','','','湖南','张家界','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('532','1','wqrqw@126.com','0','215221201','','0','0','0','','0','','','浙江','宁波','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('533','1','sccnc10060@yahoo.com.cn','0','913385917','','0','0','0','','0','','','四川','成都','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('534','1','673574673@QQ.com','0','673574673','','1988','5','3','','1','江苏','南通','','','','','1251373137	1	aJMD5j','','0','0','','','','','','高中','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('535','1','615865446@qq.com','0','615865446','','2007','3','3','AB','1','福建','宁德','','','','','','','0','0','','','','','','高中','人力资源/行政/后勤','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('537','1','cdkaizhu@qq.com','0','240052714','','0','0','0','','0','山东','淄博','山东','淄博','','','','','0','0','','','10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555','10,9,8,7,6,5,4,3,2,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555','','情感和生活帮助','情感和生活帮助','健康 大方 阳光','成熟 稳重 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');
INSERT INTO uchome_spacefield VALUES ('536','1','lvhuixin@126.com','0','5677544','','1988','5','23','','1','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('538','2','132321@sdfsdfs.com','0','13132312','','0','0','0','','0','','','上海','崇明','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('539','1','dyk0329@163.com','0','838761630','dyk0329@163.com','1986','3','29','A','1','新疆','哈密','','','','','','','0','0','','','','','','本科','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('550','1','421414@qq.com','0','329877671','','0','0','0','','0','','','黑龙江','哈尔滨','','','','','0','0','','','232','232','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('540','1','123ddds1@1d.co','0','878162222','','0','0','0','','0','','','安徽','六安','','','','','0','0','','','557','557','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('541','1','fang991758704yi@163.com','0','991758704','','1979','2','11','','2','湖南','邵阳','','','','','','','0','0','','','434','434','','初中','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('542','1','txdycz@126.com','0','1055229233','','1988','0','0','','1','','','','','','','','','0','0','','','458','458','','本科','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('543','1','HUODOU2416@163.com','0','594944182','','1987','1','17','','1','辽宁','沈阳','','','','','','','0','0','','','434','434','','大专','教育/培训','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('544','1','576437544@qq.com','0','576437544','','1990','5','20','','1','湖南','岳阳','','','','','','','0','0','','','','','','职高','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('545','1','417589019@qq.com','0','417589019','','0','9','9','A','1','陕西','渭南','','','','','','','0','0','','','','','','本科','医疗/护理','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('546','1','renyangjie@yahoo.com.cn','0','','','1979','10','6','O','0','浙江','余姚','','','','','','','0','0','','','462,430','462,430','','大专','销售','','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('547','1','xinxing19860614@126.com','0','348926071','','1986','7','20','','1','江苏','盐城','','','','','','','0','0','','','187','187','','本科','销售','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('548','1','893737112@qq.com','0','893737112','','1986','1','1','','1','广西','柳州','','','','','','','0','0','','','','','','大专','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('549','1','tftest@126.com','0','297600234','','0','0','0','','0','','','','','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('551','2','kdjka@sohu.com','0','552365884','','1985','1','28','','2','重庆','垫江','','','','','','','0','0','','','491,232,558','491,232,558','','硕士','生物/制药/医疗器械','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('552','1','13641367585@139.com','0','714630293','','0','0','0','','0','','','北京','朝阳','','','','','0','0','','','','','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('553','1','liguojievip@163.com','0','406007725','','1980','10','18','AB','2','上海','闵行','','','','','','','0','0','','','232,554,1','232,554,1','','本科','高级管理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('554','1','965391786@qq.com','0','965391786','','0','0','0','','2','浙江','杭州','','','','','','','0','0','','','553','553','','大专','其它','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('555','1','BJINGBING@QQ.COM','0','454262517','','1983','3','4','O','1','重庆','江北','重庆','渝中','','','','','0','0','','','125,17,274,15,9,537','125,17,274,15,9,537','','本科','高级管理','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('556','1','1248289510@qq.com','0','1248289510','','0','0','0','','2','','','','','','','','','0','0','','','363,355,17,125,15,9,274,537','363,355,17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('557','1','sejianjian@163.cn','0','503493710','','0','0','0','','0','','','安徽','合肥','','','','','0','0','','','540,17,125,15,9,274,537','540,17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('558','1','1314xiaomomo@163.com','0','有意加1249578511','有意加QQ','1985','4','11','','1','山东','滨州','','','','','','','0','0','','','564,551,125,560,9,1,255,274,561,15,499,17,537,355,386,458','564,551,125,560,9,1,255,274,561,15,499,17,537,355,386,458','','大专','质控/安检','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('559','1','lanxinsoft@163.com','0','1152275757','','0','0','0','','0','','','广西','百色','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('560','1','kianlly1129@yahoo.cn','0','1091697242','','0','0','0','B','1','河南','安阳','','','','','','','0','0','','','363,558,17,125,15,9,274,537','363,558,17,125,15,9,274,537','','本科','自由职业者','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('561','1','asdsad@ssd.CN','0','1568936','','0','0','0','','0','','','北京','东城','','','','','0','0','','','558,17,125,15,9,274,537','558,17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('562','1','adan3579@163.com','0','msn:tristan1982@live','tristan1982@live','1981','3','26','A','0','','','','','','','','','0','0','','','9,274,125,355,430,255,17,15,537','9,274,125,355,430,255,17,15,537','','硕士','采购/贸易','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('563','2','sdasd@1asdad.cn','0','3213243','','0','0','0','','0','','','','','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','找情人','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('564','2','fhdsf@126.com','0','36987521','','0','0','0','','0','','','陕西','宝鸡','','','','','0','0','','','558,17,125,15,9,274,537','558,17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('565','1','fhhdf@126.com','0','23658915','','0','0','0','','0','','','吉林','白山','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('566','2','dfgsdfg@sohu.com','0','4567563456','','1982','1','28','','0','','','','','','','','','0','0','','','15,274,537,491,17,125,9','15,274,537,491,17,125,9','','','','找E夜情','如果喜欢，可以拉拉手','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('567','1','angle-dai@21cn.com','0','4324343','','0','0','0','','0','','','广东','顺德','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('568','1','1135091296@qq.com','0','1135091296','葛杭翔','1979','3','17','O','2','浙江','杭州','浙江','杭州','','','','','0','0','','','9,96,411,17,125,15,274,537,3','9,96,411,17,125,15,274,537,3','','职高','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('569','1','ak47_12_3@163.com','0','605602988','','1987','1','0','','1','山东','','','','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('570','1','laiba@163.com','0','76543','','0','0','0','','0','','','陕西','宝鸡','','','','','0','0','','','9,17,125,15,274,537','9,17,125,15,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('571','1','mcb0328@sina.com','0','1163176335','','0','0','0','','0','','','广东','广州','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('572','1','64865353@163.com','0','497817340','','0','0','0','','1','','','','','','','','','0','0','','','96,17,125,15,9,274,537','96,17,125,15,9,274,537','','本科','','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('573','1','947385959@qq.com','0','1098844787','','1988','4','11','B','1','江苏','南通','','','','','','','0','0','','','125,17,537,15,9,274,576','125,17,537,15,9,274,576','','大专','自由职业者','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('574','2','1234@163.com','0','5632568','','0','0','0','','0','','','上海','黄浦','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('575','1','alsoon@163.com','0','1225068531','','0','0','0','','0','','','上海','浦东','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('576','1','873853898@qq.com','0','873853898','','0','0','0','','0','','','江苏','南京','','','','','0','0','','','573,1,577,17,125,15,9,274,537','573,1,577,17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('577','1','402206473@qq.com','0','402206473','','1984','3','26','','1','广西','桂林','','','','','','','0','0','','','576,17,125,15,9,274,537,411,371,1','576,17,125,15,9,274,537,411,371,1','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('578','1','xiaochuan6@hotmail.com','0','574290593','','0','0','0','','0','','','','','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','E夜情,X伴侣,情人都可','如果喜欢，可以拥抱接吻','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('579','1','bikey@163.com','0','619428096','','1985','5','0','O','1','广西','','','','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','技校','客户服务/技术支持','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('580','1','nanshen_chenming@163.com','0','1085151174','','1983','5','22','B','1','江苏','苏州','','','','','','','0','0','','','363,17,125,15,9,274,537','363,17,125,15,9,274,537','','大专','私营业主','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('581','1','banfuqing@126.com','0','402469414','','1978','3','3','A','0','广西','钦州','','','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','本科','其它','找E夜情','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('582','2','fjmf0618@sina.com','0','243951110','','1988','2','10','A','1','北京','东城','','','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','本科','生物/制药/医疗器械','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('583','1','116248585@qq.com','0','116248585','','1986','8','11','B','0','云南','昆明','','','','','','','0','0','','','363,355,17,125,15,9,274,537','363,355,17,125,15,9,274,537','','本科','房地产/装修/物业','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('584','1','antoniokoon@sina.com','0','952708759','antoniokoon@yahoo.com.cn','1985','11','5','','1','江苏','南通','江苏','南通','','','','','0','0','','','355,9,274,537,17,125,15','355,9,274,537,17,125,15','','本科','传媒/影视','E夜情,X伴侣,情人都可','一起看电影，跳舞','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('585','1','123@123.cc','0','06510650','','0','0','0','','0','','','','','','','','','0','0','','','274,17,125,15,9,537','274,17,125,15,9,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('586','1','feiyun166@163.com','0','82592295','','0','0','0','','0','','','四川','宜宾','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('587','1','qwe1234@163.com','0','591547881','','0','0','0','','0','','','浙江','绍兴','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('588','1','asfsd@usa.net','0','1234','','0','0','0','','1','','','','','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('589','1','motou12127@163.com','0','333333333','','0','0','0','','0','','','山西','大同','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('590','2','afadfa@usa.net','0','43221','','0','0','0','','0','','','','','','','','','0','0','','','17,125,9,15,274,537','17,125,9,15,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('591','1','bai8776@sina.com','0','1031881135','','1965','4','10','','2','北京','朝阳','','','','','','','0','0','','','17,125,15,9,274,537','17,125,15,9,274,537','','大专','设计/创意','E夜情,X伴侣,情人都可','不排除进一步可能性','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('592','1','wwy_luck@163.com','0','718497512','','0','0','0','','0','','','','','','','','','0','0','','','363,17,125,15,9,274,537','363,17,125,15,9,274,537','','','','','','','','','0','','0','0','','','','','','','','');
INSERT INTO uchome_spacefield VALUES ('2','2','1004674655@qq.com','0','','','1990','6','1','A','1','山东','淄博','山东','淄博','','','','','0','0','','','537,274,9,15,125,494,17,244','537,274,9,15,125,494,17,244','','情感和生活帮助','情感和生活帮助','漂亮 气质 倾国倾城','活泼 可爱 激情 浪漫','','','','0','','0','0','','开放 认同一夜情','一起看电影，跳舞','拥抱 浪漫 打情骂俏','希望通过淄博旮旯爱情公寓zibo3.com找到同城情人。','1-3万','专科','普通员工');

DROP TABLE IF EXISTS uchome_spaceinfo;
CREATE TABLE uchome_spaceinfo (
  infoid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  subtype varchar(20) NOT NULL default '',
  title text NOT NULL,
  subtitle varchar(255) NOT NULL default '',
  friend tinyint(1) NOT NULL default '0',
  startyear smallint(6) unsigned NOT NULL default '0',
  endyear smallint(6) unsigned NOT NULL default '0',
  startmonth smallint(6) unsigned NOT NULL default '0',
  endmonth smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (infoid),
  KEY uid (uid)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=gbk AUTO_INCREMENT=135;

INSERT INTO uchome_spaceinfo VALUES ('67','1','base','field_8','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('66','1','base','field_4','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('65','1','base','field_3','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('64','1','base','field_2','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('63','1','base','field_1','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('62','1','base','field_9','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('60','1','base','field_11','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('61','1','base','field_12','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('110','2','base','field_9','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('109','2','base','field_12','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('108','2','base','field_11','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('107','2','base','field_10','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('106','2','base','residecity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('105','2','base','birthcity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('104','2','base','blood','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('103','2','base','birth','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('102','2','base','marry','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('59','1','base','field_10','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('58','1','base','residecity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('57','1','base','birthcity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('56','1','base','blood','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('55','1','base','birth','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('54','1','base','marry','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('68','1','base','field_6','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('69','1','base','field_7','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('70','3','base','marry','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('71','3','base','birth','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('72','3','base','blood','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('73','3','base','birthcity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('74','3','base','residecity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('75','3','base','field_10','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('76','3','base','field_11','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('77','3','base','field_12','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('78','3','base','field_9','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('79','3','base','field_1','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('80','3','base','field_2','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('81','3','base','field_3','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('82','3','base','field_4','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('83','3','base','field_8','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('84','3','base','field_6','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('85','3','base','field_7','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('86','4','base','marry','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('87','4','base','birth','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('88','4','base','blood','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('89','4','base','birthcity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('90','4','base','residecity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('91','4','base','field_10','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('92','4','base','field_11','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('93','4','base','field_12','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('94','4','base','field_9','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('95','4','base','field_1','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('96','4','base','field_2','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('97','4','base','field_3','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('98','4','base','field_4','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('99','4','base','field_8','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('100','4','base','field_6','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('101','4','base','field_7','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('111','2','base','field_1','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('112','2','base','field_2','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('113','2','base','field_3','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('114','2','base','field_4','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('115','2','base','field_8','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('116','2','base','field_6','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('117','2','base','field_7','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('118','5','base','marry','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('119','5','base','birth','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('120','5','base','blood','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('121','5','base','birthcity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('122','5','base','residecity','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('123','5','base','field_10','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('124','5','base','field_11','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('125','5','base','field_12','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('126','5','base','field_9','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('127','5','base','field_1','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('128','5','base','field_2','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('129','5','base','field_3','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('130','5','base','field_4','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('131','5','base','field_8','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('132','5','base','field_6','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('133','5','base','field_7','','','0','0','0','0','0');
INSERT INTO uchome_spaceinfo VALUES ('134','1','edu','','烟台南山学院','','0','2011','0','0','0');

DROP TABLE IF EXISTS uchome_spacelog;
CREATE TABLE uchome_spacelog (
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  opuid mediumint(8) unsigned NOT NULL default '0',
  opusername char(15) NOT NULL default '',
  flag tinyint(1) NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  expiration int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid),
  KEY flag (flag)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_stat;
CREATE TABLE uchome_stat (
  daytime int(10) unsigned NOT NULL default '0',
  login smallint(6) unsigned NOT NULL default '0',
  register smallint(6) unsigned NOT NULL default '0',
  invite smallint(6) unsigned NOT NULL default '0',
  appinvite smallint(6) unsigned NOT NULL default '0',
  doing smallint(6) unsigned NOT NULL default '0',
  blog smallint(6) unsigned NOT NULL default '0',
  pic smallint(6) unsigned NOT NULL default '0',
  poll smallint(6) unsigned NOT NULL default '0',
  event smallint(6) unsigned NOT NULL default '0',
  `share` smallint(6) unsigned NOT NULL default '0',
  thread smallint(6) unsigned NOT NULL default '0',
  docomment smallint(6) unsigned NOT NULL default '0',
  blogcomment smallint(6) unsigned NOT NULL default '0',
  piccomment smallint(6) unsigned NOT NULL default '0',
  pollcomment smallint(6) unsigned NOT NULL default '0',
  pollvote smallint(6) unsigned NOT NULL default '0',
  eventcomment smallint(6) unsigned NOT NULL default '0',
  eventjoin smallint(6) unsigned NOT NULL default '0',
  sharecomment smallint(6) unsigned NOT NULL default '0',
  post smallint(6) unsigned NOT NULL default '0',
  wall smallint(6) unsigned NOT NULL default '0',
  poke smallint(6) unsigned NOT NULL default '0',
  click smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (daytime)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_stat VALUES ('20110810','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO uchome_stat VALUES ('20110815','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO uchome_stat VALUES ('20110902','4','3','0','0','0','6','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO uchome_stat VALUES ('20110903','4','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO uchome_stat VALUES ('20110904','1','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO uchome_stat VALUES ('20110906','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO uchome_stat VALUES ('20110916','5','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO uchome_stat VALUES ('20110917','2','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO uchome_stat VALUES ('20110921','2','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');

DROP TABLE IF EXISTS uchome_statuser;
CREATE TABLE uchome_statuser (
  uid mediumint(8) unsigned NOT NULL default '0',
  daytime int(10) unsigned NOT NULL default '0',
  `type` char(20) NOT NULL default '',
  KEY uid (uid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_statuser VALUES ('1','0','login');
INSERT INTO uchome_statuser VALUES ('10','0','login');

DROP TABLE IF EXISTS uchome_tag;
CREATE TABLE uchome_tag (
  tagid mediumint(8) unsigned NOT NULL auto_increment,
  tagname char(30) NOT NULL default '',
  uid mediumint(8) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  blognum smallint(6) unsigned NOT NULL default '0',
  `close` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (tagid),
  KEY tagname (tagname)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk AUTO_INCREMENT=11;

INSERT INTO uchome_tag VALUES ('1','婚介所','1','1314938361','2','0');
INSERT INTO uchome_tag VALUES ('2','交友网','1','1314938361','4','0');
INSERT INTO uchome_tag VALUES ('3','爱情公寓','1','1314938361','3','0');
INSERT INTO uchome_tag VALUES ('4','淄博','1','1314938361','4','0');
INSERT INTO uchome_tag VALUES ('5','同城交友','1','1314938412','1','0');
INSERT INTO uchome_tag VALUES ('6','幸福','1','1314938412','1','0');
INSERT INTO uchome_tag VALUES ('7','有情人终成','1','1314938412','2','0');
INSERT INTO uchome_tag VALUES ('8','找情人','1','1314938412','1','0');
INSERT INTO uchome_tag VALUES ('9','会员','1','1314938477','1','0');
INSERT INTO uchome_tag VALUES ('10','淄博旮旯','1','1314941989','1','0');

DROP TABLE IF EXISTS uchome_tagblog;
CREATE TABLE uchome_tagblog (
  tagid mediumint(8) unsigned NOT NULL default '0',
  blogid mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (tagid,blogid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_tagblog VALUES ('1','2');
INSERT INTO uchome_tagblog VALUES ('1','5');
INSERT INTO uchome_tagblog VALUES ('2','1');
INSERT INTO uchome_tagblog VALUES ('2','2');
INSERT INTO uchome_tagblog VALUES ('2','4');
INSERT INTO uchome_tagblog VALUES ('2','5');
INSERT INTO uchome_tagblog VALUES ('3','1');
INSERT INTO uchome_tagblog VALUES ('3','2');
INSERT INTO uchome_tagblog VALUES ('3','5');
INSERT INTO uchome_tagblog VALUES ('4','2');
INSERT INTO uchome_tagblog VALUES ('4','3');
INSERT INTO uchome_tagblog VALUES ('4','4');
INSERT INTO uchome_tagblog VALUES ('4','5');
INSERT INTO uchome_tagblog VALUES ('5','3');
INSERT INTO uchome_tagblog VALUES ('6','3');
INSERT INTO uchome_tagblog VALUES ('7','1');
INSERT INTO uchome_tagblog VALUES ('7','3');
INSERT INTO uchome_tagblog VALUES ('8','3');
INSERT INTO uchome_tagblog VALUES ('9','4');
INSERT INTO uchome_tagblog VALUES ('10','1');

DROP TABLE IF EXISTS uchome_tagspace;
CREATE TABLE uchome_tagspace (
  tagid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  grade smallint(6) NOT NULL default '0',
  PRIMARY KEY  (tagid,uid),
  KEY grade (tagid,grade),
  KEY uid (uid,grade)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_task;
CREATE TABLE uchome_task (
  taskid smallint(6) unsigned NOT NULL auto_increment,
  available tinyint(1) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  note text NOT NULL,
  num mediumint(8) unsigned NOT NULL default '0',
  maxnum mediumint(8) unsigned NOT NULL default '0',
  image varchar(150) NOT NULL default '',
  filename varchar(50) NOT NULL default '',
  starttime int(10) unsigned NOT NULL default '0',
  endtime int(10) unsigned NOT NULL default '0',
  nexttime int(10) unsigned NOT NULL default '0',
  credit smallint(6) NOT NULL default '0',
  displayorder smallint(6) unsigned NOT NULL default '0',
  nexttype varchar(20) NOT NULL default '',
  PRIMARY KEY  (taskid),
  KEY displayorder (displayorder)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk AUTO_INCREMENT=8;

INSERT INTO uchome_task VALUES ('1','1','更新一下自己的头像','头像就是你在这里的个人形象。<br>设置好了可获得特别惊喜：<br>本站会自动寻找优秀的异性朋友推荐给您。<br>您不赶快试试？','87','0','','avatar.php','0','0','0','1','1','');
INSERT INTO uchome_task VALUES ('2','1','将个人资料补充完整','把自己的个人资料填写完整吧。<br>这样您会被更多的朋友找到的，系统也会帮您找到朋友。','0','0','','profile.php','0','0','0','20','2','');
INSERT INTO uchome_task VALUES ('3','1','发表自己的第一篇日志','现在，就写下自己的第一篇日志吧。<br>与大家一起分享自己的生活感悟。','1','0','','blog.php','0','0','0','5','3','');
INSERT INTO uchome_task VALUES ('4','1','寻找并添加五位好友','有了好友，您发的日志、图片等会被好友及时看到并传播出去；<br>您也会在首页方便及时的看到好友的最新动态。<br>这会让您在这里的生活变得丰富多彩。','10','0','','friend.php','0','0','0','5','4','');
INSERT INTO uchome_task VALUES ('5','1','验证激活自己的邮箱','填写自己真实的邮箱地址并验证通过。<br>您可以在忘记密码的时候使用该邮箱取回自己的密码；<br>还可以及时接受站内的好友通知等等。<br>这对您十分有帮助和必要。','0','0','','email.php','0','0','0','1','5','');
INSERT INTO uchome_task VALUES ('6','1','邀请10个新朋友加入','邀请一下自己的QQ好友或者邮箱联系人，让亲朋好友一起来加入我们吧。','1','0','','invite.php','0','0','0','10','6','');
INSERT INTO uchome_task VALUES ('7','1','领取每日积分大礼包','每天登录访问自己的主页，就可领取积分大礼包。<br>还可免费获赠本周《热门日志排行榜》导读一份。','54','0','','gift.php','0','0','0','2','99','day');

DROP TABLE IF EXISTS uchome_thread;
CREATE TABLE uchome_thread (
  tid mediumint(8) unsigned NOT NULL auto_increment,
  tagid mediumint(8) unsigned NOT NULL default '0',
  `subject` char(80) NOT NULL default '',
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  viewnum mediumint(8) unsigned NOT NULL default '0',
  replynum mediumint(8) unsigned NOT NULL default '0',
  lastpost int(10) unsigned NOT NULL default '0',
  lastauthor char(15) NOT NULL default '',
  lastauthorid mediumint(8) unsigned NOT NULL default '0',
  displayorder tinyint(1) unsigned NOT NULL default '0',
  digest tinyint(1) NOT NULL default '0',
  topicid mediumint(8) unsigned NOT NULL default '0',
  eventid mediumint(8) unsigned NOT NULL default '0',
  magiccolor tinyint(6) unsigned NOT NULL default '0',
  magicegg tinyint(6) unsigned NOT NULL default '0',
  hot mediumint(8) unsigned NOT NULL default '0',
  click_11 smallint(6) unsigned NOT NULL default '0',
  click_12 smallint(6) unsigned NOT NULL default '0',
  click_13 smallint(6) unsigned NOT NULL default '0',
  click_14 smallint(6) unsigned NOT NULL default '0',
  click_15 smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (tid),
  KEY tagid (tagid,displayorder,lastpost),
  KEY uid (uid,lastpost),
  KEY lastpost (lastpost),
  KEY topicid (topicid,dateline),
  KEY eventid (eventid,lastpost)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_topic;
CREATE TABLE uchome_topic (
  topicid mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  `subject` varchar(80) NOT NULL default '',
  message mediumtext NOT NULL,
  jointype varchar(255) NOT NULL default '',
  joingid varchar(255) NOT NULL default '',
  pic varchar(100) NOT NULL default '',
  thumb tinyint(1) NOT NULL default '0',
  remote tinyint(1) NOT NULL default '0',
  joinnum mediumint(8) unsigned NOT NULL default '0',
  lastpost int(10) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  endtime int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (topicid),
  KEY lastpost (lastpost),
  KEY joinnum (joinnum)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_topicuser;
CREATE TABLE uchome_topicuser (
  id mediumint(8) unsigned NOT NULL auto_increment,
  uid mediumint(8) unsigned NOT NULL default '0',
  topicid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY uid (uid,dateline),
  KEY topicid (topicid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uchome_trace;
CREATE TABLE uchome_trace (
  blogid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (blogid,uid),
  KEY dateline (blogid,dateline),
  KEY uid (uid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_userapp;
CREATE TABLE uchome_userapp (
  appid mediumint(8) unsigned NOT NULL default '0',
  appname varchar(60) NOT NULL default '',
  uid mediumint(8) unsigned NOT NULL default '0',
  privacy tinyint(1) NOT NULL default '0',
  allowsidenav tinyint(1) NOT NULL default '0',
  allowfeed tinyint(1) NOT NULL default '0',
  allowprofilelink tinyint(1) NOT NULL default '0',
  narrow tinyint(1) NOT NULL default '0',
  profilelink text NOT NULL,
  myml text NOT NULL,
  displayorder smallint(6) NOT NULL default '0',
  menuorder smallint(6) NOT NULL default '0',
  KEY appid (appid),
  KEY uid (uid,appid),
  KEY menuorder (uid,menuorder),
  KEY displayorder (uid,displayorder)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_userappfield;
CREATE TABLE uchome_userappfield (
  uid mediumint(8) unsigned NOT NULL default '0',
  appid mediumint(8) unsigned NOT NULL default '0',
  profilelink text NOT NULL,
  myml text NOT NULL,
  KEY uid (uid,appid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_userevent;
CREATE TABLE uchome_userevent (
  eventid mediumint(8) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  `status` tinyint(4) NOT NULL default '0',
  fellow mediumint(8) unsigned NOT NULL default '0',
  template varchar(255) NOT NULL default '',
  PRIMARY KEY  (eventid,uid),
  KEY uid (uid,dateline),
  KEY eventid (eventid,`status`,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_usergroup;
CREATE TABLE uchome_usergroup (
  gid smallint(6) unsigned NOT NULL auto_increment,
  grouptitle varchar(20) NOT NULL default '',
  system tinyint(1) NOT NULL default '0',
  creditlower int(10) NOT NULL default '0',
  maxfriendnum smallint(6) unsigned NOT NULL default '0',
  maxattachsize int(10) unsigned NOT NULL default '0',
  allowhtml tinyint(1) NOT NULL default '0',
  allowcomment tinyint(1) NOT NULL default '0',
  searchinterval smallint(6) unsigned NOT NULL default '0',
  postinterval smallint(6) unsigned NOT NULL default '0',
  allowblog tinyint(1) NOT NULL default '0',
  allowdoing tinyint(1) NOT NULL default '0',
  allowupload tinyint(1) NOT NULL default '0',
  allowshare tinyint(1) NOT NULL default '0',
  allowmtag tinyint(1) NOT NULL default '0',
  allowthread tinyint(1) NOT NULL default '0',
  allowpost tinyint(1) NOT NULL default '0',
  allowcss tinyint(1) NOT NULL default '0',
  allowpoke tinyint(1) NOT NULL default '0',
  allowfriend tinyint(1) NOT NULL default '0',
  allowtrace tinyint(1) NOT NULL default '0',
  edittrail tinyint(1) NOT NULL default '0',
  domainlength smallint(6) unsigned NOT NULL default '0',
  closeignore tinyint(1) NOT NULL default '0',
  seccode tinyint(1) NOT NULL default '0',
  color varchar(10) NOT NULL default '',
  icon varchar(100) NOT NULL default '',
  manageconfig tinyint(1) NOT NULL default '0',
  managenetwork tinyint(1) NOT NULL default '0',
  manageprofilefield tinyint(1) NOT NULL default '0',
  manageprofield tinyint(1) NOT NULL default '0',
  manageusergroup tinyint(1) NOT NULL default '0',
  managefeed tinyint(1) NOT NULL default '0',
  manageshare tinyint(1) NOT NULL default '0',
  managedoing tinyint(1) NOT NULL default '0',
  manageblog tinyint(1) NOT NULL default '0',
  managetag tinyint(1) NOT NULL default '0',
  managetagtpl tinyint(1) NOT NULL default '0',
  managealbum tinyint(1) NOT NULL default '0',
  managecomment tinyint(1) NOT NULL default '0',
  managemtag tinyint(1) NOT NULL default '0',
  managethread tinyint(1) NOT NULL default '0',
  managespace tinyint(1) NOT NULL default '0',
  managecensor tinyint(1) NOT NULL default '0',
  managead tinyint(1) NOT NULL default '0',
  managesitefeed tinyint(1) NOT NULL default '0',
  managebackup tinyint(1) NOT NULL default '0',
  manageblock tinyint(1) NOT NULL default '0',
  managetemplate tinyint(1) NOT NULL default '0',
  managestat tinyint(1) NOT NULL default '0',
  managecache tinyint(1) NOT NULL default '0',
  managecredit tinyint(1) NOT NULL default '0',
  managecron tinyint(1) NOT NULL default '0',
  managename tinyint(1) NOT NULL default '0',
  manageapp tinyint(1) NOT NULL default '0',
  managetask tinyint(1) NOT NULL default '0',
  managereport tinyint(1) NOT NULL default '0',
  banvisit tinyint(1) NOT NULL default '0',
  explower int(10) NOT NULL default '0',
  searchignore tinyint(1) NOT NULL default '0',
  spamignore tinyint(1) NOT NULL default '0',
  videophotoignore tinyint(1) NOT NULL default '0',
  allowpoll tinyint(1) NOT NULL default '0',
  allowclick tinyint(1) NOT NULL default '0',
  allowevent tinyint(1) NOT NULL default '0',
  allowmagic tinyint(1) NOT NULL default '0',
  allowpm tinyint(1) NOT NULL default '0',
  allowviewvideopic tinyint(1) NOT NULL default '0',
  allowmyop tinyint(1) NOT NULL default '0',
  allowtopic tinyint(1) NOT NULL default '0',
  allowstat tinyint(1) NOT NULL default '0',
  magicdiscount tinyint(1) NOT NULL default '0',
  verifyevent tinyint(1) NOT NULL default '0',
  manageevent tinyint(1) NOT NULL default '0',
  manageeventclass tinyint(1) NOT NULL default '0',
  managepoll tinyint(1) NOT NULL default '0',
  manageclick tinyint(1) NOT NULL default '0',
  managemagic tinyint(1) NOT NULL default '0',
  managemagiclog tinyint(1) NOT NULL default '0',
  managebatch tinyint(1) NOT NULL default '0',
  managedelspace tinyint(1) NOT NULL default '0',
  managetopic tinyint(1) NOT NULL default '0',
  manageip tinyint(1) NOT NULL default '0',
  managehotuser tinyint(1) NOT NULL default '0',
  managedefaultuser tinyint(1) NOT NULL default '0',
  managespacegroup tinyint(1) NOT NULL default '0',
  managespaceinfo tinyint(1) NOT NULL default '0',
  managespacecredit tinyint(1) NOT NULL default '0',
  managespacenote tinyint(1) NOT NULL default '0',
  managevideophoto tinyint(1) NOT NULL default '0',
  managelog tinyint(1) NOT NULL default '0',
  magicaward text NOT NULL,
  PRIMARY KEY  (gid)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk AUTO_INCREMENT=11;

INSERT INTO uchome_usergroup VALUES ('1','站点管理员','-1','0','0','0','1','1','0','0','1','1','1','1','1','1','1','1','1','1','1','0','1','1','0','red','image/pay/vip.gif','1','1','1','1','1','1','1','1','1','1','0','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','0','0','1','1','1','1','1','1','1','1','1','1','1','1','0','0','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','a:0:{}');
INSERT INTO uchome_usergroup VALUES ('2','信息管理员','-1','0','0','0','1','1','0','0','1','1','1','1','1','1','1','1','1','1','1','0','3','1','0','blue','image/group/infor.gif','0','0','0','0','0','1','1','1','1','1','0','1','1','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','1','1','1','1','1','1','1','0','0','0','0','1','0','1','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_usergroup VALUES ('3','贵宾VIP','1','0','0','0','1','1','0','0','1','1','1','1','1','1','1','1','1','1','1','0','3','0','0','green','image/pay/vip.gif','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','1','1','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','a:0:{}');
INSERT INTO uchome_usergroup VALUES ('4','受限会员','0','-999999999','10','10','0','0','600','300','1','1','1','1','1','1','0','0','0','0','0','0','0','0','1','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-999999999','0','0','0','1','1','1','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_usergroup VALUES ('5','普通会员','0','0','100','20','0','0','60','60','0','0','0','0','0','0','0','0','1','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_usergroup VALUES ('6','中级会员','0','100','200','50','0','0','30','30','0','0','0','0','0','0','0','0','1','1','0','0','5','0','0','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','100','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_usergroup VALUES ('7','高级会员','0','1000','300','100','0','0','10','10','0','0','0','0','0','0','0','0','1','1','0','0','3','0','0','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_usergroup VALUES ('8','禁止会员','1','0','1','1','0','0','9999','9999','0','0','0','0','0','0','0','0','0','0','0','0','99','0','1','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_usergroup VALUES ('9','禁止访问','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO uchome_usergroup VALUES ('10','禁止发言','-1','0','1','1','0','0','9999','9999','0','0','0','0','0','0','0','0','0','0','0','0','99','0','1','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');

DROP TABLE IF EXISTS uchome_userlog;
CREATE TABLE uchome_userlog (
  uid mediumint(8) unsigned NOT NULL default '0',
  `action` char(10) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (uid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uchome_usermagic;
CREATE TABLE uchome_usermagic (
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  mid varchar(15) NOT NULL default '',
  count smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,mid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_usermagic VALUES ('1','admin','invisible','0');

DROP TABLE IF EXISTS uchome_usertask;
CREATE TABLE uchome_usertask (
  uid mediumint(8) unsigned NOT NULL,
  username char(15) NOT NULL default '',
  taskid smallint(6) unsigned NOT NULL default '0',
  credit smallint(6) NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  isignore tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (uid,taskid),
  KEY isignore (isignore,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_usertask VALUES ('8','6953219','1','20','1249498971','0');
INSERT INTO uchome_usertask VALUES ('27','tianzi','1','20','1249543474','0');
INSERT INTO uchome_usertask VALUES ('29','asdzxc','1','20','1249545671','0');
INSERT INTO uchome_usertask VALUES ('21','wangyang','1','20','1249549805','0');
INSERT INTO uchome_usertask VALUES ('21','wangyang','4','50','1249550256','0');
INSERT INTO uchome_usertask VALUES ('21','wangyang','7','2','1249550288','0');
INSERT INTO uchome_usertask VALUES ('48','yesex','1','20','1249557365','0');
INSERT INTO uchome_usertask VALUES ('57','luoyonyi','1','20','1249575635','0');
INSERT INTO uchome_usertask VALUES ('62','asasu','1','20','1249581018','0');
INSERT INTO uchome_usertask VALUES ('64','liusuo','7','2','1249723963','0');
INSERT INTO uchome_usertask VALUES ('62','asasu','7','2','1249583250','0');
INSERT INTO uchome_usertask VALUES ('73','yanluo','1','20','1249615414','0');
INSERT INTO uchome_usertask VALUES ('95','ayzhoujian','1','20','1249636711','0');
INSERT INTO uchome_usertask VALUES ('96','abcdefg','1','20','1249649198','0');
INSERT INTO uchome_usertask VALUES ('105','yyc','7','2','1249653821','0');
INSERT INTO uchome_usertask VALUES ('115','hsz','1','20','1249695487','0');
INSERT INTO uchome_usertask VALUES ('103','sylt','1','20','1249721474','0');
INSERT INTO uchome_usertask VALUES ('138','cbaabc','1','20','1249722953','0');
INSERT INTO uchome_usertask VALUES ('140','alloc','1','20','1249723783','0');
INSERT INTO uchome_usertask VALUES ('103','sylt','2','20','1249726063','1');
INSERT INTO uchome_usertask VALUES ('154','zhkabc','1','20','1249743739','0');
INSERT INTO uchome_usertask VALUES ('158','shendaaaaa','1','20','1249748023','0');
INSERT INTO uchome_usertask VALUES ('168','yhhmww','1','20','1249783914','0');
INSERT INTO uchome_usertask VALUES ('176','MAYJJ','1','20','1249802750','0');
INSERT INTO uchome_usertask VALUES ('188','tianci','1','20','1249812025','0');
INSERT INTO uchome_usertask VALUES ('209','yiyaheihei','1','20','1249869978','0');
INSERT INTO uchome_usertask VALUES ('214','subborn','1','20','1249879503','0');
INSERT INTO uchome_usertask VALUES ('221','tonypeach','1','20','1249883094','0');
INSERT INTO uchome_usertask VALUES ('223','kor','1','20','1249885705','0');
INSERT INTO uchome_usertask VALUES ('206','zhylbj','1','20','1249894891','0');
INSERT INTO uchome_usertask VALUES ('140','alloc','7','2','1250076528','0');
INSERT INTO uchome_usertask VALUES ('158','shendaaaaa','4','50','1249908797','0');
INSERT INTO uchome_usertask VALUES ('158','shendaaaaa','7','2','1251215268','0');
INSERT INTO uchome_usertask VALUES ('232','skyzhaojian','1','20','1249912364','0');
INSERT INTO uchome_usertask VALUES ('226','NESCAFE','1','20','1249921392','0');
INSERT INTO uchome_usertask VALUES ('255','abcd','1','20','1250039485','0');
INSERT INTO uchome_usertask VALUES ('255','abcd','2','20','1250040015','1');
INSERT INTO uchome_usertask VALUES ('263','ONEI','1','20','1250072380','0');
INSERT INTO uchome_usertask VALUES ('263','ONEI','7','2','1250073645','0');
INSERT INTO uchome_usertask VALUES ('264','寂寞梧桐','1','20','1250082736','0');
INSERT INTO uchome_usertask VALUES ('267','wjly','1','20','1250089650','0');
INSERT INTO uchome_usertask VALUES ('27','tianzi','7','2','1250745989','0');
INSERT INTO uchome_usertask VALUES ('271','gaonifu','1','20','1250136215','0');
INSERT INTO uchome_usertask VALUES ('273','shrfzw@163.com','1','20','1250138226','0');
INSERT INTO uchome_usertask VALUES ('274','GEXUAN','1','20','1250146874','1');
INSERT INTO uchome_usertask VALUES ('287','gougou','1','20','1250208855','0');
INSERT INTO uchome_usertask VALUES ('292','XHL','1','20','1250242530','0');
INSERT INTO uchome_usertask VALUES ('243','zhengwenxiang','1','20','1250301029','0');
INSERT INTO uchome_usertask VALUES ('304','cyh','1','20','1250306637','0');
INSERT INTO uchome_usertask VALUES ('308','alinayun','1','20','1250336644','0');
INSERT INTO uchome_usertask VALUES ('314','mtmt','1','20','1250404417','1');
INSERT INTO uchome_usertask VALUES ('324','pirate','1','20','1250475196','0');
INSERT INTO uchome_usertask VALUES ('324','pirate','7','2','1250475633','0');
INSERT INTO uchome_usertask VALUES ('325','moon','1','20','1250480460','0');
INSERT INTO uchome_usertask VALUES ('332','Arlun','1','20','1250507225','0');
INSERT INTO uchome_usertask VALUES ('232','skyzhaojian','7','2','1251385125','0');
INSERT INTO uchome_usertask VALUES ('339','yangsong1','1','20','1250538534','0');
INSERT INTO uchome_usertask VALUES ('346','sccdwh','1','20','1250586612','0');
INSERT INTO uchome_usertask VALUES ('349','chengjun','1','20','1250597924','0');
INSERT INTO uchome_usertask VALUES ('352','sexlove','1','20','1250635114','0');
INSERT INTO uchome_usertask VALUES ('354','linxiaoxiao','1','20','1250648327','0');
INSERT INTO uchome_usertask VALUES ('277','Daniel','1','20','1250649978','0');
INSERT INTO uchome_usertask VALUES ('357','dgoch','1','20','1250676604','0');
INSERT INTO uchome_usertask VALUES ('339','yangsong1','7','2','1250709964','0');
INSERT INTO uchome_usertask VALUES ('339','yangsong1','4','50','1250710396','0');
INSERT INTO uchome_usertask VALUES ('371','zlfd','1','20','1250731312','0');
INSERT INTO uchome_usertask VALUES ('371','zlfd','7','2','1251416639','0');
INSERT INTO uchome_usertask VALUES ('373','xtxbamboo','1','20','1250743708','0');
INSERT INTO uchome_usertask VALUES ('243','zhengwenxiang','4','50','1250743981','0');
INSERT INTO uchome_usertask VALUES ('243','zhengwenxiang','7','2','1251447951','0');
INSERT INTO uchome_usertask VALUES ('374','zzlliu','7','2','1250748904','0');
INSERT INTO uchome_usertask VALUES ('363','yyifan','1','20','1250773254','0');
INSERT INTO uchome_usertask VALUES ('277','Daniel','7','2','1250751840','0');
INSERT INTO uchome_usertask VALUES ('363','yyifan','4','50','1250773516','0');
INSERT INTO uchome_usertask VALUES ('396','rulerbye','1','20','1250831262','0');
INSERT INTO uchome_usertask VALUES ('399','panjunshan','1','20','1250836936','0');
INSERT INTO uchome_usertask VALUES ('386','mytwd','1','20','1250865405','0');
INSERT INTO uchome_usertask VALUES ('407','yuzhigong','1','20','1250918178','0');
INSERT INTO uchome_usertask VALUES ('387','Lele','1','20','1250927772','0');
INSERT INTO uchome_usertask VALUES ('173','huha','1','20','1250928017','0');
INSERT INTO uchome_usertask VALUES ('372','Zhaole','1','20','1250928564','0');
INSERT INTO uchome_usertask VALUES ('411','xuqinghong74','1','20','1250951593','0');
INSERT INTO uchome_usertask VALUES ('411','xuqinghong74','7','2','1251331928','0');
INSERT INTO uchome_usertask VALUES ('417','zhengyue','1','20','1251006732','0');
INSERT INTO uchome_usertask VALUES ('421','TAKR','1','20','1251031109','0');
INSERT INTO uchome_usertask VALUES ('386','mytwd','4','50','1251048801','0');
INSERT INTO uchome_usertask VALUES ('386','mytwd','7','2','1251394101','0');
INSERT INTO uchome_usertask VALUES ('430','sanshao','1','20','1251087665','0');
INSERT INTO uchome_usertask VALUES ('411','xuqinghong74','4','50','1251088159','0');
INSERT INTO uchome_usertask VALUES ('442','franceco','7','2','1251098770','0');
INSERT INTO uchome_usertask VALUES ('448','lovesheng','1','20','1251106343','0');
INSERT INTO uchome_usertask VALUES ('448','lovesheng','7','2','1251107345','0');
INSERT INTO uchome_usertask VALUES ('457','fgh3697278','1','20','1251125378','0');
INSERT INTO uchome_usertask VALUES ('458','bluesea','1','20','1251125931','0');
INSERT INTO uchome_usertask VALUES ('459','xujianzhou','1','20','1251128767','0');
INSERT INTO uchome_usertask VALUES ('459','xujianzhou','7','2','1251128865','0');
INSERT INTO uchome_usertask VALUES ('458','bluesea','7','2','1251344494','0');
INSERT INTO uchome_usertask VALUES ('458','bluesea','4','50','1251130337','0');
INSERT INTO uchome_usertask VALUES ('464','gudu','1','20','1251131323','0');
INSERT INTO uchome_usertask VALUES ('473','yusiking','1','20','1251161868','0');
INSERT INTO uchome_usertask VALUES ('476','sunjunlin','1','20','1251164015','0');
INSERT INTO uchome_usertask VALUES ('478','zxxboy','1','20','1251172140','0');
INSERT INTO uchome_usertask VALUES ('482','wxwttf','1','20','1251175109','0');
INSERT INTO uchome_usertask VALUES ('449','demonb','1','20','1251178827','0');
INSERT INTO uchome_usertask VALUES ('471','jaene','1','20','1251200075','0');
INSERT INTO uchome_usertask VALUES ('458','bluesea','2','20','1251201175','1');
INSERT INTO uchome_usertask VALUES ('458','bluesea','3','5','1251201429','1');
INSERT INTO uchome_usertask VALUES ('458','bluesea','5','10','1251201441','1');
INSERT INTO uchome_usertask VALUES ('497','ywj','1','20','1251227071','0');
INSERT INTO uchome_usertask VALUES ('385','caojun','1','20','1251207459','0');
INSERT INTO uchome_usertask VALUES ('385','caojun','7','2','1251382374','0');
INSERT INTO uchome_usertask VALUES ('503','jht','1','20','1251253761','0');
INSERT INTO uchome_usertask VALUES ('501','fcq','1','20','1251254092','0');
INSERT INTO uchome_usertask VALUES ('506','wangzhenqiu','1','20','1251254611','0');
INSERT INTO uchome_usertask VALUES ('517','rabishi123','1','20','1251256062','0');
INSERT INTO uchome_usertask VALUES ('520','yzzk','1','20','1251260776','1');
INSERT INTO uchome_usertask VALUES ('491','ffeng','1','20','1251284274','0');
INSERT INTO uchome_usertask VALUES ('491','ffeng','7','2','1251284651','0');
INSERT INTO uchome_usertask VALUES ('546','jame','1','20','1251327298','0');
INSERT INTO uchome_usertask VALUES ('547','xinxing-jason','1','20','1251338705','0');
INSERT INTO uchome_usertask VALUES ('547','xinxing-jason','7','2','1251338719','0');
INSERT INTO uchome_usertask VALUES ('529','xxx','7','2','1251340023','0');
INSERT INTO uchome_usertask VALUES ('554','zhadz','1','20','1251359590','0');
INSERT INTO uchome_usertask VALUES ('499','afei','1','20','1251379489','0');
INSERT INTO uchome_usertask VALUES ('385','caojun','4','50','1251382444','0');
INSERT INTO uchome_usertask VALUES ('232','skyzhaojian','4','50','1251385301','0');
INSERT INTO uchome_usertask VALUES ('232','skyzhaojian','3','5','1251385330','1');
INSERT INTO uchome_usertask VALUES ('568','hanggui','1','20','1251407483','0');
INSERT INTO uchome_usertask VALUES ('582','ooo','7','2','1251434785','0');
INSERT INTO uchome_usertask VALUES ('582','ooo','1','20','1251434956','0');
INSERT INTO uchome_usertask VALUES ('584','nino','1','20','1251436793','0');
INSERT INTO uchome_usertask VALUES ('1','admin','6','100','1314931232','0');
INSERT INTO uchome_usertask VALUES ('1','admin','1','20','1315117929','0');
INSERT INTO uchome_usertask VALUES ('1','admin','7','2','1315117954','0');
INSERT INTO uchome_usertask VALUES ('1','admin','3','5','1315118826','0');
INSERT INTO uchome_usertask VALUES ('1','admin','4','5','1315118999','1');

DROP TABLE IF EXISTS uchome_vipspace;
CREATE TABLE uchome_vipspace (
  vuid int(10) NOT NULL,
  stime int(11) NOT NULL,
  vday int(4) NOT NULL,
  vtime datetime NOT NULL,
  vgid int(4) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_vipspace VALUES ('5','1249476082','360','2009-08-05 20:41:22','0');
INSERT INTO uchome_vipspace VALUES ('7','1249476330','360','2009-08-05 20:45:30','0');
INSERT INTO uchome_vipspace VALUES ('9','1249482419','360','2009-08-05 22:26:59','0');
INSERT INTO uchome_vipspace VALUES ('10','1249482505','360','2009-08-05 22:28:25','0');
INSERT INTO uchome_vipspace VALUES ('11','1249482705','360','2009-08-05 22:31:45','0');
INSERT INTO uchome_vipspace VALUES ('12','1249483269','360','2009-08-05 22:41:09','0');
INSERT INTO uchome_vipspace VALUES ('13','1249483610','360','2009-08-05 22:46:50','0');
INSERT INTO uchome_vipspace VALUES ('15','1249487352','360','2009-08-05 23:49:12','0');
INSERT INTO uchome_vipspace VALUES ('21','1249550758','800','2009-08-06 17:25:58','5');
INSERT INTO uchome_vipspace VALUES ('54','1249570610','360','2009-08-06 22:56:50','0');
INSERT INTO uchome_vipspace VALUES ('55','1249571990','360','2009-08-06 23:19:50','0');
INSERT INTO uchome_vipspace VALUES ('109','1249673556','360','2009-08-08 03:32:36','0');
INSERT INTO uchome_vipspace VALUES ('142','1249725378','360','2009-08-08 17:56:18','0');
INSERT INTO uchome_vipspace VALUES ('143','1249726302','360','2009-08-08 18:11:42','0');
INSERT INTO uchome_vipspace VALUES ('149','1249737343','360','2009-08-08 21:15:43','0');
INSERT INTO uchome_vipspace VALUES ('163','1249773299','360','2009-08-09 07:14:59','0');
INSERT INTO uchome_vipspace VALUES ('166','1249778531','360','2009-08-09 08:42:11','0');
INSERT INTO uchome_vipspace VALUES ('194','1249825814','360','2009-08-09 21:50:14','0');
INSERT INTO uchome_vipspace VALUES ('197','1249835366','360','2009-08-10 00:29:26','0');
INSERT INTO uchome_vipspace VALUES ('229','1249899687','360','2009-08-10 18:21:27','0');
INSERT INTO uchome_vipspace VALUES ('237','1249929543','360','2009-08-11 02:39:03','0');
INSERT INTO uchome_vipspace VALUES ('296','1250249758','360','2009-08-14 19:35:58','0');
INSERT INTO uchome_vipspace VALUES ('307','1250329180','360','2009-08-15 17:39:40','0');
INSERT INTO uchome_vipspace VALUES ('308','1250336248','360','2009-08-15 19:37:28','0');
INSERT INTO uchome_vipspace VALUES ('314','1250404057','360','2009-08-16 14:27:37','0');
INSERT INTO uchome_vipspace VALUES ('328','1250487679','360','2009-08-17 13:41:19','0');
INSERT INTO uchome_vipspace VALUES ('345','1250567665','360','2009-08-18 11:54:25','0');
INSERT INTO uchome_vipspace VALUES ('444','1251100074','360','2009-08-24 15:47:54','0');
INSERT INTO uchome_vipspace VALUES ('363','1251108689','30','2009-08-24 18:11:29','6');
INSERT INTO uchome_vipspace VALUES ('408','1250918039','360','2009-08-22 13:13:59','0');
INSERT INTO uchome_vipspace VALUES ('457','1251125118','360','2009-08-24 22:45:18','0');
INSERT INTO uchome_vipspace VALUES ('3','1312958154','720','2011-08-10 14:35:54','0');
INSERT INTO uchome_vipspace VALUES ('592','1314934110','3','2011-09-02 11:28:30','5');
INSERT INTO uchome_vipspace VALUES ('4','1312986459','720','2011-08-10 22:27:39','0');
INSERT INTO uchome_vipspace VALUES ('2','1314938687','363','2011-09-02 12:44:47','5');

DROP TABLE IF EXISTS uchome_visitor;
CREATE TABLE uchome_visitor (
  uid mediumint(8) unsigned NOT NULL default '0',
  vuid mediumint(8) unsigned NOT NULL default '0',
  vusername char(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid,vuid),
  KEY dateline (uid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uchome_visitor VALUES ('243','1','admin','1312075797');
INSERT INTO uchome_visitor VALUES ('8','3','huangchunling','1312958283');
INSERT INTO uchome_visitor VALUES ('568','3','huangchunling','1312969630');
INSERT INTO uchome_visitor VALUES ('277','3','huangchunling','1312969669');
INSERT INTO uchome_visitor VALUES ('212','3','huangchunling','1312969709');
INSERT INTO uchome_visitor VALUES ('21','1','admin','1312985854');
INSERT INTO uchome_visitor VALUES ('17','2','tfwl','1312993861');
INSERT INTO uchome_visitor VALUES ('2','1','admin','1314931583');
INSERT INTO uchome_visitor VALUES ('3','2','羊爱上狼','1315370727');
INSERT INTO uchome_visitor VALUES ('1','2','羊爱上狼','1316137015');
INSERT INTO uchome_visitor VALUES ('592','1','admin','1314936077');
INSERT INTO uchome_visitor VALUES ('187','1','admin','1314936068');
INSERT INTO uchome_visitor VALUES ('296','1','admin','1314936332');
INSERT INTO uchome_visitor VALUES ('129','1','admin','1314936396');
INSERT INTO uchome_visitor VALUES ('4','3','情缘难了','1314936644');
INSERT INTO uchome_visitor VALUES ('590','3','情缘难了','1314936647');
INSERT INTO uchome_visitor VALUES ('1','3','情缘难了','1316137134');
INSERT INTO uchome_visitor VALUES ('2','3','情缘难了','1316137112');
INSERT INTO uchome_visitor VALUES ('96','1','admin','1315119237');
INSERT INTO uchome_visitor VALUES ('54','1','admin','1315361981');
INSERT INTO uchome_visitor VALUES ('125','1','admin','1315303451');
INSERT INTO uchome_visitor VALUES ('551','1','admin','1315303471');
INSERT INTO uchome_visitor VALUES ('274','2','羊爱上狼','1315370710');
INSERT INTO uchome_visitor VALUES ('307','2','羊爱上狼','1316137058');
INSERT INTO uchome_visitor VALUES ('187','3','情缘难了','1316137137');
INSERT INTO uchome_visitor VALUES ('125','3','情缘难了','1316137144');
INSERT INTO uchome_visitor VALUES ('307','3','情缘难了','1316137147');
INSERT INTO uchome_visitor VALUES ('551','3','情缘难了','1316137150');
INSERT INTO uchome_visitor VALUES ('54','3','情缘难了','1316137152');
INSERT INTO uchome_visitor VALUES ('96','3','情缘难了','1316137154');
INSERT INTO uchome_visitor VALUES ('328','3','情缘难了','1316137157');
INSERT INTO uchome_visitor VALUES ('110','3','情缘难了','1316137165');
INSERT INTO uchome_visitor VALUES ('17','4','找个美女','1316139230');
INSERT INTO uchome_visitor VALUES ('244','7','小女子','1316139297');
INSERT INTO uchome_visitor VALUES ('1','7','小女子','1316139329');
INSERT INTO uchome_visitor VALUES ('187','7','小女子','1316139348');
INSERT INTO uchome_visitor VALUES ('232','7','小女子','1316139373');
INSERT INTO uchome_visitor VALUES ('4','7','小女子','1316139417');
INSERT INTO uchome_visitor VALUES ('3','7','小女子','1316139448');
INSERT INTO uchome_visitor VALUES ('6','7','小女子','1316139466');
INSERT INTO uchome_visitor VALUES ('9','8','5lyx','1316141361');
INSERT INTO uchome_visitor VALUES ('96','9','changchneg','1316238140');
INSERT INTO uchome_visitor VALUES ('2','9','changchneg','1316237820');
INSERT INTO uchome_visitor VALUES ('8','9','changchneg','1316238052');
INSERT INTO uchome_visitor VALUES ('54','9','changchneg','1316238279');
INSERT INTO uchome_visitor VALUES ('17','9','changchneg','1316238816');
INSERT INTO uchome_visitor VALUES ('96','10','fenghu','1316536089');

