# Identify: MTMxNjU3NjQyNix1Y2VudGVyLHVjZW50ZXIsbXVsdGl2b2wsMQ==
# <?exit();?>
# ucenter Multi-Volume Data Dump Vol.1
# Time: 2011-09-21 03:40:26
# Type: ucenter
# Table Prefix: uc_
# gbk
# ucenter Home: http://www.comsenz.com
# Please visit our website for newest infomation about ucenter
# --------------------------------------------------------


DROP TABLE IF EXISTS uc_admins;
CREATE TABLE uc_admins (
  uid mediumint(8) unsigned NOT NULL auto_increment,
  username char(15) NOT NULL default '',
  allowadminsetting tinyint(1) NOT NULL default '0',
  allowadminapp tinyint(1) NOT NULL default '0',
  allowadminuser tinyint(1) NOT NULL default '0',
  allowadminbadword tinyint(1) NOT NULL default '0',
  allowadmintag tinyint(1) NOT NULL default '0',
  allowadminpm tinyint(1) NOT NULL default '0',
  allowadmincredits tinyint(1) NOT NULL default '0',
  allowadmindomain tinyint(1) NOT NULL default '0',
  allowadmindb tinyint(1) NOT NULL default '0',
  allowadminnote tinyint(1) NOT NULL default '0',
  allowadmincache tinyint(1) NOT NULL default '0',
  allowadminlog tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (uid),
  UNIQUE KEY username (username)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uc_applications;
CREATE TABLE uc_applications (
  appid smallint(6) unsigned NOT NULL auto_increment,
  `type` char(16) NOT NULL default '',
  `name` char(20) NOT NULL default '',
  url char(255) NOT NULL default '',
  authkey char(255) NOT NULL default '',
  ip char(15) NOT NULL default '',
  viewprourl char(255) NOT NULL,
  apifilename char(30) NOT NULL default 'uc.php',
  `charset` char(8) NOT NULL default '',
  dbcharset char(8) NOT NULL default '',
  synlogin tinyint(1) NOT NULL default '0',
  recvnote tinyint(1) default '0',
  extra mediumtext NOT NULL,
  tagtemplates mediumtext NOT NULL,
  PRIMARY KEY  (appid)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk AUTO_INCREMENT=2;

INSERT INTO uc_applications VALUES ('1',0x5543484f4d45,0xb8f6c8cbbcd2d4b0,0x687474703a2f2f7777772e7a69626f332e636f6d,0x65323230363138655a306363643543667331733933307a3855667232763958393536623856345531706573314c66313253384765663059645a64593368623336,'','',0x75632e706870,0x67626b,0x67626b,'1','1','',0x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2249534f2d383835392d31223f3e0d0a3c726f6f743e0d0a093c6974656d2069643d2274656d706c617465223e3c215b43444154415b3c6120687265663d227b75726c7d22207461726765743d225f626c616e6b223e7b7375626a6563747d3c2f613e5d5d3e3c2f6974656d3e0d0a093c6974656d2069643d226669656c6473223e0d0a09093c6974656d2069643d227375626a656374223e3c215b43444154415bc8d5d6beb1eacce25d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d22756964223e3c215b43444154415bd3c3bba72049445d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d22757365726e616d65223e3c215b43444154415bd3c3bba7c3fb5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d22646174656c696e65223e3c215b43444154415bc8d5c6da5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d22737061636575726c223e3c215b43444154415bbfd5bce4b5d8d6b75d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2275726c223e3c215b43444154415bc8d5d6beb5d8d6b75d5d3e3c2f6974656d3e0d0a093c2f6974656d3e0d0a3c2f726f6f743e);

DROP TABLE IF EXISTS uc_badwords;
CREATE TABLE uc_badwords (
  id smallint(6) unsigned NOT NULL auto_increment,
  admin varchar(15) NOT NULL default '',
  find varchar(255) NOT NULL default '',
  replacement varchar(255) NOT NULL default '',
  findpattern varchar(255) NOT NULL default '',
  PRIMARY KEY  (id),
  UNIQUE KEY find (find)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uc_domains;
CREATE TABLE uc_domains (
  id int(10) unsigned NOT NULL auto_increment,
  domain char(40) NOT NULL default '',
  ip char(15) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uc_failedlogins;
CREATE TABLE uc_failedlogins (
  ip char(15) NOT NULL default '',
  count tinyint(1) unsigned NOT NULL default '0',
  lastupdate int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (ip)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uc_failedlogins VALUES (0x3131322e3234302e3132312e313737,'1','1316576217');

DROP TABLE IF EXISTS uc_feeds;
CREATE TABLE uc_feeds (
  feedid mediumint(8) unsigned NOT NULL auto_increment,
  appid varchar(30) NOT NULL default '',
  icon varchar(30) NOT NULL default '',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(15) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
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
  target_ids varchar(255) NOT NULL default '',
  PRIMARY KEY  (feedid),
  KEY uid (uid,dateline)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uc_friends;
CREATE TABLE uc_friends (
  uid mediumint(8) unsigned NOT NULL default '0',
  friendid mediumint(8) unsigned NOT NULL default '0',
  direction tinyint(1) NOT NULL default '0',
  version int(10) unsigned NOT NULL auto_increment,
  delstatus tinyint(1) NOT NULL default '0',
  `comment` char(255) NOT NULL default '',
  PRIMARY KEY  (version),
  KEY uid (uid),
  KEY friendid (friendid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uc_mailqueue;
CREATE TABLE uc_mailqueue (
  mailid int(10) unsigned NOT NULL auto_increment,
  touid mediumint(8) unsigned NOT NULL default '0',
  tomail varchar(32) NOT NULL,
  frommail varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  message text NOT NULL,
  `charset` varchar(15) NOT NULL,
  htmlon tinyint(1) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  dateline int(10) unsigned NOT NULL default '0',
  failures tinyint(3) unsigned NOT NULL default '0',
  appid smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (mailid),
  KEY appid (appid),
  KEY `level` (`level`,failures)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1;


DROP TABLE IF EXISTS uc_memberfields;
CREATE TABLE uc_memberfields (
  uid mediumint(8) unsigned NOT NULL,
  blacklist text NOT NULL,
  PRIMARY KEY  (uid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uc_memberfields VALUES ('1','');
INSERT INTO uc_memberfields VALUES ('2','');
INSERT INTO uc_memberfields VALUES ('3','');
INSERT INTO uc_memberfields VALUES ('4','');
INSERT INTO uc_memberfields VALUES ('5','');
INSERT INTO uc_memberfields VALUES ('6','');
INSERT INTO uc_memberfields VALUES ('7','');
INSERT INTO uc_memberfields VALUES ('8','');
INSERT INTO uc_memberfields VALUES ('9','');
INSERT INTO uc_memberfields VALUES ('10','');

DROP TABLE IF EXISTS uc_members;
CREATE TABLE uc_members (
  uid mediumint(8) unsigned NOT NULL auto_increment,
  username char(15) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  email char(32) NOT NULL default '',
  myid char(30) NOT NULL default '',
  myidkey char(16) NOT NULL default '',
  regip char(15) NOT NULL default '',
  regdate int(10) unsigned NOT NULL default '0',
  lastloginip int(10) NOT NULL default '0',
  lastlogintime int(10) unsigned NOT NULL default '0',
  salt char(6) NOT NULL,
  secques char(8) NOT NULL default '',
  PRIMARY KEY  (uid),
  UNIQUE KEY username (username),
  KEY email (email)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk AUTO_INCREMENT=11;

INSERT INTO uc_members VALUES ('1',0x61646d696e,0x3265393731386333363930613234613966303133306334366262333231613437,0x7765626d6173746f7240796f7572646f6d61696e2e636f6d,'','',0x36302e3231352e3234362e323037,'1314925478','0','0',0x333436353465,'');
INSERT INTO uc_members VALUES ('2',0xd1f2b0aec9cfc0c7,0x6639336139323266343335666535333163396238393361313437373561303635,0x313030343637343635354071712e636f6d,'','',0x36302e3231352e3234362e323037,'1314929403','0','0',0x626532306132,'');
INSERT INTO uc_members VALUES ('3',0xc7e9d4b5c4d1c1cb,0x6536303863373936353331356533316438356431663936656238326666633861,0x38363036343336364071712e636f6d,'','',0x36302e3231352e3234362e323037,'1314936508','0','0',0x633033303238,'');
INSERT INTO uc_members VALUES ('4',0xd5d2b8f6c3c0c5ae,0x6636653765663734316333333239663265353661633965666563363532306661,0x3836303634333636384071712e636f6d,'','',0x36302e3231352e3234362e323037,'1314938156','0','0',0x636239393363,'');
INSERT INTO uc_members VALUES ('5',0xd0a1d2b6d7d3,0x6462383234663139623835623863666663663063623830636233636231363634,0x7869616f79657a69403132362e636f6d,'','',0x36302e3231352e3234322e3237,'1315016549','0','0',0x363039386564,'');
INSERT INTO uc_members VALUES ('6',0xd0a3c4dacdf8,0x6466343262633237336265363330306330623439373763353037323438363136,0x3837313635364071712e636f6d,'','',0x36302e3231352e3234322e3237,'1315017741','0','0',0x646434386636,'');
INSERT INTO uc_members VALUES ('7',0xd0a1c5aed7d3,0x6534646663333864653865626633383366653637643930356130393331343834,0x383534363431364071712e636f6d,'','',0x36302e3231352e3234372e323436,'1316139290','0','0',0x616631383537,'');
INSERT INTO uc_members VALUES ('8',0x356c7978,0x3531333366646437623835353330343336346136616336613833616339346663,0x3134313833353436344071712e636f6d,'','',0x3231392e3132392e37322e3133,'1316140528','0','0',0x306139306538,'');
INSERT INTO uc_members VALUES ('9',0x6368616e6763686e6567,0x3237376634303936363138376331623666613335623431636564376432343464,0x797933343331373737403136332e636f6d,'','',0x3131322e3234302e3131302e3837,'1316237582','0','0',0x656363666362,'');
INSERT INTO uc_members VALUES ('10',0x66656e676875,0x3035353464663561613966366162393839376332633733643062633363346266,0x3534353432354071712e636f6d,'','',0x3131362e3232342e32372e323230,'1316535582','0','0',0x656539313236,'');

DROP TABLE IF EXISTS uc_mergemembers;
CREATE TABLE uc_mergemembers (
  appid smallint(6) unsigned NOT NULL,
  username char(15) NOT NULL,
  PRIMARY KEY  (appid,username)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uc_newpm;
CREATE TABLE uc_newpm (
  uid mediumint(8) unsigned NOT NULL,
  PRIMARY KEY  (uid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uc_newpm VALUES ('3');

DROP TABLE IF EXISTS uc_notelist;
CREATE TABLE uc_notelist (
  noteid int(10) unsigned NOT NULL auto_increment,
  operation char(32) NOT NULL,
  closed tinyint(4) NOT NULL default '0',
  totalnum smallint(6) unsigned NOT NULL default '0',
  succeednum smallint(6) unsigned NOT NULL default '0',
  getdata mediumtext NOT NULL,
  postdata mediumtext NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  pri tinyint(3) NOT NULL default '0',
  app1 tinyint(4) NOT NULL,
  PRIMARY KEY  (noteid),
  KEY closed (closed,pri,noteid),
  KEY dateline (dateline)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk AUTO_INCREMENT=4;

INSERT INTO uc_notelist VALUES ('1',0x75706461746561707073,'1','0','0','',0x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2249534f2d383835392d31223f3e0d0a3c726f6f743e0d0a093c6974656d2069643d2231223e0d0a09093c6974656d2069643d226170706964223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2274797065223e3c215b43444154415b5543484f4d455d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226e616d65223e3c215b43444154415bb8f6c8cbbcd2d4b05d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2275726c223e3c215b43444154415b687474703a2f2f7777772e7a69626f332e636f6d5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226970223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2263686172736574223e3c215b43444154415b67626b5d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d2273796e6c6f67696e223e3c215b43444154415b315d5d3e3c2f6974656d3e0d0a09093c6974656d2069643d226578747261223e3c215b43444154415b5d5d3e3c2f6974656d3e0d0a093c2f6974656d3e0d0a093c6974656d2069643d2255435f415049223e3c215b43444154415b687474703a2f2f7777772e7a69626f332e636f6d2f7563656e7465725d5d3e3c2f6974656d3e0d0a3c2f726f6f743e,'0','0','0');
INSERT INTO uc_notelist VALUES ('2',0x7570646174657077,'1','1','1',0x757365726e616d653d61646d696e2670617373776f72643d,'','1314931442','0','1');
INSERT INTO uc_notelist VALUES ('3',0x7570646174657077,'1','1','1',0x757365726e616d653d61646d696e2670617373776f72643d,'','1316576321','0','1');

DROP TABLE IF EXISTS uc_pms;
CREATE TABLE uc_pms (
  pmid int(10) unsigned NOT NULL auto_increment,
  msgfrom varchar(15) NOT NULL default '',
  msgfromid mediumint(8) unsigned NOT NULL default '0',
  msgtoid mediumint(8) unsigned NOT NULL default '0',
  folder enum('inbox','outbox') NOT NULL default 'inbox',
  `new` tinyint(1) NOT NULL default '0',
  `subject` varchar(75) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  message text NOT NULL,
  delstatus tinyint(1) unsigned NOT NULL default '0',
  related int(10) unsigned NOT NULL default '0',
  fromappid smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (pmid),
  KEY msgtoid (msgtoid,folder,dateline),
  KEY msgfromid (msgfromid,folder,dateline),
  KEY related (related),
  KEY getnum (msgtoid,folder,delstatus)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk AUTO_INCREMENT=4;

INSERT INTO uc_pms VALUES ('1',0xd1f2b0aec9cfc0c7,'2','3','inbox','1',0xb0a1b0a1b0a1b0a1,'1315370734',0xb0a1b0a1b0a1b0a1,'0','0','1');
INSERT INTO uc_pms VALUES ('2',0xd1f2b0aec9cfc0c7,'3','2','inbox','0',0xb0a1b0a1b0a1b0a1,'1315370734',0xb0a1b0a1b0a1b0a1,'0','0','0');
INSERT INTO uc_pms VALUES ('3',0xd1f2b0aec9cfc0c7,'2','3','inbox','1',0xb0a1b0a1b0a1b0a1,'1315370734',0xb0a1b0a1b0a1b0a1,'0','1','1');

DROP TABLE IF EXISTS uc_protectedmembers;
CREATE TABLE uc_protectedmembers (
  uid mediumint(8) unsigned NOT NULL default '0',
  username char(15) NOT NULL default '',
  appid tinyint(1) unsigned NOT NULL default '0',
  dateline int(10) unsigned NOT NULL default '0',
  admin char(15) NOT NULL default '0',
  UNIQUE KEY username (username,appid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uc_protectedmembers VALUES ('1',0x61646d696e,'1','1314925478',0x61646d696e);

DROP TABLE IF EXISTS uc_settings;
CREATE TABLE uc_settings (
  k varchar(32) NOT NULL default '',
  v text NOT NULL,
  PRIMARY KEY  (k)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

INSERT INTO uc_settings VALUES (0x616363657373656d61696c,'');
INSERT INTO uc_settings VALUES (0x63656e736f72656d61696c,'');
INSERT INTO uc_settings VALUES (0x63656e736f72757365726e616d65,'');
INSERT INTO uc_settings VALUES (0x64617465666f726d6174,0x792d6e2d6a);
INSERT INTO uc_settings VALUES (0x646f75626c6565,0x31);
INSERT INTO uc_settings VALUES (0x6e6578746e6f746574696d65,'0');
INSERT INTO uc_settings VALUES (0x74696d656f6666736574,0x3238383030);
INSERT INTO uc_settings VALUES (0x706d6c696d697431646179,0x313030);
INSERT INTO uc_settings VALUES (0x706d757365726c696d697431646179,0x3330);
INSERT INTO uc_settings VALUES (0x706d666c6f6f646374726c,0x3135);
INSERT INTO uc_settings VALUES (0x706d63656e746572,0x31);
INSERT INTO uc_settings VALUES (0x73656e64706d736563636f6465,0x31);
INSERT INTO uc_settings VALUES (0x706d73656e6472656764617973,'0');
INSERT INTO uc_settings VALUES (0x6d61696c64656661756c74,0x757365726e616d65403231636e2e636f6d);
INSERT INTO uc_settings VALUES (0x6d61696c73656e64,0x31);
INSERT INTO uc_settings VALUES (0x6d61696c736572766572,0x736d74702e3231636e2e636f6d);
INSERT INTO uc_settings VALUES (0x6d61696c706f7274,0x3235);
INSERT INTO uc_settings VALUES (0x6d61696c61757468,0x31);
INSERT INTO uc_settings VALUES (0x6d61696c66726f6d,0x5543656e746572203c757365726e616d65403231636e2e636f6d3e);
INSERT INTO uc_settings VALUES (0x6d61696c617574685f757365726e616d65,0x757365726e616d65403231636e2e636f6d);
INSERT INTO uc_settings VALUES (0x6d61696c617574685f70617373776f7264,0x70617373776f7264);
INSERT INTO uc_settings VALUES (0x6d61696c64656c696d69746572,'0');
INSERT INTO uc_settings VALUES (0x6d61696c757365726e616d65,0x31);
INSERT INTO uc_settings VALUES (0x6d61696c73696c656e74,0x31);
INSERT INTO uc_settings VALUES (0x76657273696f6e,0x312e352e30);

DROP TABLE IF EXISTS uc_sqlcache;
CREATE TABLE uc_sqlcache (
  sqlid char(6) NOT NULL default '',
  `data` char(100) NOT NULL,
  expiry int(10) unsigned NOT NULL,
  PRIMARY KEY  (sqlid),
  KEY expiry (expiry)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uc_tags;
CREATE TABLE uc_tags (
  tagname char(20) NOT NULL,
  appid smallint(6) unsigned NOT NULL default '0',
  `data` mediumtext,
  expiration int(10) unsigned NOT NULL,
  KEY tagname (tagname,appid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS uc_vars;
CREATE TABLE uc_vars (
  `name` char(32) NOT NULL default '',
  `value` char(255) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;

INSERT INTO uc_vars VALUES (0x6e6f7465657869737473,'0');
INSERT INTO uc_vars VALUES (0x6e6f746565786973747331,'0');

