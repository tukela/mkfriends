<?php

/*
 * @Description �ױ�֧�������п�֧����׼��ӿڷ��� 
 * @V3.0
 * @Author rui.xin
 */

include 'merchantProperties.php';

#ǩ����������ǩ����
function getReqHmacString($p2_Order,$p3_Amt,$p4_Cur,$p5_Pid,$p6_Pcat,$p7_Pdesc,$p8_Url,$pa_MP,$pd_FrpId,$pr_NeedResponse)
{
 	
   global $_SCONFIG;
	include 'merchantProperties.php';
			$p1_MerId = isset($p1_MerId) ? $p1_MerId : $_SCONFIG[clpay];
			$merchantKey = isset($merchantKey) ? $merchantKey : $_SCONFIG[clm];
  #����ǩ������һ�������ĵ��б�����ǩ��˳�����
  $sbOld = "";
  #����ҵ������
  $sbOld = $sbOld.$p0_Cmd;
  #�����̻����
  $sbOld = $sbOld.$p1_MerId;
  #�����̻�������
  $sbOld = $sbOld.$p2_Order;     
  #����֧�����
  $sbOld = $sbOld.$p3_Amt;
  #���뽻�ױ���
  $sbOld = $sbOld.$p4_Cur;
  #������Ʒ����
  $sbOld = $sbOld.$p5_Pid;
  #������Ʒ����
  $sbOld = $sbOld.$p6_Pcat;
  #������Ʒ����
  $sbOld = $sbOld.$p7_Pdesc;
  #�����̻�����֧���ɹ����ݵĵ�ַ
  $sbOld = $sbOld.$p8_Url;
  #�����ͻ���ַ��ʶ
  $sbOld = $sbOld.$p9_SAF;
  #�����̻���չ��Ϣ
  $sbOld = $sbOld.$pa_MP;
  #�������б���
  $sbOld = $sbOld.$pd_FrpId;
  #�����Ƿ���ҪӦ�����
  $sbOld = $sbOld.$pr_NeedResponse;
  
  return HmacMd5($sbOld,$merchantKey);
  
} 

function getCallbackHmacString($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r8_MP,$r9_BType)
{
   global $_SCONFIG;
 	
	include 'merchantProperties.php';
  
			$p1_MerId = isset($p1_MerId) ? $p1_MerId : $_SCONFIG[clpay];
			$merchantKey = isset($merchantKey) ? $merchantKey : $_SCONFIG[clm];
	#ȡ�ü���ǰ���ַ���
	$sbOld = "";
	#�����̻����
	$sbOld = $sbOld.$p1_MerId;
	#����ҵ������
	$sbOld = $sbOld.$r0_Cmd;
	#����֧�����
	$sbOld = $sbOld.$r1_Code;
	#�����ױ�֧��������ˮ��
	$sbOld = $sbOld.$r2_TrxId;
	#����֧�����
	$sbOld = $sbOld.$r3_Amt;
	#���뽻�ױ���
	$sbOld = $sbOld.$r4_Cur;
	#������Ʒ����
	$sbOld = $sbOld.$r5_Pid;
	#�����̻�������
	$sbOld = $sbOld.$r6_Order;
	#�����̼���չ��Ϣ
	$sbOld = $sbOld.$r8_MP;
	#���뽻�׽����������
	$sbOld = $sbOld.$r9_BType;
	return HmacMd5($sbOld,$merchantKey);

}


#	ȡ�÷��ش��е����в���
function getCallBackValue(&$r0_Cmd,&$r1_Code,&$r2_TrxId,&$r3_Amt,&$r4_Cur,&$r5_Pid,&$r6_Order,&$r8_MP,&$r9_BType,&$hmac)
{  
	$r0_Cmd		= $_REQUEST['r0_Cmd'];
	$r1_Code	= $_REQUEST['r1_Code'];
	$r2_TrxId	= $_REQUEST['r2_TrxId'];
	$r3_Amt		= $_REQUEST['r3_Amt'];
	$r4_Cur		= $_REQUEST['r4_Cur'];
	$r5_Pid		= $_REQUEST['r5_Pid'];
	$r6_Order	= $_REQUEST['r6_Order'];
	$r8_MP		= $_REQUEST['r8_MP'];
	$r9_BType	= $_REQUEST['r9_BType']; 
	$hmac			= $_REQUEST['hmac'];
	
	return null;
}

function CheckHmac($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r8_MP,$r9_BType,$hmac)
{
	if($hmac==getCallbackHmacString($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r8_MP,$r9_BType))
		return true;
	else
		return false;
}
		
  
function HmacMd5($data,$key)
{
// RFC 2104 HMAC implementation for php.
// Creates an md5 HMAC.
// Eliminates the need to install mhash to compute a HMAC
// Hacked by Lance Rushing(NOTE: Hacked means written)

//��Ҫ���û���֧��iconv���������Ĳ���������������
$key = iconv("GB2312","UTF-8",$key);
$data = iconv("GB2312","UTF-8",$data);

$b = 64; // byte length for md5
if (strlen($key) > $b) {
$key = pack("H*",md5($key));
}
$key = str_pad($key, $b, chr(0x00));
$ipad = str_pad('', $b, chr(0x36));
$opad = str_pad('', $b, chr(0x5c));
$k_ipad = $key ^ $ipad ;
$k_opad = $key ^ $opad;

return md5($k_opad . pack("H*",md5($k_ipad . $data)));
}


?> 