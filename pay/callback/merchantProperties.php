<?php

include_once('../../common.php');
/*
 * @Description �ױ�֧�������п�֧����׼��ӿڷ��� 
 * @V3.0
 * @Author rui.xin
 */

#	�̻����p1_MerId,�Լ���ԿmerchantKey ��Ҫ���ױ�֧��ƽ̨���
//$p1_MerId			= "10000432521"	;																										#����ʹ��

$p1_MerId = trim($_SCONFIG[clpay]);
																										
//$merchantKey	= "8UPp0KE8sq73zVP370vko7C39403rtK1YwX40Td6irH216036H27Eb12792t";		#����ʹ��
$merchantKey = trim($_SCONFIG[clm]);	
//exit;	
#	�����п�֧����׼����ʽ�����ַ,�������
$reqURL_SZXstd = "https://www.yeepay.com/app-merchant-proxy/node";
#	�����п�֧����׼����������ַ
//$reqURL_SZXstd = "http://tech.yeepay.com:8080/robot/szxStdDebug.action";
# ҵ������
##����֧�����󣬹̶�ֵ"Buy" .	
$p0_Cmd = "Buy";
#	�ͻ���ַ
##Ϊ"1": ��Ҫ�û����ͻ���ַ�����ױ�֧��ϵͳ;Ϊ"0": ����Ҫ��Ĭ��Ϊ"0".
$p9_SAF = "0";
#	���б���
##������֧����׼�棬�̶�ֵ"SZX".			
$pd_FrpId					= "SZX";
?> 