<html>
<title>�Ƹ�֧ͨ��ϵͳ</title>
<meta http-equiv="Cache-Control" content="no-cache"/> 
<body>
<?
define('IN_ADMINCP', TRUE);
include_once('../../common.php');  
include_once("tenpay_config.php");
$tenpay_conf = new tenpay_config();
echo $tenpay_conf->domain;

	function ShowExitMsg($msg,$iodata = NULL)
	  {
		global $tenpay_conf,$_SCONFIG;
	  	echo $tenpay_conf->beta_switch;
		if ($tenpay_conf->beta_switch =="0")
			{
				$strMsg="<body><html><meta name=\"TENCENT_ONELINE_PAYMENT\" content=\"China TENCENT\">\n";
			    $strMsg.= "<script language=javascript>\n";
			    $strMsg.= "window.location.href='".$_SCONFIG[payurl] . $_SCONFIG[tfile] ."/tenpay_show.php?msg=";
			    $strMsg.= $msg;
			    $strMsg.= "';\n";
			    $strMsg.= "</script></body></html>";
			    Exit($strMsg);
			 
			}
		else
			{
				
//				$tenpay_err = $iodata;
				echo  $msg,"<br/>";
				$htmlstring = "<html><body>".$iodata."</body></html>";
				echo $htmlstring,"<br/>";
			//	echo __file__,__line__;
			}
	  }

  import_request_variables("gpc", "frm_");
  /*ȡ���ز���*/
  $strCmdno			= $frm_cmdno;
  $strPayResult		= $frm_pay_result;
  $strPayInfo		= $frm_pay_info;
  $strBillDate		= $frm_date;
  $strBargainorId	= $frm_bargainor_id;
  $strTransactionId	= $frm_transaction_id;
  $strSpBillno		= $frm_sp_billno;
  $strTotalFee		= $frm_total_fee;
  $strFeeType		= $frm_fee_type;
  $strAttach			= $frm_attach;
  $strMd5Sign		= $frm_sign;

$retcode = "0";
$retmsg ="֧���ɹ�";


//��������Ϣ
//retcode = "0"					 ֧���ɹ�	
//retmsg = "֧���ɹ�"				

//retcode = "1"					 �̻��Ŵ���
//retmsg = " �̻��Ŵ���"				

//retcode = "2"					ǩ������
//retmsg = "ǩ������"				

//retcode = "3"					 �Ƹ�ͨ����֧��ʧ��	
//retmsg = "�Ƹ�ͨ����֧��ʧ��"	  


  /*��ǩ*/  $strResponseText  = "cmdno=" . $strCmdno . "&pay_result=" . $strPayResult . 
		                  "&date=" . $strBillDate . "&transaction_id=" . $strTransactionId .
			                "&sp_billno=" . $strSpBillno . "&total_fee=" . $strTotalFee .
			                "&fee_type=" . $strFeeType . "&attach=" . $strAttach .
			                "&key=" . $_SCONFIG[tenpaym];
  $strLocalSign = strtoupper(md5($strResponseText));  

  if( $strLocalSign  != $strMd5Sign)
  {
  	//��֤MD5ǩ��ʧ��
	//ֲ��ҵ���߼�������ע���λ�Ƿ֣��Ƹ�ͨ�п��ܶ��֪ͨ�̻�֧���ɹ�����Ҫ�ԲƸ�ͨ���ظ�֪ͨ��ȥ�ش���
	$retcode = "2";
	$retmsg = "��֤MD5ǩ��ʧ��";
    ShowExitMsg( "��֤MD5ǩ��ʧ��.",$strResponseText); 
  }  

  if($_SCONFIG[tenpay] != $strBargainorId )
  {
  	//������̻���
    //ֲ��ҵ���߼�������ע���λ�Ƿ֣��Ƹ�ͨ�п��ܶ��֪ͨ�̻�֧���ɹ�����Ҫ�ԲƸ�ͨ���ظ�֪ͨ��ȥ�ش���

	echo $strBargainorId,"<br/>";
	echo $tenpay_conf->spid;
	$retcode = "1";
	$retmsg = "������̻���";
    ShowExitMsg( "������̻���.",$strResponseText); 
  }

  if( $strPayResult != "0" )
  {
  	//֧��ʧ�ܣ�ϵͳ����
    //ֲ��ҵ���߼�������ע���λ�Ƿ֣��Ƹ�ͨ�п��ܶ��֪ͨ�̻�֧���ɹ�����Ҫ�ԲƸ�ͨ���ظ�֪ͨ��ȥ�ش���

	$retcode = "3";
	$retmsg = "֧��ʧ�ܣ�ϵͳ����";
    ShowExitMsg( "֧��ʧ�ܣ�ϵͳ����.",$strResponseText); 
  }
  
  if ($retcode == "0")
  {
  	//֧���ɹ�
  //ֲ��ҵ���߼�������ע���λ�Ƿ֣��Ƹ�ͨ�п��ܶ��֪ͨ�̻�֧���ɹ�����Ҫ�ԲƸ�ͨ���ظ�֪ͨ��ȥ�ش���
$money = $strTotalFee/100;//��ת��Ԫ*���������ֱ���.

			pay_update($strSpBillno,$strAttach,$money); //pay_update(������,��������,��ֵ���)
  }
  
  
?>
