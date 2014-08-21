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
     $ckfigsql = $_SGLOBAL['db']->query("select * from ".tname('config').
		 " where var='vipyx'");
     $figrow = $_SGLOBAL['db']->fetch_row($ckfigsql);
	 
         $arrfig = $_POST[config];
		 $datas = $_POST[vipyx];
		 $viplookinfo = $_POST[viplookinfo];
        if (isset($figrow[0])) 
		 {
           $_SGLOBAL['db']->query("update ".tname('config').
		   " set datavalue='".$datas."' where var='vipyx'");
           $_SGLOBAL['db']->query("update ".tname('config').
		   " set datavalue='".$viplookinfo."' where var='viplookinfo'");
             } else {
           $_SGLOBAL['db']->query("INSERT INTO ".tname('config').
		   "(var,datavalue) values ('vipyx','".$datas."');");
           $_SGLOBAL['db']->query("INSERT INTO ".tname('config').
		   "(var,datavalue) values ('viplookinfo','".$viplookinfo."');");
            }
			
     while (list($key,$value) = each($arrfig)) 
	{
	  if ($key != "gid") 
	   {
	   
	$darr[] = $key."='".$value."'";
	     }
	   }
           $_SGLOBAL['db']->query("update ".tname('usergroup').
		   " set ".implode(",",$darr)." where gid='".$arrfig[gid]."'");
           $_SGLOBAL['db']->query("update ".tname('config').
		   " set datavalue='".$arrfig[gid]."' where var='vipapp'");
			
	include_once(S_ROOT.'./source/function_cache.php');
		config_cache();
		
	showmessage('成功更新充值配置.','pay.php?ac=vipconfig');
		 }

     $appsql = $_SGLOBAL['db']->query("select * from ".tname('usergroup').
		 " where gid='".$_SCONFIG[vipapp]."'");
     $approw = $_SGLOBAL['db']->fetch_array($appsql);
include template('pay_vipconfig');

?>