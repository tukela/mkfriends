<?php
include_once('../../common.php');
$partner = $_SCONFIG[appay];//�������ID
//$partner = "2088002165079950";//�������ID
//$security_code = "2lkyx997m07pqciz259hv2g8snuw7tbp";//��ȫ������
$security_code = $_SCONFIG[apm];//��ȫ������
$seller_email = $_SCONFIG[payemail];//��������
$_input_charset = $_SC['dbcharset']; //�ַ������ʽ  Ŀǰ֧�� GBK �� utf-8
$sign_type = "MD5"; //���ܷ�ʽ  ϵͳĬ��(��Ҫ�޸�)
$transport= "https";//����ģʽ,����Ը����Լ��ķ������Ƿ�֧��ssl���ʶ�ѡ��http�Լ�https����ģʽ(ϵͳĬ��,��Ҫ�޸�)
$notify_url = $_SCONFIG[payurl].$_SCONFIG[apfile]."/notify_url.php";// �첽���ص�ַ
$return_url = $_SCONFIG[payurl].$_SCONFIG[apfile]."/return_url.php"; //ͬ�����ص�ַ
$show_url   = $_SCONFIG[payurl]  //����վ��Ʒ��չʾ��ַ,����Ϊ��

/** ��ʾ����λ�ȡ��ȫУ����ͺ���ID
1.���� www.alipay.com��Ȼ���½�����ʻ�($seller_email).
2.���̼ҷ���.

*/
?>