<?php

/*
 * @Description 易宝支付神州行卡支付标准版接口范例 
 * @V3.0
 * @Author rui.xin
 */

include 'yeepayCommon.php';	
			   $varr = get_vipday(intval($_POST[cvip]));//返数组0为天数,1为金额
#	商家设置用户购买商品的支付信息.
##易宝支付平台统一使用GBK/GB2312编码方式,参数如用到中文，请注意转码

#	商户订单号,选填.
##若不为""，提交的订单号必须在自身账户交易中唯一;为""时，易宝支付会自动生成随机的商户订单号.
$p2_Order					= time();

#	支付金额,必填.
##单位:元，精确到分.
$p3_Amt						= (intval($_POST[paym]) > 0) ? intval($_POST[paym]) : intval($varr[1]);

#	交易币种,固定值"CNY".
$p4_Cur						= "CNY";

#	商品名称
##用于支付时显示在易宝支付网关左侧的订单产品信息.
$p5_Pid						= (intval($_POST[paym]) > 0) ? "积分充值" : "购买VIP";

#	商品种类
$p6_Pcat					= (intval($_POST[paym]) > 0) ? "积分充值" : "购买VIP";

#	商品描述
$p7_Pdesc					= (intval($_POST[paym]) > 0) ? "积分充值" : "购买VIP";

#	商户接收支付成功数据的地址,支付成功后易宝支付会向该地址发送两次成功通知.
$p8_Url						= $_SCONFIG[payurl].$_SCONFIG[clfile]."/callback.php";	

#	商户扩展信息
##商户可以任意填写1K 的字符串,支付成功时将原样返回.												
$pa_MP						= (intval($_POST[paym]) > 0) ? "1:".$_SGLOBAL['supe_uid'].":4" : "2:".$_SGLOBAL['supe_uid'].":".$_POST[cvip].":4";

#	应答机制
##为"1": 需要应答机制;为"0": 不需要应答机制.
$pr_NeedResponse	= $_REQUEST['pr_NeedResponse'];

#调用签名函数生成签名串
$hmac = getReqHmacString($p2_Order,$p3_Amt,$p4_Cur,$p5_Pid,$p6_Pcat,$p7_Pdesc,$p8_Url,$pa_MP,$pd_FrpId,$pr_NeedResponse);
     
?> 
<html>
<head>
<title>To YeePay Page</title>
</head>
<body onLoad='document.yeepay.submit()'>
<form name='yeepay' action='<?php echo $reqURL_SZXstd; ?>' method='post'>
<input type='hidden' name='p0_Cmd'					value='<?php echo $p0_Cmd; ?>'>
<input type='hidden' name='p1_MerId'				value='<?php echo $p1_MerId; ?>'>
<input type='hidden' name='p2_Order'				value='<?php echo $p2_Order; ?>'>
<input type='hidden' name='p3_Amt'					value='<?php echo $p3_Amt; ?>'>
<input type='hidden' name='p4_Cur'					value='<?php echo $p4_Cur; ?>'>
<input type='hidden' name='p5_Pid'					value='<?php echo $p5_Pid; ?>'>
<input type='hidden' name='p6_Pcat'					value='<?php echo $p6_Pcat; ?>'>
<input type='hidden' name='p7_Pdesc'				value='<?php echo $p7_Pdesc; ?>'>
<input type='hidden' name='p8_Url'					value='<?php echo $p8_Url; ?>'>
<input type='hidden' name='p9_SAF'					value='<?php echo $p9_SAF; ?>'>
<input type='hidden' name='pa_MP'						value='<?php echo $pa_MP; ?>'>
<input type='hidden' name='pd_FrpId'				value='<?php echo $pd_FrpId; ?>'>
<input type='hidden' name='pr_NeedResponse'	value='<?php echo $pr_NeedResponse; ?>'>
<input type='hidden' name='hmac'						value='<?php echo $hmac; ?>'>
</form>
</body>
</html>