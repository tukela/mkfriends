<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/pay_index|template/blue/header|template/blue/footer', '1318216970', 'template/blue/pay_index');?><?php if(empty($_SGLOBAL['inajax'])) { ?>
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
#stk {
border-top-width: 1px;
border-right-width: 1px;
border-bottom-width: 1px;
border-left-width: 1px;
border-top-style: solid;
border-right-style: solid;
border-bottom-style: solid;
border-left-style: solid;
border-top-color: #FF6600;
border-right-color: #FF6600;
border-bottom-color: #FF6600;
border-left-color: #FF6600;
height: 25px;
width: 65px;
line-height: 25px;
text-align: center;
background-color: #FF9900;
text-indent: 5px;
display: block;
color: #FFFFFF;
}
#stk a {
color: #FFFFFF;
}
.spaf {
padding: 20px 0; color: #666; font-size: 12px;
}
.tts {
border: 1px solid #CCCCCC;
line-height: 15px;
height: 15px;
vertical-align: middle;
font-size: 13px;
text-align: center;
}
.STYLE2 {padding: 20px 0; color: #666; font-size: 12px; font-weight: bold; }
-->
</style>
<h2 class="title"><img src="image/credit.gif">֧������</h2>
<div class="tabs_header">
<ul class="tabs">
<li<?=$actives['index']?>><a href="pay.php?ac=index"><span>���ֳ�ֵ</span></a></li>
<li<?=$actives['vip']?>><a href="pay.php?ac=vip"><span>VIP��Ȩ</span></a></li>
<li<?=$actives['list']?>><a href="pay.php?ac=list"><span>������ϸ</span></a></li>
<?php if($adid) { ?>
<li<?=$actives['userlist']?>><a href="pay.php?ac=userlist"><span>��Ա����</span></a></li>
<li<?=$actives['config']?>><a href="pay.php?ac=config"><span>��ֵ����</span></a></li>
<li<?=$actives['vipconfig']?>><a href="pay.php?ac=vipconfig"><span>VIP��������</span></a></li>
<li<?=$actives['cfhelp']?>><a href="pay.php?ac=cfhelp"><font color="#0000ff"><span>ϵͳ����</span></font></a></li>
<li<?=$actives['update']?>><a href="pay.php?ac=update"><font color="#cc00000"><span>�汾����</span></font></a></li>
<?php } else { ?>

<li<?=$actives['cfhelp']?>><a href="<?=$_SCONFIG['pay_help']?>" target="_blank"><font color="#0000ff"><span>��ֵ����</span></font></a></li>
<?php } ?>
</ul>
</div>
<table border="0" align="right">
  <tr>
    <td width="185" height="48" align="center">	
 <strong> <?php if($space['groupid'] == $_SCONFIG['vipapp']) { ?>
      <font color="#666666">VIP״̬:<?=$v_day['day']?> ��</font>		
  <img src="image/pay/vip.gif" alt="VIP��Ա:<?=$v_day['day']?>��" border="0" align="absmiddle" />
<?php } else { ?>
      <font color="#666666">VIP״̬:δ����</font>	<img src="image/pay/vip2.gif" alt="δ����" border="0" align="absmiddle" />
<?php } ?></strong><br />
    �û�:<strong> <?=$space['username']?></strong> ����:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>   </font> </td>
  </tr>
</table>
<br />

<?php if($pay == '') { ?>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="formtable">
      <caption>
      <h2>���߳�ֵ</h2>
  
        </caption>
 <!--<?php if($_SCONFIG['appay'] != '') { ?>
  <tr>
    <td width="150" align="center"><a href="pay.php?pay=appay" target="_blank"><img src="image/pay/alipay.jpg" width="125" height="50" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>֧���� - <?=$_SCONFIG['aps']?>%������</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['apnote']?>
</p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=appay" target="_blank">��Ҫ��ֵ</a> </div>       </td>
        </tr>
    </table></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
  
<?php } ?>
<?php if($_SCONFIG['tenpay'] != '') { ?>
  <tr>
    <td width="150" align="center"><a href="pay.php?pay=tenpay" target="_blank"><img src="image/pay/tpay.jpg" width="125" height="50" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>�Ƹ�ͨ - <?=$_SCONFIG['tps']?>%������</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['tpnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=tenpay" target="_blank">��Ҫ��ֵ</a> </div>       </td>
        </tr>
    </table></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
  
<?php } ?>

<?php if($_SCONFIG['cbankpay'] != '') { ?>
   <tr>
    <td align="center"><a href="pay.php?pay=chinabank" target="_blank"><img src="image/pay/bankpay.gif" width="125" height="50" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>�������� - <?=$_SCONFIG['cbs']?>%������</h2>
        <p>&nbsp;&nbsp&nbsp<?=$_SCONFIG['cbnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=chinabank" target="_blank">��Ҫ��ֵ</a> </div> </td>
        </tr>
    </table></td>
  </tr>
 
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
<?php } ?>
 -->
<?php if($_SCONFIG['clpay'] != '') { ?>
  <tr>
    <td width="150" align="center"><a href="pay.php?pay=clpay" target="_blank"><img src="image/pay/callback.jpg" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>�������ֻ�����ֵ - <?=$_SCONFIG['cls']?>%������</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['clnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=clpay" target="_blank">��Ҫ��ֵ</a> </div>       </td>
        </tr>
    </table></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
  
<?php } ?>
<?php if($_SCONFIG['clbpay'] != '') { ?>
  <tr>
    <td width="150" align="center"><a href="pay.php?pay=clbpay" target="_blank"><img src="image/pay/callbank.jpg" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>�����������߳�ֵ - <?=$_SCONFIG['clbs']?>%������</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['clbnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=clbpay" target="_blank">��Ҫ��ֵ</a> </div>       </td>
        </tr>
    </table></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
  
<?php } ?>
 <!--
<?php if($_SCONFIG['pppay'] != '') { ?>
  <tr>
    <td width="150" align="center"><a href="pay.php?pay=pppay" target="_blank"><img src="image/pay/paypal.gif" width="145" height="55" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>PayPal(����ר��) - <?=$_SCONFIG['pps']?>%������</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['ppnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=pppay" target="_blank">��Ҫ��ֵ</a> </div>       </td>
        </tr>
    </table></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
  
<?php } ?>
-->
</table>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="formtable">
      <caption>
      <h2>����VIP����</h2>
        </caption>
<?php if($_SCONFIG['vipcls'] != '') { ?>

  <tr>
    <td width="150" align="center"><a href="pay.php?pay=buyvip" target="_blank"><img src="image/pay/vippay.jpg" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>����VIP</h2>
        <p>&nbsp;&nbsp&nbsp<?=$_SCONFIG['clsnote']?> <br />
          &nbsp;&nbsp&nbsp<a href="pay.php?ac=vip" target="_blank">�鿴VIP��Ȩ</a></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td align="left"><div class="submit" id="stk"><a href="pay.php?pay=buyvip" target="_blank">��Ҫ����</a> </div>     </td>
        </tr>
    </table></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
<?php } ?>

<?php if($_SCONFIG['ctvip'] == 1) { ?>
  <tr>
    <td align="center"><a href="pay.php?pay=ctvip" target="_blank"><img src="image/pay/vippay1.jpg" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>���ֶһ�VIP</h2>
        <p>&nbsp;&nbsp&nbsp<?=$_SCONFIG['jfnote']?><br />
          &nbsp;&nbsp&nbsp<a href="pay.php?ac=vip" target="_blank">�鿴VIP��Ȩ</a></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=ctvip" target="_blank">��Ҫ�һ�</a> </div>     </td>
        </tr>
    </table></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
<?php } ?>
</table>
<?php } elseif($pay == 'appay') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ������</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ����֧��     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ��ɳ�ֵ   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>���߳�ֵ - ֧����<?=$_SCONFIG['aps']?>%������</h2>
  
        <p>&nbsp;&nbsp&nbsp ��ֵ�ɹ���ϵͳ������ <?=$space['username']?> ���˺��Զ�������֣�
����ȴ�����ʱ��Ч��</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">�� �� ��</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (�ҵĻ���:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>����)</td>
    </tr>
  <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['apfile']?>/index.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">��ֵ���</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="6" />
      <span class="spaf"><strong>Ԫ</strong><strong>(RMB)</strong> (һԪ����� = <strong><?=$_SCONFIG['bilv']?> </strong>����)</span></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="ȷ�ϳ�ֵ" title="��Ҫ��ֵ"  /></td>
    </tr>
      <tr>
        <td height="1" colspan="3" bgcolor="#FF9900"></td>
      </tr>
  </form>
</table>
<?php } elseif($pay == 'tenpay') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ������</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ����֧��     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ��ɳ�ֵ   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>���߳�ֵ - �Ƹ�ͨ<?=$_SCONFIG['tps']?>%������</h2>
  
        <p>&nbsp;&nbsp&nbsp ��ֵ�ɹ���ϵͳ������ <?=$space['username']?> ���˺��Զ�������֣�
����ȴ�����ʱ��Ч��</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">�� �� ��</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (�ҵĻ���:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>����)</td>
    </tr>
  <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['tfile']?>/index.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">��ֵ���</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="6" />
      <span class="spaf"><strong>Ԫ</strong><strong>(RMB)</strong> (һԪ����� = <strong><?=$_SCONFIG['bilv']?> </strong>����)</span></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="ȷ�ϳ�ֵ" title="��Ҫ��ֵ"  /></td>
    </tr>
      <tr>
        <td height="1" colspan="3" bgcolor="#FF9900"></td>
      </tr>
  </form>
</table>
<?php } elseif($pay == 'chinabank') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ������</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ����֧��     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ��ɳ�ֵ   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <caption>  
  <h2>���߳�ֵ - ��������<?=$_SCONFIG['cbs']?>%������</h2>
  
        <p>&nbsp;&nbsp&nbsp ��ֵ�ɹ���ϵͳ������ <?=$space['username']?> ���˺��Զ�������֣�
����ȴ�����ʱ��Ч��</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">�� �� ��</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (�ҵĻ���:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>����)</td>
  </tr>
  <form id="form10" name="form10" method="POST" action="<?=$_SCONFIG['cbfile']?>/Send.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">��ֵ���</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="6" />
      <span class="spaf"><strong>Ԫ</strong><strong>(RMB)</strong> (һԪ�����<strong> </strong>= <strong><?=$_SCONFIG['bilv']?> </strong>����)</span></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="ȷ�ϳ�ֵ" title="��Ҫ��ֵ"  /></td>
    </tr>
      <tr>
        <td height="1" colspan="3" bgcolor="#FF9900"></td>
      </tr>
  </form>
</table>

<?php } elseif($pay == 'clpay') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ������</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ����֧��     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ��ɳ�ֵ   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>���߳�ֵ - �������ֻ�����ֵ<?=$_SCONFIG['cls']?>%������</h2>
  
        <p>&nbsp;&nbsp&nbsp ��ֵ�ɹ���ϵͳ������ <?=$space['username']?> ���˺��Զ�������֣�
����ȴ�����ʱ��Ч��</p>
        </caption>

 <tr>
<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="400"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#99CC00">
<table width="100%" border="0" cellspacing="1" cellpadding="1">
              <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['clfile']?>/req.php">
                <tr>
                  <td width="130" height="25" align="center" bgcolor="#FFFFFF"><span class="spaf" style="font-weight: bold">�� �� ��</span></td>
                  <td bgcolor="#FFFFFF" class="spaf"><?=$space['username']?> (�ҵĻ���:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>����)</td>
                </tr>
                <tr>
                  <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">�����г�ֵ�����</strong></td>
                  <td bgcolor="#FFFFFF">
  <select name="paym" id="paym">
                      <option value="10">10</option>
                      <option value="20">20</option>
                      <option value="30">30</option>
                      <option value="50">50</option>
                      <option value="100">100</option>
                      <option value="300">300</option>
                      <option value="500">500</option>
                    </select>
                  <span class="spaf">Ԫ</span><br />
                  <strong>
(1Ԫ </strong>= <strong><?=$_SCONFIG['bilv']?> </strong>����)</strong></td>
                </tr>
                <tr>
                  <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">�����г�ֵ�����к�</strong></td>
                  <td bgcolor="#FFFFFF"><input name="pa7_cardNo" type="text" class="tts" id="pa7_cardNo" size="30" /></td>
                </tr>
                <tr>
                  <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">�����г�ֵ������</strong></td>
                  <td bgcolor="#FFFFFF"><input name="pa8_cardPwd" type="password" class="tts" id="pa8_cardPwd" size="30" /></td>
                </tr>
                <tr>
                  <td height="65" align="center" bgcolor="#FFFFFF">&nbsp;</td>
                  <td height="65" align="left" bgcolor="#FFFFFF"><input class="submit" name="Submit33" type="submit" value="ȷ�ϳ�ֵ" title="��Ҫ��ֵ"></td>
                </tr>
              </form>
            </table>
            </td>
          </tr>
        </table></td>
            <td><ul>
              <li><strong>֧�ֿ��֣�</strong> </li>
              <li value="2">ȫ����������17λ������18λ����10��20��30��50��100��300��500Ԫ </li>
              <li>���յط���������16λ������17λ����30��50��100Ԫ </li>
              <li>�㽭�ط���������10λ������8λ����20��30��50��100Ԫ </li>
              <li>�����ط���������16λ������21λ����50��100Ԫ<br />
                  <br />
              </li>
              <li><strong>֧��˵����</strong> </li>
              <li><strong>�� </strong>�³�ֵ�����ڱ�վ֧����������ĳ�ֵ�������Խ���֧���� </li>
              <li><strong>�� </strong>�ڱ�վ֧����������ĳ�ֵ�������ܸ��ֻ���ֵ�� </li>
              <li><strong>�� </strong>�ύ���ܺ����Ժ󣬲�Ҫ�ر�ϵͳ����ҳ�档 </li>
              <li><strong>�� </strong>������Ķ������ϴ�������ʹ�ö��ų�ֵ��֧����<br />
                  <br />
              </li>
              <li><strong><font color=red>ע�����</font></strong> </li>
              <li><font color=red><strong>�� </strong>�����ʹ������ѡ��������ͬ�������п�����֧������������Ľ���ʧ�ܽ��׽����˻���</font>�磺ѡ��50Ԫ��ʹ��100Ԫ��֧������ϵͳ��Ϊʵ��֧�����Ϊ50Ԫ������50Ԫ���ֲ����˻���ѡ��50Ԫ��ʹ��30Ԫ��֧����ϵͳ��Ϊ֧��ʧ�ܣ�30Ԫ�����˻���</li>
            </ul></td>
  </tr>
</table>
</td>
 </tr>
    
</table>

<?php } elseif($pay == 'clbpay') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ������</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ����֧��     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ��ɳ�ֵ   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>���߳�ֵ - <span class="spaf">�����������߳�ֵ</span><?=$_SCONFIG['clbs']?>%������</h2>
  
        <p>&nbsp;&nbsp&nbsp ��ֵ�ɹ���ϵͳ������ <?=$space['username']?> ���˺��Զ�������֣�
����ȴ�����ʱ��Ч��</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">�� �� ��</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (�ҵĻ���:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>����)</td>
    </tr>
  <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['clbfile']?>/req.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">��ֵ���</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="6" />
      <span class="spaf"><strong>Ԫ</strong><strong>(RMB)</strong> (һԪ�����<strong> </strong>= <strong><?=$_SCONFIG['bilv']?> </strong>����)</span></td>
    </tr> 
<tr>
      <td width="130" height="25" align="center"><strong class="spaf">ѡ������</strong></td>
      <td>
        <table width="500" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="42" align="center" valign="middle">
            <input name="pd_FrpId" type="radio" class="radio"	id="radio3" value="ICBC-NET" checked="CHECKED" />              <img src="image/pay/payment_bank1.gif" width="127" height="33" align="absmiddle" /> </td>
            <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio" value="ABC-NET" />
            <img src="image/pay/payment_bank3.gif" width="127" height="33" align="absmiddle" /></td>
            <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio2" value="CMBC-NET" />
            <img src="image/pay/payment_bank4.gif" width="127" height="33" align="absmiddle" /></td>
          </tr>
          <tr>
            <td height="42" align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio4" value="CCB-NET" />
            <img src="image/pay/payment_bank2.gif" width="127" height="33" align="absmiddle" /></td>
            <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio5" value="BCCB-NET" />
            <img src="image/pay/payment_bank8.gif" width="127" height="33" align="absmiddle" /></td>
            <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio6" value="BOCO-NET" />
            <img src="image/pay/payment_bank7.gif" width="127" height="33" align="absmiddle" /></td>
          </tr>
          <tr>
            <td height="42" align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio7" value="CIB-NET" />
            <img src="image/pay/payment_bank12.gif" width="127" height="33" align="absmiddle" /></td>
            <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio8" value="CMBCHINA-NET" />
            <img src="image/pay/payment_bank6.gif" width="127" height="33" align="absmiddle" /></td>
            <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio9" value="CEB-NET" />
            <img src="image/pay/payment_bank14.gif" width="127" height="33" align="absmiddle" /></td>
          </tr>
          <tr>
            <td height="42" align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio10" value="ECITIC-NET" />
            <img src="image/pay/payment_bank13.gif" width="127" height="33" align="absmiddle" /></td>
            <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio11" value="SDB-NET" />
            <img src="image/pay/payment_bank11.gif" width="127" height="33" align="absmiddle" /></td>
            <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio12" value="SPDB-NET" />
            <img src="image/pay/payment_bank10.gif" width="127" height="33" align="absmiddle" /></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="ȷ�ϳ�ֵ" title="��Ҫ��ֵ"  /></td>
    </tr>
      <tr>
        <td height="1" colspan="3" bgcolor="#FF9900"></td>
      </tr>
  </form>
</table>
<?php } elseif($pay == 'pppay') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ������</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ����֧��     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ��ɳ�ֵ   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>���߳�ֵ - PayPal����֧��<?=$_SCONFIG['pps']?>%������</h2>
  
        <p>&nbsp;&nbsp&nbsp ��ֵ�ɹ���ϵͳ������ <?=$space['username']?> ���˺��Զ�������֣�
����ȴ�����ʱ��Ч��</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">�� �� ��</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (�ҵĻ���:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>����)</td>
    </tr>
  <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['ppfile']?>/paypal.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">��ֵ���</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="7" />
      <span class="spaf"><strong>��Ԫ(USD)</strong> (һ��Ԫ<strong> </strong>=<strong> <?=$_SCONFIG['ppbilv']?></strong> ����)</span></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="ȷ�ϳ�ֵ" title="��Ҫ��ֵ"  /></td>
    </tr>
      <tr>
        <td height="1" colspan="3" bgcolor="#FF9900"></td>
      </tr>
  </form>
</table>

<?php } elseif($pay == 'buyvip') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ѡ�����</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ȷ�Ϲ���     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ����֧��   </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ���Ĳ�<br />
    ��ɹ���   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="pay.php?pay=info">
      <caption>
      <h2>����VIP - ѡ�����</h2>
  
        <p>&nbsp;&nbsp&nbsp ����ɹ�������ȴ�����ʱ��Ч��</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">��Ʒ����:</strong></td>
    <td class="STYLE2">VIP��Ա
    <a href="pay.php?ac=vip" target="_blank">�鿴VIP��Ȩ</a></td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">��������:</strong></td>
    <td>

<?php if(is_array($varr)) { foreach($varr as $key => $value) { ?>
<p>
<?php if($key == 1) { ?>
 
        <input name="cvip" type="radio" value="<?=$key?>" checked="checked" />
<?php } else { ?>
        <input name="cvip" type="radio" value="<?=$key?>" />
<?php } ?>
        <span class="spaf"><?=$value['0']?> ��<s><?=$value['1']?></s>&nbsp; &nbsp; ��<b><?=$value['3']?></b> ��ʡ��<?=$value['4']?></span>      </p>
<?php } } ?>
</td>
    </tr>
  <tr>
    <td height="30" align="center" valign="middle"><strong class="spaf">ѡ��֧����ʽ:</strong></td>
    <td><p>
<!--
<?php if($_SCONFIG['appay'] != '') { ?>
        <input name="cpay" type="radio" value="3" />
        <span class="spaf">֧����</span>
<?php } ?>
<?php if($_SCONFIG['tenpay'] != '') { ?>
        <input name="cpay" type="radio" value="1" checked="checked" />
        <span class="spaf">�Ƹ�ͨ</span>
<?php } ?>
<?php if($_SCONFIG['cbankpay'] != '') { ?>
      <input type="radio" name="cpay" value="2" />
      <span class="spaf">��������</span>
<?php } ?>
-->
<?php if($_SCONFIG['clpay'] != '') { ?>
      <input name="cpay" type="radio" value="4" />
      <span class="spaf">�������ֻ�����ֵ</span>
<?php } ?>
<?php if($_SCONFIG['clbpay'] != '') { ?>
        <input name="cpay" type="radio" value="5" checked="checked" />
      <span class="spaf">�����������߳�ֵ</span>
<?php } ?>
<!--
<?php if($_SCONFIG['pppay'] != '') { ?>
      <input type="radio" name="cpay" value="6" />
      <span class="spaf">PayPal</span>
<?php } ?>
-->
</p>      </td>
    </tr>
  <tr>
    <td height="30" align="center" valign="middle">&nbsp;</td>
    <td><input class="submit" name="Submit32" type="submit" value="��һ��"></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
      </form>
</table>

<?php } elseif($pay == 'ctvip') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ѡ�����</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ȷ�϶һ�     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ��ɶһ�   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="pay.php?pay=ctinfo">
      <caption>
      <h2>���ֶһ�VIP - ѡ�����</h2>
  
        <p>&nbsp;&nbsp&nbsp �һ��ɹ�������ȴ�����ʱ��Ч��</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">��Ʒ����:</strong></td>
    <td class="STYLE2">VIP��Ա
    <a href="pay.php?ac=vip" target="_blank">�鿴VIP��Ȩ</a>(���û���:<?=$space['credit']?>)</td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">��������:</strong></td>
    <td>

<?php if(is_array($ctarr)) { foreach($ctarr as $key => $value) { ?>
<p>
<?php if($key == 0) { ?>
 
        <input name="cvip" type="radio" value="<?=$key?>" checked="checked" />
<?php } else { ?>
        <input name="cvip" type="radio" value="<?=$key?>" />
<?php } ?>
        <span class="spaf"><?=$value['0']?>���� &nbsp; <-> &nbsp; <b><?=$value['1']?></b>�� </span>      </p>
<?php } } ?>
</td>
    </tr>
  <tr>
    <td height="30" align="center" valign="middle">&nbsp;</td>
    <td><input class="submit" name="Submit32" type="submit" value="��һ��"></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
      </form>
</table>
<?php } elseif($pay == 'ctinfo') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ѡ�����</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ȷ�϶һ�     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ��ɶһ�   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="pay.php?pay=ctinfo">
      <caption>
      <h2>���ֶһ�VIP - ѡ�����</h2>
  
        <p>&nbsp;&nbsp&nbsp �һ��ɹ�������ȴ�����ʱ��Ч��</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">��Ʒ����:</strong></td>
    <td class="STYLE2">VIP��Ա
    <a href="pay.php?ac=vip" target="_blank">�鿴VIP��Ȩ</a>(���û���:<?=$space['credit']?>)</td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">��������:</strong></td>
    <td>

 
        <input name="cvip" type="hidden" value="<?=$cvip?>" checked="checked" />
        <span class="spaf"><?=$ctinfo['vjf']?>���� &nbsp; <-> &nbsp; <b><?=$ctinfo['vday']?></b>�� </span>      </p>
</td>
    </tr>
  <tr>
    <td height="30" align="center" valign="middle">&nbsp;</td>
    <td><input class="submit" name="ctsubmit" type="submit" value="ȷ�϶һ�">
    <input class="submit" type="button" name="Submit2" value="����ѡ��" onclick="javascript:history.go(-1);" /></td>
  </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
      </form>
</table>
<?php } elseif($pay == 'info') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ѡ�����</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ȷ�Ϲ���     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
    ����֧��   </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ���Ĳ�<br />
    ��ɹ���   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <tr><td width="130"><form id="form2" name="form2" method="post" action="<?=$paypost?>">
      <caption>
      <h2>����VIP - ȷ�Ϲ���</h2>
  
        <p>&nbsp;&nbsp&nbsp ����ɹ�������ȴ�����ʱ��Ч��</p>
        </caption>
  
<?php if($cpay == 4) { ?>
    <tr>
      <td height="25" colspan="2" align="center">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="400"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td bgcolor="#99CC00"><table width="100%" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><span class="spaf" style="font-weight: bold"><strong class="spaf">��Ʒ����:</strong></span></td>
                        <td align="left" bgcolor="#FFFFFF" class="spaf"><span class="STYLE2">VIP��Ա</span> <a href="pay.php?ac=vip" target="_blank"><strong>�鿴VIP��Ȩ</strong></a></td>
                      </tr>                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">��������:</strong></td>
                        <td align="left" bgcolor="#FFFFFF"><span class="STYLE2">
                        <?=$vipinfo['pmey']?>Ԫ/<?=$vipinfo['day']?>��
                          <input name="cvip" type="hidden" id="cvip" value="<?=$cvip?>" />
                          <input name="cpay" type="hidden" id="cpay" value="<?=$cpay?>" />
                            </span></td>
                      </tr>
                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">�����г�ֵ�����</strong></td>
                        <td align="left" bgcolor="#FFFFFF"><select name="select" id="select">
                            <option value="10">10</option>
                            <option value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                            <option value="300">300</option>
                            <option value="500">500</option>
                          </select>
                            <span class="spaf">Ԫ</span><br />                            </strong></td>
                      </tr>
                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">�����г�ֵ�����к�</strong></td>
                        <td align="left" bgcolor="#FFFFFF"><input name="pa7_cardNo" type="text" class="tts" id="pa7_cardNo" size="30" /></td>
                      </tr>
                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">�����г�ֵ������</strong></td>
                        <td align="left" bgcolor="#FFFFFF"><input name="pa8_cardPwd" type="password" class="tts" id="pa8_cardPwd" size="30" /></td>
                      </tr>
                      <tr>
                        <td height="65" colspan="2" align="center" bgcolor="#FFFFFF"><input class="submit" name="Submit32" type="submit" value="ȷ�Ϲ���">
      <input class="submit" type="button" name="Submit" value="����ѡ��" onclick="javascript:history.go(-1);" /></td>
                      </tr>
                </table></td>
              </tr>
          </table></td>
          <td align="left"><ul>
              <li><strong>֧�ֿ��֣�</strong> </li>
            <li value="2">ȫ����������17λ������18λ����10��20��30��50��100��300��500Ԫ </li>
            <li>���յط���������16λ������17λ����30��50��100Ԫ </li>
            <li>�㽭�ط���������10λ������8λ����20��30��50��100Ԫ </li>
            <li>�����ط���������16λ������21λ����50��100Ԫ<br />
                  <br />
              </li>
            <li><strong>֧��˵����</strong> </li>
            <li><strong>�� </strong>�³�ֵ�����ڱ�վ֧����������ĳ�ֵ�������Խ���֧���� </li>
            <li><strong>�� </strong>�ڱ�վ֧����������ĳ�ֵ�������ܸ��ֻ���ֵ�� </li>
            <li><strong>�� </strong>�ύ���ܺ����Ժ󣬲�Ҫ�ر�ϵͳ����ҳ�档 </li>
            <li><strong>�� </strong>������Ķ������ϴ�������ʹ�ö��ų�ֵ��֧����<br />
                  <br />
              </li>
            <li><strong><font color="red">ע�����</font></strong> </li>
            <li><font color="red"><strong>�� </strong>�����ʹ������ѡ��������ͬ�������п�����֧������������Ľ���ʧ�ܽ��׽����˻���</font>�磺ѡ��50Ԫ��ʹ��100Ԫ��֧������ϵͳ��Ϊʵ��֧�����Ϊ50Ԫ������50Ԫ���ֲ����˻���ѡ��50Ԫ��ʹ��30Ԫ��֧����ϵͳ��Ϊ֧��ʧ�ܣ�30Ԫ�����˻���</li>
          </ul></td>
        </tr>
      </table></td>
      </tr>  
<?php } ?>

<?php if($cpay == 5) { ?>
   <tr>
      <td height="25" colspan="2" align="center"><strong class="spaf">ѡ������</strong>
        <table width="100%" border="0" cellspacing="1" cellpadding="1">
          <tr>
            <td width="130" height="25" align="center" bgcolor="#FFFFFF"><span class="spaf" style="font-weight: bold"><strong class="spaf">��Ʒ����:</strong></span></td>
            <td align="left" bgcolor="#FFFFFF" class="spaf"><span class="STYLE2">VIP��Ա</span> <a href="pay.php?ac=vip" target="_blank"><strong>�鿴VIP��Ȩ</strong></a></td>
          </tr>
          <tr>
            <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">��������:</strong></td>
            <td align="left" bgcolor="#FFFFFF"><span class="STYLE2"> <?=$vipinfo['pmey']?>Ԫ/<?=$vipinfo['day']?>��
              <input name="cvip" type="hidden" id="cvip2" value="<?=$cvip?>" />
                  <input name="cpay" type="hidden" id="cpay" value="<?=$cpay?>" />
            </span></td>
          </tr>
          <tr>
            <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">��ѡ������</strong></td>
            <td align="left" bgcolor="#FFFFFF"><table width="500" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="42" align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio13" value="ICBC-NET" checked="checked" />
                    <img src="image/pay/payment_bank1.gif" width="127" height="33" align="absmiddle" /> </td>
                <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio14" value="ABC-NET" />
                    <img src="image/pay/payment_bank3.gif" width="127" height="33" align="absmiddle" /></td>
                <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio15" value="CMBC-NET" />
                    <img src="image/pay/payment_bank4.gif" width="127" height="33" align="absmiddle" /></td>
              </tr>
              <tr>
                <td height="42" align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio16" value="CCB-NET" />
                    <img src="image/pay/payment_bank2.gif" width="127" height="33" align="absmiddle" /></td>
                <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio17" value="BCCB-NET" />
                    <img src="image/pay/payment_bank8.gif" width="127" height="33" align="absmiddle" /></td>
                <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio18" value="BOCO-NET" />
                    <img src="image/pay/payment_bank7.gif" width="127" height="33" align="absmiddle" /></td>
              </tr>
              <tr>
                <td height="42" align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio19" value="CIB-NET" />
                    <img src="image/pay/payment_bank12.gif" width="127" height="33" align="absmiddle" /></td>
                <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio20" value="CMBCHINA-NET" />
                    <img src="image/pay/payment_bank6.gif" width="127" height="33" align="absmiddle" /></td>
                <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio21" value="CEB-NET" />
                    <img src="image/pay/payment_bank14.gif" width="127" height="33" align="absmiddle" /></td>
              </tr>
              <tr>
                <td height="42" align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio22" value="ECITIC-NET" />
                    <img src="image/pay/payment_bank13.gif" width="127" height="33" align="absmiddle" /></td>
                <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio23" value="SDB-NET" />
                    <img src="image/pay/payment_bank11.gif" width="127" height="33" align="absmiddle" /></td>
                <td align="center" valign="middle"><input name="pd_FrpId" type="radio" class="radio"	id="radio24" value="SPDB-NET" />
                    <img src="image/pay/payment_bank10.gif" width="127" height="33" align="absmiddle" /></td>
              </tr>
            </table>
              <br />
                </strong></td>
          </tr>

          <tr>
            <td height="65" colspan="2" align="center" bgcolor="#FFFFFF"><input class="submit" name="Submit322" type="submit" value="ȷ�Ϲ���" />
                <input class="submit" type="button" name="Submit4" value="����ѡ��" onclick="javascript:history.go(-1);" /></td>
          </tr>
        </table>
        </td>
      </tr>
<?php } ?>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
      </form>
</table>
<?php } elseif($pay == 'v') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ѡ���û�</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ȷ������     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
     ��ɲ���   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="<?=$paypost?>">
      <caption>
      <h2>����VIP - ȷ������</h2>
  
        <p>&nbsp;&nbsp&nbsp �����ɹ�������ȴ�����ʱ��Ч��</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">�û���:</strong></td>
    <td><span class="STYLE2"><?=$space['username']?></span>    </td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">��������:</strong></td>
    <td class="STYLE2">
<select name="v_day">
      <?php if(is_array($dayarr)) { foreach($dayarr as $key => $value) { ?>
       <option value="<?=$key?>"><?=$value?> ��</option>
 
      <?php } } ?>
      </select>
    <input name="cpay" type="hidden" id="cpay" value="4" />
    <input name="uid" type="hidden" id="uid" value="<?=$space['uid']?>" /></td>
    </tr>
      <tr>
        <td height="10" colspan="2"></td>
      </tr>
  <tr>
    <td height="30" align="center" valign="middle"></td>
    <td><input class="submit" name="openvip" type="submit" value="ȷ�ϲ���">
    <input class="submit" type="button" name="Submit" value="����ѡ��" onclick="javascript:history.go(-1);" /></td>
  </tr>
      <tr>
        <td height="20" colspan="2"></td>
      </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
      </form>
</table><?php } elseif($pay == 'c') { ?>
<table border="0" align="right">
  <tr>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ��һ��<br />
     ѡ���û�</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> �ڶ���<br />
     ȷ��ȡ��     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> ������<br />
     ��ɲ���   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="<?=$paypost?>">
      <caption>
      <h2>ȡ��VIP - ȷ��ȡ��</h2>
  
        <p>&nbsp;&nbsp&nbsp ȡ���ɹ�������ȴ�����ʱ��Ч��</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">�û���:</strong></td>
    <td><span class="STYLE2"><?=$space['username']?></span>    </td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">��ǰ����:</strong></td>
    <td>
<span class="STYLE2">ʣ��</span> <strong><?=$v_day['vday']?></strong> <span class="STYLE2">��</span>
    <input name="cpay" type="hidden" id="cpay" value="5" />
    <input name="uid" type="hidden" id="uid" value="<?=$space['uid']?>" /></td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">��������:</strong></td>
    <td><input name="v_day" type="text" class="tts" id="v_day" value="<?=$v_day['vday']?>" size="6" /></td>
    </tr>
      <tr>
        <td height="10" colspan="2"></td>
      </tr>
  <tr>
    <td height="30" align="center" valign="middle"></td>
    <td><input class="submit" name="disablevip" type="submit" value="ȷ�ϲ���">
    <input class="submit" type="button" name="Submit" value="����ѡ��" onclick="javascript:history.go(-1);" /></td>
  </tr>
      <tr>
        <td height="20" colspan="2"></td>
      </tr>
      <tr>
        <td height="1" colspan="2" bgcolor="#FF9900"></td>
      </tr>
      </form>
</table>


<?php } ?>
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
<?php ob_out();?>