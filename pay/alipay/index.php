<?php
require_once("alipay_service.php");
require_once("alipay_config.php");
			   $varr = get_vipday(intval($_POST[cvip]));//������0Ϊ����,1Ϊ���
$p3_Amt						= (intval($_POST[paym]) > 0) ? intval($_POST[paym]) : intval($varr[1]);									
$pa_MP						= (intval($_POST[paym]) > 0) ? "1:".$_SGLOBAL['supe_uid'].":3" : "2:".$_SGLOBAL['supe_uid'].":".$_POST[cvip].":3";
$p5_Pid						= (intval($_POST[paym]) > 0) ? "���ֳ�ֵ" : "����VIP";	
$parameter = array(
"service" => "create_direct_pay_by_user",
"partner" =>$partner,                                               //�����̻���
"return_url" =>$return_url,  //ͬ������
"notify_url" =>$notify_url,  //�첽����
"_input_charset" => $_input_charset,                                //�ַ�����Ĭ��ΪGBK
"subject" => $p5_Pid,                                                //��Ʒ���ƣ�����
"body" => $pa_MP,                                           //��Ʒ����������
"out_trade_no" => time(),                      //��Ʒ�ⲿ���׺ţ�����,ÿ�β��Զ����޸�
"total_fee" => $p3_Amt,                                 //��Ʒ���ۣ�����
"payment_type"=>"1",                               // Ĭ��Ϊ1,����Ҫ�޸�

"show_url" => $show_url,            //��Ʒ�����վ
"seller_email" => $seller_email                //�������䣬����
);
$alipay = new alipay_service($parameter,$security_code,$sign_type);
$link=$alipay->create_url();
if (intval($_POST[paym]) > 0 or $_POST[cvip] != '') {
	showmessage('', $link,0);	
	}
?>

