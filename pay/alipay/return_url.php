<?php
require_once("alipay_notify.php");
require_once("alipay_config.php");
$alipay = new alipay_notify($partner,$security_code,$sign_type,$_input_charset,$transport);
$verify_result = $alipay->return_verify();

 //��ȡ֧�����ķ�������
   $dingdan=$_GET['out_trade_no'];   //��ȡ������
   $total_fee=$_GET['total_fee'];    //��ȡ�ܼ۸�
 
    $receive_name    =$_GET['receive_name'];   //��ȡ�ջ�������
	$receive_address =$_GET['receive_address']; //��ȡ�ջ��˵�ַ
	$receive_zip     =$_GET['receive_zip'];  //��ȡ�ջ����ʱ�
	$receive_phone   =$_GET['receive_phone']; //��ȡ�ջ��˵绰
	$receive_mobile  =$_GET['receive_mobile']; //��ȡ�ջ����ֻ�

if($verify_result) {
	//echo "��Ҹ���ɹ�";
	//����������Զ������,������ݲ�ͬ��trade_status���в�ͬ����
	//log_result("verify_success"); //����֤��������ļ�
											
	pay_update($dingdan,$_GET[body],$total_fee); //pay_update(������,��������,��ֵ���)
}
else  {
	echo "fail";
	//����������Զ�����룬����������Զ������,������ݲ�ͬ��trade_status���в�ͬ����
	//log_result ("verify_failed");
}
//��־��Ϣ,��֧���������Ĳ�����¼����
function  log_result($word) { 
	$fp = fopen("log.txt","a");	
	flock($fp, LOCK_EX) ;
	fwrite($fp,$word."��ִ�����ڣ�".strftime("%Y%m%d%H%I%S",time())."\t\n");
	flock($fp, LOCK_UN); 
	fclose($fp);
}
	
?>