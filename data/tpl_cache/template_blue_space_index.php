<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/space_index|template/blue/header|template/blue/space_comment_li|template/blue/footer', '1318212723', 'template/blue/space_index');?><?php $_TPL['nosidebar']=1; ?>
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
 
<?php if($narrowlist || $widelist) { ?>
<script type="text/javascript" src="source/script_swfobject.js"></script>
<?php } ?>
 
<script type="text/javascript"> 
function Ajax() {
this.xmlhttp = false;
if(window.XMLHttpRequest) { 
this.xmlhttp = new XMLHttpRequest();
if (this.xmlhttp.overrideMimeType)
this.xmlhttp.overrideMimeType("text/xml");
}
else if (window.ActiveXObject) {
try {
this.xmlhttp = new ActiveXObject("Msxml2.XMLHTTP.3.0");
} catch (e) {
try {
this.xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
} catch (e) {}
}
}
this.GetData = function(url, obj) {
var self = this;
if(!this.xmlhttp) { alert("�������֧��XMLHTTP���������������"); return; }
this.xmlhttp.onreadystatechange = function() {
if (self.xmlhttp.readyState == 4) {
    if(typeof obj == "function")
    {
        obj(self.xmlhttp.responseText);
    }
    else if($(obj))
    {
if (self.xmlhttp.status == 200)
$(obj).innerHTML = self.xmlhttp.responseText;
else
$(obj).innerHTML = "����ʧ��";
    }
}
}
this.xmlhttp.open("GET", url, true);
this.xmlhttp.setRequestHeader("If-Modified-Since", "0");
this.xmlhttp.send(null);
}
}
var $=function(tagName){return document.getElementById(tagName);}
function viewv(uid, type) {
(new Ajax()).GetData("/space_seeuid.php?uid="+uid+"&type="+type+"&"+Math.random(), SetNotice);
}
function viewvv(uid, type) {
(new Ajax()).GetData("/space_seeuid.php?uid="+uid+"&type="+type+"&"+Math.random()+"&c=1", SetNotice);
}
function view(uid, type) {
(new Ajax()).GetData("/space_seeuid.php?uid="+uid+"&type="+type+"&"+Math.random(), SetNotice);
}
function SetNotice(info) {
var noticeInfo = eval('(' + info + ')');
if(noticeInfo.qq) {
$("TipsQQ").innerHTML = noticeInfo.qq;
$("TipsQQ").style.display = "";
} else if(noticeInfo.email) {
$("TipsEmail").innerHTML = noticeInfo.email;
$("TipsEmail").style.display = "";
} else if(noticeInfo.mobile) {
$("TipsMobile").innerHTML = noticeInfo.mobile;
$("TipsMobile").style.display = "";
}
}
</script>
<style type="text/css">
<!--
.STYLE1 {
color: #FF0066;
font-weight: bold;
}
.STYLE11 {
color: #FF0099;
font-weight: bold;
}
-->
</style>



<div id="space_page">
 
<div id="ubar">
 
<div id="space_avatar">
<?php if($space['magicstar'] && $space['magicexpire']>$_SGLOBAL['timestamp']) { ?>
<div class="magicstar">
<object codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,45,0" width="200" height="250">
<param name="movie" value="image/magic/star/<?=$space['magicstar']?>.swf" />
<param name="quality" value="high" />
<param NAME="wmode" value="transparent">
<embed src="image/magic/star/<?=$space['magicstar']?>.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash"  wmode="transparent" width="200" height="250"></embed>
</object>
</div>

<div class="magicavatar"><?php } else { ?><div><?php } ?><?php echo avatar($space[uid],big,false,$space[sex_org]); ?></div>
</div>
 
<?php if($space['self'] && $_SGLOBAL['magic']['superstar']) { ?>
<div class="borderbox">
<div style="width:100%; overflow:hidden;">
<img src="image/magic/superstar.small.gif" class="magicicon" />
<a href="pay.php?pay=buyvip" target ="_blank">��Ҫ����VIP</a>			</div>
</div><br />
<?php } ?>
 
<div class="borderbox">
<ul class="spacemenu_list" style="width:100%; overflow:hidden;">
<?php if(!$space['isfriend']) { ?>
<li><img src="image/icon/friend.gif"><a href="cp.php?ac=friend&op=add&uid=<?=$space['uid']?>" id="a_friend_notice" onclick="ajaxmenu(event, this.id, 1)">��Ϊ����</a></li>
<?php } ?>
<!--<li><img src="image/icon/wall.gif"><a href="#comment" onclick="<?php if(checkperm('managespace') or ($_SCONFIG['viplookinfo'] == 1 and $vips['day'] > 0)) { ?>return true;<?php } else { ?>alert('��������VIP��Ա�޷���������Ա���ԣ������ȷ�������VIP����');window.open('pay.php?pay=buyvip');return false;<?php } ?>">��������</a></li>-->
<li><img src="image/icon/poke.gif"><a href="cp.php?ac=poke&op=send&uid=<?=$space['uid']?>" id="a_poke" onclick="ajaxmenu(event, this.id, 99999, '', -1)">����к�</a>
<li><img src="image/icon/pm.gif"><a href="cp.php?ac=pm&uid=<?=$space['uid']?>" id="a_pm" onclick="<?php if(checkperm('managespace') or ($_SCONFIG['viplookinfo'] == 1 and $vips['day'] > 0)) { ?>ajaxmenu(event, this.id, 1)<?php } else { ?>alert('��������VIP��Ա�޷�������Ϣ�������ȷ�������VIP����');window.open('pay.php?pay=buyvip');return false;<?php } ?>" onmouseover="window.status='';">վ������</a></li>
<li><img src="image/icon/report.gif"><a href="cp.php?ac=common&op=report&idtype=uid&id=<?=$space['uid']?>" id="a_report" onclick="ajaxmenu(event, this.id, 1)">Υ��ٱ�</a></li>
<?php if(checkperm('managename')||checkperm('managespacegroup')||checkperm('managespaceinfo')||checkperm('managespacecredit')||checkperm('managespacenote')) { ?>
<li><img src="image/icon/profile.gif"><a href="admincp.php?ac=space&op=manage&uid=<?=$space['uid']?>" id="a_manage">�����û�</a></li>
<?php } ?>
</ul>
</div><br />
<div class="borderbox">
<ul class="spacemenu_list" style="width:100%; overflow:hidden;">
            <li><img src="template/default/image/titit.gif"><A href="/template/default/faq.html" target="_BLANK">��������</A></li>
            <li><img src="template/default/image/titit.gif"><A href="/template/default/gl.html" target="_BLANK">���˹���</A></li>
            <li><img src="template/default/image/titit.gif"><A href="/template/default/mzsm.html" target="_BLANK">��������</A></li>
            <li><img src="template/default/image/titit.gif"><A href="/template/default/gy.html" target="_BLANK">���ɹ�Լ</A></li>
 			</ul>
</div>
       <br />
<div class="borderbox1">
        <a href="/pay.php?pay=buyvip" target="_blank"><img src="/image/vip.jpg" width="195" border="0"></img></a>  		</div>
       <br />
<div class="borderbox">
<ul class="spacemenu_list" style="width:100%; overflow:hidden;">
             �������ѣ�<br>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��վ��Ů��������10��1��Ůʿ�������ҵ����ˣ���ȻҪ�ǳ�����Ҳ��Ҫ������<br>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������õ���ʿ����ûϷ����ʿ����������ϵŮʿ���л��ᣬ��վ�ᳫ��QQ��ϵ��
</ul>
</div>
       <br />
<?php if($guidelist) { ?>
<div id="space_app_guide">
<h2>Ӧ�ò˵�</h2>
<ul class="line_list">
<?php if(is_array($guidelist)) { foreach($guidelist as $value) { ?>
<li id="space_app_profilelink_<?=$value['appid']?>">
<?php if($space['self']) { ?>
<a href="cp.php?ac=space&op=delete&appid=<?=$value['appid']?>&type=profilelink" id="user_app_profile_<?=$value['appid']?>" class="r_option float_del" style="position: static;" onclick="ajaxmenu(event, this.id)" title="ɾ��">ɾ��</a>
<?php } ?>
<img src="http://appicon.manyou.com/icons/<?=$value['appid']?>"><?php eval($value[profilelink]); ?>
</li>
<?php } } ?>
</ul>
</div>
<?php } ?>
 
<?php if(is_array($narrowlist)) { foreach($narrowlist as $value) { ?>
<div id="space_app_<?=$value['appid']?>">
<h2>
<?php if($space['self']) { ?>
<a href="cp.php?ac=space&op=delete&appid=<?=$value['appid']?>" id="user_app_<?=$value['appid']?>" class="r_option float_del" onclick="ajaxmenu(event, this.id)" title="ɾ��">ɾ��</a>
<?php } ?>
<a href="<?=$value['appurl']?>"><?=$value['appname']?></a>			</h2>
<?php if($value['myml']) { ?>
<div class="box">
<?php eval($value[myml]); ?>
</div>
<?php } ?>
</div>
<?php } } ?><!---->
</div>
 
<div id="content">
<div style=""></div>
<h3 id="spaceindex_name">
<?php if($_SCONFIG['realname']) { ?>
<?php if($space['name']) { ?><?php } ?>
<?php } ?>
<div class="r_option">
<?php if($_SGLOBAL['session']['magichidden']) { ?>��ǰ����<?php } else { ?>��ǰ����<?php } ?>
 
<?php if($_SGLOBAL['magic']['invisible']) { ?>
<?php if($_SGLOBAL['session']['magichidden']) { ?><?php } ?>
<?php } ?>
  </div>
 
<a href="space.php?uid=<?=$space['uid']?>"<?php g_color($space[groupid]); ?>><?=$_SN[$space['uid']]?></a>
<?php g_icon($space[groupid]); ?>
<a href="cp.php?ac=credit"></a></h3>
<div id="maincontent">
<div id="space_info">
<ul class="spacemenu_list">
<li>���� <?=$space['viewnum']?> ������<em>(����: <?=$space['name']?>)</em></li><li>&nbsp;</li>
<?php if($space['sex']) { ?>
<li><em>�Ա�:</em><?=$space['sex']?></li>
<?php } ?>
<?php if($space['birth']) { ?>
<li><em>����:</em><?=$space['birth']?></li>
        <li><em>Ѫ��:</em><?=$space['blood']?></li>
          <li><em>����:</em><?=$space['marry']?></li>
  <?php } ?>
      <?php if($space['height']) { ?>
<li><em>���:</em><?=$space['height']?></li>
  <?php } ?>
      <?php if($space['field_9']) { ?>
<li><em>ѧ��:</em><?=$space['field_11']?></li>
    <?php } ?>
      <?php if($space['field_8']) { ?>
<li><em>������:</em><?=$space['field_10']?></li>
    <?php } ?>
      <?php if($space['field_10']) { ?>
<li><em>ְҵ:</em><?=$space['field_12']?></li>
    <?php } ?>
      <?php if($space['residecity']) { ?>
<li><em>��ס:</em><?=$space['residecity']?></li>
  <?php } ?>
      <?php if($space['birthcity']) { ?>
<li><em>����:</em><?=$space['birthcity']?></li>
  <?php } ?>
<?php if($isonline) { ?>
<li><em>��Ծ:</em><?=$isonline?> (��ǰ����)</li>
<?php } ?>
<li><em>�ϴε�¼:</em>
      <?php if($space['lastlogin']) { ?>
  <?php echo sgmdate('Y-m-d',$space[lastlogin],1); ?>
  <?php } ?>
  </li>
</ul>
</div>
<br><br>

<div class="space_info1">
<h3 class="spaceindex_name"><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>�Ľ�������</h3>
<ul class="spacemenu_list">
<li><b><?php if($space['jymd']==0) { ?><?php if(empty($space['ask'])) { ?><?php } ?>
    </b><span class="STYLE11"><?=$space['field_9']?></span><b>
  <?php } else { ?>
  �����
  <?php } ?>
      </b></li>
</ul>
</div>
<br><br>
 
<div class="space_info1">
<h3 class="spaceindex_name"><font color="#999">��ϵ��ʽ</font></h3>
<ul class="spacemenu_list">
<?php if(checkperm('managespace') or $space['uid'] == $_SGLOBAL['supe_uid']) { ?>
<?php if($space['mobile']) { ?>
<li><em>�ֻ�:</em><?=$space['mobile']?></li>
<?php } ?>
<?php if($space['qq']) { ?>
<li><em>QQ��</em><?=$space['qq']?></li>
<?php } ?>
<?php if($space['email']) { ?>
<li><em>���䣺</em><?=$space['email']?></li>
<?php } ?>
<?php } elseif($space['vip'] == 1 and $space['sex_org'] == 1 and $a_sex == 2) { ?>
<?php if($space['mobile']) { ?>
<li><em>�ֻ�:</em><a href="#" onclick="$('TipsvMobile').style.display='';viewvv(<?=$space['uid']?>, 'mobile');">��Ѳ鿴</a>&nbsp;<span id="TipsvMobile" style='display:none;'><?=$space['mobile']?></span></li>
<?php } ?>
<?php if($space['qq']) { ?>
<li><em>QQ��</em><a href="#" onclick="$('TipsvQQ').style.display='';viewvv(<?=$space['uid']?>, 'qq');">��Ѳ鿴</a>&nbsp;<span id="TipsvQQ" style='display:none;'><?=$space['qq']?></span></li>
<?php } ?>
<?php if($space['email']) { ?>
<li><em>���䣺</em><a href="#" onclick="$('TipsvEmail').style.display='';viewvv(<?=$space['uid']?>, 'email');">��Ѳ鿴</a>&nbsp;<span id="TipsvEmail" style='display:none;'><?=$space['email']?></span></li>
<?php } ?>
<?php } else { ?>
<?php if($_SCONFIG['viplookinfo'] == 1 and $vips['day'] > 0) { ?>
<?php if($space['mobile']) { ?>
<li><em>�ֻ�:</em><a href="#" onclick="$('TipsvMobile').style.display='';viewv(<?=$space['uid']?>, 'mobile');">��Ѳ鿴</a>&nbsp;<span id="TipsvMobile" style='display:none;'><?=$space['mobile']?></span></li>
<?php } ?>
<?php if($space['qq']) { ?>
<li><em>QQ��</em><a href="#" onclick="$('TipsvQQ').style.display='';viewv(<?=$space['uid']?>, 'qq');">��Ѳ鿴</a>&nbsp;<span id="TipsvQQ" style='display:none;'><?=$space['qq']?></span></li>
<?php } ?>
<?php if($space['email']) { ?>
<li><em>���䣺</em><a href="#" onclick="$('TipsvEmail').style.display='';viewv(<?=$space['uid']?>, 'email');">��Ѳ鿴</a>&nbsp;<span id="TipsvEmail" style='display:none;'><?=$space['email']?></span></li>
<?php } ?>
<?php } elseif($_SGLOBAL['supe_uid']) { ?>
<li><em>�ֻ���</em>
<?php if($space['mobile']) { ?>
<?php if($viewed) { ?>
<?=$space['mobile']?>
<?php } else { ?>
<b>���� </b><a href="#" onclick="view(<?=$space['uid']?>, 'mobile');">�鿴</a>&nbsp;<span id="TipsMobile" style='display:none;'></span>
<?php } ?>
<?php } else { ?>
δ��
<?php } ?> </li>
<li><em>Q Q��</em>
<?php if($space['qq']) { ?>
<?php if($viewed) { ?>
<?=$space['qq']?>
<?php } else { ?>
<b>���� </b><a href="#" onclick="view(<?=$space['uid']?>, 'qq');">�鿴</a>&nbsp;<span id="TipsQQ" style='display:none;'></span>
<?php } ?>
<?php } else { ?>
δ��
<?php } ?></li>
<li><em>���䣺</em>
<?php if($space['email']) { ?>
<?php if($viewed) { ?>
<?=$space['email']?>
<?php } else { ?>
<b>���� </b><a href="#" onclick="view(<?=$space['uid']?>, 'email');">�鿴</a>&nbsp;<span id="TipsEmail" style='display:none;'></span>
<?php } ?>
<?php } else { ?>
δ��
<?php } ?></li>
<li>��ע��<font size="2">���Ľ����<span style="color:#FF0099;font-size:14px;"><strong><?=$space['credit']?></strong></span>�����鿴��ϵ��ʽ��֧��<span class="STYLE1">2</span>�𶹡�<span style="color:#FB03A9;"><a href="/pay.php?pay=buyvip" target="_blank">���𶹳�ֵ</a></span>&nbsp;&nbsp;<a href="/cp.php?ac=invite" target="_blank"><span style="color:#FB03A9;">���������׬��</span></a><br>
  VIP��Ա����Ѳ鿴��ϵ��ʽ��VIP��ʿ��ϵ��ʽ���Ա���Ů��ѿ���<a href="pay.php?pay=buyvip" target="_blank">����������VIP</a></font>              </li>
<?php } else { ?>
<li>����Ҫ<a href="do.php?ac=login">��¼</a>/<a href="do.php?ac=register">ע��</a>�ſ��Բ鿴��ϸ����</li>
<?php } ?>
<?php } ?>
</ul>
</div>
<br><br>

<?php if($dolist) { ?>
<div class="space_info1">
<h3 class="spaceindex_name"><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>�������¼</h3>
<ul class="spacemenu_list">
<?php if(is_array($dolist)) { foreach($dolist as $value) { ?>
<li>
<div class="detail">
<?=$value['message']?>				</div></li>
<?php } } ?>
</ul>
</div>
<br><br>
<?php } ?>
 
<div class="space_info1">
<h3 class="spaceindex_name"><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>�Ľ�������</h3>
<ul class="spacemenu_list">
<li><em><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>�Ľ���Ŀ��</em><em>��</em><strong>����һλͬ������</strong></li>
<li><em><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>Ը��Ϊ�Է��ṩ��</em><strong><?=$space['field_1']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>ϣ����ð�����</em><strong><?=$space['field_2']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>����ò��</em><strong><?=$space['field_3']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>�ĸ��ԣ�</em><strong><?=$space['field_4']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>�İ��ã�</em><strong><?=$space['field_8']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>���԰����</em><strong><?=$space['field_6']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='Ů') { ?>��<?php } else { ?>��<?php } ?>��һ�μ���ϣ����</em><strong><?=$space['field_7']?></strong></li>
</ul>
</div>
<br><br>
 
<?php if($albumlist) { ?>
<div id="space_photo">
<h3 class="feed_header">
<a href="space.php?uid=<?=$space['uid']?>&do=album&view=me" class="r_option">ȫ��</a>
���			</h3>
<table cellspacing="4" cellpadding="4" width="100%">
<tr>
<?php if(is_array($albumlist)) { foreach($albumlist as $key => $value) { ?>
<td width="85" align="center"><a href="space.php?uid=<?=$space['uid']?>&do=album&id=<?=$value['albumid']?>" target="_blank"><img src="<?=$value['pic']?>" alt="<?=$value['albumname']?>" width="70" /></a></td>
<td width="165">
<h6><a href="space.php?uid=<?=$space['uid']?>&do=album&id=<?=$value['albumid']?>" target="_blank" title="<?=$value['albumname']?>"><?=$value['albumname']?></a></h6>
<p class="gray"><?=$value['picnum']?> ����Ƭ</p>
<p class="gray">������ <?php echo sgmdate('m-d',$value[dateline],1); ?></p>				</td>
<?php if($key%2==1) { ?></tr><tr><?php } ?>
<?php } } ?>
</tr>
</table>
</div>
<?php } ?>
 
<?php if($bloglist) { ?>
<div id="space_blog" class="feed">
<h3 class="feed_header">
<a href="space.php?uid=<?=$space['uid']?>&do=blog&view=me" class="r_option">ȫ��</a>
��־			</h3>
<ul class="line_list">
<?php if(is_array($bloglist)) { foreach($bloglist as $value) { ?>
<li>

<h4>
<span class="gray r_option"><?php echo sgmdate('m-d H:i',$value[dateline],1); ?></span>
<a href="space.php?uid=<?=$space['uid']?>&do=blog&id=<?=$value['blogid']?>" target="_blank"><?=$value['subject']?></a>					</h4>
<div class="detail">
<?=$value['message']?>					</div>
</li>
<?php } } ?>
</ul>
</div>
<?php } ?>
 
 
<?php if(is_array($widelist)) { foreach($widelist as $value) { ?>
<?php if($value['myml']) { ?>
<div id="space_app_<?=$value['appid']?>" class="appbox">
<h3 class="feed_header">
<?php if($space['self']) { ?>
<a href="cp.php?ac=space&op=delete&appid=<?=$value['appid']?>" id="user_app_<?=$value['appid']?>" class="r_option float_del" onclick="ajaxmenu(event, this.id)" title="ɾ��">ɾ��</a>
<?php } ?>
<a href="<?=$value['appurl']?>"><?=$value['appname']?></a>			</h3>
<div class="box" style="margin: 0 0 20px;">
<?php eval($value[myml]); ?>
</div>
</div>
<?php } ?>
<?php } } ?>
  </div>
 
<?php if(($_SCONFIG['viplookinfo'] == 1 and $vips['day'] > 0) or checkperm('managespace') or $space['uid'] == $_SGLOBAL['supe_uid']) { ?>
<!--<div id="comment" class="comments_list">
<h3 class="feed_header">
<a href="space.php?uid=<?=$space['uid']?>&do=wall&view=me" class="r_option">ȫ��</a>
���԰�
</h3>
 
<div class="box">
<form action="cp.php?ac=comment" id="quick_commentform_<?=$space['uid']?>" name="quick_commentform_<?=$space['uid']?>" method="post" style="padding:0 0 0 5px;">
<a href="###" id="editface" onclick="showFace(this.id, 'comment_message');return false;"><img src="image/facelist.gif" align="absmiddle" /></a>
<?php if($_SGLOBAL['magic']['doodle']) { ?>
<a id="a_magic_doodle" href="magic.php?mid=doodle&showid=comment_doodle&target=comment_message" onclick="ajaxmenu(event, this.id, 1)"><img src="image/magic/doodle.small.gif" class="magicicon" />Ϳѻ��</a>
<?php } ?>
<br />
<textarea name="message" id="comment_message" rows="4" cols="60" style="width:98%;" onkeydown="ctrlEnter(event, 'commentsubmit_btn');"></textarea><br>
<input type="hidden" name="refer" value="space.php?uid=<?=$space['uid']?>" />
<input type="hidden" name="id" value="<?=$space['uid']?>" />
<input type="hidden" name="idtype" value="uid" />
<input type="hidden" name="commentsubmit" value="true" />
<input type="button" id="commentsubmit_btn" name="commentsubmit_btn" class="submit" value="����" onclick="ajaxpost('quick_commentform_<?=$space['uid']?>', 'wall_add')" />
<span id="__quick_commentform_<?=$space['uid']?>"></span>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
  </div>
 
<div class="box_content">
<ul class="post_list a_list justify_list" id="comment_ul">
<?php if(is_array($walllist)) { foreach($walllist as $value) { ?>
<?php if(empty($ajax_edit)) { ?><li id="comment_<?=$value['cid']?>_li"><?php } ?>
<?php if($value['author']) { ?>
<div class="avatar48"><a href="space.php?uid=<?=$value['authorid']?>"><?php echo avatar($value[authorid],small); ?></a></div>
<?php } else { ?>
<div class="avatar48"><img src="image/magic/hidden.gif" class="avatar" /></div>
<?php } ?>
<div class="title">
<div class="r_option">

<?php if($value['authorid'] != $_SGLOBAL['supe_uid'] && $value['author'] == "" && $_SGLOBAL['magic']['reveal']) { ?>
<a id="a_magic_reveal_<?=$value['cid']?>" href="magic.php?mid=reveal&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id,1)"><img src="image/magic/reveal.small.gif" class="magicicon"><?=$_SGLOBAL['magic']['reveal']?></a>
<span class="pipe">|</span>
<?php } ?>

<?php if($value['authorid']==$_SGLOBAL['supe_uid']) { ?>
<?php if($_SGLOBAL['magic']['anonymous']) { ?>
<img src="image/magic/anonymous.small.gif" class="magicicon">
<a id="a_magic_anonymous_<?=$value['cid']?>" href="magic.php?mid=anonymous&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id, 1)"><?=$_SGLOBAL['magic']['anonymous']?></a>
<span class="pipe">|</span>
<?php } ?>
<?php if($_SGLOBAL['magic']['flicker']) { ?>
<img src="image/magic/flicker.small.gif" class="magicicon">
<?php if($value['magicflicker']) { ?>
<a id="a_magic_flicker_<?=$value['cid']?>" href="cp.php?ac=magic&op=cancelflicker&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id)">ȡ��<?=$_SGLOBAL['magic']['flicker']?></a>
<?php } else { ?>
<a id="a_magic_flicker_<?=$value['cid']?>" href="magic.php?mid=flicker&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id, 1)"><?=$_SGLOBAL['magic']['flicker']?></a>
<?php } ?>
<span class="pipe">|</span>
<?php } ?>

<a href="cp.php?ac=comment&op=edit&cid=<?=$value['cid']?>" id="c_<?=$value['cid']?>_edit" onclick="ajaxmenu(event, this.id, 1)">�༭</a>
<?php } ?>
<?php if($value['authorid']==$_SGLOBAL['supe_uid'] || $value['uid']==$_SGLOBAL['supe_uid'] || checkperm('managecomment')) { ?>
<a href="cp.php?ac=comment&op=delete&cid=<?=$value['cid']?>" id="c_<?=$value['cid']?>_delete" onclick="ajaxmenu(event, this.id)">ɾ��</a>
<?php } ?>
<?php if($value['authorid']!=$_SGLOBAL['supe_uid'] && ($value['idtype'] != 'uid' || $space['self'])) { ?>
<a href="cp.php?ac=comment&op=reply&cid=<?=$value['cid']?>&feedid=<?=$feedid?>" id="c_<?=$value['cid']?>_reply" onclick="ajaxmenu(event, this.id, 1)">�ظ�</a>
<?php } ?>
<a href="cp.php?ac=common&op=report&idtype=comment&id=<?=$value['cid']?>" id="a_report_<?=$value['cid']?>" onclick="ajaxmenu(event, this.id, 1)">�ٱ�</a>
</div>

<?php if($value['author']) { ?>
<a href="space.php?uid=<?=$value['authorid']?>" id="author_<?=$value['cid']?>"><?=$_SN[$value['authorid']]?></a> 
<?php } else { ?>
����
<?php } ?>
<span class="gray"><?php echo sgmdate('Y-m-d H:i',$value[dateline],1); ?></span>

</div>

<div class="detail<?php if($value['magicflicker']) { ?> magicflicker<?php } ?>" id="comment_<?=$value['cid']?>"><?=$value['message']?></div>

<?php if(empty($ajax_edit)) { ?></li><?php } ?>

<?php } } ?>
</ul>
<?php if($walllist) { ?>
<p class="r_option" style="padding:5px 0 10px 0;"><a href="space.php?uid=<?=$space['uid']?>&do=wall&view=me">&raquo; ��������</a></p>
<?php } ?>
</div>
  </div>-->
<?php } ?>
</div>
 
<div id="obar">

<?php if($space['self']) { ?>
<?php if($visitorlist) { ?>
<!-- 		<div class="sidebox">
<h2 class="title">
<a href="space.php?uid=<?=$space['uid']?>&do=friend&view=visitor" class="r_option">ȫ��</a>
�������
<?php if(!$space['self'] && $_SGLOBAL['magic']['anonymous']) { ?>
<span class="gray"><img title="<?=$_SGLOBAL['magic']['anonymous']?>" src="image/magic/anonymous.small.gif"/><a id="a_magic_anonymous" href="magic.php?mid=anonymous&idtype=uid&id=<?=$space['uid']?>" onclick="ajaxmenu(event,this.id,1)">����</a></span>
<?php } ?>
</h2>
<ul class="avatar_list">
<?php if(is_array($visitorlist)) { foreach($visitorlist as $key => $value) { ?>
<li>
<?php if($value['vusername'] == '') { ?>
<div class="avatar48"><img src="image/magic/hidden.gif" alt="����" /></div>
<p>����</p>
<p class="gray"><?php echo sgmdate('n��j��',$value[dateline],1); ?></p>
<?php } else { ?>
<div class="avatar48"><a href="space.php?uid=<?=$value['vuid']?>"><?php echo avatar($value[vuid],small,false,$value[sex]); ?></a></div>
<p<?php if($ols[$value['vuid']]) { ?> class="online_icon_p"<?php } ?>><a href="space.php?uid=<?=$value['vuid']?>" title="<?=$_SN[$value['vuid']]?>"><?=$_SN[$value['vuid']]?></a></p>
<p class="gray"><?php echo sgmdate('n��j��',$value[dateline],1); ?></p>
<?php } ?>
</li>
<?php } } ?>
</ul>
</div> -->
<?php } ?>
<?php } ?>
 
</div>
 
</div>
 
<?php if($_GET['theme']) { ?><div class="nn">���Ƿ���ʹ�������Է��?<br /><a href="cp.php?ac=theme&op=use&dir=<?=$_GET['theme']?>">[Ӧ��]</a><a href="cp.php?ac=theme">[ȡ��]</a></div><?php } ?>
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
<?php } ?>
 
<script> 
function getindex(type) {
var plus = '';
if(type == 'event') plus = '&type=self';
ajaxget('space.php?uid=<?=$space['uid']?>&do='+type+'&view=me'+plus+'&ajaxdiv=maincontent', 'maincontent');
}
 
//�ʺ���
var elems = selector('div[class~=magicflicker]'); 
for(var i=0; i<elems.length; i++){
magicColor(elems[i]);
}
 
</script>
<?php ob_out();?>