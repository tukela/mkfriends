<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('admin/tpl/config|admin/tpl/header|admin/tpl/side|admin/tpl/footer|template/blue/header|template/blue/footer', '1318212793', 'admin/tpl/config');?><?php $_TPL['menunames'] = array(
		'index' => '������ҳ',
		'config' => 'վ������',
		'privacy' => '��˽����',
		'usergroup' => '�û���',
		'credit' => '���ֹ���',
		'profilefield' => '�û���Ŀ',
		'profield' => 'Ⱥ����Ŀ',
		'eventclass' => '�����',
		'magic' => '��������',
		'task' => '�н�����',
		'spam' => '����ˮ����',
		'censor' => '��������',
		'ad' => '�������',
		'userapp' => 'MYOPӦ��',
		'app' => 'UCenterӦ��',
		'network' => '��㿴��',
		'cache' => '�������',
		'log' => 'ϵͳlog��¼',
		'space' => '�û�����',
		'feed' => '��̬(feed)',
		'share' => '����',
		'blog' => '��־',
		'album' => '���',
		'pic' => 'ͼƬ',
		'comment' => '����/����',
		'thread' => '����',
		'post' => '����',
		'doing' => '��¼',
		'tag' => '��ǩ',
		'mtag' => 'Ⱥ��',
		'poll' => 'ͶƱ',
		'event' => '�',
		'magiclog' => '���߼�¼',
		'report' => '�ٱ�',
		'block' => '���ݵ���',
		'template' => 'ģ��༭',
		'backup' => '���ݱ���',
		'stat' => 'ͳ�Ƹ���',
		'cron' => 'ϵͳ�ƻ�����',
		'click' => '��̬����',
		'ip' => '����IP����',
		'hotuser' => '�Ƽ���Ա����',
		'defaultuser' => 'Ĭ�Ϻ�������',
	); ?>
<?php $_TPL['nosidebar'] = 1; ?>
<?php if(empty($_SGLOBAL['inajax'])) { ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=<?=$_SC['charset']?>" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<title><?php if($_TPL['titles']) { ?><?php if(is_array($_TPL['titles'])) { foreach($_TPL['titles'] as $value) { ?><?php if($value) { ?><?=$value?> - <?php } ?><?php } } ?><?php } ?><?php if($_SN[$space['uid']]) { ?><?=$_SN[$space['uid']]?> - <?php } ?><?=$_SCONFIG['sitename']?>-ͬ�ǽ�����|ͬ�ǻ����|ͬ�ǽ���������</title>
<META content="ͬ�ǽ��ѣ�ͬ�ǽ�������ͬ�ǻ�飬ͬ�ǽ��ѣ�ͬ�ǻ������ͬ�ǰ��鹫Ԣ��ͬ��ͬ�ǽ��������ˣ�ͬ��ͬ�ǽ���" name="keywords">
<META content="��ͬ�ǰ��鹫Ԣ��ͬ�ǽ������ṩͬ��ͬ�ǽ��������ˡ�ͬ�ǻ����������ͬ����רҵ��ͬ�ǽ���ƽ̨��ף���ҵ�ͬ�����ˡ�" name="description">
<script language="javascript" type="text/javascript" src="source/script_cookie.js"></script>
<script language="javascript" type="text/javascript" src="source/script_common.js"></script>
<script language="javascript" type="text/javascript" src="source/script_menu.js"></script>
<script language="javascript" type="text/javascript" src="source/script_ajax.js"></script>
<script language="javascript" type="text/javascript" src="source/script_face.js"></script>
<script language="javascript" type="text/javascript" src="source/script_manage.js"></script>
<style type="text/css">
@import url(template/default/style.css);
<?php if($_TPL['css']) { ?>
@import url(template/default/<?=$_TPL['css']?>.css);
<?php } ?>
<?php if(!empty($_SGLOBAL['space_theme'])) { ?>
@import url(theme/<?=$_SGLOBAL['space_theme']?>/style.css);
<?php } elseif($_SCONFIG['template'] != 'default') { ?>
<?php } ?>
<?php if(!empty($_SGLOBAL['space_css'])) { ?>
<?=$_SGLOBAL['space_css']?>
<?php } ?>
</style>
<link rel="shortcut icon" href="template/default/image/favicon.ico" />
<link rel="edituri" type="application/rsd+xml" title="rsd" href="xmlrpc.php?rsd=<?=$space['uid']?>" /></head>
<?php if($space["field_4"]) { ?>
<body onLoad="playerinit();">
<?php } else { ?>
<body>
<?php } ?>

<!-- ���� -->
<div id="indextop">
<div class="logo"><a href="/"><img src="template/default/image/logo.gif" /></a></div>
<div class="topright">
<div class="qq"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=417215092&amp;site=qq&amp;menu=yes" target="_blank">���߿ͷ�</a><a href="javascript:window.external.AddFavorite('http://www.zibo3.com', 'ͬ�ǰ��鹫Ԣ ')">�ղر�վ</a></div>
<div class="slogan">
<ul id="scroll">
<li><img src="template/default/image/sound.gif" />��վרΪ��й¶�����į��ʿ���񣬾ܾ�ɫ��!��վ�ᳫ����ذ��������������ҵԮ����</li>
<li><img src="template/default/image/sound.gif" />��վ�ж�Ů�٣���Ů������Լ10:1��������õ���ʿ����ûϷ��������������ŮQQ��ϵ��</li>
<li><img src="template/default/image/sound.gif" />��ͬ�ǰ��鹫Ԣ��ͬ�ǽ������ṩͬ��ͬ�ǽ��������ˣ���רҵ��ͬ�ǻ���� </li>
<li><img src="template/default/image/sound.gif" />��ʵͷ���������10���Ľ���Ч����<A href="/cp.php?ac=avatar">������ͷ��</A>&nbsp;&nbsp;�����з��� Լ���������<A href="/about/fpmj.htm" target=_blank>����ƭ����</A></li>
</ul>
<script language="javascript"> 
var box=document.getElementById("scroll"),can=true;
box.innerHTML+=box.innerHTML;
box.onmouseover=function(){can=false};
box.onmouseout=function(){can=true};
new function (){
var stop=box.scrollTop%45==0&&!can;
if(!stop)box.scrollTop==parseInt(box.scrollHeight/2)?box.scrollTop=0:box.scrollTop++;
setTimeout(arguments.callee,box.scrollTop%23?20:4000);
};
</script>

</div> 
</div>
</div>
<!-- ����end -->

<!-- �˵� -->
<div id="menu">
<ul>
<li class="left"></li>
<?php if($_SGLOBAL['supe_uid']) { ?>
<li><a href="index.php" class="home">��ҳ</a></li>
<li><?php if($_GET['do']=='home') { ?><a href="space.php?do=home" class="mf_a">��������</a><?php } else { ?><a href="space.php?do=home" class="mf">��������</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='girl') { ?><a href="space.php?do=top&view=mm" class="mf_a">����Ůʿ</a><?php } else { ?><a href="space.php?do=top&view=mm" class="mf">����Ůʿ</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='man') { ?><a href="space.php?do=top&view=gg" class="mf_a">����ʿ</a><?php } else { ?><a href="space.php?do=top&view=gg" class="mf">����ʿ</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='') { ?><a href="/cp.php?ac=friend&op=search" class="mf_a">ͬ������</a><?php } else { ?><a href="/cp.php?ac=friend&op=search" class="mf">ͬ������</a><?php } ?></li><li class="notifyhot"><img src="image/hot.gif" height="14" width="22" border="0" /></li>
<li><?php if($_GET['ac']=='friend' and $_GET['op']=='search') { ?><a href="cp.php?ac=friend&op=search&all=yes" class="mt_a">����</a><?php } else { ?><a href="cp.php?ac=friend&op=search&all=yes" class="mt">����</a><?php } ?></li>
<li><?php if($_GET['do']=='blog') { ?><a href="space.php?do=blog" class="mt_a">��־</a><?php } else { ?><a href="space.php?do=blog" class="mt">��־</a><?php } ?></li>
<li><?php if($_GET['do']=='album') { ?><a href="space.php?do=album" class="mt_a">���</a><?php } else { ?><a href="space.php?do=album" class="mt">���</a><?php } ?></li>
<li><?php if($_GET['do']=='pm') { ?><a href="space.php?do=pm<?php if(!empty($_SGLOBAL['member']['newpm'])) { ?>&filter=newpm<?php } ?>" class="mt_a">��Ϣ</a><?php } else { ?><a href="space.php?do=pm<?php if(!empty($_SGLOBAL['member']['newpm'])) { ?>&filter=newpm<?php } ?>" class="mt">��Ϣ</a><?php } ?></li><?php if($_SGLOBAL['member']['allnotenum']) { ?><li class="notify" id="membernotemenu" onmouseover="showMenu(this.id)">δ��<a href="space.php?do=notice"><?=$_SGLOBAL['member']['allnotenum']?></a></li><?php } ?>
<?php } else { ?>
<li><a href="index.php" class="home">��ҳ</a></li>
<li><?php if($_GET['do']=='home') { ?><a href="space.php?do=home" class="mf_a">��������</a><?php } else { ?><a href="space.php?do=home" class="mf">��������</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='girl') { ?><a href="space.php?do=top&view=mm" class="mf_a">����Ůʿ</a><?php } else { ?><a href="space.php?do=love&p=girl" class="mf">����Ůʿ</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='man') { ?><a href="space.php?do=top&view=gg" class="mf_a">����ʿ</a><?php } else { ?><a href="space.php?do=love&p=man" class="mf">����ʿ</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='man') { ?><a href="space.php?do=top&view=gg" class="mf_a">���޻�Ա</a><?php } else { ?><a href="space.php?do=love&p=fq" class="mf">���޻�Ա</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='') { ?><a href="space.php?do=love" class="mf_a">ͬ������</a><?php } else { ?><a href="space.php?do=love" class="mf">ͬ������</a><?php } ?></li><li class="notifyhot"><img src="image/hot.gif" height="14" width="22" border="0" /></li>
<li><?php if($_GET['ac']=='friend' and $_GET['op']=='search') { ?><a href="cp.php?ac=friend&op=search&all=yes" class="mt_a">����</a><?php } else { ?><a href="cp.php?ac=friend&op=search&all=yes" class="mt">����</a><?php } ?></li>
<li><?php if($_GET['do']=='blog') { ?><a href="space.php?do=blog" class="mt_a">��־</a><?php } else { ?><a href="space.php?do=blog" class="mt">��־</a><?php } ?></li>
<li><?php if($_GET['do']=='album') { ?><a href="space.php?do=album" class="mt_a">���</a><?php } else { ?><a href="space.php?do=album" class="mt">���</a><?php } ?></li>
<?php } ?>
<li class="right_login">
<?php if($_SGLOBAL['supe_uid']) { ?>
<a href="space.php?uid=<?=$_SGLOBAL['supe_uid']?>" class="login_thumb"><?php echo avatar($_SGLOBAL[supe_uid],small,false,$_space[sex]); ?></a>
<div class="name"><a href="space.php?uid=<?=$_SGLOBAL['supe_uid']?>" class="loginName"><?=$_SN[$_SGLOBAL['supe_uid']]?></a>
<?php if($_SGLOBAL['member']['credit']) { ?>
<a href="cp.php?ac=credit"><img src="image/credit.gif"><?=$_SGLOBAL['member']['credit']?></a>
<?php } ?>
<?php if($vips['ztime'] > 0) { ?>
<a href="pay.php?ac=vip"><img src="image/pay/vip.gif" alt="VIP��Ա:<?=$vips['day']?>��" border="0" align="absmiddle" /></a>
<?php } else { ?>
<a href="pay.php?ac=vip" target="_blank"><img src="image/pay/vip2.gif" alt="δ����" border="0" align="absmiddle" /></a>
<?php } ?>
<?php if(empty($_SCONFIG['closeinvite'])) { ?>
<?php } ?>
<a href="cp.php">����</a> 
<a href="cp.php?ac=common&op=logout&uhash=<?=$_SGLOBAL['uhash']?>">�˳�</a>
            </div>
<?php } else { ?>

<a href="do.php?ac=<?=$_SCONFIG['login_action']?>" class="login_lo"><img src="template/default/image/login_lo.gif" border="0" align="absmiddle" /> ��¼</a>
<a href="do.php?ac=<?=$_SCONFIG['register_action']?>" class="login_zc"><img src="template/default/image/login_zcimg.gif" border="0" align="absmiddle" /> ע��</a>
<?php } ?>
</li>
</ul>
</div>
<!-- �˵�end -->

<div id="wrap">

<?php if(empty($_TPL['nosidebar'])) { ?>
<div id="mainu">
<div id="app_sidebar">
<?php if($_SGLOBAL['supe_uid']) { ?>
<ul class="app_list" id="default_userapp">
<!-- 	<li><img src="template/default/image/app/doing.gif"><a href="space.php?do=doing">��¼</a></li> -->
<?php if($_GET['ac']=='upload') { ?>
                <li class="li" style="margin-top:0;"><img src="template/default/image/photoimg.gif"><a href="cp.php?ac=upload"><span style="font:14px/20px '����';color:#000;">�ϴ���Ƭ</span></a></li>
                <?php } else { ?><li><img src="template/default/image/photoimg.gif"><a href="cp.php?ac=upload"><span style="font:14px/20px '����';color:#000;">�ϴ���Ƭ</span></a></li><?php } ?>
                
<?php if($_GET['ac']=='blog') { ?>
                <li class="li"><img src="template/default/image/rzimg.gif"><a href="cp.php?ac=blog"><span style="font:14px/20px '����';color:#000;">������־</span></a></li>
                <?php } else { ?><li><img src="template/default/image/rzimg.gif"><a href="cp.php?ac=blog"><span style="font:14px/20px '����';color:#000;">������־</span></a></li><?php } ?>

<?php if($_SERVER['REQUEST_URI']=='/cp.php' or $_GET['ac']=='profile' or $_GET['ac']=='info' or $_GET['ac']=='avatar') { ?>
                <li class="li"><img src="template/default/image/infoimg.gif"><a href="/cp.php"><span style="font:bold 14px/20px '����';color:#000;">�޸�����</span></a></li>
                <?php } else { ?><li><img src="template/default/image/infoimg.gif"><a href="/cp.php">�޸�����</a></li><?php } ?>
<li><img src="template/default/image/homeimg.gif"><a href="/space.php" target="_blank">����Ԥ��</a></li>

            <?php if($_GET['do']=='friend' and $_GET['uid']>0) { ?>
<li class="li"><img src="template/default/image/faimg.gif"><a href="/space.php?uid=<?=$_SGLOBAL['supe_uid']?>&do=friend"><span style="font:bold 14px/20px '����';color:#000;">�ҵĺ���</span></a></li>
            <?php } else { ?><li><img src="template/default/image/faimg.gif"><a href="/space.php?uid=<?=$_SGLOBAL['supe_uid']?>&do=friend">�ҵĺ���</a></li><?php } ?>

<?php if($_GET['ac']=='invite') { ?>
<li class="li"><img src="template/default/image/faimg.gif"><a href="/cp.php?ac=invite"><span style="font:bold 14px/20px '����';color:#000;">�������</span></a></li>
            <?php } else { ?><li><img src="template/default/image/faimg.gif"><a href="/cp.php?ac=invite">�������</a></li><?php } ?>

            <?php if($_GET['do']=='friend' and $_GET['view']=='visitor') { ?>
<li class="li"><img src="template/default/image/look.gif"><a href="/space.php?do=friend&view=visitor"><span style="font:bold 14px/20px '����';color:#000;">˭������</span></a></li>
            <?php } else { ?><li><img src="template/default/image/look.gif"><a href="/space.php?do=friend&view=visitor">˭������</a></li><?php } ?>
            <?php if($_GET['do']=='friend' and $_GET['view']=='trace') { ?>
<li class="li"><img src="template/default/image/look.gif"><a href="/space.php?do=friend&view=trace"><span style="font:bold 14px/20px '����';color:#000;">�ҿ���˭</span></a></li>
            <?php } else { ?><li><img src="template/default/image/look.gif"><a href="/space.php?do=friend&view=trace">�ҿ���˭</a></li><?php } ?>

<?php if($_SERVER['REQUEST_URI']=='/cp.php?ac=credit') { ?>
                <li class="li"><img src="template/default/image/tuo.gif"><a href="/cp.php?ac=credit"><span style="font:bold 14px/20px '����';color:#000;">������</span></a></li>
                <?php } else { ?><li><img src="template/default/image/tuo.gif"><a href="/cp.php?ac=credit">������</a></li><?php } ?>
                <?php if($_SERVER['REQUEST_URI']=='/payf.php') { ?>
<li class="li"><img src="template/default/image/tuo.gif"><a href="/payf.php"><span style="font:bold 14px/20px '����';color:#000;">�𶹳�ֵ</span></a></li>
                <?php } else { ?><li><img src="template/default/image/tuo.gif"><a href="/pay.php">�𶹳�ֵ</a></li><?php } ?>
                <?php if($_SERVER['REQUEST_URI']=='/payv.php') { ?>
<li class="li"><img src="template/default/image/vipimg.gif"><a href="pay.php?ac=vip"><span style="font:bold 14px/20px '����';color:#000;">����VIP</span></a> <img src="template/default/image/hot.gif" height="14" width="22" border="0" /></li>
                <?php } else { ?><li><img src="template/default/image/vipimg.gif"><a href="/pay.php?ac=vip">����VIP</a> <img src="image/hot.gif" height="14" width="22" border="0" /></li><?php } ?>
</ul>
<?php if($_GET['op']=='search' and $_GET['all']=='yes') { ?><?php } else { ?>
      <div class="so">
      <h2>��������</h2>
<form action="cp.php" method="get">
<table width="152">
<!--<tr><td align="right">������</td><td><input type="text" name="name" value="" class="t_input"></td></tr>-->

<!--<tr><td align="right">�û�UID��</td><td><input type="text" name="uid" value="" class="t_input"></td></tr>-->
<tr>
<td align="right" width="55">�Ա�</td>
<td>
<select id="sex" name="sex">
<option value="0">����</option>
<option value="1">��</option>
<option value="2" selected>Ů</option>
</select>
</td>
</tr>
<tr>
<td align="right">������</td>
<td>
<select id="marry" name="marry">
<option value="0">����</option>
<option value="1">����</option>
<option value="2">�ǵ���</option>
</select>
</td>
</tr>
<tr>
<td align="right">����Σ�</td>
<td>
<input type="text" name="startage" value="18" size="1"/> ~ <input type="text" name="endage" value="36" size="1"/>
</td>
</tr>
<?php if($_SCONFIG['videophoto']) { ?>
<tr>
<td align="right">��Ƶ��֤��</td>
<td>
<input type="checkbox" name="videostatus" value="1">ͨ����Ƶ��֤
</td>
</tr>
<?php } ?>
<tr>
<td align="right">ͷ��</td>
<td>
<input type="checkbox" name="avatar" value="1">���ϴ�ͷ��
</td>
</tr>

<tr>
<td align="right" valign="top">��ס�أ�</td>
<td id="residecitybox1"></td>
</tr>
<tr><td align="right">�û�����</td><td><input type="text" name="username" value="" size="7"></td></tr>
<!--<tr>
<td align="right">�����أ�</td>
<td id="birthcitybox"></td>
</tr>-->

<script type="text/javascript" src="source/script_city.js"></script>
<script type="text/javascript">
showprovince('resideprovince1', 'residecity1', '', 'residecitybox1');
showcity('residecity1', '', 'resideprovince1', 'residecitybox1');
//showprovince('birthprovince', 'birthcity', '', 'birthcitybox');
//showcity('birthcity', '', 'birthprovince', 'birthcitybox');
</script>	

<!--<tr>
<td align="right">���գ�</td>
<td>
<select id="birthyear" name="birthyear" onchange="showbirthday();">
<option value="0">&nbsp;</option>
<?=$birthyeayhtml?>
</select> �� 
<select id="birthmonth" name="birthmonth" onchange="showbirthday();">
<option value="0">&nbsp;</option>
<?=$birthmonthhtml?>
</select> �� 
<select id="birthday" name="birthday">
<option value="0">&nbsp;</option>
<?=$birthdayhtml?>
</select> ��
</td>
</tr>

<tr><td align="right">ѧУ��</td><td><input type="text" name="title" value="" class="t_input"> <select name="startyear">
<option value="">��ѧ���</option>
<?=$yearhtml?>
</select></td></tr>
<tr><td align="right">�༶��Ժϵ��</td><td><input type="text" name="subtitle" value="" class="t_input"></td></tr>

<tr><td align="right">��˾�������</td><td><input type="text" name="title" value="" class="t_input"></td></tr>
<tr><td align="right">���ţ�</td><td><input type="text" name="subtitle" value="" class="t_input"></td></tr>


<tr>
<td align="right">Ѫ�ͣ�</td>
<td>
<select id="blood" name="blood">
<option value="">����</option>
<?=$bloodhtml?>
</select>
</td>
</tr>


<tr>
<td align="right">QQ��</td>
<td>
<input type="text" name="qq" value="" class="t_input" />
</td>
</tr>
<tr>
<td align="right">MSN��</td>
<td>
<input type="text" name="msn" value="" class="t_input" />
</td>
</tr>-->

<?php if(is_array($fields)) { foreach($fields as $fkey => $fvalue) { ?>
<?php if($fvalue['allowsearch']) { ?>
<tr>
<td align="right"><?=$fvalue['title']?>��</td>
<td>
<?=$fvalue['html']?>
</td>
</tr>
<?php } ?>
<?php } } ?>

<tr><td></td><td><input type="submit" name="searchsubmit" value="����" class="submit"></td></tr>
</table>
<input type="hidden" name="ac" value="friend">
<input type="hidden" name="op" value="search">
<input type="hidden" name="type" value="all">
</form>	</div><?php } ?>
<?php if($_SCONFIG['my_status']) { ?>
<ul class="app_list" id="my_userapp">
<?php if(is_array($_SGLOBAL['my_menu'])) { foreach($_SGLOBAL['my_menu'] as $value) { ?>
<li id="userapp_li_<?=$value['appid']?>"><img src="http://appicon.manyou.com/icons/<?=$value['appid']?>"><a href="userapp.php?id=<?=$value['appid']?>" title="<?=$value['appname']?>"><?=$value['appname']?></a></li>
<?php } } ?>
</ul>
<?php } ?>

<?php if($_SGLOBAL['my_menu_more']) { ?>
<p class="app_more"><a href="javascript:;" id="a_app_more" onclick="userapp_open();" class="off">չ��</a></p>
<?php } ?>

<?php if($_SCONFIG['my_status']) { ?>
<div class="app_m">
<ul>
<li><img src="template/default/image/app_add.gif"><a href="cp.php?ac=userapp&my_suffix=%2Fapp%2Flist" class="addApp">���Ӧ��</a></li>
<li><img src="template/default/image/app_set.gif"><a href="cp.php?ac=userapp&op=menu" class="myApp">����Ӧ��</a></li>
</ul>
</div>
<?php } ?>

<?php } else { ?>
<div class="bar_text">
<form id="loginform" name="loginform" action="do.php?ac=<?=$_SCONFIG['login_action']?>&ref" method="post">
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
<p class="title">��¼վ��</p>
<p>�û���</p>
<p><input type="text" name="username" id="username" class="login_input2" size="15" value="" /></p>
<p>����</p>
<p><input type="password" name="password" id="password" class="login_input2" size="15" value="" /></p>
<p><input type="checkbox" id="cookietime" name="cookietime" value="315360000" checked /><label for="cookietime">��ס��</label></p>
<p>
<input type="submit" id="loginsubmit" name="loginsubmit" value="��¼" class="submit" />
<input type="button" name="regbutton" value="ע��" class="button" onclick="urlto('do.php?ac=<?=$_SCONFIG['register_action']?>');">
</p>
</form>
</div>
<?php } ?>
</div>

<div id="mainarea">

<?php if($_SGLOBAL['ad']['contenttop']) { ?><div id="ad_contenttop"><?php adshow('contenttop'); ?></div><?php } ?>
<?php } ?>

<?php } ?>

<style type="text/css">
@import url(admin/tpl/style.css);
</style>

<div id="cp_content">


<div class="mainarea">
<div class="maininner">

<div class="tabs_header">
<ul class="tabs">
<li><a href="#base"><span>��������</span></a></li>
<li><a href="#register"><span>ע����ʾ</span></a></li>
<li><a href="#uch"><span>ϵͳ����</span></a></li>
<li><a href="#name"><span>ʵ����֤����</span></a></li>
<li><a href="#video"><span>��Ƶ��֤����</span></a></li>
<li><a href="#upload"><span>�ϴ�ͼƬ����</span></a></li>
<li><a href="#remote"><span>Զ���ϴ�����</span></a></li>
<li><a href="#email"><span>�ʼ�����</span></a></li>
</ul>
</div>

<form method="post" action="admincp.php?ac=config">
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />

<div class="bdrcontent">

<table class="formtable">
<tr>
<th style="width:15em;">վ������</th>
<td><input type="text" name="config[sitename]" value="<?=$configs['sitename']?>" size="50"></td>
</tr>
<tr>
<th>վ�����URL��ַ</th>
<td>
<input type="text" name="config[siteallurl]" value="<?=$configs['siteallurl']?>" size="50"><br>������������ʱ��Ҫʹ�ã����磺http://u.discuz.net/ ��ĩβҪ�ӡ�/��
</td>
</tr>
<tr>
<th>վ��ģ��</th>
<td>
<select name="config[template]">
<?php if(is_array($templatearr)) { foreach($templatearr as $value) { ?>
<option value="<?=$value?>"<?=$templateselect[$value]?>><?=$value?></option>
<?php } } ?>
</select>
<br>վ��ģ��Ŀ¼����� ./template ���档���� default Ŀ¼ΪĬ�Ϸ�񣬲���ɾ����
</td>
</tr>
<tr>
<th>վ����ϵ����</th>
<td><input type="text" name="config[adminemail]" value="<?=$configs['adminemail']?>" size="50"></td>
</tr>
<tr>
<th>������ʱ������</th>
<td>
<select name="config[timeoffset]">
<option value="-12" <?=$toselect['-12']?>>(GMT -12:00) Eniwetok, Kwajalein</option>
<option value="-11" <?=$toselect['-11']?>>(GMT -11:00) Midway Island, Samoa</option>
<option value="-10" <?=$toselect['-10']?>>(GMT -10:00) Hawaii</option>
<option value="-9" <?=$toselect['-9']?>>(GMT -09:00) Alaska</option>
<option value="-8" <?=$toselect['-8']?>>(GMT -08:00) Pacific Time (US &amp; Canada), Tijuana</option>
<option value="-7" <?=$toselect['-7']?>>(GMT -07:00) Mountain Time (US &amp; Canada), Arizona</option>
<option value="-6" <?=$toselect['-6']?>>(GMT -06:00) Central Time (US &amp; Canada), Mexico City</option>
<option value="-5" <?=$toselect['-5']?>>(GMT -05:00) Eastern Time (US &amp; Canada), Bogota, Lima, Quito</option>
<option value="-4" <?=$toselect['-4']?>>(GMT -04:00) Atlantic Time (Canada), Caracas, La Paz</option>
<option value="-3.5" <?=$toselect['-3.5']?>>(GMT -03:30) Newfoundland</option>
<option value="-3" <?=$toselect['-3']?>>(GMT -03:00) Brassila, Buenos Aires, Georgetown, Falkland Is</option>
<option value="-2" <?=$toselect['-2']?>>(GMT -02:00) Mid-Atlantic, Ascension Is., St. Helena</option>
<option value="-1" <?=$toselect['-1']?>>(GMT -01:00) Azores, Cape Verde Islands</option>
<option value="0"  <?=$toselect['0']?>>(GMT) Casablanca, Dublin, Edinburgh, London, Lisbon, Monrovia</option>
<option value="1" <?=$toselect['1']?>>(GMT +01:00) Amsterdam, Berlin, Brussels, Madrid, Paris, Rome</option>
<option value="2" <?=$toselect['2']?>>(GMT +02:00) Cairo, Helsinki, Kaliningrad, South Africa</option>
<option value="3" <?=$toselect['3']?>>(GMT +03:00) Baghdad, Riyadh, Moscow, Nairobi</option>
<option value="3.5" <?=$toselect['3.5']?>>(GMT +03:30) Tehran</option>
<option value="4" <?=$toselect['4']?>>(GMT +04:00) Abu Dhabi, Baku, Muscat, Tbilisi</option>
<option value="4.5" <?=$toselect['4.5']?>>(GMT +04:30) Kabul</option>
<option value="5" <?=$toselect['5']?>>(GMT +05:00) Ekaterinburg, Islamabad, Karachi, Tashkent</option>
<option value="5.5" <?=$toselect['5.5']?>>(GMT +05:30) Bombay, Calcutta, Madras, New Delhi</option>
<option value="5.75" <?=$toselect['5.75']?>>(GMT +05:45) Katmandu</option>
<option value="6" <?=$toselect['6']?>>(GMT +06:00) Almaty, Colombo, Dhaka, Novosibirsk</option>
<option value="6.5" <?=$toselect['6.5']?>>(GMT +06:30) Rangoon</option>
<option value="7" <?=$toselect['7']?>>(GMT +07:00) Bangkok, Hanoi, Jakarta</option>
<option value="8" <?=$toselect['8']?>>(GMT +08:00) Beijing, Hong Kong, Perth, Singapore, Taipei</option>
<option value="9" <?=$toselect['9']?>>(GMT +09:00) Osaka, Sapporo, Seoul, Tokyo, Yakutsk</option>
<option value="9.5" <?=$toselect['9.5']?>>(GMT +09:30) Adelaide, Darwin</option>
<option value="10" <?=$toselect['10']?>>(GMT +10:00) Canberra, Guam, Melbourne, Sydney, Vladivostok</option>
<option value="11" <?=$toselect['11']?>>(GMT +11:00) Magadan, New Caledonia, Solomon Islands</option>
<option value="12" <?=$toselect['12']?>>(GMT +12:00) Auckland, Wellington, Fiji, Marshall Island</option>
</select>
<br>���ݷ�������ʱ�����ý���ѡ��һ����ڷ�����Ϊ GMT +08:00</td>
</tr>
<tr>
<th>��ʾ��Ȩ��Ϣ����</th>
<td>
<input type="radio" name="config[licensed]" value="1"<?php if($configs['licensed'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[licensed]" value="0"<?php if($configs['licensed'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>

<tr>
<th>��ʾ����ִ����Ϣ</th>
<td>
<input type="radio" name="config[debuginfo]" value="1"<?php if($configs['debuginfo'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[debuginfo]" value="0"<?php if($configs['debuginfo'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>
<tr>
<th>ICP/IP/��������</th>
<td><input type="text" name="config[miibeian]" value="<?=$configs['miibeian']?>" size="20"> (���� ��ICP��04000001�ţ���ʾ������ҳ���������)</td>
</tr>
<tr>
<th>ǿ��ʹ��Ĭ���ַ���</th>
<td><input type="radio" name="config[headercharset]" value="1"<?php if($configs['headercharset'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[headercharset]" value="0"<?php if($configs['headercharset'] != '1') { ?> checked<?php } ?>>��
<br>�ɱ��ⲿ�ַ������ռ�ҳ��������룬һ�����迪��</td>
</tr>
<tr>
<th>URL Rewrite</th>
<td>
<input type="radio" name="config[allowrewrite]" value="1"<?php if($configs['allowrewrite'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[allowrewrite]" value="0"<?php if($configs['allowrewrite'] != '1') { ?> checked<?php } ?>>��
<br>������������Ҫ�� Web ������������Ӧ�� Rewrite ����
<br>�һ���΢���ӷ�������������Ӧ������ο������ĵ�
</td>
</tr>
<tr>
<th style="width:15em;">��¼����ʱ��</th>
<td><input type="text" name="config[onlinehold]" value="<?=$configs['onlinehold']?>" size="5"> (��λ ��)</td>
</tr>

<tr>
<th>����վ��ſ�ͳ��</th>
<td>
<input type="radio" name="config[updatestat]" value="1"<?php if($configs['updatestat'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[updatestat]" value="0"<?php if($configs['updatestat'] != '1') { ?> checked<?php } ?>>��
<br>���鿪������¼վ��ÿ�յĵ�¼�����������������������ص��������Ϊվ����Ӫ��չ�ṩ��Ҫ��������
</td>
</tr>

<tr>
<th>�û�ͷ����ϵ</th>
<td>
<input type="radio" name="config[avatarreal]" value="0"<?php if($configs['avatarreal'] != '1') { ?> checked<?php } ?>>ʹ��ͷ����ϵ1
<input type="radio" name="config[avatarreal]" value="1"<?php if($configs['avatarreal'] == '1') { ?> checked<?php } ?>>ʹ��ͷ����ϵ2
<br>UCenter�û�ͷ���Ϊ������ϵ(Ĭ��Ϊ��ϵ1)��������ѡ���ڱ�ϵͳ��ʹ�õ�ͷ����ϵ����������Ӧ�ã�����Discuz!��̳����ʹ����ͬ���߲�ͬ��ͷ����ϵ��<br>ע�⣺�޸ı�ѡ����û���Ҫ�ϴ�����ϵ��Ӧ����ͷ��
</td>
</tr>

<tr>
<th>UCenter������·��</th>
<td><input type="text" name="config[uc_dir]" value="<?=$configs['uc_dir']?>" size="40">
<br>Ĭ��Ϊ�ա������ϵͳ���Զ�ȡUCenter�ĳ���Ŀ¼���Ƽ���д��·��ֵ��
<br>�������� ��./�� ��../����ͷ�����·�������߾���·����ĩβ�� "/"��������д��../ucenter/��
</td>
</tr>

<tr>
<th>MYOP��IP</th>
<td><input type="text" name="config[my_ip]" value="<?=$configs['my_ip']?>" size="40">
<br>Ĭ��Ϊ�ա�������ķ�������DNS���������޷�ʹ��MYOP��������дMYOP��IP��ַ��
</td>
</tr>

<tr>
<th>վ��رշ���</th>
<td>
<input type="radio" name="config[close]" value="1"<?php if($configs['close'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[close]" value="0"<?php if($configs['close'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>
<tr>
<th>վ��ر�˵��</th>
<td>
<textarea name="config[closereason]" cols="80" rows="4"><?=$configs['closereason']?></textarea>
</td>
</tr>
<tr>
<th>�ٱ���ѡ����</th>
<td>
<textarea name="dataset[reason]" cols="80" rows="4"><?=$datasets['reason']?></textarea>
<br>Ԥ��ٱ���ѡ���ɣ�ÿ��һ��
</td>
</tr>

</table>

<br />
<div class="title" id="register">
<a class="r_option" href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP">TOP</a>
<h3>ע�����ʾ</h3>
</div>
<table class="formtable">
<tr>
<th style="width:15em;">�ر����û�ע��</th>
<td>
<input type="radio" name="config[closeregister]" value="1"<?php if($configs['closeregister'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[closeregister]" value="0"<?php if($configs['closeregister'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>
<tr>
<th>�ر�����ע�Ṧ��</th>
<td>
<input type="radio" name="config[closeinvite]" value="1"<?php if($configs['closeinvite'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[closeinvite]" value="0"<?php if($configs['closeinvite'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>
<tr>
<th>һ������ֻ��ע��һ���˺�</th>
<td>
<input type="radio" name="config[checkemail]" value="1"<?php if($configs['checkemail'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[checkemail]" value="0"<?php if($configs['checkemail'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>
<tr>
<th>ͬһIPע��ʱ����</th>
<td>
<input type="text" name="config[regipdate]" value="<?=$configs['regipdate']?>" size="5"> (��λ��Сʱ)
<br>����ͬһ��ip���ڶ೤ʱ����ֻ��ע��һ���˺�
</td>
</tr>
<tr>
<th>ע���������</th>
<td>
<textarea name="dataset[registerrule]" cols="80" rows="4"><?=$datasets['registerrule']?></textarea>
<br>�û�ע���ʱ�����ʾ����Ҫ���ܵķ��������֧��html���ԣ�����ʹ��&lt;br&gt;��
</td>
</tr>
<tr>
<th>�б�����ҳ��</th>
<td><input type="text" name="config[maxpage]" value="<?=$configs['maxpage']?>" size="5"> (Ĭ��Ϊ 100)<br>�����û��鿴������ҳ�������û��鿴�ķ�ҳ��Խ���ʱ�򣬶Է������ĸ���ѹ����Խ��</td>
</tr>
<tr>
<th>��̬��������</th>
<td><input type="text" name="config[feedday]" value="<?=$configs['feedday']?>" size="5"> (Ĭ��Ϊ 7)<br>���˶�̬�ı��������������������ĸ��˶�̬�ᱻ��������Ӷ����Ա�֤MySQL��Ч�ʡ����鲻Ҫ����̫����</td>
</tr>
<tr>
<th>��ҳ��̬��ʾ��</th>
<td><input type="text" name="config[feedmaxnum]" value="<?=$configs['feedmaxnum']?>" size="5"> (Ĭ��Ϊ 100)<br>��ҳ��ʾ�ĺ��Ѷ�̬������Щ��Ŀ���¼��н��кϲ���ʾ�����鲻Ҫ����̫�࣬�Ӷ����Ա�֤MySQL��Ч�ʣ������ٲ��ܵ���50��</td>
</tr>
<tr>
<th>��ҳ��̬Ĭ�ϱ�ǩ����</th>
<td>
������С�� <input type="text" name="config[showallfriendnum]" value="<?=$configs['showallfriendnum']?>" size="5"> ����ʱ����ʾ�����˵Ķ�̬�����������ֵ��ʾ���Ѷ�̬��<br>����־������б�ҳ�棬�ò���ͬ����Ч��
</td>
</tr>
<tr>
<th>��ҳ��̬�۵�����</th>
<td>
<input type="text" name="config[feedhiddenicon]" value="<?=$configs['feedhiddenicon']?>" size="60"><br>
������Ҫ�۵���ʾ�Ķ�̬���ͣ�icon�����������֮���ð�Ƕ��� "," ������<br>
��ĳЩ��̬�۵��󣬿����ʵ�������ҳ�Ķ�̬������<br>
��̬���͵Ļ�ȡ������<br>
�ڲ鿴���Ѷ�̬��ʱ�򣬵��ÿ����̬ǰ���Сͼ�꣨���� <img src="image/icon/blog.gif" align="absmiddle">����<br>
���������ַ���Ϊ�������µ����ӣ�<br>
http://xxx.com/space.php?uid=&do=feed&view=we&appid=3&<b>icon=blog</b>��<br>
���У�icon=blog���ͱ�ʾ�ö�̬����Ϊ blog<br>
MYOPӦ�õ�iconΪ 7λ���֡��������Ӣ�ĵ��� <b>myop</b> ����ʾ����MYOPӦ�õĶ�̬���͡�
</td>
</tr>
<tr>
<th>��ҳ��ʾ�ȵ����Ŀ</th>
<td><input type="text" name="config[feedhotnum]" value="<?=$configs['feedhotnum']?>" size="5"> (Ĭ��Ϊ 3)<br>Ϊ0������ҳ����ʾ�ȵ��Ƽ������Ҫ����10����<br>ϵͳ���Զ���ȡ10���ȵ㣬���У�������һ���ȵ��̶���ʾ�������ȵ�������ʾ��</td>
</tr>

<tr>
<th>��ҳ��ӭ�³�Աѡ��</th>
<td>
��ʾ <input type="text" name="config[newspacenum]" value="<?=$configs['newspacenum']?>" size="5"> ���³�Ա(0Ϊ����ʾ)<br>
��ʾ���³�Ա����:<br>
<input type="checkbox" name="config[newspaceavatar]" value="1"<?php if($configs['newspaceavatar']) { ?> checked<?php } ?>> �Ѿ��ϴ�ͷ��<br>
<?php if($_SCONFIG['realname']) { ?>
<input type="checkbox" name="config[newspacerealname]" value="1"<?php if($configs['newspacerealname']) { ?> checked<?php } ?>> �Ѿ�ʵ����֤<br>
<?php } ?>
<?php if($_SCONFIG['videophoto']) { ?>
<input type="checkbox" name="config[newspacevideophoto]" value="1"<?php if($configs['newspacevideophoto']) { ?> checked<?php } ?>> �Ѿ���Ƶ��֤
<?php } ?>
</td>
</tr>

<tr>
<th>�ȵ��Ƽ���������Χ</th>
<td><input type="text" name="config[feedhotday]" value="<?=$configs['feedhotday']?>" size="5"> (��λ�죬Ĭ��Ϊ 2��)<br>������ҳ�ȵ��Ƽ�ѡ���������Χ��</td>
</tr>
<tr>
<th>�ȵ��Ƽ�����С�ȶ�ֵ</th>
<td><input type="text" name="config[feedhotmin]" value="<?=$configs['feedhotmin']?>" size="5"> <br>���õ���������Ϣ�ȶ�ֵ�������ٺ󣬲Ż���ʾ���Ƽ����档</td>
</tr>
<tr>
<th>��̬���Ӵ�ģʽ</th>
<td>
<input type="radio" name="config[feedtargetblank]" value="1"<?php if($configs['feedtargetblank'] == '1') { ?> checked<?php } ?>>�´��ڴ�
<input type="radio" name="config[feedtargetblank]" value="0"<?php if($configs['feedtargetblank'] != '1') { ?> checked<?php } ?>>ͬһ���ڴ�
<br>���ѡ���ǣ��û��Ķ���̬��ʱ�����е����Ӷ������´��ڴ򿪡�
</td>
</tr>
<tr>
<th>��¼��̬�Ķ�״̬</th>
<td>
<input type="radio" name="config[feedread]" value="1"<?php if($configs['feedread'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[feedread]" value="0"<?php if($configs['feedread'] != '1') { ?> checked<?php } ?>>��
<br>���ѡ���ǣ�������̬�������ʱ�򣬻��ɻ�ɫ���Ա�ʾ�Ѿ��Ķ���(ע�⣬�ù��ܶ��ȵ㶯̬��Ч)
</td>
</tr>
<tr>
<th>�ر�MYOP�ĸ�����ʾ</th>
<td>
<input type="radio" name="config[my_closecheckupdate]" value="1"<?php if($configs['my_closecheckupdate'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[my_closecheckupdate]" value="0"<?php if($configs['my_closecheckupdate'] != '1') { ?> checked<?php } ?>>��
<br>����վ�㿪����MYOP��Ӧ�÷���󣬵�ƽ̨�����µ���Ϣ��ʱ��MYOP���Զ���ʾ������Ա���رձ����ܺ��������ٻ�ȡ������ʾ��
</td>
</tr>

<tr>
<th>��ҳ�����Ƽ�������ʾ</th>
<td>
<input type="radio" name="config[my_showgift]" value="1"<?php if($configs['my_showgift'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[my_showgift]" value="0"<?php if($configs['my_showgift'] != '1') { ?> checked<?php } ?>>��
<br>�����������MYOPƽ̨������Ӧ�ú󣬿�������ҳ��ʾ���Ƽ������
</td>
</tr>

<tr>
<th>��Ա���а������ҳ���</th>
<td>
<input type="radio" name="config[networkpage]" value="1"<?php if($configs['networkpage']==1) { ?> checked<?php } ?>>��
<input type="radio" name="config[networkpage]" value="0"<?php if($configs['networkpage'] != '1') { ?> checked<?php } ?>>��
<br>������ֻ�����а��еľ������С����߳�Ա��ȫ����Ա��Ч��
</td>
</tr>


<tr>
<th>��Ա���а񻺴�ʱ��</th>
<td>
<input type="text" name="config[topcachetime]" value="<?=$configs['topcachetime']?>" size="5"> (��λ����)
<br>�û����а��У����������С����߳�Ա��ȫ����Ա�⣬�������а��ǻ��洦��ġ�
<br>����ݷ������ĸ�����������ú���ĸ���ʱ���������ٲ��ܵ���5���ӡ�
</td>
</tr>

<tr>
<th>�ⲿ������ʾ������</th>
<td>
<input type="radio" name="config[linkguide]" value="1"<?php if($configs['linkguide']==1) { ?> checked<?php } ?>>��
<input type="radio" name="config[linkguide]" value="0"<?php if($configs['linkguide'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>
<tr>
<th>���Ǿ��鷧ֵ</th>
<td><input type="text" name="config[starcredit]" value="<?=$configs['starcredit']?>" size="5"> (Ĭ��Ϊ 100)<br>���û����������˷�ֵʱ������һ�����ǡ���СΪ2������˹�����Ч������ʾ��������</td>
</tr>
<tr>
<th>����������ֵ</th>
<td><input type="text" name="config[starlevelnum]" value="<?=$configs['starlevelnum']?>" size="5"> (Ĭ��Ϊ 5)<br>�������ڴﵽ�˷�ֵʱ��������Ϊ�߼����ͼ�ꡣ��СΪ2������������Ч��ʼ����������ʾ</td>
</tr>
</table>

<br />
<div class="title" id="uch">
<a class="r_option" href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP">TOP</a>
<h3>ϵͳ����</h3>
</div>
<table class="formtable">
<tr>
<th style="width:15em;">�����û������</th>
<td><input type="text" name="config[groupnum]" value="<?=$configs['groupnum']?>" size="5"> (Ĭ��Ϊ 8)
<br>����ÿ���û����ӵ�еĺ����û��������
</td>
</tr>
<tr>
<th>��־���ε��������</th>
<td><input type="text" name="config[importnum]" value="<?=$configs['importnum']?>" size="5"> (Ĭ�� 100)<br>�����û����ε�����־������</td>
</tr>
<tr>
<th>ͶƱ�����������</th>
<td><input type="text" name="config[maxreward]" value="<?=$configs['maxreward']?>" size="5"> (Ĭ�� 10)<br>�����û���������ͶƱʱƽ������ͶƱ���Ͷ��</td>
</tr>
<tr>
<th>�ʼ�֪ͨ��������</th>
<td><input type="text" name="config[sendmailday]" value="<?=$configs['sendmailday']?>" size="5">(Ĭ�� 0)<br> ��λ���죬���û�������û�е�½վ���ʱ��Ż���䷢���ʼ�֪ͨ��<br>����Ϊ0���������ʼ�֪ͨ���ܣ�<br>���ñ����ܽ�����΢���ӷ���������</td>
</tr>
<tr>
<th>����XMLPRCЭ��ӿ�</th>
<td>
<input type="radio" name="config[openxmlrpc]" value="1"<?php if($configs['openxmlrpc'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[openxmlrpc]" value="0"<?php if($configs['openxmlrpc'] != '1') { ?> checked<?php } ?>>��
<br>�û�����ͨ����Э��ӿڣ�ʹ�ÿͻ��˷�����־�����ǣ�Ҳ���ܻ����Ӷ����ˮ�Ŀ��ܡ�
</td>
</tr>
<tr>
<th>UCenterӦ�ñ�ǩ�����Ϣ</th>
<td>
<table>
<tr>
<td width="150">�Ƿ�����</td>
<td>
<input type="radio" name="config[uc_tagrelated]" value="1"<?php if($configs['uc_tagrelated'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[uc_tagrelated]" value="0"<?php if($configs['uc_tagrelated'] != '1') { ?> checked<?php } ?>>��
<br>���������ܣ���ϵͳ��ͨ��UCenter����ȡ��վ������Ӧ�õı�ǩ�����Ϣ
<br>����ֻ��ʾ��վ�ڵı�ǩ�����־
</td>
</tr>
<tr>
<td>������¼��</td>
<td>
<input type="text" name="config[uc_tagrelatedtime]" value="<?=$configs['uc_tagrelatedtime']?>" size="10"> (��λ:��, Ĭ��Ϊ: 86400 ����24Сʱ)
<br>���ñ�ǩ������Ϣ�೤ʱ�����һ�Σ���������1Сʱ��3600�룩���ϣ�����Է�������ѹ����Ϊ0�򲻸��¡�
</td>
</tr>
</table>
</td>
</tr>

<tr>
<th>ģ�黺��</th>
<td>
<table>
<tr>
<td width="150">�Ƿ�����</td>
<td><input type="radio" name="config[allowcache]" value="1"<?php if($configs['allowcache'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[allowcache]" value="0"<?php if($configs['allowcache'] != '1') { ?> checked<?php } ?>>��
<br>�Ƽ�������������ʹ��ģ��������ݵ�ʱ�򣬿��Դ���Ƚ���MYSQL����������
</td></tr>
<tr>
<td>����ģʽ</td>
<td>
<input type="radio" name="config[cachemode]" value="file"<?php if($configs['cachemode'] == 'file') { ?> checked<?php } ?>>�洢���ı�
<input type="radio" name="config[cachemode]" value="database"<?php if($configs['cachemode'] == 'database') { ?> checked<?php } ?>>�洢�����ݿ�
</td></tr>
<tr>
<td>����ֱ�ȼ�</td>
<td>
<select name="config[cachegrade]">
<option value="0"<?php if($configs['cachegrade'] == '0') { ?> selected<?php } ?>>ֻ��һ����(��Ŀ¼)</option>
<option value="1"<?php if($configs['cachegrade'] == '1') { ?> selected<?php } ?>>��ɢ��15���ӱ�(��Ŀ¼)</option>
<option value="2"<?php if($configs['cachegrade'] == '2') { ?> selected<?php } ?>>��ɢ��225���ӱ�(��Ŀ¼)</option>
</select>
<br>�ֱ�(��Ŀ¼)Խ��Ч��Խ�ߣ������������ݱ�(��Ŀ¼)Խ��
</td></tr>
</table>
</td>
</tr>

<tr>
<th>������������</th>
<td>
<table>
<tr>
<td width="150">�Ƿ�����</td>
<td>
<input type="radio" name="config[allowdomain]" value="1"<?php if($configs['allowdomain'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[allowdomain]" value="0"<?php if($configs['allowdomain'] != '1') { ?> checked<?php } ?>>��
<br>��������������Ҫ����������֧��
</td></tr>
<tr>
<td>������������</td><td>
<input type="text" name="config[holddomain]" value="<?=$configs['holddomain']?>" size="50">
<br>���֮���� | ����������ʹ��ͨ���*
</td></tr>
<tr>
<td>��������������</td>
<td>
<input type="text" name="config[domainroot]" value="<?=$configs['domainroot']?>" size="50">
</td></tr>
</table>
</td>
</tr>

</table>


<br />
<div class="title" id="name">
<a class="r_option" href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP">TOP</a>
<h3>ʵ����֤����</h3>
</div>

<table class="formtable">
<tr>
<th style="width:15em;">����ʵ��</th>
<td><input type="radio" name="config[realname]" value="1"<?php if($configs['realname'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[realname]" value="0"<?php if($configs['realname'] != '1') { ?> checked<?php } ?>>��
<br>��������ֻ���ڿ���ʵ�����ƺ���Ч��
<br>ע�⣬����ʵ����֤�����ӷ�����������
</td>
</tr>
<tr>
<th>ʵ�����ֹ���֤</th>
<td><input type="radio" name="config[namecheck]" value="1"<?php if($configs['namecheck'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[namecheck]" value="0"<?php if($configs['namecheck'] != '1') { ?> checked<?php } ?>>��
<br>����Ϊ���ǡ������û���д������ֻ���ڱ��������ֹ���֤�������Ч���������Զ�Ϊ��֤��Ч��
</td>
</tr>
<tr>
<th>��֤ʵ�������޸�</th>
<td><input type="radio" name="config[namechange]" value="1"<?php if($configs['namechange'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[namechange]" value="0"<?php if($configs['namechange'] != '1') { ?> checked<?php } ?>>��
<br>��д����������֤��Ч���Ƿ������û��ٴ��޸�������<br>��������޸����ֹ���֤����ô�û��޸ĵ���������Ҫ�ٴ��ֹ���֤�󷽿���Ч��
</td>
</tr>
<tr>
<th>δ��֤ʵ��Ȩ��</th>
<td>
<table>
<tr>
<td width="150">����鿴ʵ���û���ҳ</td>
<td>
<input type="radio" name="config[name_allowviewspace]" value="1"<?php if($configs['name_allowviewspace'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowviewspace]" value="0"<?php if($configs['name_allowviewspace'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����Ӻ���</td>
<td>
<input type="radio" name="config[name_allowfriend]" value="1"<?php if($configs['name_allowfriend'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowfriend]" value="0"<?php if($configs['name_allowfriend'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">������к�</td>
<td>
<input type="radio" name="config[name_allowpoke]" value="1"<?php if($configs['name_allowpoke'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowpoke]" value="0"<?php if($configs['name_allowpoke'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">������¼</td>
<td>
<input type="radio" name="config[name_allowdoing]" value="1"<?php if($configs['name_allowdoing'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowdoing]" value="0"<?php if($configs['name_allowdoing'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">������־</td>
<td>
<input type="radio" name="config[name_allowblog]" value="1"<?php if($configs['name_allowblog'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowblog]" value="0"<?php if($configs['name_allowblog'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����ʹ�����</td>
<td>
<input type="radio" name="config[name_allowalbum]" value="1"<?php if($configs['name_allowalbum'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowalbum]" value="0"<?php if($configs['name_allowalbum'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">��������</td>
<td>
<input type="radio" name="config[name_allowthread]" value="1"<?php if($configs['name_allowthread'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowthread]" value="0"<?php if($configs['name_allowthread'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����ͶƱ</td>
<td>
<input type="radio" name="config[name_allowpoll]" value="1"<?php if($configs['name_allowpoll'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowpoll]" value="0"<?php if($configs['name_allowpoll'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">�����</td>
<td>
<input type="radio" name="config[name_allowevent]" value="1"<?php if($configs['name_allowevent'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowevent]" value="0"<?php if($configs['name_allowevent'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">�������</td>
<td>
<input type="radio" name="config[name_allowshare]" value="1"<?php if($configs['name_allowshare'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowshare]" value="0"<?php if($configs['name_allowshare'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">��������/����</td>
<td>
<input type="radio" name="config[name_allowcomment]" value="1"<?php if($configs['name_allowcomment'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowcomment]" value="0"<?php if($configs['name_allowcomment'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����Ⱥ�����</td>
<td>
<input type="radio" name="config[name_allowpost]" value="1"<?php if($configs['name_allowpost'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowpost]" value="0"<?php if($configs['name_allowpost'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����ʹ��MYOPӦ��</td>
<td>
<input type="radio" name="config[name_allowuserapp]" value="1"<?php if($configs['name_allowuserapp'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[name_allowuserapp]" value="0"<?php if($configs['name_allowuserapp'] != '1') { ?> checked<?php } ?>>��
</td></tr>
</table>
</td>
</tr>
</table>


<br />
<div class="title" id="video">
<a class="r_option" href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP">TOP</a>
<h3>��Ƶ��֤����</h3>
</div>

<table class="formtable">
<tr>
<th style="width:15em;">������Ƶ��֤</th>
<td>
<?php if($_SCONFIG['my_status']) { ?>
<input type="radio" name="config[videophoto]" value="1"<?php if($configs['videophoto'] == '1') { ?> checked<?php } ?>>��
<input type="radio" name="config[videophoto]" value="0"<?php if($configs['videophoto'] != '1') { ?> checked<?php } ?>>��
<?php } else { ?>
��û�п���MYOP�������޷�ʹ����Ƶ��֤����
<?php } ?>
<br>��������ֻ���ڿ�����Ƶ��֤����Ч
</td>
</tr>
<tr>
<th>δ��Ƶ��֤�û�Ȩ��</th>
<td>
<table>
<tr>
<td width="150">����鿴��Ƶ�û�����Ƭ</td>
<td>
<input type="radio" name="config[video_allowviewphoto]" value="1"<?php if($configs['video_allowviewphoto'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowviewphoto]" value="0"<?php if($configs['video_allowviewphoto'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">�������Ƶ�û�Ϊ����</td>
<td>
<input type="radio" name="config[video_allowfriend]" value="1"<?php if($configs['video_allowfriend'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowfriend]" value="0"<?php if($configs['video_allowfriend'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">��������Ƶ�û����к�</td>
<td>
<input type="radio" name="config[video_allowpoke]" value="1"<?php if($configs['video_allowpoke'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowpoke]" value="0"<?php if($configs['video_allowpoke'] != '1') { ?> checked<?php } ?>>��
</td></tr>

<tr>
<td width="150">��������Ƶ�û�����</td>
<td>
<input type="radio" name="config[video_allowwall]" value="1"<?php if($configs['video_allowwall'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowwall]" value="0"<?php if($configs['video_allowwall'] != '1') { ?> checked<?php } ?>>��
</td></tr>

<tr>
<td width="150">��������Ƶ�û�����</td>
<td>
<input type="radio" name="config[video_allowcomment]" value="1"<?php if($configs['video_allowcomment'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowcomment]" value="0"<?php if($configs['video_allowcomment'] != '1') { ?> checked<?php } ?>>��
</td></tr>

<tr>
<td width="150">������¼</td>
<td>
<input type="radio" name="config[video_allowdoing]" value="1"<?php if($configs['video_allowdoing'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowdoing]" value="0"<?php if($configs['video_allowdoing'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">������־</td>
<td>
<input type="radio" name="config[video_allowblog]" value="1"<?php if($configs['video_allowblog'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowblog]" value="0"<?php if($configs['video_allowblog'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����ʹ�����</td>
<td>
<input type="radio" name="config[video_allowalbum]" value="1"<?php if($configs['video_allowalbum'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowalbum]" value="0"<?php if($configs['video_allowalbum'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">��������</td>
<td>
<input type="radio" name="config[video_allowthread]" value="1"<?php if($configs['video_allowthread'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowthread]" value="0"<?php if($configs['video_allowthread'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����ͶƱ</td>
<td>
<input type="radio" name="config[video_allowpoll]" value="1"<?php if($configs['video_allowpoll'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowpoll]" value="0"<?php if($configs['video_allowpoll'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">�����</td>
<td>
<input type="radio" name="config[video_allowevent]" value="1"<?php if($configs['video_allowevent'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowevent]" value="0"<?php if($configs['video_allowevent'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">�������</td>
<td>
<input type="radio" name="config[video_allowshare]" value="1"<?php if($configs['video_allowshare'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowshare]" value="0"<?php if($configs['video_allowshare'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����Ⱥ�����</td>
<td>
<input type="radio" name="config[video_allowpost]" value="1"<?php if($configs['video_allowpost'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowpost]" value="0"<?php if($configs['video_allowpost'] != '1') { ?> checked<?php } ?>>��
</td></tr>
<tr>
<td width="150">����ʹ��MYOPӦ��</td>
<td>
<input type="radio" name="config[video_allowuserapp]" value="1"<?php if($configs['video_allowuserapp'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[video_allowuserapp]" value="0"<?php if($configs['video_allowuserapp'] != '1') { ?> checked<?php } ?>>��
</td></tr>
</table>
</td>
</tr>
</table>


<br />
<div class="title" id="upload">
<a class="r_option" href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP">TOP</a>
<h3>�ϴ�ͼƬ����</h3>
</div>

<table class="formtable">
<tr>
<th style="width:15em;">Ԥ������ͼ��С</th>
<td>��<input type="text" name="data[thumbwidth]" value="<?=$datas['thumbwidth']?>" size="5">px &nbsp;
��<input type="text" name="data[thumbheight]" value="<?=$datas['thumbheight']?>" size="5">px
<br>��������ҪPHP����֧��GD����Ч
<br>����ͼ��ԭͼ������С����߲��ᳬ�����趨����������Ϊ ��100px���ߣ�100px����������С��60px</td>
</tr>
<tr>
<th style="width:15em;">ͼƬ���ߴ�</th>
<td>��<input type="text" name="data[maxthumbwidth]" value="<?=$datas['maxthumbwidth']?>" size="5">px &nbsp;
��<input type="text" name="data[maxthumbheight]" value="<?=$datas['maxthumbheight']?>" size="5">px
<br>��������ҪPHP����֧��GD����Ч
<br>����û��ϴ�һЩ�ߴ�ܴ������ͼƬ�������ᰴ�ձ����ý�����С��ͼƬ����ʾ�������������Ϊ ��1024px���ߣ�768px����������С��300px������Ϊ0�������κδ���</td>
</tr>
<tr>
<th>ͼƬˮӡ</th>
<td>
<table>
<tr>
<td width="150">�Ƿ�����</td>
<td>
<input type="radio" name="config[allowwatermark]" value="1"<?php if($configs['allowwatermark'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[allowwatermark]" value="0"<?php if($configs['allowwatermark'] != '1') { ?> checked<?php } ?>>��
<br>��������ҪPHP����֧��GD����Ч
<br>ע�⣬����ˮӡ���ܺ�ͼƬ��EXIF��Ϣ���޷���ȡ
</td></tr>
<tr>
<td>ˮӡͼƬ��ַ</td>
<td>
<input type="text" name="data[watermarkfile]" value="<?=$datas['watermarkfile']?>">
<br>Ĭ��Ϊimage/watermark.png��ֻ֧��JPG/GIF/PNG��ʽ���Ƽ���͸����pngͼƬ
</td></tr>
<tr>
<td>ˮӡλ��</td>
<td>
<input type="radio" name="data[watermarkpos]" value="1"<?php if($datas['watermarkpos'] == 1) { ?> checked<?php } ?>>���˾���
<input type="radio" name="data[watermarkpos]" value="2"<?php if($datas['watermarkpos'] == 2) { ?> checked<?php } ?>>���˾���
<input type="radio" name="data[watermarkpos]" value="3"<?php if($datas['watermarkpos'] == 3) { ?> checked<?php } ?>>�׶˾���
<input type="radio" name="data[watermarkpos]" value="4"<?php if($datas['watermarkpos'] == 4) { ?> checked<?php } ?>>�׶˾���
</td></tr>
</table>
</td>
</tr>
</table>

<br />
<div class="title" id="remote">
<a class="r_option" href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP">TOP</a>
<h3>Զ���ϴ�����</h3>
</div>

<table class="formtable">
<tr>
<th style="width:15em;">����Զ�̸���</th>
<td><input type="radio" name="config[allowftp]" value="1"<?php if($configs['allowftp'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="config[allowftp]" value="0"<?php if($configs['allowftp'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>
<tr>
<th>���� SSL ����</th>
<td>
<input type="radio" name="data[ftpssl]" value="1"<?php if($datas['ftpssl'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="data[ftpssl]" value="0"<?php if($datas['ftpssl'] != '1') { ?> checked<?php } ?>>��
</td>
</tr>
<tr>
<th>FTP������Ϣ</th>
<td>
<table>
<tr><td width="150">FTP ��������ַ</td>
<td><input type="text" name="data[ftphost]" value="<?=$datas['ftphost']?>"> (FTP �������� IP ��ַ������)</td>
</tr>
<tr><td>FTP �������˿�</td>
<td><input type="text" name="data[ftpport]" value="<?=$datas['ftpport']?>" size="5"> (Ĭ��Ϊ 21)</td>
</tr>
<tr><td>FTP �ʺ�</td>
<td><input type="text" name="data[ftpuser]" value="<?=$datas['ftpuser']?>"></td>
</tr>
<tr><td>FTP ����</td>
<td><input type="password" name="data[ftppassword]" value="<?=$datas['ftppassword']?>"></td>
</tr>
<tr><td>����ģʽ(pasv)����</td>
<td><input type="radio" name="data[ftppasv]" value="1"<?php if($datas['ftppasv'] == 1) { ?> checked<?php } ?>>��
<input type="radio" name="data[ftppasv]" value="0"<?php if($datas['ftppasv'] != '1') { ?> checked<?php } ?>>�� (һ������·Ǳ���ģʽ����)</td>
</tr>
<tr><td>Զ�̸���Ŀ¼</td>
<td><input type="text" name="data[ftpdir]" value="<?=$datas['ftpdir']?>">
<br>Զ�̸���Ŀ¼�ľ���·��������� FTP ��Ŀ¼�����·��<br>��.����ʾ FTP ��Ŀ¼��������д��./attachment</td>
</tr>
<tr><td>Զ�̷��� URL</td>
<td><input type="text" name="config[ftpurl]" value="<?=$configs['ftpurl']?>">
<br>֧�� HTTP �� FTP Э�飬��βҪ��б�ܡ�/��</td>
</tr>
<tr><td>FTP ���䳬ʱʱ��</td>
<td><input type="text" name="data[ftptimeout]" value="<?=$datas['ftptimeout']?>" size="5"> (��λ���룬0 Ϊ������Ĭ��)</td>
</tr>
</table>
</td>
</tr>
</table>


<br />
<div class="title" id="email">
<a class="r_option" href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP">TOP</a>
<h3>�ʼ�����</h3>
</div>

<table class="formtable">
<tr>
<th style="width:15em;">�ʼ����ͷ�ʽ</th>
<td><input class="radio" name="mail[mailsend]" value="1"<?php if($mails['mailsend'] == 1) { ?> checked<?php } ?> onclick="$('tb_smtp1').style.display = 'none';$('tb_smtp2').style.display = 'none';" type="radio"> ͨ�� PHP ������ sendmail ����(�Ƽ��˷�ʽ)<br>
<input class="radio" name="mail[mailsend]" value="2"<?php if($mails['mailsend'] == 2) { ?> checked<?php } ?> onclick="$('tb_smtp1').style.display = '';$('tb_smtp2').style.display = '';" type="radio"> ͨ�� SOCKET ���� SMTP ����������(֧�� ESMTP ��֤)<br>
<input class="radio" name="mail[mailsend]" value="3"<?php if($mails['mailsend'] == 3) { ?> checked<?php } ?> onclick="$('tb_smtp1').style.display = '';$('tb_smtp2').style.display = 'none';" type="radio"> ͨ�� PHP ���� SMTP ���� Email(�� Windows ��������Ч, ��֧�� ESMTP ��֤)
</td>
</tr><tr>
<th>�ʼ�ͷ�ķָ���</th>
<td><input class="radio" name="mail[maildelimiter]" value="0"<?php if($mails['maildelimiter'] == 0) { ?> checked<?php } ?> type="radio"> ʹ�� LF ��Ϊ�ָ���(ͨ��Ϊ Unix/Linux ����)<br>
<input class="radio" name="mail[maildelimiter]" value="1"<?php if($mails['maildelimiter'] == 1) { ?> checked<?php } ?> type="radio"> ʹ�� CRLF ��Ϊ�ָ���(ͨ��Ϊ Windows ����)<br>
<input class="radio" name="mail[maildelimiter]" value="2"<?php if($mails['maildelimiter'] == 2) { ?> checked<?php } ?> type="radio"> ʹ�� CR ��Ϊ�ָ���(ͨ��Ϊ Mac ����)
</td>
</tr><tr>
<th>�ռ�����ʾ�û���</th>
<td><input class="radio" name="mail[mailusername]" value="1"<?php if($mails['mailusername'] == 1) { ?> checked<?php } ?> type="radio"> �� &nbsp; &nbsp;
<input class="radio" name="mail[mailusername]" value="0"<?php if($mails['mailusername'] != '1') { ?> checked<?php } ?> type="radio"> ��
</td>
</tr>

<tbody id="tb_smtp1"<?php if($mails['mailsend'] < 2) { ?> style="display:none;"<?php } ?>>
<th>&nbsp;</th>
<td>
<table>
<tr>
<td width="150">SMTP ������</td>
<td><input type="text" name="mail[server]" value="<?=$mails['server']?>"></td>
</tr><tr>
<td>SMTP �˿�</td>
<td><input type="text" name="mail[port]" value="<?=$mails['port']?>" size="5"> Ĭ��Ϊ 25</td>
</tr>
</tbody>

<tbody id="tb_smtp2"<?php if($mails['mailsend'] != 2) { ?> style="display:none;"<?php } ?>>
<tr>
<td>Ҫ�������֤</td>
<td><input class="radio" name="mail[auth]" value="1"<?php if($mails['auth'] == 1) { ?> checked<?php } ?> type="radio"> �� &nbsp; &nbsp;
<input class="radio" name="mail[auth]" value="0"<?php if($mails['auth'] != '1') { ?> checked<?php } ?> type="radio"> ��</td>
</tr><tr>
<td>�������ʼ���ַ</td>
<td><input type="text" name="mail[from]" value="<?=$mails['from']?>"><br>��ʽΪ��username &lt;user@domain.com&gt;����Ҳ����ֻ���ַ</td>
</tr><tr>
<td>SMTP �û���</td>
<td><input type="text" name="mail[auth_username]" value="<?=$mails['auth_username']?>"></td>
</tr><tr>
<td>SMTP ����</td>
<td><input type="password" name="mail[auth_password]" value="<?=$mails['auth_password']?>"></td>
</tr>
</table>
</td></tr>
</tbody>

</tr>

</table>
</div>

<div class="footactions">
<input type="submit" name="thevaluesubmit" value="�ύ" class="submit">
</div>

</form>
</div>
</div>

<div class="side">
<?php if($menus['0']) { ?>
<div class="block style1">
<h2>��������</h2>
<ul class="folder">
<?php if(is_array($acs['0'])) { foreach($acs['0'] as $value) { ?>
<?php if($menus['0'][$value]) { ?>
<?php if($ac==$value) { ?><li class="active"><?php } else { ?><li><?php } ?><a href="admincp.php?ac=<?=$value?>"><?=$_TPL['menunames'][$value]?></a></li>
<?php } ?>
<?php } } ?>
</ul>
</div>
<?php } ?>

<div class="block style1">
<h2>��������</h2>
<ul class="folder">
<?php if(is_array($acs['3'])) { foreach($acs['3'] as $value) { ?>
<?php if($ac==$value) { ?><li class="active"><?php } else { ?><li><?php } ?><a href="admincp.php?ac=<?=$value?>"><?=$_TPL['menunames'][$value]?></a></li>
<?php } } ?>
<?php if(is_array($acs['1'])) { foreach($acs['1'] as $value) { ?>
<?php if($menus['1'][$value]) { ?>
<?php if($ac==$value) { ?><li class="active"><?php } else { ?><li><?php } ?><a href="admincp.php?ac=<?=$value?>"><?=$_TPL['menunames'][$value]?></a></li>
<?php } ?>
<?php } } ?>
</ul>
</div>

<?php if($menus['2']) { ?>
<div class="block style1">
<h2>�߼�����</h2>
<ul class="folder">
<?php if(is_array($acs['2'])) { foreach($acs['2'] as $value) { ?>
<?php if($menus['2'][$value]) { ?>
<?php if($ac==$value) { ?><li class="active"><?php } else { ?><li><?php } ?><a href="admincp.php?ac=<?=$value?>"><?=$_TPL['menunames'][$value]?></a></li>
<?php } ?>
<?php } } ?>
<?php if($menus['0']['config']) { ?><li><a href="<?=UC_API?>" target="_blank">UCenter</a></li><?php } ?>
</ul>
</div>
<?php } ?>
</div>

</div>

<?php if(empty($_SGLOBAL['inajax'])) { ?>
<?php if(empty($_TPL['nosidebar'])) { ?>
<?php if($_SGLOBAL['ad']['contentbottom']) { ?><br style="line-height:0;clear:both;"/><div id="ad_contentbottom"><?php adshow('contentbottom'); ?></div><?php } ?>
</div>

<!--/mainarea-->
<div id="bottom"></div>
</div>
<!--/main-->
<?php } ?>
    
<div id="footer">


<p class="r_option">
<a href="javascript:;" onclick="window.scrollTo(0,0);" id="a_top" title="TOP"><img src="image/top.gif" alt="" style="padding: 5px 6px 6px;" /></a>
</p>

<?php if($_SGLOBAL['ad']['footer']) { ?>
<p style="padding:5px 0 10px 0;"><?php adshow('footer'); ?></p>
<?php } ?>

<?php if($_SCONFIG['close']) { ?>
<p style="color:blue;font-weight:bold;">
���ѣ���ǰվ�㴦�ڹر�״̬
</p>
<?php } ?>
<p>
<a href="../template/default/about.html" target="_blank">��������</a>- 
<a href="../template/default/mzsm.html" target="_blank">��������</a>- 
        <a href="../template/default/ysbh.html" target="_blank">��˽����</a>- 
<a href="../template/default/gl.html" target="_blank">���ѹ���</a>- 
<a href="../template/default/fpmj.html" target="_blank">��ƭ�ؼ�</a>- 
<a href="../template/default/faq.html" target="_blank">����������</a>- 
<a href="../template/default/lxwm.html">��ϵ����</a>- 
<a href="../template/default/gy.html" target="_blank">������Լ</a>
<a  href="http://www.10ss.info" target="_blank">��ICP��09179073��</a>
</p>
<p>
Powered by <a href="http://www.10ss.info" target="_blank"><strong>ͬ�ǽ��Ѱ��鹫Ԣ</strong></a> <!--<span title="<?php echo X_RELEASE; ?>"><?php echo X_VER; ?></span>-->
<?php if(!empty($_SCONFIG['licensed'])) { ?><!--<a  href="http://license.comsenz.com/?pid=7&host=<?=$_SERVER['HTTP_HOST']?>" target="_blank">Licensed</a>--><?php } ?>
&copy; 2008-2011 <a  href="http://www.10ss.info" target="_blank">10ss.info  </a>��վ����ά����<a href="http://www.10ss.info" target="_blank">ͬ�ǽ���</a> 
<script src="http://s11.cnzz.com/stat.php?id=3401980&web_id=3401980&show=pic" language="JavaScript"></script>
  </p>
<p>
��������ͬ�ǽ��Ѱ��鹫Ԣ��10ss�������ṩͬ�ǽ��Ѱ��鹫Ԣ�����ˡ�ͬ�ǻ����������ȫ����רҵ��ͬ�ǽ���ƽ̨�����л�Ա��ֹ�ڱ�վ�����κ�ɫ����Ϣ��</p>
</div>

</div>
</body>
</html>
</body></noframes>
</html>
<?php } ?><?php ob_out();?>