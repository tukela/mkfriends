<?php
/*
	[UCenter Home] (C) 2007-2008 Comsenz Inc.
	$Id: cp_task.php 8664 2008-09-05 06:27:16Z liguode $
*/

if(!defined('IN_UCHOME')) {
	exit('Access Denied');
}
    if (intval($adid) <= 0){ 
	showmessage('普通会员无此权限');
          }
        if (isset($_POST['Submit'])) {
             //更新充值配置
         $arrfig = $_POST[config];
	 $arrfig['web_paykey'] = (trim($arrfig['web_paykey']) == '') ? md5(time()) : trim($arrfig['web_paykey']);
     while (list($key,$value) = each($arrfig)) 
	{
     $ckfigsql = $_SGLOBAL['db']->query("select * from ".tname('config').
		 " where var='".$key."'");
     $figrow = $_SGLOBAL['db']->fetch_row($ckfigsql);
        if (isset($figrow[0])) 
		 {
           $_SGLOBAL['db']->query("update ".tname('config').
		   " set datavalue='".$value."' where var='".$key."'");
             } else {
           $_SGLOBAL['db']->query("INSERT INTO ".tname('config').
		   "(var,datavalue) values ('".$key."','".$value."');");
            }
                }
	include_once(S_ROOT.'./source/function_cache.php');
		config_cache();
	showmessage('成功更新充值配置.','pay.php?ac=config');
                   }

//充值配置
            $ckpaysql = $_SGLOBAL['db']->query("select * from ".tname('config'));
      while ($ckrow = $_SGLOBAL['db']->fetch_row($ckpaysql)) 
	 {
             $configs[$ckrow[0]] = $ckrow[1];
         }
include template('pay_config');
?>