<?

//���ļ�Ϊ�Ƹ�֧ͨ�������ļ�
//http://192.168.1.106/nhome/tenpay/tenpay_notify.php?attach=��ע&bargainor_id=1202965901&cmdno=1&date=20081021&fee_type=1&pay_info=OK&pay_result=0&pay_time=1224624618&sign=58ACFB62A5BE3153AA1B35C40854954F&sp_billno=1224624173&total_fee=1&transaction_id=1202965901200810211224624173&ver=1&interfaceName=ICBC_PERBANK_B2C&interfaceVersion=1.0.0.0&orderid=165882636&TranSerialNo=HFG000240164984&amount=1&curType=001&merID=4000EC20000058&merAcct=4000027219200075654&verifyJoinFlag=0&JoinFlag=&UserNum=&resultType=1&orderDate=20081022052930&notifyDate=20081022053021&tranStat=1&comment=&remark1=&remark2=&signMsg=nXDkK28Mc%2BeWN2PZSw%2FY5axlOaoMWsWuyLFyT84wrwVWbq2TlfyHc%2F7yRiLzI3Y8vUvabxUxVmvbJvGZTncgfnU%2BzT%2BLQ7LSGkjbDzAo7QUzZArEvFrdFJ2PWwQKKBEHDNSU7ZzvjvfV2wz%2BZ6B360oIZT0bBmE5lIH7z7%2FIxDg%3D

//�������������Ƹ�ͨ���Կ���   0 �رղ���    1 �������ԡ������������
class tenpay_config
{
var $beta_switch		="0";

//�������������Ƹ�֧ͨ��������������������

//����ÿһ�����Ҫ���ã���׼ȷ
var $spid;																	//�����ʺ�
var $sp_key;																		//��Կ
var $domain;															//�̻���վ����
var $tenpay_dir;																			//�Ƹ�ͨ��װĿ¼
var $site_name;																			//�̻���վ����
var $attach				="tencent_magichu";																	//֧���������ݣ������ı�׼�ַ�
var $imgtitle			="�Ƹ�֧ͨ��"; 																		//ͼƬ˵��
var $imgsrc				="/image/tenpay_buy.gif";													//ͼƬ��ַ
var $pay_url			="https://www.tenpay.com/cgi-bin/v1.0/pay_gate.cgi"; 						//�Ƹ�֧ͨ�����ص�ַ
function tenpay_config()
{
	$this->imgsrc.=$this->tenpay_dir;
}


}

?>
