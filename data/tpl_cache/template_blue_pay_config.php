<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/pay_config|template/blue/header|template/blue/footer', '1318212831', 'template/blue/pay_config');?><?php if(empty($_SGLOBAL['inajax'])) { ?>
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
<!--
.pay_text {
color: #006699;
CURSOR: hand;
}
-->
</style>


<form method="post" action="" class="c_form">
  <table class="formtable"><tr><td>
    <table width="700" border="0" align="left">
<caption>
      <h2>��վ��·��</h2>
  
        <p>&nbsp;&nbsp&nbsp </p>
        </caption>

<tr>
    <th width="120">��վ��ַ</th>
    <td><input type="text" name="config[payurl]" value="<?php if($configs['siteallurl']) { ?><?=$configs['siteallurl']?><?php } else { ?><?=$configs['payurl']?><?php } ?>" size="40" class="t_input" />
      β��һ��Ҫ��/ </td>
  </tr>
    </table>
  </td>
  </tr>
  <tr><td>
      <h2>�Ƹ�ͨ���� - <span class="pay_text" onclick="div_linfo('tid');">���������</span></h2>
  <div id="tid" style="position:relative;">
    <table width="700" border="0" align="left">
<tr>
    <th width="120">�Ƹ�ͨĿ¼</th>
    <td><input type="text" name="config[tfile]" value="<?=$configs['tfile']?>" size="25" class="t_input" />
      ǰ��Ҫ��/ </td>
  </tr>
  <tr>
    <th>�Ƹ�ͨ�˺�</th>
    <td><input type="text" name="config[tenpay]" value="<?=$configs['tenpay']?>" size="25" class="t_input" />
      *���򿪷���������</td>
  </tr>
  <tr>
    <th>�Ƹ�ͨ�ܳ�</th>
    <td><input type="text" name="config[tenpaym]" value="<?=$configs['tenpaym']?>" size="40" class="t_input" />������д��ȷ,��ǿ�������ݰ�ȫ����.</td>
  </tr>
  <tr>
    <th>������</th>
    <td><input type="text" name="config[tps]" value="<?=$configs['tps']?>" size="6" class="t_input" />
      <strong>%</strong></td>
  </tr>
  <tr>
    <th>�������</th>
    <td><textarea name="config[tpnote]" cols="70" rows="4" class="t_input"><?=$configs['tpnote']?></textarea></td>
  </tr>
    </table>
</div>
  </td>
  </tr><tr><td>
      <h2>�������� - <span class="pay_text" onclick="div_linfo('cbid');">���������</span></h2>
  <div id="cbid" style="position:relative;">
    <table width="700" border="0" align="left">
  <tr>
    <th width="120">����Ŀ¼</th>
    <td><input type="text" name="config[cbfile]" value="<?=$configs['cbfile']?>" size="25" class="t_input" />
      ǰ��Ҫ��/ </td>
  </tr>
  <tr>
    <th>�����˺�</th>
    <td><input type="text" name="config[cbankpay]" value="<?=$configs['cbankpay']?>" size="25" class="t_input" />
      *���򿪷���������</td>
  </tr>
  <tr>
    <th>�����ܳ�</th>
    <td><input type="text" name="config[cbankm]" value="<?=$configs['cbankm']?>" size="40" class="t_input" />������д��ȷ,��ǿ�������ݰ�ȫ����.</td>
  </tr>
  <tr>
    <th>������</th>
    <td><input type="text" name="config[cbs]" value="<?=$configs['cbs']?>" size="6" class="t_input" />
      <strong>%</strong></td>
  </tr>
  <tr>
    <th>�������</th>
    <td><textarea name="config[cbnote]" cols="70" rows="4" class="t_input"><?=$configs['cbnote']?></textarea></td>
  </tr>
    </table>
</div>
  </td></tr>
  <tr><td>
  
      <h2>֧�������� - <span class="pay_text" onclick="div_linfo('apid');">���������</span></h2>
  <div id="apid" style="position:relative;">
    <table width="700" border="0" align="left">
  <tr>
    <th width="120">֧����Ŀ¼</th>
    <td><input type="text" name="config[apfile]" value="<?=$configs['apfile']?>" size="25" class="t_input" />
      ǰ��Ҫ��/ </td>
  </tr>
  <tr>
    <th>����Email</th>
    <td><input type="text" name="config[payemail]" value="<?=$configs['payemail']?>" size="28" class="t_input" /> 
    ������д,�����޷�֧��</td>
  </tr>
  <tr>
    <th>֧�����˺�</th>
    <td><input type="text" name="config[appay]" value="<?=$configs['appay']?>" size="25" class="t_input" />
      *���򿪷���������</td>
  </tr>
  <tr>
    <th>֧�����ܳ�</th>
    <td><input type="text" name="config[apm]" value="<?=$configs['apm']?>" size="40" class="t_input" />������д��ȷ,��ǿ�������ݰ�ȫ����.</td>
  </tr>
  <tr>
    <th>������</th>
    <td><input type="text" name="config[aps]" value="<?=$configs['aps']?>" size="6" class="t_input" />
      <strong>%</strong></td>
  </tr>
  <tr>
    <th>�������</th>
    <td><textarea name="config[apnote]" cols="70" rows="4" class="t_input"><?=$configs['apnote']?></textarea></td>
  </tr>
    </table>
</div>
  </td></tr>
  <tr><td>
  
      <h2>�ױ�֧������(�������ֻ�����ֵ��ʽ) - <span class="pay_text" onclick="div_linfo('clid');">���������</span></h2>
  <div id="clid" style="position:relative;">
    <table width="700" border="0" align="left">
  <tr>
    <th width="120">�ױ�Ŀ¼</th>
    <td><input type="text" name="config[clfile]" value="<?=$configs['clfile']?>" size="25" class="t_input" />
      ǰ��Ҫ��/ </td>
  </tr>
  <tr>
    <th>�ױ��˺�</th>
    <td><input type="text" name="config[clpay]" value="<?=$configs['clpay']?>" size="25" class="t_input" />
      *���򿪷���������</td>
  </tr>
  <tr>
    <th>�ױ��ܳ�</th>
    <td><input name="config[clm]" type="text" class="t_input" value="<?=$configs['clm']?>" size="75" />������д��ȷ,��ǿ�������ݰ�ȫ����.</td>
  </tr>
  <tr>
    <th>������</th>
    <td><input type="text" name="config[cls]" value="<?=$configs['cls']?>" size="6" class="t_input" />
      <strong>%</strong></td>
  </tr>
  <tr>
    <th>�������</th>
    <td><textarea name="config[clnote]" cols="70" rows="4" class="t_input"><?=$configs['clnote']?></textarea></td>
  </tr>
    </table>
</div>
  </td></tr><tr><td>
      <h2>�ױ�֧������(���п���ֵ��ʽ) - <span class="pay_text" onclick="div_linfo('clbid');">���������</span></h2>
  <div id="clbid" style="position:relative;">
    <table width="700" border="0" align="left">
  <tr>
    <th width="120">�ױ�Ŀ¼</th>
    <td><input type="text" name="config[clbfile]" value="<?=$configs['clbfile']?>" size="25" class="t_input" />
      ǰ��Ҫ��/ </td>
  </tr>
  <tr>
    <th>�ױ��˺�</th>
    <td><input type="text" name="config[clbpay]" value="<?=$configs['clbpay']?>" size="25" class="t_input" />
      *���򿪷���������</td>
  </tr>
  <tr>
    <th>�ױ��ܳ�</th>
    <td><input name="config[clbm]" type="text" class="t_input" value="<?=$configs['clbm']?>" size="75" />������д��ȷ,��ǿ�������ݰ�ȫ����.</td>
  </tr>
  <tr>
    <th>������</th>
    <td><input type="text" name="config[clbs]" value="<?=$configs['clbs']?>" size="6" class="t_input" />
      <strong>%</strong></td>
  </tr>
  <tr>
    <th>�������</th>
    <td><textarea name="config[clbnote]" cols="70" rows="4" class="t_input"><?=$configs['clbnote']?></textarea></td>
  </tr>
    </table>
</div>
  </td></tr><tr><td>
      <h2>PayPal����(����ר��) - <span class="pay_text" onclick="div_linfo('ppid');">���������</span></h2>
  <div id="ppid" style="position:relative;">
    <table width="700" border="0" align="left">
  <tr>
    <th width="120">PayPalĿ¼</th>
    <td><input type="text" name="config[ppfile]" value="<?=$configs['ppfile']?>" size="25" class="t_input" />
      ǰ��Ҫ��/ </td>
  </tr>
  <tr>
    <th>PayPal�˺�(Email)</th>
    <td><input type="text" name="config[pppay]" value="<?=$configs['pppay']?>" size="25" class="t_input" />
      *���򿪷��������� </td>
  </tr>
  <tr>
    <th>PayPal�ܳ�(��ȫID)</th>
    <td><input name="config[ppm]" type="text" class="t_input" value="<?=$configs['ppm']?>" size="45" />  ������д��ȷ,��ǿ�������ݰ�ȫ����.</td>
  </tr>
  <tr>
    <th>��̬�ܳ�</th>
    <td><strong><?=$configs['web_paykey']?></strong>
      <input name="config[web_paykey]" type="hidden" class="t_input" value="" />  
    һ�������޸Ĵ�ֵ.</td>
  </tr>
  <tr>
    <th>������</th>
    <td><input type="text" name="config[pps]" value="<?=$configs['pps']?>" size="6" class="t_input" />
      <strong>%</strong></td>
  </tr>
  <tr>
    <th>�������</th>
    <td><textarea name="config[ppnote]" cols="70" rows="4" class="t_input"><?=$configs['ppnote']?></textarea></td>
  </tr>
    </table>
</div>
  </td></tr>
  <tr><td>
    <table width="700" border="0" align="left">

<caption>
      <h2>�����-&gt;���ֳ�ֵ����</h2>
  
        <p>&nbsp;&nbsp&nbsp </p>
        </caption>
  <tr>
    <td width="120">����ҳ�ֵ����</td>
    <td><input name="config[bilv]" type="text" id="config[bilv]" value="<?=$configs['bilv']?>" size="10" class="t_input" />
      (�൱�ڳ�ֵ1��������ö��ٻ���,Ĭ����1) ����</td>
  </tr>
  <tr>
    <td>��Ԫ��ֵ����</td>
    <td><input type="text" name="config[ppbilv]" value="<?=$configs['ppbilv']?>" size="6" class="t_input" />
     (�൱�ڳ�ֵ1��Ԫ���ö��ٻ���,Ĭ����1) ����(ֻ��PayPal��Ч)</td>
  </tr>
    </table>
  </td></tr>
  <tr><td>
    <table width="700" border="0" align="left" id="vipfid">
<caption>
      <h2>VIP��ֵ����</h2>
  
        <p>&nbsp;&nbsp&nbsp </p>
        </caption>
  <tr>
    <th width="120">VIP��Ա��</th>
    <td><select name="config[vipapp]" id="config[vipapp]">
<?php if(is_array($userapp)) { foreach($userapp as $key => $value) { ?>
<?php if($_SCONFIG['vipapp'] == $key) { ?>
      <option value="<?=$key?>" selected="selected"><?=$value?></option>
<?php } else { ?>
      <option value="<?=$key?>"><?=$value?></option>
<?php } ?>
<?php } } ?>
    </select>    <a href="pay.php?ac=vipconfig">VIP��������</a></td>
  </tr>
  <tr>
    <th>��������</th>
    <td><textarea name="config[vipcls]" cols="50" rows="5" class="t_input" id="config[vipcls]"><?=$configs['vipcls']?></textarea>
      <br />
      (һ��һ������)
      <br />
  ��:30|10|100 �൱��30������10Ԫ,�շ�100%	  </td>
  </tr>
  <tr>
    <th>�������</th>
    <td><textarea name="config[clsnote]" cols="70" rows="4" class="t_input"><?=$configs['clsnote']?></textarea></td>
  </tr>
    </table>
  </td></tr>
  <tr><td>
    <table width="700" border="0" align="left">	
<caption>
      <h2>���ֶһ�VIP����</h2>
  
        <p>&nbsp;&nbsp&nbsp </p>
        </caption>
  <tr>
    <th width="120">���ֶһ�����</th>
    <td>
<?php if($_SCONFIG['ctvip'] == 1) { ?>
<input name="config[ctvip]" type="radio" value="1" checked="checked" />
���� 
<input name="config[ctvip]" type="radio" value="0" />�ر�
<?php } else { ?>
<input name="config[ctvip]" type="radio" value="1" />���� 
<input name="config[ctvip]" type="radio" value="0" checked="checked" />
�ر�
<?php } ?>      </td>
  </tr>
  <tr>
    <th>��������</th>
    <td><textarea name="config[vipjf]" cols="50" rows="5" class="t_input" id="config[vipjf]"><?=$configs['vipjf']?></textarea>
      <br />
      (һ��һ������)
      <br />
  ��:60|30 �൱��60������30����</td>
  </tr>
  <tr>
    <th>�������</th>
    <td><textarea name="config[jfnote]" cols="70" rows="4" class="t_input"><?=$configs['jfnote']?></textarea></td>
  </tr>
    </table>
  </td></tr>
  <tr><td>
    <table width="700" border="0" align="left">
<caption>
      <h2>���ֳ�ֵ����</h2>
  
        <p>&nbsp;&nbsp&nbsp </p>
        </caption>
  <tr>
    <th width="120">����ҳ��URL</th>
    <td><input name="config[pay_help]" type="text" id="config[pay_help]" value="<?=$configs['pay_help']?>" size="50" class="t_input" /> </td>
  </tr>
  <tr>
    <td height="35" colspan="2" align="center"><input type="submit" name="Submit" value="��������"/></td>
    </tr>
    </table>
  </td></tr>
  </table>
  
</form>
<script language="JavaScript" type="text/javascript">
   function div_linfo (id) {
    var id = document.getElementById(id);
    if (id.style.visibility == 'hidden') {
     id.style.position='relative';
     id.style.visibility='';
 } else {
     id.style.position='absolute';
     id.style.visibility='hidden';
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