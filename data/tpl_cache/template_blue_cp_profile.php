<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/cp_profile|template/blue/header|template/blue/cp_header|template/blue/footer', '1318212727', 'template/blue/cp_profile');?><?php if(empty($_SGLOBAL['inajax'])) { ?>
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
<h2 class="title"><img src="image/icon/profile.gif">��������</h2>
<div class="tabs_header">
<a href="cp.php?ac=advance" class="r_option">&raquo; �߼�����</a>
<ul class="tabs">
<li<?=$actives['profile']?>><a href="cp.php?ac=profile"><span>��������</span></a></li>
<li<?=$actives['avatar']?>><a href="cp.php?ac=avatar"><span>�ҵ�ͷ��</span></a></li>
<?php if($_SCONFIG['videophoto']) { ?>
<li<?=$actives['videophoto']?>><a href="cp.php?ac=videophoto"><span>��Ƶ��֤</span></a></li>
<?php } ?>
<li<?=$actives['credit']?>><a href="cp.php?ac=credit"><span>�ҵĻ���</span></a></li>
<?php if($_SCONFIG['allowdomain'] && $_SCONFIG['domainroot'] && checkperm('domainlength')) { ?>
<li<?=$actives['domain']?>><a href="cp.php?ac=domain"><span>�ҵ�����</span></a></li>
<?php } ?>
<?php if($_SCONFIG['sendmailday']) { ?>
<li<?=$actives['sendmail']?>><a href="cp.php?ac=sendmail"><span>�ʼ�����</span></a></li>
<?php } ?>
<li<?=$actives['privacy']?>><a href="cp.php?ac=privacy"><span>��˽ɸѡ</span></a></li>
<li<?=$actives['theme']?>><a href="cp.php?ac=theme"><span>���Ի�����</span></a></li>
</ul>
</div>

<div class="l_status c_form">
<a href="cp.php?ac=profile&op=base"<?=$cat_actives['base']?>>��������</a><span class="pipe">|</span>
<a href="cp.php?ac=profile&op=contact"<?=$cat_actives['contact']?>>��ϵ��ʽ</a><span class="pipe">|</span>
<a href="cp.php?ac=profile&op=edu"<?=$cat_actives['edu']?>>�������</a><span class="pipe">|</span>
<a href="cp.php?ac=profile&op=work"<?=$cat_actives['work']?>>�������</a><span class="pipe">|</span>
<a href="cp.php?ac=profile&op=info"<?=$cat_actives['info']?>>������Ϣ</a>
</div>

<?php $farr = array(0=>'ȫ�û�','1'=>'������','3'=>'���Լ�'); ?>
<form method="post" action="<?=$theurl?>&ref" class="c_form">

<?php if($_GET['op'] == 'base') { ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<tr>
<th style="width:10em;">���ĵ�¼�û���:</th>
<td>
<?php echo stripslashes($space['username']); ?> (<a href="cp.php?ac=password">�޸ĵ�¼����</a>)
</td>
<td></td>
</tr>
<?php if(!$_SCONFIG['realname']) { ?>
<tr>
<th style="width:10em;">��ʵ����:</th>
<td>
<input type="text" id="name" name="name" value="<?php echo stripslashes($space['name']); ?>" class="t_input" />
</td>
<td>&nbsp;</td>
</tr>
<?php } else { ?>
<tr>
<th style="width:10em;">��ʵ����:</th>
<td>
<?php if($space['name'] && empty($_GET['namechange'])) { ?>
<span style="font-weight:bold;"><?php echo stripslashes($space['name']); ?></span>
<?php if($_SCONFIG['namechange']) { ?>[<a href="<?=$theurl?>&namechange=1">�޸�</a>]<?php } ?>
<?php if($space['namestatus']) { ?>[<font color="red">��֤ͨ��</font>]<?php } else { ?><br>�ȴ���֤�У���Ŀǰ��ֻ��ʹ���û���������һЩ�������ܻ��ܵ�����<?php } ?>
<input type="hidden" name="name" value="<?php echo stripslashes($space['name']); ?>" />
<?php } else { ?>
<?php if($rncredit && $_GET['namechange']) { ?><img src="image/credit.gif" align="absmiddle"> ��������Ҫ֧������ <?=$rncredit?> ���������ڵĻ��� <?=$space['credit']?> ����<br><?php } ?>
<?php if(empty($_SCONFIG['namechange'])) { ?>������ʵ����һ��ȷ�ϣ������������ٴ��޸ģ�����ʵ��д��<br><?php } ?>
<?php if($_SCONFIG['namecheck']) { ?>����д/�޸���ʵ��������Ҫ�ȴ�������֤�������Ч������֤ͨ��֮ǰ������ֻ��ʹ���û���������һЩ�������ܻ��ܵ����ơ�<br><?php } ?>
<input type="text" id="name" name="name" value="<?php echo stripslashes($space['name']); ?>" class="t_input" /> (������2��5������)
<?php } ?>
</td>
<td>&nbsp;</td>
</tr>
<?php } ?>
<tr>
<th style="width:10em;">�Ա�:</th>
<td>
<?php if(empty($space['sex'])) { ?>
<label for="sexm"><input id="sexm" type="radio" value="1" name="sex"<?=$sexarr['1']?> />��</label> 
<label for="sexw"><input name="sex" type="radio" id="sexw" value="2" checked="checked"<?=$sexarr['2']?> />
Ů</label>
<span style="font-weight:bold;color:red;">(�Ա�ѡ��ȷ���󣬽������ٴ��޸�)</span>
<?php } else { ?>
<?php if($space['sex']==1) { ?>��<?php } else { ?>Ů<?php } ?>
<?php } ?>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<th style="width:10em;">����״̬:</th>
<td>
<select id="marry" name="marry">
<option value="0">&nbsp;</option>
<option value="1" selected="selected"<?=$marryarr['1']?>>����</option>
<option value="2"<?=$marryarr['2']?>>�ǵ���</option>
                        <option value="3"<?=$marryarr['3']?>>���޽���</option>
</select>
<a href="cp.php?ac=friend&op=search&view=sex" target="_blank">&raquo; ������Ů����</a>
</td>
<td>
<select name="friend[marry]">
<option value="0"<?=$friendarr['marry']['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friendarr['marry']['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friendarr['marry']['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<tr>
<th>����:</th>
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
<a href="cp.php?ac=friend&op=search&view=birthyear" target="_blank">&raquo; ����ͬ��������</a>
</td>
<td>
<select name="friend[birth]">
<option value="0"<?=$friendarr['birth']['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friendarr['birth']['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friendarr['birth']['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<tr>
<th>Ѫ��:</th>
<td>
<select id="blood" name="blood">
<option value="">&nbsp;</option>
<?=$bloodhtml?>

</select>
</td>
<td>
<select name="friend[blood]">
<option value="0"<?=$friendarr['blood']['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friendarr['blood']['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friendarr['blood']['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<tr>
<th>����:</th>
<td id="birthcitybox">
<script type="text/javascript" src="source/script_city.js"></script>
<script type="text/javascript">
<!--
showprovince('birthprovince', 'birthcity', '<?=$space['birthprovince']?>', 'birthcitybox');
showcity('birthcity', '<?=$space['birthcity']?>', 'birthprovince', 'birthcitybox');

//-->
</script>
<a href="cp.php?ac=friend&op=search&view=birth" target="_blank">&raquo; ��������</a>
</td>
<td>
<select name="friend[birthcity]">
<option value="0"<?=$friendarr['birthcity']['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friendarr['birthcity']['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friendarr['birthcity']['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<tr>
<th>��ס��:</th>
<td id="residecitybox">
<script type="text/javascript">
<!--
showprovince('resideprovince', 'residecity', '<?=$space['resideprovince']?>', 'residecitybox');
showcity('residecity', '<?=$space['residecity']?>', 'resideprovince', 'residecitybox');
//-->
</script>
<a href="cp.php?ac=friend&op=search&view=reside" target="_blank">&raquo; ����ͬ��</a>
</td>
<td>
<select name="friend[residecity]">
<option value="0"<?=$friendarr['residecity']['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friendarr['residecity']['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friendarr['residecity']['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<?php if(is_array($profilefields)) { foreach($profilefields as $value) { ?>
<tr>
<th><?=$value['title']?><?php if($value['required']) { ?>*<?php } ?>:</th>
<td>
<?=$value['formhtml']?>
<?php if($value['note']) { ?> <span class="gray"><?=$value['note']?></span><?php } ?>
</td>
<td>
<select name="friend[field_<?=$value['fieldid']?>]">
<?php $field_friendarr = $friendarr["field_$value[fieldid]"]; ?>
<option value="0"<?=$field_friendarr['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$field_friendarr['1']?>>�����ѿɼ�</option>
<option value="3"<?=$field_friendarr['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<?php } } ?>

<tr>
<th style="width:10em;">&nbsp;</th>
<td>
<input type="submit" name="nextsubmit" value="������һ��" class="submit" />
<input type="submit" name="profilesubmit" value="����" class="submit" />
</td>
<td>&nbsp;</td>
</tr>
</table>

<?php } elseif($_GET['op'] == 'contact') { ?>

<table cellspacing="0" cellpadding="0" class="formtable">

<?php if($_GET['editemail']) { ?>
</table>

<div class="borderbox">
<table cellspacing="0" cellpadding="0" class="formtable">
<tbody>
<tr>
<th style="width:10em;">����վ�ĵ�¼����:</th>
<td>
<input type="password" id="password" name="password" value="" class="t_input" />
<br>Ϊ�������˺Ű�ȫ�������������ʱ����Ҫ�������ڱ���վ�����롣
</td>
<td></td>
</tr>
<tr>
<th style="width:10em;">������:</th>
<td>
<input type="text" id="email" class="t_input" name="email" value="<?=$space['email']?>" />
<?php if($space['emailcheck']) { ?>
<br>ע�⣺����д������ֻ������֤����֮�󣬲ſ�����Ч��
<?php } ?>
</td>
<td></td>
</tr>
</tbody>
</table>
</div><br>

<table cellspacing="0" cellpadding="0" class="formtable">
<?php } else { ?>
<?php if(!$space['email']) { ?>
<tr>
<th style="width:10em;">����վ�ĵ�¼����:</th>
<td>
<input type="password" id="password" name="password" value="" class="t_input" />
<br>Ϊ�������˺Ű�ȫ����д�����ʱ����Ҫ�������ڱ���վ�����롣
</td>
<td></td>
</tr>
<?php } ?>
<tr>
<th style="width:10em;">��������:</th>
<td>
<?php if($space['email']) { ?>
<?=$space['email']?><br>
<?php if($space['emailcheck']) { ?>
��ǰ�����Ѿ���֤���� (<a href="<?=$theurl?>&editemail=1">����</a>)
<?php } else { ?>
����ȴ���֤��...<br>
ϵͳ�Ѿ�������䷢����һ����֤�����ʼ���������ʼ���������֤���<br>
���û���յ���֤�ʼ���������<a href="<?=$theurl?>&editemail=1">����һ������</a>������<a href="<?=$theurl?>&resend=1">���½�����֤�ʼ�</a>
<?php } ?>
<?php } else { ?>
<input type="text" id="email" class="t_input" name="email" value="" />
<br>��׼ȷ��д��ȡ�����롢��ȡ֪ͨ��ʱ�򶼻ᷢ�͵������䡣
<br>ϵͳͬʱ��������䷢��һ����֤�����ʼ�����ע����ա�<br>
<?php } ?>
<?php if($space['newemail']) { ?>
<p>��Ҫ�����������䣺<strong><?=$space['newemail']?></strong> ��Ҫ���������滻��ǰ���䲢��Ч��<br>
���û���յ���֤�ʼ���������<a href="<?=$theurl?>&resend=1">���½�����֤�ʼ�</a></p>
<?php } ?>
</td>
<td></td>
</tr>
<?php } ?>
<tr>
<th style="width:10em;">�ֻ�:</th>
<td>
<input type="text" class="t_input" name="mobile" value="<?=$space['mobile']?>" /> 
</td>
<td>
<select name="friend[mobile]">
<option value="0"<?=$friendarr['mobile']['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friendarr['mobile']['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friendarr['mobile']['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<tr>
<th style="width:10em;">QQ:</th>
<td>
<input type="text" class="t_input" name="qq" value="<?=$space['qq']?>" /> 
</td>
<td>
<select name="friend[qq]">
<option value="0"<?=$friendarr['qq']['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friendarr['qq']['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friendarr['qq']['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<tr>
<th>MSN:</th>
<td>
<input type="text" class="t_input" name="msn" value="<?=$space['msn']?>" /> 
</td>
<td>
<select name="friend[msn]">
<option value="0"<?=$friendarr['msn']['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friendarr['msn']['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friendarr['msn']['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>

<tr>
<th style="width:10em;">&nbsp;</th>
<td>
<input type="submit" name="nextsubmit" value="������һ��" class="submit" />
<input type="submit" name="profilesubmit" value="����" class="submit" />
</td>
<td>&nbsp;</td>
</tr>
</table>

<?php } elseif($_GET['op'] == 'edu') { ?>

<?php if($list) { ?>
<table cellspacing="0" cellpadding="0" class="listtable">
<tr class="title">
<td>ѧУ/�༶��Ժϵ</td>
<td>��ѧ���</td>
<td>��˽����</td>
<td>����</td>
</tr>
<?php if(is_array($list)) { foreach($list as $key => $value) { ?>
<?php if($key%2==1) { ?><tr class="line"><?php } else { ?><tr><?php } ?>
<td><?=$value['title']?><br><?=$value['subtitle']?></td>
<td><?=$value['startyear']?></td>
<td><?=$farr[$value['friend']]?></td>
<td><a href="<?=$theurl?>&subop=delete&infoid=<?=$value['infoid']?>">ɾ����Ϣ</a><br><a href="cp.php?ac=friend&op=search&searchmode=1&type=edu&title=<?=$value['title_s']?>" target="_blank">Ѱ��ͬѧ</a></td>
</tr>
<?php } } ?>
</table>
<br>
<?php } ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<?php if($list) { ?>
<caption>
<h2>�����ѧУ</h2>
</caption>
<?php } ?>
<tbody id="oldtbody">
<tr>
<th style="width:10em;">ѧУ����:</th>
<td>
<input type="text" name="title[]" value="" class="t_input">
</td>
</tr>
<tr>
<th>�༶��Ժϵ:</th>
<td>
<input type="text" name="subtitle[]" value="" class="t_input">
</td>
</tr>
<tr>
<th>��ѧ���:</th>
<td>
<select name="startyear[]">
<?=$yearhtml?>
</select> ��
</td>
</tr>
<tr>
<th>��˽����:</th>
<td>
<select name="friend[]">
<option value="0">ȫ�û��ɼ�</option>
<option value="1">�����ѿɼ�</option>
<option value="3">���Լ��ɼ�</option>
</select>
</td>
</tr>
</tbody>

<tbody id="newtbody"></tbody>

<tr>
<th style="width:10em;">&nbsp;</th>
<td><a href="javascript:;" onclick="add_tbody();">����µ�ѧУ��Ϣ</a></td>
</tr>
<tr>
<th style="width:10em;">&nbsp;</th>
<td>
<input type="submit" name="nextsubmit" value="������һ��" class="submit" />
<input type="submit" name="profilesubmit" value="����" class="submit" /></td>
</tr>
</table>

<?php } elseif($_GET['op'] == 'work') { ?>


<?php if($list) { ?>
<table cellspacing="0" cellpadding="0" class="listtable">
<tr class="title">
<td>��˾�����/����</td>
<td>����ʱ��</td>
<td>��˽����</td>
<td>����</td>
</tr>
<?php if(is_array($list)) { foreach($list as $key => $value) { ?>
<?php if($key%2==1) { ?><tr class="line"><?php } else { ?><tr><?php } ?>
<td><?=$value['title']?><br><?=$value['subtitle']?></td>
<td>
<?=$value['startyear']?>��<?=$value['startmonth']?>�� ~ 
<?php if($value['endyear']) { ?><?=$value['endyear']?>��<?php } ?>
<?php if($value['endmonth']) { ?><?=$value['endmonth']?>��<?php } ?>
<?php if(!$value['endyear'] && !$value['endmonth']) { ?>����<?php } ?>
</td>
<td><?=$farr[$value['friend']]?></td>
<td><a href="<?=$theurl?>&subop=delete&infoid=<?=$value['infoid']?>">ɾ����Ϣ</a><br><a href="cp.php?ac=friend&op=search&searchmode=1&type=work&title=<?=$value['title_s']?>" target="_blank">Ѱ��ͬ��</a></td>
</tr>
<?php } } ?>
</table>
<br>
<?php } ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<?php if($list) { ?>
<caption>
<h2>����¹�˾�����</h2>
</caption>
<?php } ?>
<tbody id="oldtbody">
<tr>
<th style="width:10em;">��˾�����:</th>
<td>
<input type="text" name="title[]" value="" class="t_input">
</td>
</tr>
<tr>
<th>����:</th>
<td>
<input type="text" name="subtitle[]" value="" class="t_input">
</td>
</tr>
<tr>
<th>����ʱ��:</th>
<td>
<select name="startyear[]">
<?=$yearhtml?>
</select> ��
<select name="startmonth[]">
<?=$monthhtml?>
</select> �� ~ 
<select name="endyear[]">
<option value="">����</option>
<?=$yearhtml?>
</select> ��
<select name="endmonth[]">
<option value=""></option>
<?=$monthhtml?>
</select>��
</td>
</tr>
<tr>
<th>��˽����:</th>
<td>
<select name="friend[]">
<option value="0">ȫ�û��ɼ�</option>
<option value="1">�����ѿɼ�</option>
<option value="3">���Լ��ɼ�</option>
</select>
</td>
</tr>
</tbody>

<tbody id="newtbody"></tbody>

<tr>
<th style="width:10em;">&nbsp;</th>
<td><a href="javascript:;" onclick="add_tbody();">����µĹ�˾�����</a></td>
</tr>
<tr>
<th style="width:10em;">&nbsp;</th>
<td>
<input type="submit" name="nextsubmit" value="������һ��" class="submit" />
<input type="submit" name="profilesubmit" value="����" class="submit" /></td>
</tr>
</table>

<?php } elseif($_GET['op'] == 'info') { ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<?php $infoarr = array(
	'trainwith' => '����ύ',
	'interest' => '��Ȥ����',
	'book' => 'ϲ�����鼮',
	'movie' => 'ϲ���ĵ�Ӱ',
	'tv' => 'ϲ���ĵ���',
	'music' => 'ϲ��������',
	'game' => 'ϲ������Ϸ',
	'sport' => 'ϲ�����˶�',
	'idol' => 'ż��',
	'motto' => '������',
	'wish' => '�����Ը',
	'intro' => '�ҵļ��'
); ?>
<tr>
<th>��Ŀ</th>
<td>����</td>
<td>��˽����</td>
</tr>

<?php if(is_array($infoarr)) { foreach($infoarr as $key => $value) { ?>
<tr>
<th><?=$value?>:</th>
<td>
<textarea name="info[<?=$key?>]" rows="3" cols="50"><?=$list[$key]['title']?></textarea>
</td>
<td>
<select name="info_friend[<?=$key?>]">
<option value="0"<?=$friends[$key]['0']?>>ȫ�û��ɼ�</option>
<option value="1"<?=$friends[$key]['1']?>>�����ѿɼ�</option>
<option value="3"<?=$friends[$key]['3']?>>���Լ��ɼ�</option>
</select>
</td>
</tr>
<?php } } ?>

<tr>
<th style="width:10em;">&nbsp;</th>
<td><input type="submit" name="profilesubmit" value="����" class="submit" /></td>
</tr>
</table>
<?php } ?>


<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>

<script>
function add_tbody() {
for(i=0; i<$("oldtbody").rows.length; i++) {
newnode = $("oldtbody").rows[i].cloneNode(true);
$("newtbody").appendChild(newnode);
}
}
</script>

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