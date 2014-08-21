<?php
/*
	[UCenter Home] (C) 2007-2008 Comsenz Inc.
	$Id: index.php 13234 2009-08-24 08:20:04Z liguode $
*/

define('IN_UCHOME', TRUE);

error_reporting(0);
$_SGLOBAL = $_SCONFIG = $_SBLOCK = array();

//����Ŀ¼
define('S_ROOT', substr(dirname(__FILE__), 0, -7));

//��ȡʱ��
$_SGLOBAL['timestamp'] = time();

include_once(S_ROOT.'./source/function_common.php');
if(!@include_once(S_ROOT.'./config.php')) {
	@include_once(S_ROOT.'./config.new.php');
	show_msg('����Ҫ���Ƚ������Ŀ¼����� "config.new.php" �ļ�������Ϊ "config.php"', 999);
}

//GPC����
if(!(get_magic_quotes_gpc())) {
	$_GET = saddslashes($_GET);
	$_POST = saddslashes($_POST);
}

//����GIP
if ($_SC['gzipcompress'] && function_exists('ob_gzhandler')) {
	ob_start('ob_gzhandler');
} else {
	ob_start();
}

$formhash = formhash();

$theurl = 'index.php';
$sqlfile = S_ROOT.'./data/install.sql';
if(!file_exists($sqlfile)) {
	show_msg('���ϴ����µ� install.sql ���ݿ�ṹ�ļ�������� ./data Ŀ¼���棬���������б�����', 999);
}
$configfile = S_ROOT.'./config.php';

//����
$step = empty($_GET['step'])?0:intval($_GET['step']);
$action = empty($_GET['action'])?'':trim($_GET['action']);
$nowarr = array('','','','','','','');

$lockfile = S_ROOT.'./data/install.lock';
if(file_exists($lockfile)) {
	show_msg('����!���Ѿ���װ��UCenter Home<br>
		Ϊ�˱�֤���ݰ�ȫ���������ֶ�ɾ�� install/index.php �ļ�<br>
		����������°�װUCenter Home����ɾ�� data/install.lock �ļ�������UCenter��̨Ӧ�ù�����ɾ����Ӧ�ã������а�װ�ļ�');
}

//���config�Ƿ��д
if(!@$fp = fopen($configfile, 'a')) {
	show_msg("�ļ� $configfile ��дȨ�����ô���������Ϊ��д����ִ�а�װ����");
} else {
	@fclose($fp);
}

//�ύ����
if (submitcheck('ucsubmit')) {

	//��װUC����
	$step = 1;

	//�ж������Ƿ����
	$ucapi = preg_replace("/\/$/", '', trim($_POST['ucapi']));
	$ucip = trim($_POST['ucip']);

	if(empty($ucapi) || !preg_match("/^(http:\/\/)/i", $ucapi)) {
		show_msg('UCenter��URL��ַ����ȷ');
	} else {
		//�������� dns �����Ƿ�����, dns ������������Ҫ���û�����ucenter��ip��ַ
		if(!$ucip) {
			$temp = @parse_url($ucapi);
			$ucip = gethostbyname($temp['host']);
			if(ip2long($ucip) == -1 || ip2long($ucip) === FALSE) {
				$ucip = '';
			}
		}
	}

	//��֤UCHome�Ƿ�װ
	if(!@include_once S_ROOT.'./uc_client/client.php') {
		show_msg('uc_clientĿ¼�����ڣ����ϴ���װ���е� ./upload/uc_client �������Ŀ¼');
	}
	$ucinfo = uc_fopen2($ucapi.'/index.php?m=app&a=ucinfo&release='.UC_CLIENT_RELEASE, 500, '', '', 1, $ucip);
	list($status, $ucversion, $ucrelease, $uccharset, $ucdbcharset, $apptypes) = explode('|', $ucinfo);
	$dbcharset = strtolower(trim($_SC['dbcharset'] ? str_replace('-', '', $_SC['dbcharset']) : $_SC['dbcharset']));
	$ucdbcharset = strtolower(trim($ucdbcharset ? str_replace('-', '', $ucdbcharset) : $ucdbcharset));
	$apptypes = strtolower(trim($apptypes));
	if($status != 'UC_STATUS_OK') {
		show_header();
		print<<<END
		<form id="theform" method="post" action="$theurl">
		<table class="datatable">
		<tr><td><strong>UCenter�޷��������ӣ����ش��� ( $status )����ȷ��UCenter��IP��ַ�Ƿ���ȷ</strong><br><br></td></tr>
		<tr><td>UCenter��������IP��ַ: <input type="text" name="ucip" value="$ucip"> ���磺192.168.0.1</td></tr>
		</table>
		<table class=button>
		<tr><td>
		<input type="hidden" name="ucapi" value="$ucapi">
		<input type="hidden" name="ucfounderpw" value="$_POST[ucfounderpw]">
		<input type="submit" id="ucsubmit" name="ucsubmit" value="ȷ��IP��ַ"></td></tr>
		</table>
		<input type="hidden" name="formhash" value="$formhash">
		</form>
END;
		show_footer();
		exit();
	} elseif($dbcharset && $ucdbcharset && $ucdbcharset != $dbcharset) {
		show_msg('UCenter ������ַ����뵱ǰӦ�õ��ַ�����ͬ�������� '.$ucdbcharset.' ����� UCenter Home ���а�װ�����ص�ַ��http://download.comsenz.com/');
	} elseif(strexists($apptypes, 'uchome')) {
		show_msg('�Ѿ���װ��һ��UCenter Home��Ʒ������������װ�����ȵ� UCenter Ӧ�ù�����ɾ�����е�UCenter Home��');
	}
	$tagtemplates = 'apptagtemplates[template]='.urlencode('<a href="{url}" target="_blank">{subject}</a>').'&'.
		'apptagtemplates[fields][subject]='.urlencode('��־����').'&'.
		'apptagtemplates[fields][uid]='.urlencode('�û� ID').'&'.
		'apptagtemplates[fields][username]='.urlencode('�û���').'&'.
		'apptagtemplates[fields][dateline]='.urlencode('����').'&'.
		'apptagtemplates[fields][spaceurl]='.urlencode('�ռ��ַ').'&'.
		'apptagtemplates[fields][url]='.urlencode('��־��ַ');

	$uri = $_SERVER['REQUEST_URI']?$_SERVER['REQUEST_URI']:($_SERVER['PHP_SELF']?$_SERVER['PHP_SELF']:$_SERVER['SCRIPT_NAME']);
	$app_url = strtolower(substr($_SERVER['SERVER_PROTOCOL'], 0, strpos($_SERVER['SERVER_PROTOCOL'], '/'))).'://'.$_SERVER['HTTP_HOST'].preg_replace("/\/*install$/i", '', substr($uri, 0, strrpos($uri, '/install')));

	$postdata = "m=app&a=add&ucfounder=&ucfounderpw=".urlencode($_POST['ucfounderpw'])."&apptype=".urlencode('UCHOME')."&appname=".urlencode('���˼�԰')."&appurl=".urlencode($app_url)."&appip=&appcharset=".$_SC['charset'].'&appdbcharset='.$_SC['dbcharset'].'&release='.UC_CLIENT_RELEASE.'&'.$tagtemplates;
	$s = uc_fopen2($ucapi.'/index.php', 500, $postdata, '', 1, $ucip);
	if(empty($s)) {
		show_msg('UCenter�û������޷�����');
	} elseif($s == '-1') {
		show_msg('UCenter����Ա�ʺ����벻��ȷ');
	} else {
		$ucs = explode('|', $s);
		if(empty($ucs[0]) || empty($ucs[1])) {
			show_msg('UCenter���ص����ݳ������⣬��ο�:<br />'.shtmlspecialchars($s));
		} else {

			//�����ɹ�
			$apphidden = '';
			//��֤�Ƿ����ֱ������MySQL
			$link = mysql_connect($ucs[2], $ucs[4], $ucs[5], 1);
			$connect = $link && mysql_select_db($ucs[3], $link) ? 'mysql' : '';
			//����
			foreach (array('key', 'appid', 'dbhost', 'dbname', 'dbuser', 'dbpw', 'dbcharset', 'dbtablepre', 'charset') as $key => $value) {
				if($value == 'dbtablepre') {
					$ucs[$key] = '`'.$ucs[3].'`.'.$ucs[$key];
				}
				$apphidden .= "<input type=\"hidden\" name=\"uc[$value]\" value=\"".$ucs[$key]."\" />";
			}
			//����
			$apphidden .= "<input type=\"hidden\" name=\"uc[connect]\" value=\"$connect\" />";
			$apphidden .= "<input type=\"hidden\" name=\"uc[api]\" value=\"$_POST[ucapi]\" />";
			$apphidden .= "<input type=\"hidden\" name=\"uc[ip]\" value=\"$ucip\" />";

			show_header();
			print<<<END
			<form id="theform" method="post" action="$theurl">
			<table>
			<tr><td>UCenterע��ɹ�����ǰ����ID��ʶΪ: $ucs[1]</td></tr>
			</table>

			<table class=button>
			<tr><td>$apphidden
			<input type="submit" id="uc2submit" name="uc2submit" value="������һ��"></td></tr>
			</table>
			<input type="hidden" name="formhash" value="$formhash">
			</form>
END;
			show_footer();
			exit();
		}
	}

} elseif (submitcheck('uc2submit')) {

	//����congfig����
	$step = 2;

	//д��config�ļ�
	$configcontent = sreadfile($configfile);
	$keys = array_keys($_POST['uc']);
	foreach ($keys as $value) {
		$upkey = strtoupper($value);
		$configcontent = preg_replace("/define\('UC_".$upkey."'\s*,\s*'.*?'\)/i", "define('UC_".$upkey."', '".$_POST['uc'][$value]."')", $configcontent);
	}
	if(!$fp = fopen($configfile, 'w')) {
		show_msg("�ļ� $configfile ��дȨ�����ô���������Ϊ��д����ִ�а�װ����");
	}
	fwrite($fp, trim($configcontent));
	fclose($fp);

} elseif(!empty($_POST['sqlsubmit'])) {

	$step = 2;

	//��д��config�ļ�
	$configcontent = sreadfile($configfile);
	$keys = array_keys($_POST['db']);
	foreach ($keys as $value) {
		$configcontent = preg_replace("/[$]\_SC\[\'".$value."\'\](\s*)\=\s*[\"'].*?[\"']/is", "\$_SC['".$value."']\\1= '".$_POST['db'][$value]."'", $configcontent);
	}
	if(!$fp = fopen($configfile, 'w')) {
		show_msg("�ļ� $configfile ��дȨ�����ô���������Ϊ��д����ִ�а�װ����");
	}
	fwrite($fp, trim($configcontent));
	fclose($fp);
	
	if(empty($_POST['db']['tablepre'])) {
		show_msg("��д�ı���ǰ׺����Ϊ��");
	}

	//�ж�UCenter Home���ݿ�
	$havedata = false;
	if(!@mysql_connect($_POST['db']['dbhost'], $_POST['db']['dbuser'], $_POST['db']['dbpw'])) {
		show_msg('���ݿ�������Ϣ��д������ȷ��');
	}
	if(mysql_select_db($_POST['db']['dbname'])) {
		if(mysql_query("SELECT COUNT(*) FROM {$_POST['db']['tablepre']}space")) {
			$havedata = true;
		}
	} else {
		if(!mysql_query("CREATE DATABASE `".$_POST['db']['dbname']."`")) {
			show_msg('�趨��UCenter Home���ݿ���Ȩ�޲����������ֹ���������ִ�а�װ����');
		}
	}

	if($havedata) {
		show_msg('Σ��!ָ����UCenter Home���ݿ��������ݣ���������������ԭ������!', ($step+1));
	} else {
		show_msg('���ݿ����óɹ���������һ������', ($step+1), 1);
	}

} elseif (submitcheck('opensubmit')) {

	//����û�����
	include_once(S_ROOT.'./data/data_config.php');

	$step = 5;

	dbconnect();

	//ͬ����ȡ�û�Դ
	$_SGLOBAL['timestamp'] = time();

	//UCע���û�
	if(!@include_once S_ROOT.'./uc_client/client.php') {
		showmessage('system_error');
	}
	$uid = uc_user_register($_POST['username'], $_POST['password'], 'webmastor@yourdomain.com');
	if($uid == -3) {
		//�Ѵ��ڣ���¼
		if(!$passport = getpassport($_POST['username'], $_POST['password'])) {
			show_msg('������û������벻��ȷ����ȷ��');
		}
		$setarr = array(
			'uid' => $passport['uid'],
			'username' => addslashes($passport['username'])
		);
	} elseif($uid > 0) {
		$setarr = array(
			'uid' => $uid,
			'username' => $_POST['username']
		);
	} else {
		show_msg('������û����޷�ע�ᣬ������ȷ��');
	}
	$setarr['password'] = md5("$setarr[uid]|$_SGLOBAL[timestamp]");//���������������

	//���±����û���
	inserttable('member', $setarr, 0, true);

	//��ͨ�ռ�
	include_once(S_ROOT.'./source/function_space.php');
	$space = space_open($setarr['uid'], $_POST['username'], 1);

	//�����ܱ���
	$result = uc_user_addprotected($_POST['username'], $_POST['username']);
	$_SGLOBAL['db']->query("UPDATE ".tname('space')." SET flag=1 WHERE username='$_POST[username]'");

	//��������session
	insertsession($setarr);

	//����cookie
	ssetcookie('auth', authcode("$setarr[password]\t$setarr[uid]", 'ENCODE'), 2592000);

	//дlog
	if(@$fp = fopen($lockfile, 'w')) {
		fwrite($fp, 'UCenter Home');
		fclose($fp);
	}

	show_msg('<font color="red">��ϲ! UCenter Home��װȫ�����!</font>
		<br>Ϊ���������ݰ�ȫ�����¼ftp��ɾ��installĿ¼<br><br>
		���Ĺ���Ա�����Ѿ��ɹ�ȷ�ϣ����Ѿ���ͨ�ռ䡣�������������ԣ�<br>
		<br><a href="../space.php" target="_blank">�����ҵĿռ�</a>
		<br>�����ҵ���ҳ����ʼUCenter Home֮��
		<br><a href="../admincp.php" target="_blank">�������ƽ̨</a>
		<br>�Թ���Ա���ݶ�վ�������������', 999);

}

if(empty($step)) {

	show_header();

	//���Ȩ������
	$checkok = true;
	$perms = array();
	if(!checkfdperm(S_ROOT.'./config.php', 1)) {
		$perms['config'] = 'ʧ��';
		$checkok = false;
	} else {
		$perms['config'] = 'OK';
	}
	if(!checkfdperm(S_ROOT.'./attachment/')) {
		$perms['attachment'] = 'ʧ��';
		$checkok = false;
	} else {
		$perms['attachment'] = 'OK';
	}
	if(!checkfdperm(S_ROOT.'./data/')) {
		$perms['data'] = 'ʧ��';
		$checkok = false;
	} else {
		$perms['data'] = 'OK';
	}
	if(!checkfdperm(S_ROOT.'./uc_client/data/')) {
		$perms['uc_data'] = 'ʧ��';
		$checkok = false;
	} else {
		$perms['uc_data'] = 'OK';
	}

	//��װ�Ķ�
	print<<<END
	<script type="text/javascript">
	function readme() {
		var tbl_readme = document.getElementById('tbl_readme');
		if(tbl_readme.style.display == '') {
			tbl_readme.style.display = 'none';
		} else {
			tbl_readme.style.display = '';
		}
	}
	</script>
	<table class="showtable">
	<tr><td>
	<strong>��ӭ��ʹ��UCenter Home</strong><br>
	ͨ�� UCenter Home����Ϊ��վ�ߵ������������ɹ���һ���Ժ��ѹ�ϵΪ���ĵĽ������磬��վ���û�������һ�仰��¼�����еĵ��εΣ������ݵط�����־���ϴ�ͼƬ��������ʮ�ַ�������������һ�������Ϣ�����۸���Ȥ�Ļ��⣻���ɿ�ݵ��˽�������¶�̬��
	<br><a href="javascript:;" onclick="readme()"><strong>���������Ķ����ǵ�����ʹ����ȨЭ��</strong></a>
	</td></tr>
	</table>

	<table>
	</td></tr>
	<tr><td>
	<strong>�ļ�/Ŀ¼Ȩ������</strong><br>
	����ִ�а�װ�ļ����а�װ֮ǰ����Ҫ������ص�Ŀ¼���ԣ��Ա������ļ����Ա�������ȷ��/д/ɾ/������Ŀ¼��<br>
	�Ƽ�����������<br>ʹ�� FTP ������¼���ķ���������������������Ŀ¼���Լ���Ŀ¼����������ļ�����������Ϊ777��win����������internet�����ʻ��ɶ�д����<br>
	<table class="datatable">
	<tr style="font-weight:bold;"><td>����</td><td>����Ȩ������</td><td>˵��</td><td>�����</td></tr>
	<tr><td><strong>./config.php</strong></td><td>��/д</td><td>ϵͳ�����ļ�</td><td>$perms[config]</td></tr>
	<tr><td><strong>./attachment/</strong> (������Ŀ¼����Ŀ¼���ļ�)</td><td>��/д/ɾ</td><td>����Ŀ¼</td><td>$perms[attachment]</td></tr>
	<tr><td><strong>./data/</strong> (������Ŀ¼����Ŀ¼���ļ�)</td><td>��/д/ɾ</td><td>վ������Ŀ¼</td><td>$perms[data]</td></tr>
	<tr><td><strong>./uc_client/data/</strong> (������Ŀ¼����Ŀ¼���ļ�)</td><td>��/д/ɾ</td><td>uc_client����Ŀ¼</td><td>$perms[uc_data]</td></tr>
	</table>
	</td></tr>
	</table>
END;

	if(!$checkok) {
		echo "<table><tr><td><b>��������</b>:<br>ϵͳ��⵽����Ŀ¼���ļ�Ȩ��û����ȷ����<br>ǿ�ҽ�����������Ȩ�޺���ˢ�±�ҳ���Ա������װ<br>����ϵͳ���ܻ�����޷�Ԥ�ϵ����� [<a href=\"$theurl?step=1\">ǿ�Ƽ���</a>]</td></tr></table>";
	} else {
		$ucapi = empty($_POST['ucapi'])?'/':$_POST['ucapi'];
		$ucfounderpw = empty($_POST['ucfounderpw'])?'':$_POST['ucfounderpw'];
		print <<<END
		<form id="theform" method="post" action="$theurl?step=1">
			<table class=button>
				<tr>
					<td><input type="submit" id="startsubmit" name="startsubmit" value="������ȨЭ�飬��ʼ��װUCenter Home"></td>
				</tr>
			</table>
			<input type="hidden" name="ucapi" value="$ucapi" />
			<input type="hidden" name="ucfounderpw" value="$ucfounderpw" />
			<input type="hidden" name="formhash" value="$formhash">
		</form>
END;
	}

	print<<<END
	<table id="tbl_readme" style="display:none;" class="showtable">
	<tr>
	<td><strong>���������ϸ�Ķ����������Э��:</strong> </td></tr>
	<tr>
	<td>
	<div>���İ���ȨЭ�� �����������û�
	<p>��Ȩ���� (C) 2001-2009����ʢ���루�������Ƽ����޹�˾<br>��������Ȩ����
	</p><p>��л��ѡ�� UCenter Home��ϣ�����ǵ�Ŭ����Ϊ���ṩһ��ǿ�����ữ����(SNS)���������ͨ�� UCenter Home����վ�߿������ɹ���һ���Ժ��ѹ�ϵΪ���ĵĽ������磬��վ���û�������һ�仰��¼�����еĵ��εΣ������ݵط�����־���ϴ�ͼƬ��������ʮ�ַ�������������һ�������Ϣ�����۸���Ȥ�Ļ��⣻���ɿ�ݵ��˽�������¶�̬��
	</p><p>��ʢ���루�������Ƽ����޹�˾Ϊ UCenter Home ��Ʒ�Ŀ����̣���������ӵ�� UCenter Home ��Ʒ����Ȩ���й����Ұ�Ȩ�� ����Ȩ�ǼǺ� 2006SR12091������ʢ���루�������Ƽ����޹�˾��ַΪ
	http://www.comsenz.com��UCenter Home �ٷ���վ��ַΪ http://u.discuz.net��
	</p><p>UCenter Home ����Ȩ�����л����񹲺͹����Ұ�Ȩ��ע�ᣬ����Ȩ�ܵ����ɺ͹��ʹ�Լ������ʹ���ߣ����۸��˻���֯��ӯ�������;���
	��������ѧϰ���о�ΪĿ�ģ���������ϸ�Ķ���Э�飬�����⡢ͬ�⡢�����ر�Э���ȫ������󣬷��ɿ�ʼʹ�� UCenter Home ������
	</p><p>��ʢ���루�������Ƽ����޹�˾ӵ�жԱ���ȨЭ������ս���Ȩ��
	<ul type=i>
	<p>
	<li><b>Э�����ɵ�Ȩ��</b>
	<ul type=1>
	<li>����������ȫ���ر������û���ȨЭ��Ļ����ϣ���������Ӧ���ڷ���ҵ��;��������֧��������Ȩ��Ȩ���á�
	<li>��������Э��涨��Լ�������Ʒ�Χ���޸� UCenter Home Դ����(������ṩ�Ļ�)�����������Ӧ������վҪ��
	<li>��ӵ��ʹ�ñ�����������վ����ȫ����Ա���ϡ����¼������Ϣ������Ȩ���������е����������ݵ���ط�������
	<li>�����ҵ��Ȩ֮�������Խ�������Ӧ������ҵ��;��ͬʱ�������������Ȩ������ȷ���ļ���֧�����ޡ�����֧�ַ�ʽ�ͼ���֧�����ݣ�
	�Թ���ʱ�����ڼ���֧��������ӵ��ͨ��ָ���ķ�ʽ���ָ����Χ�ڵļ���֧�ַ�����ҵ��Ȩ�û����з�ӳ����������Ȩ����������
	������Ϊ��Ҫ���ǣ���û��һ�������ɵĳ�ŵ��֤�� </li></ul>
	<p></p>
	<li><b>Э��涨��Լ��������</b>
	<ul type=1>
	<li>δ����ҵ��Ȩ֮ǰ�����ý�������������ҵ��;����������������ҵ��վ����Ӫ����վ����Ӫ��ΪĿ��ʵ��ӯ������վ����������ҵ��Ȩ���½http://www.discuz.com�ο����˵����Ҳ�����µ�8610-51657885�˽����顣
	<li>���öԱ���������֮��������ҵ��Ȩ���г��⡢���ۡ���Ѻ�򷢷�������֤��
	<li>������Σ���������;��Ρ��Ƿ񾭹��޸Ļ��������޸ĳ̶���Σ�ֻҪʹ�� UCenter Home ��������κβ��֣�δ���������ɣ�����ҳ��ҳ�Ŵ�
	�� UCenter Home ���ƺͿ�ʢ���루�������Ƽ����޹�˾������վ��http://www.comsenz.com��http://u.discuz.net�� �� ���Ӷ����뱣����������������޸ġ�
	<li>��ֹ�� UCenter Home ��������κβ��ֻ������Է�չ�κ������汾���޸İ汾��������汾�������·ַ���
	<li>�����δ�����ر�Э������������Ȩ������ֹ���������ɵ�Ȩ�������ջأ����е���Ӧ�������Ρ� </li></ul>
	<p></p>
	<li><b>���޵�������������</b>
	<ul type=1>
	<li>�����������������ļ�����Ϊ���ṩ�κ���ȷ�Ļ��������⳥�򵣱�����ʽ�ṩ�ġ�
	<li>�û�������Ը��ʹ�ñ��������������˽�ʹ�ñ������ķ��գ�����δ�����Ʒ��������֮ǰ�����ǲ���ŵ�ṩ�κ���ʽ�ļ���֧�֡�ʹ�õ�����
	Ҳ���е��κ���ʹ�ñ����������������������Ρ�
	<li>��ʢ���루�������Ƽ����޹�˾����ʹ�ñ�����������վ���е����»���Ϣ�е����Ρ� </li></ul></li></ul>
	<p>�й� UCenter Home �����û���ȨЭ�顢��ҵ��Ȩ�뼼���������ϸ���ݣ����� UCenter Home �ٷ���վ�����ṩ����ʢ���루�������Ƽ����޹�˾ӵ���ڲ� ����֪ͨ������£��޸���ȨЭ��ͷ����Ŀ����Ȩ�����޸ĺ��Э����Ŀ�����Ըı�֮���������Ȩ�û���Ч��
	<p>�����ı���ʽ����ȨЭ����ͬ˫������ǩ���Э��һ����������ȫ�ĺ͵�ͬ�ķ���Ч������һ����ʼ��װ UCenter Home��������Ϊ��ȫ���Ⲣ���ܱ�Э��ĸ�������������������������Ȩ����ͬʱ���ܵ���ص�Լ�������ơ�Э�����ɷ�Χ�������Ϊ����ֱ��Υ������ȨЭ�鲢������Ȩ��������Ȩ��ʱ��ֹ��Ȩ������ֹͣ�𺦣�������׷��������ε�Ȩ���� </p></div>
	</td></tr>
	</table>
END;

	show_footer();

} elseif($step == 1) {

	show_header();
	$ucapi = "http://";
	$ucfounderpw = '';
	$showdiv = 0;
	if($_POST['ucfounderpw']) {
		$showdiv = 1;
		$ucapi = trim($_POST['ucapi']);
		$ucfounderpw = trim($_POST['ucfounderpw']);
	}

	if($showdiv) {
		print<<<END
		<form id="theform" method="post" action="$theurl">
		<div>
			<table class="showtable">
				<tr><td><strong># UCenter �����Զ���ȡ</strong></td></tr>
				<tr><td id="msg2">UCenter�������Ϣ�ѳɹ���ȡ����ֱ�ӵ������İ�ť�ύ����</td></tr>
			</table>
			<br/>
		</div>
		<div>
END;
	} else {
		$plus = '';
		if(!$ucfounderpw) {
			$plus = '<tr><td id="msg2">
					ʹ��UCenter Home��������Ҫ����վ�㰲װ��ͳһ�洢�û��ʺ���Ϣ��UCenter�û�����ϵͳ��<br>
					�������վ�㻹û�а�װ��UCenter��������������<br>
					1. <a href="http://download.comsenz.com/UCenter/" target="_blank"><b>���������������°汾��UCenter</b></a>�����Ķ�������е�˵������UCenter�İ�װ��<br>
					2. ��װ��� UCenter ������������UCenter�������Ϣ���ɼ�������UCenter Home �İ�װ��<br>
				</td></tr>';
		}
		print<<<END
		<form id="theform" method="post" action="$theurl">
		<div>
			<table class="showtable">
				<tr><td><strong># ����д UCenter ����ز���</strong></td></tr>
				$plus
			</table>
			<br>
			<p style="font-weight:bold;">�������Ѱ�װUCenter����Ϣ:</p>
END;
	}
	print<<<END
		<table class=datatable>
			<tbody>
				<tr>
					<td>UCenter �� URL:</td>
					<td><input type="text" id="ucapi" name="ucapi" size="60" value="$ucapi"><br>���磺http://www.discuz.net/ucenter</td>
				</tr>
				<tr>
					<td>UCenter �Ĵ�ʼ������:</td>
					<td><input type="password" id="ucfounderpw" name="ucfounderpw" size="20" value="$ucfounderpw"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</div>
	<table class=button>
	<tr><td><input type="submit" id="ucsubmit" name="ucsubmit" value="�ύUCenter������Ϣ"></td></tr>
	</table>
	<input type="hidden" id="ucfounder" name="ucfounder" size="20" value="">
	<input type="hidden" name="formhash" value="$formhash">
	</form>
END;
	show_footer();

} elseif ($step == 2) {

	//���Ŀ¼����
	show_header();
	//�������ݿ�����
	print<<<END
	<form id="theform" method="post" action="$theurl">

	<table class="showtable">
	<tr><td><strong># ����UCenter Home���ݿ���Ϣ</strong></td></tr>
	<tr><td id="msg1">��������UCenter Home�����ݿ���Ϣ</td></tr>
	</table>
	<table class=datatable>
	<tr>
	<td width="25%">���ݿ���������ص�ַ:</td>
	<td><input type="text" name="db[dbhost]" size="20" value="localhost"></td>
	<td width="30%">һ��Ϊlocalhost</td>
	</tr>
	<tr>
	<td>���ݿ��û���:</td>
	<td><input type="text" name="db[dbuser]" size="20" value=""></td>
	<td>&nbsp;</td>
	</tr>
	<tr>
	<td>���ݿ�����:</td>
	<td><input type="password" name="db[dbpw]" size="20" value=""></td>
	<td>&nbsp;</td>
	</tr>
	<tr>
	<td>���ݿ��ַ���:</td>
	<td>
	<select name="db[dbcharset]" onchange="addoption(this)">
	<option value="$_SC[dbcharset]">$_SC[dbcharset]</option>
	<option value="addoption" class="addoption">+�Զ���</option>
	</select>
	</td>
	<td>MySQL�汾>4.1��Ч</td>
	</tr>
	<tr>
	<td>���ݿ���:</td>
	<td><input type="text" name="db[dbname]" size="20" value=""></td>
	<td>��������ڣ���᳢���Զ�����</td>
	</tr>
	<tr>
	<td>����ǰ׺:</td>
	<td><input type="text" name="db[tablepre]" size="20" value="uchome_"></td>
	<td>����Ϊ�գ�Ĭ��Ϊuchome_</td>
	</tr>
	</table>

	<table class=button>
	<tr><td><input type="submit" id="sqlsubmit" name="sqlsubmit" value="�������,����ҵ����ݿ�����"></td></tr>
	</table>
	<input type="hidden" name="formhash" value="$formhash">
	</form>
END;
	show_footer();

} elseif ($step == 3) {

	//�������ݿ�
	dbconnect();

	//��װ���ݿ�
	//��ȡ���µ�sql��
	$newsql = sreadfile($sqlfile);

	if($_SC['tablepre'] != 'uchome_') $newsql = str_replace('uchome_', $_SC['tablepre'], $newsql);//�滻����ǰ׺

	//��ȡҪ�����ı�
	$tables = $sqls = array();
	if($newsql) {
		preg_match_all("/(CREATE TABLE ([a-z0-9\_\-`]+).+?\s*)(TYPE|ENGINE)+\=/is", $newsql, $mathes);
		$sqls = $mathes[1];
		$tables = $mathes[2];
	}
	if(empty($tables)) {
		show_msg("��װSQL����ȡʧ�ܣ���ȷ��SQL�ļ� $sqlfile �Ƿ����");
	}

	$heaptype = $_SGLOBAL['db']->version()>'4.1'?" ENGINE=MEMORY".(empty($_SC['dbcharset'])?'':" DEFAULT CHARSET=$_SC[dbcharset]" ):" TYPE=HEAP";
	$myisamtype = $_SGLOBAL['db']->version()>'4.1'?" ENGINE=MYISAM".(empty($_SC['dbcharset'])?'':" DEFAULT CHARSET=$_SC[dbcharset]" ):" TYPE=MYISAM";
	$installok = true;
	foreach ($tables as $key => $tablename) {
		if(strpos($tablename, 'session')) {
			$sqltype = $heaptype;
		} else {
			$sqltype = $myisamtype;
		}
		$_SGLOBAL['db']->query("DROP TABLE IF EXISTS `$tablename`");
		if(!$query = $_SGLOBAL['db']->query($sqls[$key].$sqltype, 'SILENT')) {
			$installok = false;
			break;
		}
	}
	if(!$installok) {
		show_msg("<font color=\"blue\">���ݱ� ($tablename) �Զ���װʧ��</font><br />����: ".mysql_error()."<br /><br />����� $sqlfile �ļ��е�SQL�ģ��Լ��ֹ���װ���ݿ���ټ������а�װ����<br /><br /><a href=\"?step=$step\">����</a>");
	} else {
		show_msg('���ݱ��Ѿ�ȫ����װ��ɣ�������һ������', ($step+1), 1);
	}

} elseif ($step == 4) {

	//����Ĭ������
	dbconnect();
	$privacy = array(
		'view' => array(
			'index' => 0,
			'profile' => 0,
			'friend' => 0,
			'wall' => 0,
			'feed' => 0,
			'mtag' => 0,
			'event' => 0,
			'doing' => 0,
			'blog' => 0,
			'album' => 0,
			'share' => 0,
			'poll' => 0
		),
		'feed' => array(
			'doing' => 1,
			'blog' => 1,
			'upload' => 1,
			'share' => 1,
			'poll' => 1,
			'joinpoll' => 1,
			'thread' => 1,
			'post' => 1,
			'mtag' => 1,
			'event' => 1,
			'join' => 1,
			'friend' => 1,
			'comment' => 1,
			'show' => 1,
			'spaceopen' => 1,
			'credit' => 1,
			'invite' => 1,
			'task' => 1,
			'profile' => 1,
			'album' => 1,
			'click' => 1
		)
	);
	//config
	$datas = array(
		"('sitename', '�ҵĿռ�')",
		"('template', 'default')",
		"('adminemail', 'webmaster@".$_SERVER['HTTP_HOST']."')",
		"('onlinehold', '1800')",
		"('timeoffset', '8')",
		"('maxpage', '100')",
		"('starcredit', '100')",
		"('starlevelnum', '5')",
		"('cachemode', 'database')",
		"('cachegrade', '0')",
		"('allowcache', '1')",
		"('allowdomain', '0')",
		"('allowrewrite', '0')",
		"('allowwatermark', '0')",
		"('allowftp', '0')",
		"('holddomain', 'www|*blog*|*space*|x')",
		"('mtagminnum', '5')",
		"('feedday', '7')",
		"('feedmaxnum', '100')",
		"('feedfilternum', '10')",
		"('importnum', '100')",
		"('maxreward', '10')",
		"('singlesent', '50')",
		"('groupnum', '8')",
		"('closeregister', '0')",
		"('closeinvite', '0')",
		"('close', '0')",
		"('networkpublic', '1')",
		"('networkpage', '1')",
		"('seccode_register', '1')",
		"('uc_tagrelated', '1')",
		"('manualmoderator', '1')",
		"('linkguide', '1')",
		"('showall', '1')",
		"('sendmailday', '0')",
		"('realname', '0')",
		"('namecheck', '0')",
		"('namechange', '0')",
		"('name_allowviewspace', '1')",
		"('name_allowfriend', '1')",
		"('name_allowpoke', '1')",
		"('name_allowdoing', '1')",
		"('name_allowblog', '0')",
		"('name_allowalbum', '0')",
		"('name_allowthread', '0')",
		"('name_allowshare', '0')",
		"('name_allowcomment', '0')",
		"('name_allowpost', '0')",
		"('showallfriendnum', '10')",
		"('feedtargetblank', '1')",
		"('feedread', '1')",
		"('feedhotnum', '3')",
		"('feedhotday', '2')",
		"('feedhotmin', '3')",
		"('feedhiddenicon', 'friend,profile,task,wall')",
		"('uc_tagrelatedtime', '86400')",
		"('privacy', '".serialize($privacy)."')",
		"('cronnextrun', '$_SGLOBAL[timestamp]')",
		"('my_status', '0')",
		"('maxreward', '10')",
		"('uniqueemail', '1')",
		"('updatestat', '1')",
		"('my_showgift', '1')",
		"('topcachetime', '60')",
		"('newspacenum', '3')"
	);
	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('config'));
	$_SGLOBAL['db']->query("REPLACE INTO ".tname('config')." (var, datavalue) VALUES ".implode(',', $datas));

	//profield
	$datas = array(
		"('��������', 'text', '100', '0', '1')",
		"('��������', 'text', '100', '0', '1')",
		"('��Ȥ����', 'text', '100', '0', '1')"
	);
	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('profield'));
	$_SGLOBAL['db']->query("REPLACE INTO ".tname('profield')." (title,formtype,inputnum,manualmoderator,manualmember) VALUES ".implode(',', $datas));

	//�û���
	$datas = array();
	$datas['grouptitle'] = array('վ�����Ա', '��Ϣ����Ա', '���VIP', '���޻�Ա', '��ͨ��Ա', '�м���Ա', '�߼���Ա', '��ֹ����', '��ֹ����');

	//��������
	$datas['gid'] = array(1, 2, 3, 4, 5, 6, 7, 8, 9);
	$datas['system'] = array(-1, -1, 1, 0, 0, 0, 0, -1, -1);
	$datas['explower'] = array(0, 0, 0, -999999999, 0, 100, 1000, 0, 0);
	$datas['banvisit'] = array(0, 0, 0, 0, 0, 0, 0, 0, 1);
	$datas['searchignore'] = array(1, 1, 1, 0, 0, 0, 1, 0, 0);
	$datas['videophotoignore'] = array(1, 1, 0, 0, 0, 0, 0, 0, 0);
	$datas['spamignore'] = array(1, 1, 1, 0, 0, 0, 0, 0, 0);

	$datas['color'] = array('red', 'blue', 'green', '', '', '', '', '', '');
	$datas['icon'] = array('image/group/admin.gif', 'image/group/infor.gif', 'image/group/vip.gif', '', '', '', '', '', '');

	//��������
	$datas['maxfriendnum'] = array(0, 0, 0, 10, 100, 200, 300, 1, 1);
	$datas['maxattachsize'] = array(0, 0, 0, 10, 20, 50, 100, 1, 1);
	$datas['postinterval'] = array(0, 0, 0, 300, 60, 30, 10, 9999, 9999);
	$datas['searchinterval'] = array(0, 0, 0, 600, 60, 30, 10, 9999, 9999);
	
	$datas['verifyevent'] = array(0, 0, 0, 1, 0, 0, 0, 1, 1);

	$datas['domainlength'] = array(1, 3, 3, 0, 0, 5, 3, 99, 99);
	$datas['closeignore'] = array(1, 1, 0, 0, 0, 0, 0, 0, 0);
	$datas['seccode'] = array(0, 0, 0, 1, 0, 0, 0, 1, 1);

	$datas['allowhtml'] = array(1, 1, 1, 0, 0, 0, 1, 0, 0);
	$datas['allowcss'] = array(1, 1, 1, 0, 0, 0, 1, 0, 0);
	$datas['allowviewvideopic'] = array(1, 1, 1, 0, 0, 0, 0, 0, 0);
	
	$datas['allowtopic'] = array(1, 1, 0, 0, 0, 0, 0, 0, 0);
	$datas['allowstat'] = array(1, 1, 0, 0, 0, 0, 0, 0, 0);
	
	foreach (array('comment','blog','poll','doing','upload','share','mtag','thread','post','poke','friend','click','event','magic', 'pm', 'myop') as $value) {
		$datas['allow'.$value] = array(1, 1, 1, 0, 1, 1, 1, 0, 0);
	}

	//����Ȩ��
	//վ������
	foreach (array('config','usergroup','credit','profilefield','profield','censor','ad','cache','block','template','backup','stat','cron','app', 'network','name','task','report', 'eventclass', 'magic','magiclog','topic', 'batch', 'delspace', 'spacegroup', 'spaceinfo', 'spacecredit', 'spacenote', 'ip', 'hotuser', 'defaultuser', 'click', 'videophoto', 'log') as $value) {
		$datas['manage'.$value] = array(1, 0, 0, 0, 0, 0, 0, 0, 0);
	}

	//��Ϣ����
	foreach (array('tag','mtag','feed','share','doing', 'blog','album','comment','thread', 'event', 'poll') as $value) {
		$datas['manage'.$value] = array(1, 1, 0, 0, 0, 0, 0, 0, 0);
	}

	$keys = array_keys($datas);
	$newdatas = array();
	$g_count = count($datas['grouptitle']);
	for ($i=0; $i<$g_count; $i++) {
		$thes = array();
		foreach ($keys as $value) {
			$thes[] = $datas[$value][$i];
		}
		$newdatas[$i] = "(".simplode($thes).")";
	}
	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('usergroup'));
	$_SGLOBAL['db']->query("REPLACE INTO ".tname('usergroup')." (".implode(',', $keys).") VALUES ".implode(',', $newdatas));

	//���ֹ���
	$ruls = array();
	//�ӻ���
	$ruls[] = "('��ͨ�ռ�', 'register', '0', '0', '1', '1', '10', '0', '0')";
	$ruls[] = "('ʵ����֤', 'realname', '0', '0', '1', '1', '20', '0', '20')";
	$ruls[] = "('������֤', 'realemail', '0', '0', '1', '1', '40', '0', '40')";
	$ruls[] = "('�ɹ��������', 'invitefriend', '4', '0', '20', '1', '10', '0', '10')";
	$ruls[] = "('����ͷ��', 'setavatar', '0', '0', '1', '1', '15', '0', '15')";
	$ruls[] = "('��Ƶ��֤', 'videophoto', '0', '0', '1', '1', '40', '0', '40')";
	$ruls[] = "('�ɹ��ٱ�', 'report', '4', '0', '0', '1', '2', '0', '2')";
	$ruls[] = "('��������', 'updatemood', '1', '0', '3', '1', '3', '0', '3')";
	$ruls[] = "('�ȵ���Ϣ', 'hotinfo', '4', '0', '0', '1', '10', '0', '10')";
	$ruls[] = "('ÿ���½', 'daylogin', '1', '0', '1', '1', '15', '0', '15')";
	$ruls[] = "('���ʱ��˿ռ�', 'visit', '1', '0', '10', '1', '1', '2', '1')";
	$ruls[] = "('���к�', 'poke', '1', '0', '10', '1', '1', '2', '1')";
	$ruls[] = "('����', 'guestbook', '1', '0', '20', '1', '2', '2', '2')";
	$ruls[] = "('������', 'getguestbook', '1', '0', '5', '1', '1', '2', '0')";
	$ruls[] = "('������¼', 'doing', '1', '0', '5', '1', '1', '0', '1')";
	$ruls[] = "('������־', 'publishblog', '1', '0', '3', '1', '5', '0', '5')";
	$ruls[] = "('�ϴ�ͼƬ', 'uploadimage', '1', '0', '10', '1', '2', '0', '2')";
	$ruls[] = "('�Ĵ�ͷ��', 'camera', '1', '0', '5', '1', '3', '0', '3')";
	$ruls[] = "('��������', 'publishthread', '1', '0', '5', '1', '5', '0', '5')";
	$ruls[] = "('�ظ�����', 'replythread', '1', '0', '10', '1', '1', '1', '1')";
	$ruls[] = "('����ͶƱ', 'createpoll', '1', '0', '5', '1', '2', '0', '2')";
	$ruls[] = "('����ͶƱ', 'joinpoll', '1', '0', '10', '1', '1', '1', '1')";
	$ruls[] = "('����', 'createevent', '1', '0', '1', '1', '3', '0', '3')";
	$ruls[] = "('����', 'joinevent', '1', '0', '1', '1', '1', '1', '1')";
	$ruls[] = "('�Ƽ��', 'recommendevent', '4', '0', '0', '1', '10', '0', '10')";
	$ruls[] = "('�������', 'createshare', '1', '0', '3', '1', '2', '0', '2')";
	$ruls[] = "('����', 'comment', '1', '0', '40', '1', '1', '1', '1')";
	$ruls[] = "('������', 'getcomment', '1', '0', '20', '1', '1', '1', '0')";
	$ruls[] = "('��װӦ��', 'installapp', '4', '0', '0', '1', '5', '3', '5')";
	$ruls[] = "('ʹ��Ӧ��', 'useapp', '1', '0', '10', '1', '1', '3', '1')";
	$ruls[] = "('��Ϣ��̬', 'click', '1', '0', '10', '1', '1', '1', '1')";
	//�ۻ���
	$ruls[] = "('�޸�ʵ��', 'editrealname', '0', '0', '1', '0', '5', '0', '0')";
	$ruls[] = "('����������֤', 'editrealemail', '0', '0', '1', '0', '5', '0', '0')";
	$ruls[] = "('ͷ��ɾ��', 'delavatar', '0', '0', '1', '0', '10', '0', '10')";
	$ruls[] = "('��ȡ������', 'invitecode', '0', '0', '1', '0', '0', '0', '0')";
	$ruls[] = "('����һ��', 'search', '0', '0', '1', '0', '1', '0', '0')";
	$ruls[] = "('��־����', 'blogimport', '0', '0', '1', '0', '10', '0', '0')";
	$ruls[] = "('�޸�����', 'modifydomain', '0', '0', '1', '0', '5', '0', '0')";
	$ruls[] = "('��־��ɾ��', 'delblog', '0', '0', '1', '0', '10', '0', '10')";
	$ruls[] = "('��¼��ɾ��', 'deldoing', '0', '0', '1', '0', '2', '0', '2')";
	$ruls[] = "('ͼƬ��ɾ��', 'delimage', '0', '0', '1', '0', '4', '0', '4')";
	$ruls[] = "('ͶƱ��ɾ��', 'delpoll', '0', '0', '1', '0', '4', '0', '4')";
	$ruls[] = "('���ⱻɾ��', 'delthread', '0', '0', '1', '0', '4', '0', '4')";
	$ruls[] = "('���ɾ��', 'delevent', '0', '0', '1', '0', '6', '0', '6')";
	$ruls[] = "('������ɾ��', 'delshare', '0', '0', '1', '0', '4', '0', '4')";
	$ruls[] = "('���Ա�ɾ��', 'delguestbook', '0', '0', '1', '0', '4', '0', '4')";
	$ruls[] = "('���۱�ɾ��', 'delcomment', '0', '0', '1', '0', '2', '0', '2')";
	
	$_SGLOBAL['db']->query("INSERT INTO ".tname('creditrule')." (`rulename`, `action`, `cycletype`, `cycletime`, `rewardnum`, `rewardtype`, `credit`, `norepeat`, `experience`) VALUES ".implode(',', $ruls));
			
	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('data'));
	//�ʼ�����
	$mails = array(
		'mailsend' => 1,
		'maildelimiter' => 0,
		'mailusername' => 1
	);
	data_set('mail', $mails);

	//����ͼ����
	$settings = array(
		'thumbwidth' => 100,
		'thumbheight' => 100,
		'watermarkpos' => 4,
		'watermarktrans' => 75
	);
	data_set('setting', $settings);
	
	//��㿴��
	$network = array(
		'blog' => array('hot1'=>3, 'cache'=>600),
		'pic' => array('hot1'=>3, 'cache'=>700),
		'thread' => array('hot1'=>3, 'cache'=>800),
		'event' => array('cache'=>900),
		'poll' => array('cache'=>500),
	);
	data_set('network', $network);

	//�ƻ�����
	$datas = array(
		"1, 'system', '���������ͳ��', 'log.php', $_SGLOBAL[timestamp], $_SGLOBAL[timestamp], -1, -1, -1, '0	5	10	15	20	25	30	35	40	45	50	55'",
		"1, 'system', '��������feed', 'cleanfeed.php', $_SGLOBAL[timestamp], $_SGLOBAL[timestamp], -1, -1, 3, '4'",
		"1, 'system', '��������֪ͨ', 'cleannotification.php', $_SGLOBAL[timestamp], $_SGLOBAL[timestamp], -1, -1, 5, '6'",
		"1, 'system', 'ͬ��UC��feed', 'getfeed.php', $_SGLOBAL[timestamp], $_SGLOBAL[timestamp], -1, -1, -1, '2	7	12	17	22	27	32	37	42	47	52'",
		"1, 'system', '������ӡ�����·ÿ�', 'cleantrace.php', $_SGLOBAL[timestamp], $_SGLOBAL[timestamp], -1, -1, 2, '3'"
	);
	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('cron'));
	$_SGLOBAL['db']->query("INSERT INTO ".tname('cron')." (available, type, name, filename, lastrun, nextrun, weekday, day, hour, minute) VALUES (".implode('),(', $datas).")");

	//�û�����
	$datas = array();
	$datas[] = "1, '����һ���Լ���ͷ��', 'ͷ�������������ĸ�������<br>�����Լ���ͷ��󣬻��ø�������Ѽ�ס����', 'avatar.php', 1, '', 0, 20, 'image/task/avatar.gif'";
	$datas[] = "1, '���������ϲ�������', '���Լ��ĸ���������д�����ɡ�<br>�������ᱻ����������ҵ��ģ�ϵͳҲ������ҵ����ѡ�', 'profile.php', '', 2, 0, 20, 'image/task/profile.gif'";
	$datas[] = "1, '�����Լ��ĵ�һƪ��־', '���ڣ���д���Լ��ĵ�һƪ��־�ɡ�<br>����һ������Լ����������', 'blog.php', 3, '', 0, 5, 'image/task/blog.gif'";
	$datas[] = "1, 'Ѱ�Ҳ�������λ����', '���˺��ѣ���������־��ͼƬ�Ȼᱻ���Ѽ�ʱ������������ȥ��<br>��Ҳ������ҳ���㼰ʱ�Ŀ������ѵ����¶�̬��', 'friend.php', 4, '', 0, 50, 'image/task/friend.gif'";
	$datas[] = "1, '��֤�����Լ�������', '��д�Լ���ʵ�������ַ����֤ͨ����<br>�����������������ʱ��ʹ�ø�����ȡ���Լ������룻<br>�����Լ�ʱ����վ�ڵĺ���֪ͨ�ȵȡ�', 'email.php', 5, '', 0, 10, 'image/task/email.gif'";
	$datas[] = "1, '����10�������Ѽ���', '����һ���Լ���QQ���ѻ���������ϵ�ˣ����������һ�����������ǰɡ�', 'invite.php', 6, '', 0, 100, 'image/task/friend.gif'";
	$datas[] = "1, '��ȡÿ�շ��ʴ����', 'ÿ���¼�����Լ�����ҳ���Ϳ���ȡ�������', 'gift.php', 99, 'day', 0, 5, 'image/task/gift.gif'";

	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('task'));
	$_SGLOBAL['db']->query("INSERT INTO ".tname('task')." (`available`, `name`, `note`, `filename`, `displayorder`, `nexttype`, `nexttime`, `credit`, `image`) VALUES (".implode('),(', $datas).")");

	//�����
	$datas = array(
		"1, '����/�ۻ�', 0, '����˵����\r\n���ϵص㣺\r\n��װҪ��\r\n��ϵ��ʽ��\r\nע�����', 1",
		"2, '����/����', 0, '·��˵��:\r\n����˵��:\r\nװ��Ҫ��:\r\n��ͨ����:\r\n���ϵص�:\r\n��ϵ��ʽ:\r\nע������:', 2",
		"3, '����/�˶�', 0, '����˵����\r\n���ϵص㣺\r\n��װҪ��\r\n���ؽ��ܣ�\r\n��ϵ��ʽ��\r\nע�����', 4",
		"4, '��Ӱ/�ݳ�', 0, '������ܣ�\r\n����˵����\r\n���ϵص㣺\r\n��ϵ��ʽ��\r\nע�����', 3",
		"5, '����/����', 0, '���쵥λ��\r\n����⣺\r\n����˵����\r\n���ϵص㣺\r\n��ϵ��ʽ��\r\nע�����', 5",
		"6, '����', 0, '', 6"
	);	
	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('eventclass'));
	$_SGLOBAL['db']->query("INSERT INTO ".tname('eventclass')." (classid, classname, poster, template, displayorder) VALUES (".implode('),(', $datas).")");
	
	//����
	$datas = array();
	$datas[] = "'invisible', '������', '���Լ�������¼������ʾ���ߣ�24Сʱ����Ч', '5', '50', '86400', '10', '86400', '1'";
	$datas[] = "'friendnum', '�������ݿ�', '���������ӵ��������������⣬����10����������', '3', '30', '86400', '999', '0', '1'";
	$datas[] = "'attachsize', '�������ݿ�', 'ʹ��һ�Σ����Ը��Լ����� 10M �ĸ����ռ�', '3', '30', '86400', '999', '0', '1'";
	$datas[] = "'thunder', '����֮��', '����һ��ȫվ��Ϣ���ô��֪���Լ�������', '5', '500', '86400', '5', '86400', '1'";
	$datas[] = "'updateline', '����Ȧ', '��ָ������ķ���ʱ�����Ϊ��ǰʱ��', '5', '200', '86400', '999', '0', '1'";
		
	$datas[] = "'downdateline', 'ʱ�ջ�', '��ָ������ķ���ʱ���޸�Ϊ��ȥ��ʱ��', '5', '250', '86400', '999', '0', '1'";		
	$datas[] = "'color', '��ɫ��', '��ָ������ı����ɲ�ɫ��', '5', '50', '86400', '999', '0', '1'";
	$datas[] = "'hot', '�ȵ��', '��ָ��������ȶ�����վ���Ƽ����ȵ�ֵ', '5', '50', '86400', '999', '0', '1'";
	$datas[] = "'visit', '���ÿ�', '���ѡ��10�����ѣ�������к������Ի���ʿռ�', '2', '20', '86400', '999', '0', '1'";
	$datas[] = "'icon', '�ʺ絰', '��ָ������ı���ǰ������ͼ�꣨���8��ͼ�꣩', '2', '20', '86400', '999', '0', '1'";
		
	$datas[] = "'flicker', '�ʺ���', '�����ۡ����Ե�������˸����', '3', '30', '86400', '999', '0', '1'";
	$datas[] = "'gift', '�����', '���Լ��Ŀռ����»��ֺ���͸�������', '2', '20', '86400', '999', '0', '1'";
	$datas[] = "'superstar', '��������', '�ڸ�����ҳ�����Լ���ͷ�����ӳ������Ǳ�ʶ', '3', '30', '86400', '999', '0', '1'";
	$datas[] = "'viewmagiclog', '���Ծ�', '�鿴ָ���û����ʹ�õĵ��߼�¼', '5', '100', '86400', '999', '0', '1'";
	$datas[] = "'viewmagic', '͸�Ӿ�', '�鿴ָ���û���ǰ���еĵ���', '5', '100', '86400', '999', '0', '1'";
		
	$datas[] = "'viewvisitor', '͵����', '�鿴ָ���û�������ʹ���10���ռ�', '5', '100', '86400', '999', '0', '1'";
	$datas[] = "'call', '������', '��֪ͨ���Լ��ĺ��ѣ����������鿴ָ���Ķ���', '5', '50', '86400', '999', '0', '1'";
	$datas[] = "'coupon', '����ȯ','�������ʱ�ۻ�һ�����Ļ���', '0', '0', '0', '0', '0', '1'";
	$datas[] = "'frame', '���', '���Լ�����Ƭ�������', '3', '30', '86400', '999', '0', '1'";
	$datas[] = "'bgimage', '��ֽ', '��ָ���Ķ���������ֽ����', '3', '30', '86400', '999', '0', '1'";
		
	$datas[] = "'doodle', 'Ϳѻ��', '���������ԡ����۵Ȳ���ʱʹ��Ϳѻ��', '3', '30', '86400', '999', '0', '1'";
	$datas[] = "'anonymous', '������', '��ָ���ĵط������Լ���������ʾΪ����', '5', '50', '86400', '999', '0', '1'";
	$datas[] = "'reveal', '������', '���Բ鿴һ�������û�����ʵ����', '5', '100', '86400', '999', '0', '1'";
	$datas[] = "'license', '����ת������֤', 'ʹ������֤�����������͸�ָ������', '1', '10', '3600', '999', '0', '1'";
	$datas[] = "'detector', '̽����', '̽�����˺���Ŀռ�', '1', '10', '86400', '999', '0', '1'";
	
	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('magic'));
	$_SGLOBAL['db']->query("INSERT INTO ".tname('magic')."(`mid`, `name`, `description`, `experience`, `charge`, `provideperoid`, `providecount`, `useperoid`, `usecount`) VALUES (".implode('),(', $datas).")");		

	//��̬
	$datas = array(
		"'1', '·��', 'luguo.gif', 'blogid'",
		"'2', '����', 'leiren.gif', 'blogid'",
		"'3', '����', 'woshou.gif', 'blogid'",
		"'4', '�ʻ�', 'xianhua.gif', 'blogid'",
		"'5', '����', 'jidan.gif', 'blogid'",
		
		"'6', 'Ư��', 'piaoliang.gif', 'picid'",
		"'7', '���', 'kubi.gif', 'picid'",
		"'8', '����', 'leiren.gif', 'picid'",
		"'9', '�ʻ�', 'xianhua.gif', 'picid'",
		"'10', '����', 'jidan.gif', 'picid'",
		
		"'11', '��Ц', 'gaoxiao.gif', 'tid'",
		"'12', '�Ի�', 'mihuo.gif', 'tid'",
		"'13', '����', 'leiren.gif', 'tid'",
		"'14', '�ʻ�', 'xianhua.gif', 'tid'",
		"'15', '����', 'jidan.gif', 'tid'"
	);
	$_SGLOBAL['db']->query("TRUNCATE TABLE ".tname('click'));
	$_SGLOBAL['db']->query("INSERT INTO ".tname('click')." (clickid, `name`, icon, idtype) VALUES (".implode('),(', $datas).")");

	show_msg('ϵͳĬ������������ϣ�������һ������', ($step+1), 1);

} elseif ($step == 5) {

	//���»���
	dbconnect();
	include_once(S_ROOT.'./source/function_cache.php');

	config_cache();
	usergroup_cache();
	profilefield_cache();
	profield_cache();
	censor_cache();
	block_cache();
	eventclass_cache();
	magic_cache();
	click_cache();
	task_cache();
	ad_cache();
	creditrule_cache();
	userapp_cache();
	app_cache();
	network_cache();

	$msg = <<<EOF
	<form method="post" action="$theurl">
	<table>
	<tr><td colspan="2">�������ݰ�װ���!<br><br>
	��������������û�����UCenter���û���������<br>ϵͳ���Զ�Ϊ����ͨվ�ڵ�һ���ռ䣬��������Ϊ����Ա!
	</td></tr>
	<tr><td>�����û���</td><td><input type="text" name="username" value="" size="30"></td></tr>
	<tr><td>��������</td><td><input type="password" name="password" value="" size="30"></td></tr>
	<tr><td></td><td><input type="submit" name="opensubmit" value="��ͨ����Ա�ռ�"></td></tr>
	</table>
	<input type="hidden" name="formhash" value="$formhash">
	</form>
EOF;

	show_msg($msg, 999);
}

//ҳ��ͷ��
function show_header() {
	global $_SGLOBAL, $nowarr, $step, $theurl, $_SC;

	$nowarr[$step] = ' class="current"';
	print<<<END
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=$_SC[charset]" />
	<title> UCenter Home ����װ </title>
	<style type="text/css">
	* {font-size:12px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 1.5em; word-break: break-all; }
	body { text-align:center; margin: 0; padding: 0; background: #F5FBFF; }
	.bodydiv { margin: 40px auto 0; width:720px; text-align:left; border: solid #86B9D6; border-width: 5px 1px 1px; background: #FFF; }
	h1 { font-size: 18px; margin: 1px 0 0; line-height: 50px; height: 50px; background: #E8F7FC; color: #5086A5; padding-left: 10px; }
	#menu {width: 100%; margin: 10px auto; text-align: center; }
	#menu td { height: 30px; line-height: 30px; color: #999; border-bottom: 3px solid #EEE; }
	.current { font-weight: bold; color: #090 !important; border-bottom-color: #F90 !important; }
	.showtable { width:100%; border: solid; border-color:#86B9D6 #B2C9D3 #B2C9D3; border-width: 3px 1px 1px; margin: 10px auto; background: #F5FCFF; }
	.showtable td { padding: 3px; }
	.showtable strong { color: #5086A5; }
	.datatable { width: 100%; margin: 10px auto 25px; }
	.datatable td { padding: 5px 0; border-bottom: 1px solid #EEE; }
	input { border: 1px solid #B2C9D3; padding: 5px; background: #F5FCFF; }
	.button { margin: 10px auto 20px; width: 100%; }
	.button td { text-align: center; }
	.button input, .button button { border: solid; border-color:#F90; border-width: 1px 1px 3px; padding: 5px 10px; color: #090; background: #FFFAF0; cursor: pointer; }
	#footer { font-size: 10px; line-height: 40px; background: #E8F7FC; text-align: center; height: 38px; overflow: hidden; color: #5086A5; margin-top: 20px; }
	</style>
	<script type="text/javascript">
	function $(id) {
		return document.getElementById(id);
	}
	//����Selectѡ��
	function addoption(obj) {
		if (obj.value=='addoption') {
			var newOption=prompt('������:','');
			if (newOption!=null && newOption!='') {
				var newOptionTag=document.createElement('option');
				newOptionTag.text=newOption;
				newOptionTag.value=newOption;
				try {
					obj.add(newOptionTag, obj.options[0]); // doesn't work in IE
				}
				catch(ex) {
					obj.add(newOptionTag, obj.selecedIndex); // IE only
				}
				obj.value=newOption;
			} else {
				obj.value=obj.options[0].value;
			}
		}
	}
	</script>
	</head>
	<body id="append_parent">
	<div class="bodydiv">
	<h1>UCenter Home����װ</h1>
	<div style="width:90%;margin:0 auto;">
	<table id="menu">
	<tr>
	<td{$nowarr[0]}>1.��װ��ʼ</td>
	<td{$nowarr[1]}>2.����UCenter��Ϣ</td>
	<td{$nowarr[2]}>3.�������ݿ�������Ϣ</td>
	<td{$nowarr[3]}>4.�������ݿ�ṹ</td>
	<td{$nowarr[4]}>5.����Ĭ������</td>
	<td{$nowarr[5]}>6.��װ���</td>
	</tr>
	</table>
END;
}

//ҳ�涥��
function show_footer() {
	print<<<END
	</div>
	<iframe id="phpframe" name="phpframe" width="0" height="0" marginwidth="0" frameborder="0" src="about:blank"></iframe>
	<div id="footer">&copy; Comsenz Inc. 2001-2009 u.discuz.net</div>
	</div>
	<br>
	</body>
	</html>
END;
}


//��ʾ
function show_msg($message, $next=0, $jump=0) {
	global $theurl;

	$nextstr = '';
	$backstr = '';

	obclean();
	if(empty($next)) {
		$backstr .= "<a href=\"javascript:history.go(-1);\">������һ��</a>";
	} elseif ($next == 999) {
	} else {
		$url_forward = "$theurl?step=$next";
		if($jump) {
			$nextstr .= "<a href=\"$url_forward\">���Ե�...</a><script>setTimeout(\"window.location.href ='$url_forward';\", 1000);</script>";
		} else {
			$nextstr .= "<a href=\"$url_forward\">������һ��</a>";
			$backstr .= "<a href=\"javascript:history.go(-1);\">������һ��</a>";
		}
	}

	show_header();
	print<<<END
	<table>
	<tr><td>$message</td></tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td>$backstr $nextstr</td></tr>
	</table>
END;
	show_footer();
	exit();
}

//���Ȩ��
function checkfdperm($path, $isfile=0) {
	if($isfile) {
		$file = $path;
		$mod = 'a';
	} else {
		$file = $path.'./install_tmptest.data';
		$mod = 'w';
	}
	if(!@$fp = fopen($file, $mod)) {
		return false;
	}
	if(!$isfile) {
		//�Ƿ����ɾ��
		fwrite($fp, ' ');
		fclose($fp);
		if(!@unlink($file)) {
			return false;
		}
		//����Ƿ���Դ�����Ŀ¼
		if(is_dir($path.'./install_tmpdir')) {
			if(!@rmdir($path.'./install_tmpdir')) {
				return false;
			}
		}
		if(!@mkdir($path.'./install_tmpdir')) {
			return false;
		}
		//�Ƿ����ɾ��
		if(!@rmdir($path.'./install_tmpdir')) {
			return false;
		}
	} else {
		fclose($fp);
	}
	return true;
}

?>