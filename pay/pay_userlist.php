<?php
/*
	[UCenter Home] (C) 2007-2008 Comsenz Inc.
	$Id: cp_task.php 8664 2008-09-05 06:27:16Z liguode $
*/

if(!defined('IN_UCHOME')) {
	exit('Access Denied');
}


    if (intval($adid) <= 0){ 
	showmessage('��ͨ��Ա�޴�Ȩ��');
          }

    if (!empty($_POST[openvip])) 
   {
   //upvip(�û�ID,����,���ѻ���,�������� 3�û��һ�VIP 4����Ա����VIP 5����Աȡ��VIP״̬);
   upvip($_POST[uid],($_POST[v_day]),0,4);
	showmessage('�����ɹ�.','pay.php?ac=userlist');
           }
    if (!empty($_POST[disablevip])) 
   {
   upvip($_POST[uid],intval($_POST[v_day]),0,5);
	showmessage('ȡ���ɹ�.','pay.php?ac=userlist');
           }
     if (!empty($_POST[Submit]))
	 { 
          $v_username = $_POST[s_users];
		  $cdl = (intval($_POST[s_class]) == 1) ? " selected=\"selected\"" : "";
		  $sdata = (intval($_POST[s_class]) == 1) ? " and s.groupid='$_SCONFIG[vipapp]'" : "";
          $sdata .= ($v_username != "") ? " and s.username LIKE '%$v_username%'" : "";
       }
          $pid = intval($_GET[pid]) <= 0 ? 0 : intval($_GET[pid]);
		  $vlist = array();
          $max = $pid*10;
	$query = $_SGLOBAL['db']->query("SELECT s.*,f.sex,f.email,g.grouptitle,g.system FROM ".tname('spacefield')." f,".tname('space').
	" s,".tname('usergroup')." g WHERE g.gid=s.groupid and g.system!='-1' and f.uid=s.uid".$sdata." order by s.uid desc limit ".$max.",10");
	while ($value = $_SGLOBAL['db']->fetch_array($query)) 
	{   
	    
	      if ($value[sex] == 1) { 
		     $value[sex] = "��";
		  } elseif ($value[sex] == 2) {
		     $value[sex] = "Ů";
		  } else {
		     $value[sex] = "δ����";
		  }
		  $value[name] = $value[name] == '' ? "����ص" : $value[name];
		  if ($value[groupid] == $_SCONFIG[vipapp]) {
		  $vday = ckvip($value[uid]);
		  $value[vday] =  "ʣ��:".ceil($vday[ztime]/3600/24)."��";
		  } else {
		  $value[vday] =  "δ����";
		  }
          $vlist[] = $value;
	      $vlist['cout']++;
	   }
	      $vlist['cout'] += 0;
          $vlist['mid'] = $pid-1;
          $vlist['mad'] = $pid+1;
		if ($vlist['cout'] < 1 and $pid > 0) showmessage("","pay.php?ac=userlist&&pid=".$vlist['mid'],0);
		
include template('pay_userlist');

?>