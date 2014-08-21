<?php
/*
	[UCenter Home] (C) 2007-2008 Comsenz Inc.
	$Id: cp_task.php 8664 2008-09-05 06:27:16Z liguode $
*/

if(!defined('IN_UCHOME')) {
	exit('Access Denied');
}
   
   if (trim($_POST[pay_uid]) != '' and $adid > 0) {
   $p_username = trim($_POST[pay_uid]);
   $payuser_data = " and u.username LIKE '%$p_username%'";
   }
		  
	$perpage = 10;
             $page = empty($_GET['page'])?1:intval($_GET['page']);
                 if($page<1) $page=1;
	$start = ($page-1)*$perpage;
	$theurl = "pay.php?ac=list";
			 
		  $vlist = array();
$data = empty($adid)?"u.uid=m.payuid and m.payuid='$space[uid]'":"u.uid=m.payuid".$payuser_data;
		$count = $_SGLOBAL['db']->result($_SGLOBAL['db']->query("SELECT count(*) FROM ".tname('mardpay').
	" m,".tname('space')." u WHERE $data"), 0);
	$count = intval($count);
	$sql = $_SGLOBAL['db']->query("SELECT * FROM ".tname('mardpay').
	" m,".tname('space')." u WHERE $data ORDER BY m.pid DESC LIMIT $start,$perpage");
	while ($value = $_SGLOBAL['db']->fetch_array($sql)) 
	{
          $value[puser] = $value[username];
          $value[pcid] = $value[paynote];
		  $yuan = ($value[paynote] <= 2) ? " Ôª" : " »ý·Ö";
		  $jia = ($value[paynote] == 1) ? "" : "-";
		  $value[paymcard] = $jia.$value[paymcard].$yuan;
          $value[paynote] = $vparr[$value[paynote]];
          $vlist[] = $value;
	   }
	        $multi = multi($count, $perpage, $page, $theurl);
include template('pay_list');

?>