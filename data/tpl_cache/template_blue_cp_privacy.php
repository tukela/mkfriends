<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/cp_privacy|template/blue/header|template/blue/cp_header|template/blue/footer', '1318238441', 'template/blue/cp_privacy');?><?php if(empty($_SGLOBAL['inajax'])) { ?>
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
<a href="cp.php?ac=privacy"<?=$cat_actives['base']?>>��˽����</a><span class="pipe">|</span>
<a href="cp.php?ac=privacy&op=view"<?=$cat_actives['view']?>>��̬ɸѡ</a>
</div>


<form method="post" action="cp.php?ac=privacy" class="c_form">

<?php if(empty($_GET['op'])) { ?>
<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>������˽����</h2>
<p>�������ȫ������Щ�˿��Կ��������ҳ���������</p>
</caption>
<tr>
<th width="150">������ҳ</th>
<td><select name="privacy[view][index]">
<option value="0"<?=$sels['view']['index']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['index']['1']?>>�����ѿɼ�</option>
<option value="2"<?=$sels['view']['index']['2']?>>���Լ��ɼ�</option>
</select></td>
</tr>
<tr>
<th>�����б�</th>
<td><select name="privacy[view][friend]">
<option value="0"<?=$sels['view']['friend']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['friend']['1']?>>�����ѿɼ�</option>
<option value="2"<?=$sels['view']['friend']['2']?>>���Լ��ɼ�</option>
</select></td>
</tr>
<tr>
<th>���԰�</th>
<td><select name="privacy[view][wall]">
<option value="0"<?=$sels['view']['wall']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['wall']['1']?>>�����ѿɼ�</option>
<option value="2"<?=$sels['view']['wall']['2']?>>���Լ��ɼ�</option>
</select></td>
</tr>
<tr>
<th>���˶�̬</th>
<td><select name="privacy[view][feed]">
<option value="0"<?=$sels['view']['feed']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['feed']['1']?>>�����ѿɼ�</option>
</select></td>
</tr>
<tr>
<th>��¼</th>
<td><select name="privacy[view][doing]">
<option value="0"<?=$sels['view']['doing']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['doing']['1']?>>�����ѿɼ�</option>
</select>
</td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">
����˽���ý��������û��鿴����ҳʱ��Ч��
<br>��ȫվ�ļ�¼�б��п��ܻ�������ļ�¼��
</td>
</tr>
<tr>
<th>��־</th>
<td><select name="privacy[view][blog]">
<option value="0"<?=$sels['view']['blog']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['blog']['1']?>>�����ѿɼ�</option>
</select>
</td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">����˽���ý��������û��鿴����ҳʱ��Ч��
<br>������Ȩ����Ҫ��ÿƪ��־�е������÷�����ȫ��Ч��
</td>
</tr>
<tr>
<th>���</th>
<td><select name="privacy[view][album]">
<option value="0"<?=$sels['view']['album']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['album']['1']?>>�����ѿɼ�</option>
</select>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">����˽���ý��������û��鿴����ҳʱ��Ч��
<br>������Ȩ����Ҫ��ÿ������е������÷�����ȫ��Ч��</td>
</tr>
<tr>
<th>����</th>
<td><select name="privacy[view][share]">
<option value="0"<?=$sels['view']['share']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['share']['1']?>>�����ѿɼ�</option>
</select></td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">
����˽���ý��������û��鿴����ҳʱ��Ч��
<br>��ȫվ�ķ����б��п��ܻ�������ķ���
</td>
</tr>
<tr>
<th>�</th>
<td><select name="privacy[view][event]">
<option value="0"<?=$sels['view']['event']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['event']['1']?>>�����ѿɼ�</option>
</select></td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">
����˽���ý��������û��鿴����ҳʱ��Ч��
</td>
</tr>
<tr>
<th>ͶƱ</th>
<td><select name="privacy[view][poll]">
<option value="0"<?=$sels['view']['poll']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['poll']['1']?>>�����ѿɼ�</option>
</select></td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">
����˽���ý��������û��鿴����ҳʱ��Ч��
</td>
</tr>
<tr>
<th>Ⱥ��</th>
<td><select name="privacy[view][mtag]">
<option value="0"<?=$sels['view']['mtag']['0']?>>ȫվ�û��ɼ�</option>
<option value="1"<?=$sels['view']['mtag']['1']?>>�����ѿɼ�</option>
<option value="2"<?=$sels['view']['mtag']['2']?>>���Լ��ɼ�</option>
</select></td>
</tr>
<?php if($_SCONFIG['videophoto'] && $space['videostatus']) { ?>
<tr>
<th></th>
<td><img src="image/videophoto.gif" align="absmiddle"> ���Ѿ�ͨ����Ƶ��֤������û��ͨ����Ƶ��֤���û����������������Ȩ�ޣ�</td>
</tr>
<tr>
<th>�鿴�ҵ���֤��Ƭ</th>
<td><select name="privacy[view][videoviewphoto]">
<option value="0"<?=$sels['view']['videoviewphoto']['0']?>>վ��Ĭ������</option>
<option value="1"<?=$sels['view']['videoviewphoto']['1']?>>����</option>
<option value="2"<?=$sels['view']['videoviewphoto']['2']?>>��ֹ</option>
</select></td>
</tr>
<tr>
<th>�����������</th>
<td><select name="privacy[view][videofriend]">
<option value="0"<?=$sels['view']['videofriend']['0']?>>վ��Ĭ������</option>
<option value="1"<?=$sels['view']['videofriend']['1']?>>����</option>
<option value="2"<?=$sels['view']['videofriend']['2']?>>��ֹ</option>
</select></td>
</tr>
<tr>
<th>���Ҵ��к�</th>
<td><select name="privacy[view][videopoke]">
<option value="0"<?=$sels['view']['videopoke']['0']?>>վ��Ĭ������</option>
<option value="1"<?=$sels['view']['videopoke']['1']?>>����</option>
<option value="2"<?=$sels['view']['videopoke']['2']?>>��ֹ</option>
</select></td>
</tr>
<tr>
<th>��������</th>
<td><select name="privacy[view][videowall]">
<option value="0"<?=$sels['view']['videowall']['0']?>>վ��Ĭ������</option>
<option value="1"<?=$sels['view']['videowall']['1']?>>����</option>
<option value="2"<?=$sels['view']['videowall']['2']?>>��ֹ</option>
</select></td>
</tr>
<tr>
<th>�����ҵ���Ϣ</th>
<td><select name="privacy[view][videocomment]">
<option value="0"<?=$sels['view']['videocomment']['0']?>>վ��Ĭ������</option>
<option value="1"<?=$sels['view']['videocomment']['1']?>>����</option>
<option value="2"<?=$sels['view']['videocomment']['2']?>>��ֹ</option>
</select></td>
</tr>
<?php } ?>
<tr>
<th>&nbsp;</th>
<td><input type="submit" name="privacysubmit" value="��������" class="submit"></td>
</tr>
</table>

<table cellspacing="0" cellpadding="0" class="formtable" id="feed">
<caption>
<h2>���˶�̬��������</h2>
<p>ϵͳ�Ὣ���ĸ������ӳ�����˶�̬����������˽���Ķ�̬��<br>����Կ����Ƿ������ж�������ʱ���ڸ��˶�̬�﷢�������Ϣ</p>
</caption>
<tr>
<th width="150">&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][doing]" value="1"<?=$sels['feed']['doing']?>>��¼</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][blog]" value="1"<?=$sels['feed']['blog']?>>׫д��־</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][upload]" value="1"<?=$sels['feed']['upload']?>>�ϴ�ͼƬ</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][share]" value="1"<?=$sels['feed']['share']?>>��ӷ���</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][poll]" value="1"<?=$sels['feed']['poll']?>>����ͶƱ</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][joinpoll]" value="1"<?=$sels['feed']['joinpoll']?>>����ͶƱ</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][thread]" value="1"<?=$sels['feed']['thread']?>>������</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][post]" value="1"<?=$sels['feed']['post']?>>�Ի���ظ�</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][mtag]" value="1"<?=$sels['feed']['mtag']?>>����Ⱥ��</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][event]" value="1"<?=$sels['feed']['event']?>>����</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][join]" value="1"<?=$sels['feed']['join']?>>�μӻ</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][friend]" value="1"<?=$sels['feed']['friend']?>>��Ӻ���</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][comment]" value="1"<?=$sels['feed']['comment']?>>��������/����</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][show]" value="1"<?=$sels['feed']['show']?>>��������</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][credit]" value="1"<?=$sels['feed']['credit']?>>��������</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][invite]" value="1"<?=$sels['feed']['invite']?>>�������</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][task]" value="1"<?=$sels['feed']['task']?>>�������</td>
</tr>				
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][profile]" value="1"<?=$sels['feed']['profile']?>>���¸�������</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][click]" value="1"<?=$sels['feed']['click']?>>����־/ͼƬ/�����̬</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="submit" name="privacysubmit" value="��������" class="submit"></td>
</tr>
</table>

<?php } else { ?>
<?php $iconnames['activity'] = '��־';
			$iconnames['album'] = '���';
			$iconnames['blog'] = '��־';
			$iconnames['comment'] = '����';
			$iconnames['blogcomment'] = '��־����';
			$iconnames['clickblog'] = '��־��̬';
			$iconnames['clickpic'] = 'ͼƬ��̬';
			$iconnames['clickthread'] = '�����̬';
			$iconnames['piccomment'] = 'ͼƬ����';
			$iconnames['sharecomment'] = '��������';
			$iconnames['debate'] = '��̳����';
			$iconnames['discuz'] = '��̳';
			$iconnames['doing'] = '��¼';
			$iconnames['friend'] = '����';
			$iconnames['goods'] = '��Ʒ';
			$iconnames['mood'] = '����';
			$iconnames['mtag'] = 'Ⱥ��';
			$iconnames['event'] = '�';
			$iconnames['eventcomment'] = '�����';
			$iconnames['eventmember'] = '���Ա����';
			$iconnames['eventmemberstatus'] = '���Ա���';
			$iconnames['network'] = '��㿴��';
			$iconnames['poll'] = '��̳ͶƱ';
			$iconnames['post'] = '��̳����';
			$iconnames['profile'] = '���¸�������';
			$iconnames['reward'] = '��̳����';
			$iconnames['share'] = '����';
			$iconnames['sharenotice'] = '����֪ͨ';
			$iconnames['show'] = '���а�';
			$iconnames['task'] = '�н�����';
			$iconnames['thread'] = '����';
			$iconnames['post'] = '����ظ�';
			$iconnames['video'] = '��Ƶ';
			$iconnames['wall'] = '����';
			$iconnames['credit'] = '���;��ۻ���';
			$iconnames['poll'] = 'ͶƱ';
			$iconnames['pollcomment'] = 'ͶƱ����';
			$iconnames['pollinvite'] = 'ͶƱ����'; ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>ɸѡ����һ������ָ���û���Ķ�̬</h2>
<p>����Ծ���������Щ�û���Ķ�̬�������û����ڵ���Ա�������Ķ�̬���������ε���</p>
</caption>
<?php if(is_array($groups)) { foreach($groups as $key => $value) { ?>
<tr>
<th width="150">&nbsp;</th>
<td><input type="checkbox" name="privacy[filter_gid][<?=$key?>]" value="<?=$key?>"<?php if(isset($space['privacy']['filter_gid'][$key])) { ?> checked<?php } ?>>
<?=$value?></td>
</tr>
<?php } } ?>
<tr>
<th>&nbsp;</th>
<td>
<input type="submit" name="privacy2submit" value="��������" class="submit">
<br>���������Լ���<a href="space.php?do=friend">�����б�</a>�У��Ժ��ѽ��з��飬�����Զ��û�����и�����
</td>
</tr>
</table>
<br>
<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>ɸѡ�����������ָ������ָ�����͵Ķ�̬</h2>
<p>���һ����ҳ���Ѷ�̬�б��������α�־���Ϳ�������ָ������ָ�����͵Ķ�̬�ˡ�<br>�����г��������Ѿ����εĶ�̬����ʶ�����ͺ������������ѡ���Ƿ�ȡ�����Ρ�</p>
</caption>
<?php if($icons) { ?>

<tr>
<th width="150">&nbsp;</th>
<td>
<ul>
<?php if(is_array($icons)) { foreach($icons as $key => $icon) { ?>
<?php $uid = $uids[$key];$icon_uid="$icon|$uid"; ?>
<li>
<?php if(is_numeric($icon)) { ?>
<img src="http://appicon.manyou.com/icons/<?=$icon?>" align="absmiddle">
<?php } else { ?>
<img src="image/icon/<?=$icon?>.gif" align="absmiddle">
<?php } ?>
<input type="checkbox" name="privacy[filter_icon][<?=$icon_uid?>]" value="1" checked> 
<span class="type_<?=$icon?>"> <?php if(isset($iconnames[$icon])) { ?><?=$iconnames[$icon]?><?php } else { ?><?=$icon?><?php } ?> (<?php if($users[$uid]) { ?><a href="space.php?uid=<?=$uid?>" target="_blank"><?=$users[$uid]?></a><?php } else { ?>���к���<?php } ?>)</span>
</li>
<?php } } ?>
</ul>
</td>
</tr>
<tr>
<th>&nbsp;</th>
<td>
<input type="submit" name="privacy2submit" value="��������" class="submit">
</td>
</tr>
<?php } else { ?>
<tr>
<th width="150">&nbsp;</th>
<td>���ڻ�û�����εĶ�̬����</td>
</tr>
<?php } ?>
</table>
<br>
<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>ɸѡ������������ָ������ָ�����͵�֪ͨ</h2>
<p>���һ��֪ͨ�б��������α�־���Ϳ�������ָ������ָ�����͵�֪ͨ�ˡ�<br>�����г��������Ѿ����ε�֪ͨ���ͺͺ������������ѡ���Ƿ�ȡ�����Ρ�</p>
</caption>
<?php if($types) { ?>

<tr>
<th width="150">&nbsp;</th>
<td>
<ul>
<?php if(is_array($types)) { foreach($types as $key => $type) { ?>
<?php $uid = $uids[$key];$type_uid="$type|$uid"; ?>
<li>
<input type="checkbox" name="privacy[filter_note][<?=$type_uid?>]" value="1" checked>
<span class="type_<?=$type?>"> <?php if(isset($iconnames[$type])) { ?><?=$iconnames[$type]?><?php } else { ?><?=$type?><?php } ?> (<?php if($users[$uid]) { ?><a href="space.php?uid=<?=$uid?>" target="_blank"><?=$users[$uid]?></a><?php } else { ?>���к���<?php } ?>)</span>
</li>
<?php } } ?>
</ul>
</tr>
<tr>
<th>&nbsp;</th>
<td>
<input type="submit" name="privacy2submit" value="��������" class="submit">
</td>
</tr>
<?php } else { ?>
<tr>
<th width="150">&nbsp;</th>
<td>���ڻ�û�����ε�֪ͨ����</td>
</tr>
<?php } ?>
</table>
<?php } ?>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>


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