<?
include_once('./../../common.php');
$email = $_SCONFIG[pppay];
$key = $_SCONFIG[ppm];
//�����ı�
$ty_text = $_POST[option_selection1];
$web_paykey = md5($_SCONFIG[web_paykey].$ty_text);
//����MD5
$sid = $_POST[item_number];
//Զ��MD5
$dno = $_POST[option_selection2];
$money = intval($_POST[payment_gross]);
$oldsid = md5($email.md5($dno.$_POST[receiver_id].$money).$web_paykey);
//����MD5
$newsid = md5($email.md5($dno.$key.$money).$web_paykey);
if ($sid == $oldsid) {

//��֤ǩ���ɹ�
   if ($oldsid == $newsid) {
   //��������
   pay_update($dno,$ty_text,$money); //pay_update(������,��������,��ֵ���)
   } else {
   //�Ƿ�����
   print "�Ƿ�����";
   }
} else {

   print "��֤ǩ��ʧ��";
//��֤ǩ��ʧ��
}
?>