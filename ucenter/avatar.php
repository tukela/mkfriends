<?php

/*
	[UCenter] (C)2001-2009 Comsenz Inc.
	This is NOT a freeware, use is subject to license terms

	$Id: avatar.php 910 2008-12-30 03:51:44Z monkey $
*/


error_reporting(0);

define('UC_API', strtolower(($_SERVER['HTTPS'] == 'on' ? 'https' : 'http').'://'.$_SERVER['HTTP_HOST'].substr($_SERVER['PHP_SELF'], 0, strrpos($_SERVER['PHP_SELF'], '/'))));

$uid = isset($_GET['uid']) ? $_GET['uid'] : 0;
$size = isset($_GET['size']) ? $_GET['size'] : '';
$random = isset($_GET['random']) ? $_GET['random'] : '';
$type = isset($_GET['type']) ? $_GET['type'] : '';
$check = isset($_GET['check_file_exists']) ? $_GET['check_file_exists'] : '';

$avatar = './data/avatar/'.get_avatar($uid, $size, $type);
if(file_exists(dirname(__FILE__).'/'.$avatar)) {
	if($check) {
		echo 1;
		exit;
	}
	$random = !empty($random) ? rand(1000, 9999) : '';
	$avatar_url = empty($random) ? $avatar : $avatar.'?random='.$random;
} else {
	if($check) {
		echo 0;
		exit;
	}
	$size = in_array($size, array('big', 'middle', 'small')) ? $size : 'middle';
	//默认头像分男女,且随机选择，作者仝飞，支持网站www.kxss.net
	require_once("data/config.inc.php");
	require_once("lib/db.class.php");
	$db = new db();
	$db->connect(UC_DBHOST, UC_DBUSER, UC_DBPW, UC_DBNAME, UC_DBCHARSET, UC_DBCONNECT, UC_DBTABLEPRE);
	$gd=$db->fetch_first("SELECT gender FROM cdb_members WHERE uid='$uid'");
	if($gd['gender']) $gender = 'm';
	else $gender = 'f';
	$random = sprintf("%02d",rand(1,$gender=='f'?10:11));
	$avatar_url = 'images/avatar/'.$gender.'_'.$size.'_'.$random.'.gif';
	//结束,默认头像分男女,且随机选择，作者仝飞，支持网站www.kxss.net
}

if(empty($random)) {
	header("HTTP/1.1 301 Moved Permanently");
	header("Last-Modified:".date('r'));
	header("Expires: ".date('r', time() + 86400));
}

header('Location: '.UC_API.'/'.$avatar_url);
exit;

function get_avatar($uid, $size = 'middle', $type = '') {
	$size = in_array($size, array('big', 'middle', 'small')) ? $size : 'middle';
	$uid = abs(intval($uid));
	$uid = sprintf("%09d", $uid);
	$dir1 = substr($uid, 0, 3);
	$dir2 = substr($uid, 3, 2);
	$dir3 = substr($uid, 5, 2);
	$typeadd = $type == 'real' ? '_real' : '';
	return $dir1.'/'.$dir2.'/'.$dir3.'/'.substr($uid, -2).$typeadd."_avatar_$size.jpg";
}

?>