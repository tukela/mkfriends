<?php
/*
	[Ucenter Home] (C) 2007-2008 Comsenz Inc.
	$Id: config.new.php 10855 2008-12-29 08:10:45Z liguode $
*/

//Ucenter Home���ò���
$_SC = array();
$_SC['dbhost']  		= 'localhost'; //��������ַ
$_SC['dbuser']  		= 'root'; //�û�
$_SC['dbpw'] 	 		= 'guja'; //����
$_SC['dbcharset'] 		= 'gbk'; //�ַ���
$_SC['pconnect'] 		= 0; //�Ƿ��������
$_SC['dbname']  		= '778899'; //���ݿ�
$_SC['tablepre'] 		= 'uchome_'; //����ǰ׺
$_SC['charset'] 		= 'gbk'; //ҳ���ַ���

$_SC['gzipcompress'] 	= 0; //����gzip

$_SC['cookiepre'] 		= 'uchome_'; //COOKIEǰ׺
$_SC['cookiedomain'] 	= ''; //COOKIE������
$_SC['cookiepath'] 		= '/'; //COOKIE����·��

$_SC['attachdir']		= './attachment/'; //�������ر���λ��(������·��, ���� 777, ����Ϊ web �ɷ��ʵ���Ŀ¼, ���Ŀ¼����� "./" ��ͷ, ĩβ�� "/")
$_SC['attachurl']		= 'attachment/'; //��������URL��ַ(��Ϊ��ǰ URL �µ���Ե�ַ�� http:// ��ͷ�ľ��Ե�ַ, ĩβ�� "/")

$_SC['siteurl']			= ''; //վ��ķ���URL��ַ(http:// ��ͷ�ľ��Ե�ַ, ĩβ�� "/")��Ϊ�յĻ���ϵͳ���Զ�ʶ��

$_SC['tplrefresh']		= 0; //�ж�ģ���Ƿ���µ�Ч�ʵȼ�����ֵԽ��Ч��Խ��; ����Ϊ0�����ò��ж�

//Ucenter Home��ȫ���
$_SC['founder'] 		= '1'; //��ʼ�� UID, ����֧�ֶ����ʼ�ˣ�֮��ʹ�� ��,�� �ָ������ֹ�����ֻ�д�ʼ�˲ſɲ�����
$_SC['allowedittpl']	= 0; //�Ƿ��������߱༭ģ�塣Ϊ�˷�������ȫ��ǿ�ҽ���ر�

//Ӧ�õ�UCenter������Ϣ(���Ե�UCenter��̨->Ӧ�ù���->�鿴��Ӧ��->���������Ӧ��������Ϣ�����滻)
define('UC_CONNECT', 'mysql'); // ���� UCenter �ķ�ʽ: mysql/NULL, Ĭ��Ϊ��ʱΪ fscoketopen(), mysql ��ֱ�����ӵ����ݿ�, Ϊ��Ч��, ������� mysql
define('UC_DBHOST', 'localhost'); // UCenter ���ݿ�����
define('UC_DBUSER', 'root'); // UCenter ���ݿ��û���
define('UC_DBPW', 'guja'); // UCenter ���ݿ�����
define('UC_DBNAME', '778899'); // UCenter ���ݿ�����
define('UC_DBCHARSET', 'gbk'); // UCenter ���ݿ��ַ���
define('UC_DBTABLEPRE', '`778899`.uc_'); // UCenter ���ݿ��ǰ׺
define('UC_DBCONNECT', '0'); // UCenter ���ݿ�־����� 0=�ر�, 1=��
define('UC_KEY', 'Q8jeS3L0p5q1k6T6x6ved7j3H8xc66r88bu77fWdyen9Zbh2vbP1hasescGf3957'); // �� UCenter ��ͨ����Կ, Ҫ�� UCenter ����һ��
define('UC_API', 'http://127.0.0.1/ucenter'); // UCenter �� URL ��ַ, �ڵ���ͷ��ʱ�����˳���
define('UC_CHARSET', 'gbk'); // UCenter ���ַ���
define('UC_IP', '127.0.0.1'); // UCenter �� IP, �� UC_CONNECT Ϊ�� mysql ��ʽʱ, ���ҵ�ǰӦ�÷�������������������ʱ, �����ô�ֵ
define('UC_APPID', '1'); // ��ǰӦ�õ� ID
define('UC_PPP', 20);