<?php
require_once("alipay_service.php");
require_once("alipay_config.php");
			   $varr = get_vipday(intval($_POST[cvip]));//返数组0为天数,1为金额
$p3_Amt						= (intval($_POST[paym]) > 0) ? intval($_POST[paym]) : intval($varr[1]);									
$pa_MP						= (intval($_POST[paym]) > 0) ? "1:".$_SGLOBAL['supe_uid'].":3" : "2:".$_SGLOBAL['supe_uid'].":".$_POST[cvip].":3";
$p5_Pid						= (intval($_POST[paym]) > 0) ? "积分充值" : "购买VIP";	
$parameter = array(
"service" => "create_direct_pay_by_user",
"partner" =>$partner,                                               //合作商户号
"return_url" =>$return_url,  //同步返回
"notify_url" =>$notify_url,  //异步返回
"_input_charset" => $_input_charset,                                //字符集，默认为GBK
"subject" => $p5_Pid,                                                //商品名称，必填
"body" => $pa_MP,                                           //商品描述，必填
"out_trade_no" => time(),                      //商品外部交易号，必填,每次测试都须修改
"total_fee" => $p3_Amt,                                 //商品单价，必填
"payment_type"=>"1",                               // 默认为1,不需要修改

"show_url" => $show_url,            //商品相关网站
"seller_email" => $seller_email                //卖家邮箱，必填
);
$alipay = new alipay_service($parameter,$security_code,$sign_type);
$link=$alipay->create_url();
if (intval($_POST[paym]) > 0 or $_POST[cvip] != '') {
	showmessage('', $link,0);	
	}
?>

