<?php  
include_once("tenpay_config.php");
$tenpay_conf = new tenpay_config();
class tenpay_online_payment  
{
		var  $tenpay_config;
	function tenpay_online_payment()
	{
		global $tenpay_conf,$_SCONFIG;
		$this->tenpay_config = $tenpay_conf;
       $this->tenpay_config->spid = $_SCONFIG[tenpay];
       $this->tenpay_config->sp_key = $_SCONFIG[tenpaym];
       $this->tenpay_config->tenpay_dir = $_SCONFIG[tfile];
       $this->tenpay_config->domain = $_SCONFIG[payurl];
       $this->tenpay_config->site_name = $_SCONFIG[sitename];
	}

	//����������
	function ShowExitMsg($msg)
	  {
		if (parent::beta_switch =="0")
			{
				$strMsg="<body><html><meta name=\"TENCENT_ONELINE_PAYMENT\" content=\"China TENCENT\">\n";
			    $strMsg.= "<script language=javascript>\n";
			    $strMsg.= "window.location.href='".$domain . $tenpay_dir ."/tenpay_show.php";
			    $strMsg.= $msg;
			    $strMsg.= "';\n";
			    $strMsg.= "</script></body></html>";
			    Exit($strMsg);
			}
		else
			{
				echo  "do something";
			}
	  }
	  
	  
	  
	function tenpay_check_config ()//��������ļ���Ŀ
	{
			$retcode = "0";
		
		 if (empty($this->tenpay_config->spid))
			 {
			 	$retcode = "09001";
				$retmsg  = "ȱ���̻���spid";
				
			 }
			 
			 if (empty($this->tenpay_config->sp_key))
			 {
			 	$retcode = "090002";
				$retmsg  = "ȱ����Կsp_key";
				
			 }
			 
			 if (empty($this->tenpay_config->domain))
			 {
			 	$retcode = "09003";
				$retmsg  = "ȱ����վ��ַdomain";
				
			 }
			 
			 if (empty($this->tenpay_config->tenpay_dir))
			 {
				$retcode = "09004";
				$retmsg  = "ȱ�ٲƸ�ͨ��װĿ¼tenpay_dir";
			 }
			 
			 
			 
			 
			 if (empty($this->tenpay_config->site_name))
			 {
			 	$retcode = "09005";
				$retmsg = "ȱ����վ����";
			 }
			 
			 if (empty($this->tenpay_config->attach))
			 {
				$retcode = "09006";
				$retmsg = "ȱ�ٸ�����Ϣ��Ĭ������Ϊ��";
				$this->tenpay_config->attach = "";
			 }
			 
			  if (empty($this->tenpay_config->imgtitle))
			 {
				$retcode = "09007";
				$retmsg = "ȱ��ͼƬ˵����Ĭ������Ϊ�Ƹ�֧ͨ��";
				$this->tenpay_config->imgtitle = "�Ƹ�֧ͨ��";
			 }
			 
			 if (empty($this->tenpay_config->imgsrc))
			 {
				$retcode = "09008";
				$retmsg = "ȱ��ͼƬ��ַ��Ĭ������Ϊ/tenpay/image/tenpay_buy.gif";
				$this->tenpay_config->imgsrc = "/image/tenpay_buy.gif";
			 }
			 
			 if (empty($this->tenpay_config->pay_url))
			 {
				$retcode = "09009";
				$retmsg = "ȱ��֧�����ص�ַ����������Ϊhttps://www.tenpay.com/cgi-bin/v1.0/pay_gate.cgi";
				$this->tenpay_config->pay_url = "https://www.tenpay.com/cgi-bin/v1.0/pay_gate.cgi";
			 }
				
			return $retcode;

	}

	

	
	
	
	//����֧������
	function tenpay_interface_pay ($bank_type,$desc,$purchaser_id,$sp_billno,$total_fee,$attach)
	{
		
		
		$config_retcode = $this->tenpay_check_config ();
		if ($config_retcode!="0")
			die("���������ļ�tenpay_config.php�еĸ��������Ƿ���ȷ����");
			
		if (empty($sp_billno))
			 {
			 	$retcode = "09001";
				$retmsg  = "ȱ��sp_billno";
				
			 }
			 
			 if (empty($total_fee))
			 {
			 	$retcode = "090012";
				$retmsg  = "ȱ��total_fee";
				
			 }
			 
			 if ($bank_type=="")
			 {
			 	$retcode = "06001";
				$retmsg  = "ȱ��bank_type������Ĭ������Ϊ0";
				$bank_type = "0";
			 }
			 
			 if ($desc=="")
			 {

				$retcode = "06002";
				$retmsg  = "ȱ����Ʒ����desc������Ĭ������Ϊ".$this->tenpay_config->site_name."������" . $sp_billno;;
				$desc = $this->tenpay_config->site_name."������" . $sp_billno;
				}
			 
			 
			 
			 
			 if (empty($purchaser_id))
			 {
			 	$retcode = "06003";
				$retmsg = "ȱ������ʺ���Ϣ������Ĭ������Ϊ��";
				$purchaser_id = "";
			 }
			 
			 if (empty($attach))
			 {
				$retcode = "06004";
				$retmsg = "ȱ�ٸ�����Ϣ��Ĭ������Ϊ��";
				$attach = "";
			 }
				
		
		 		  
		if ($retcode < "09000")//�ж��Ƿ�Ϊ���ش���>09000Ϊ���ش���
		{
			if ($beta_switch == "1") //�жϲ��Կ��أ�����������ԣ�֧�����Ϊ1�� 
			{
				$total_fee = "0";
					
				
				$sign_text ="cmdno=1" . "&date=" . date('Ymd') . "&bargainor_id=" . $this->tenpay_config->spid ."&transaction_id=" . $this->tenpay_config->spid . date('Ymd').time()."&sp_billno=" . $sp_billno . "&total_fee=" . $total_fee . "&fee_type=1"  . "&return_url=" . $this->tenpay_config->domain . $this->tenpay_config->tenpay_dir ."/tenpay_notify.php".
"&attach=" . $attach ;
				$strSign = strtoupper(md5($sign_text."&key=".$this->tenpay_config->sp_key));
				$redurl = $this->tenpay_config->pay_url . "?".$sign_text . "&sign=" . $strSign."&desc=".$desc."&bank_type=".$bank_type;
				
				echo $retcode . "<br></br>".$retmsg."<br></br>";
				echo $redurl;
				
				
				return $redurl;
			}
			else
			{
				$sign_text ="cmdno=1" . "&date=" . date('Ymd') . "&bargainor_id=" . $this->tenpay_config->spid ."&transaction_id=" . $this->tenpay_config->spid . date('Ymd').time()."&sp_billno=" . $sp_billno . "&total_fee=" . $total_fee . "&fee_type=1"  . "&return_url=" . $this->tenpay_config->domain . $this->tenpay_config->tenpay_dir ."/tenpay_notify.php".
"&attach=" . $attach ;
				$strSign = strtoupper(md5($sign_text."&key=".$this->tenpay_config->sp_key));
				$redurl = $this->tenpay_config->pay_url . "?".$sign_text . "&sign=" . $strSign."&desc=".$desc."&bank_type=".$bank_type;
				return $redurl;
			}
		}
		 
		
		
	}
	
}
  
  
?>
