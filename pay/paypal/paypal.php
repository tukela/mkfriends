<?
include_once('./../../common.php');

$email = $_SCONFIG[pppay];
$key = $_SCONFIG[ppm];

			   $varr = get_vipday(intval($_POST[cvip]));//������0Ϊ����,1Ϊ���
$money = (intval($_POST[paym]) > 0) ? intval($_POST[paym]) : intval($varr[1]);
			   if ($money >= 1)    {     
$text = (intval($_POST[paym]) > 0) ? "1:".$_SGLOBAL['supe_uid'].":6" : "2:".$_SGLOBAL['supe_uid'].":".$_POST[cvip].":6";       
$mc = "USD";
$name = (intval($_POST[paym]) > 0) ? "���ֳ�ֵ(Pay Integral)" : "VIP����(Buy VIP)";  
$sendurl = "http://www.paypal.com/cgi-bin/webscr";
//��ʽ 
//$sendurl = "https://www.sandbox.paypal.com/cgi-bin/webscr";
//����
$return = $_SCONFIG[payurl].$_SCONFIG[ppfile]."/return.php";
$notify_url = $_SCONFIG[payurl].$_SCONFIG[ppfile]."/notify_url.php";
$dno = time();
$web_paykey = md5($_SCONFIG[web_paykey].$text);
$mds = md5($email.md5($dno.$key.$money).$web_paykey);
		} else {
		
	showmessage('��С��1.','pay.php?ac=config');
		}
?>
<html>
<head>
<title>PayPal</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body onLoad="document.paypal.submit();">
<form name="paypal" action="<?=$sendurl;?>" method="post">
<input type="hidden" name="cmd" value="_xclick"> 
<input type="hidden" name="item_number" value="<?=$mds;?>">
<input type="hidden" name="on0" value="��ע"> 
<input type="hidden" name="os0" value="<?=$text;?>"> 
<input type="hidden" name="on1" value="No:"> 
<input type="hidden" name="os1" value="<?=$dno;?>"> 
<input type="hidden" name="business" value="<?=$email;?>"> 
<input type="hidden" name="item_name" value="<?=$name;?>"> 
<input type="hidden" name="currency_code" value="<?=$mc;?>"> 
<input type="hidden" name="amount" value="<?=intval($money);?>"> 
<input type="hidden" name="return" value="<?=$return;?>"> 
<input type="hidden" name="notify_url" value="<?=$notify_url;?>"> 
</form>
���ڽ����ֵҳ��,���Ժ�...
</body>
</html>