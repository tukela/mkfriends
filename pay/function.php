<?php



/*
ȡVIP������Ϣ
$sum
*/
   function get_vipday ($sum) {
         global $_SCONFIG;
             $vipcls = explode("\n", $_SCONFIG['vipcls']);
   
  while (list($key,$value) = each($vipcls))
    {
      if ($key == $sum)
	       {
             $vipinfo = explode("|", $value);
             $vcmey = ($vipinfo[1] <= 0) ? 0 : $vipinfo[1];
			 $vipinfo[1] = intval($vcmey*($vipinfo[2]/100));
          break;
                }
         }
	      return $vipinfo;
    }
/*
���³�ֵ��¼
$paynoid:������
$paynote:�������� x:x:x
$money:���
*/
   function pay_update ($payid,$paynote,$money) {
   global $_SGLOBAL,$_SCONFIG;
			//֧���ɹ�
			  date_default_timezone_set("PRC"); 
			   $money = intval($money);
			   $payid = intval($payid);
               $paytime = date("YmdHis");
			   
               $payarr = explode(":",$paynote);            //0 ��ֵ���� 1 �û�ID 2 VIP����
               $space = getspace(intval($payarr[1]));      //ȡ�û���Ϣ
               $ty_pay = (intval($payarr[3]) <= 0) ? $payarr[2] : $payarr[3];
               $bilv = (intval($ty_pay) == 6) ? intval($_SCONFIG[ppbilv]) : intval($_SCONFIG[bilv]);            //����
               $credit = $money*$bilv;                     //ȡ��ֵ����
			   $varr = get_vipday(intval($payarr[2]));
			   $vday = $varr[0];     //ȡ����VIP����
      $sql = $_SGLOBAL['db']->query("select * from ".tname('mardpay')." where payno='$payid'");
      $row = $_SGLOBAL['db']->fetch_array($sql);
	  

   if (empty($row[payno]))
 {
//���ֵ��¼
          if (intval($payarr[0]) == 1) 
		{
		//���߳�ֵ
                $paytext = "��ֵ".$money."Ԫ(���".$credit."����).";
                           $_SGLOBAL['db']->query("update ".tname('space').
						   " set credit=credit+".$credit." where uid='".$space[uid]."'");
              } elseif (intval($payarr[0]) == 2) {
			  
	                      vip_update($payarr[1],$_SCONFIG[vipapp],$vday,$paytime);//vip_update(�û�ID,��Ա��ID,VIP����,VIP��ʼʱ��)
                $paytext = "����VIP".$vday."��(����".$money."Ԫ).";
		//����VIP
                 } else {
				 
             echo "��ʶ���ش���,�������Ա��ϵ.";
             exit;
                      }
		   switch (intval($ty_pay)) {
		     case 1:
                $paytext = "<b>�Ƹ�ͨ</b> ".$paytext;
             break;
		     case 2:
                $paytext = "<b>��������</b> ".$paytext;
             break;
		     case 3:
                $paytext = "<b>֧����</b> ".$paytext;
             break;
		     case 4:
                $paytext = "<b>�ױ��ֻ���ֵ��</b> ".$paytext;
             break;
		     case 5:
                $paytext = "<br>�ױ����п�</b> ".$paytext;
             break;
		     case 6:
                $paytext = "<b>PayPal</b> ".$paytext;
             break;

		   }
                //��¼����
                     $tbarr = array(
					 "payno" => $payid,
					 "payuid" => $space[uid],
					 "paymcard" => $money,
					 "paynote" => $payarr[0],
					 "paytext" => $paytext,
					 "paytime" => $paytime
					 );
                          inserttable("mardpay",$tbarr);
              echo "��֧���ɹ�.";  		
	} else {
	echo "֧���ɹ�!��رմ�ҳ��...";
	}
   }
/*
����VIP��ֵ��¼
$vuid:�û�ID
$vgid:VIP��Ա��ID
$vday:VIP����
$vtime:VIP��ʼʱ��
*/
   function vip_update ($vuid,$vgid,$vday,$vtime) {
   global $_SGLOBAL;
   
              $sql = $_SGLOBAL['db']->query("select * from ".tname('vipspace').
	   " where vuid='$vuid'");
              $row = $_SGLOBAL['db']->fetch_array($sql);
      if (isset($row[vuid])) 
	{
                             $_SGLOBAL['db']->query("update ".tname('vipspace').
							 " set vday=vday+".$vday." where vuid='".$vuid."'");
           } else {
                             $_SGLOBAL['db']->query("update ".tname('space').
							 " set groupid=".$vgid." where uid='".$vuid."'");
                   $varr = array(
				   "vuid" => $vuid,
				   "stime" => time(),
				   "vday" => $vday,
				   "vtime" => $vtime,
				   "vgid" => $vgid
				   );
                        inserttable("vipspace",$varr);
                  }
   }
   
		   //���ֿ�ͨVIP 
/*
$uid �û�ID
$vday ����
$money ���ѻ���
$cid �������� 3�û��һ�VIP 4����Ա����VIP 5����Աȡ��VIP״̬
*/
		   function upvip($uid,$vday,$money,$cid) {
		   	  global $_SGLOBAL,$_SCONFIG;
			  date_default_timezone_set("PRC"); 
                 $space = getspace($uid);
				 $vday = (intval($vday) <= 0) ? 0 : intval($vday);
			  if ($cid == 3) {
      if ($space[credit] < $money) showmessage('���ֲ���.','pay.php?pay=buyvip');
          $_SGLOBAL['db']->query("update ".tname('space').
		  " set credit=credit-".$money." where uid='".$uid."'");
                 $paytext = "���ֶһ�VIP����".$money."����(����".$vday."��VIP����).";
				 } elseif ($cid == 4) {
                 $paytext = "����VIP״̬(����".$vday."��VIP����).";
				 } elseif ($cid == 5) {
                 $paytext = "ȡ��VIP״̬(����".$vday."��VIP����).";
				 }
               $paytime = date("YmdHis");
          $vsql = $_SGLOBAL['db']->query("select * from ".tname('vipspace').
		  " where vuid='$uid'");
          $vrow = $_SGLOBAL['db']->fetch_array($vsql);
	   
					   if ($cid < 5) {
      if (isset($vrow[vuid])) 
	  {
	  //����VIP��¼
          $_SGLOBAL['db']->query("update ".tname('vipspace')." set vday=vday+".$vday.
		" where vuid='".$uid."'");
		
           } else {
		   
	  //������VIP��¼
        $_SGLOBAL['db']->query("update ".tname('space').
		" set groupid=".$_SCONFIG[vipapp]." where uid='".$uid."'");
		
                $varr = array(
				       "vuid" => $uid,
					   "stime" => time(),
					   "vday" => $vday,
					   "vtime" => $paytime,
					   "vgid" => $space[groupid]
					   );
                        inserttable("vipspace",$varr);
             }
						} elseif ($cid == 5) {
						if($vday >= $vrow[vday]) {
						
           $_SGLOBAL['db']->query("update ".tname('space').
		   " set groupid='$vrow[vgid]' where uid='".$uid."'");
           $_SGLOBAL['db']->query("DELETE FROM ".tname('vipspace')." where vuid='".$uid."'");
		                        } else {
           $_SGLOBAL['db']->query("update ".tname('vipspace').
		   " set vday=vday-$vday where vuid='".$uid."'");
                 $paytext = "����".$vday."��VIP����.";
								
								}
						}
        $paynoid = time();
        $tbarr = array(
			"payno" => $paynoid,
			"payuid" => $uid,
			"paymcard" => $money,
			"paynote" => $cid,
			"paytext" => $paytext,
			"paytime" => $paytime
			);
			inserttable("mardpay",$tbarr);

		   }
//���VIP��Ա
/*
$uid ��ID ����array()
*/
function ckvip($uid) {
	global $_SGLOBAL,$_SCONFIG;
        if (empty($_SCONFIG[vipapp])) return -1; 
			
            $space = getspace($uid);
     if ($_GET['ac'] != "install" and $space[groupid] == $_SCONFIG[vipapp]) {
	$query = $_SGLOBAL['db']->query("SELECT (vday*3600*24-(". time() ." - stime)) as ztime,vtime,vgid,vday FROM ".tname('vipspace')." WHERE vuid='$uid'");
	        $value = $_SGLOBAL['db']->fetch_array($query);
	
//VIP���
              $vday = ceil($value[ztime]/3600/24);
       if ($vday <= 0) {
                 $value[day] = 0;
           //if ($value[vgid] != '') {
           $_SGLOBAL['db']->query("update ".tname('space')." set groupid='$value[vgid]' where uid='".$uid."'");
                                     // }
           $_SGLOBAL['db']->query("DELETE FROM ".tname('vipspace')." where vuid='".$uid."'");
                            } else {
                   $value[day] = $vday;
                              }
                         }
	return $value;
                       }
?>