<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/index|template/blue/header|data/blocktpl/2|data/blocktpl/1|template/blue/footer', '1318212323', 'template/blue/index');?><?php $_TPL['nosidebar']=1; ?>
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
<script type="text/javascript" src="template/default/script/js.js"></script>
<script type="text/javascript" src="template/default/script/jquery.js"></script>
<script type="text/javascript" src="template/default/script/jquery.cycle.js"></script>
<script type="text/javascript"> var jq = jQuery.noConflict(); </script>

<script type="text/javascript">
jq(function(){
jq('#ben').cycle({ 
fx:'scrollLeft',
pager:'#btn'
});
})
</script>
<style type="text/css">
#menu ul .right_login{background:url(template/default/image/login_top.gif) no-repeat left top;width:226px;height:28px; padding:8px 8px 8px 8px;float:right;font-size:12px;}
#menu ul .right_login a{ display:none;}
.login_lo{ display:none;}
.login_zc{ display:none;}
#menu ul li .home{background:url(template/default/image/menu_img.gif) no-repeat left -88px;width:52px;height:34px;padding:10px 6px 0 0; display:block;font-size:15px;color:#aa4074;text-align:center; font-weight:bold;}
#menu ul li .home:hover{background:url(template/default/image/menu_img.gif) no-repeat left -88px;width:52px;height:34px;padding:10px 6px 0 0; display:block;font-size:15px;color:#aa4074;text-align:center; font-weight:bold;}
.STYLE1 {
color: #FF0000;
font-weight: bold;
}
.STYLE2 {
color: #FF0033;
font-weight: bold;
}
</style>
<!-- ͼƬ����¼ -->
<div id="bnlogin">
<div id="bn"><div id="btn"></div>
<div id="ben">
<a href="index.php.htm" tppabs="/do.php?ac=fd82d087959c974d97d30ecdc0ffb1ad"><img src="template/default/image/pic2.jpg" tppabs="/template/default/image/pic2.jpg" border="0"/></a>
<a href="index.php.htm" tppabs="/do.php?ac=fd82d087959c974d97d30ecdc0ffb1ad"><img src="template/default/image/pic.jpg" tppabs="/template/default/image/pic.jpg" border="0"/></a>
</div></div>
<div class="login">
<div class="line"></div>
<?php if($_SGLOBAL['supe_uid']) { ?>
<div class="nr2">
<?php echo avatar($_SGLOBAL[supe_uid],middle,false,$_space[sex]); ?>
<ul class="ul">
<li>��ӭ����<font color="cb0069"><?=$_SN[$_SGLOBAL['supe_uid']]?></font></li>
<?php if($vips['ztime'] > 0) { ?>
<li><img src="/image/pay/vip.gif" border="0" width="40" height="16" /></li>
<?php } else { ?>
<li><font color="#666666">��ͨ��Ա</font> <a href="/pay.php?pay=buyvip">����VIP</a></li>
<?php } ?>
<li>��ǰ�𶹣�<?=$_SGLOBAL['member']['credit']?> ��</li>
<li><a href="space.php?do=home" class="a">��������</a> <a href="cp.php?ac=common&op=logout&uhash=<?=$_SGLOBAL['uhash']?>" class="e">�˳�</a></li>
</ul>
<div class="kj">
<ul>
<li><img src="template/default/image/rzimg.gif" /><a href="cp.php?ac=blog">д��־</a></li>
<li><img src="template/default/image/photoimg.gif" /><a href="cp.php?ac=upload">����Ƭ</a></li>
<li><img src="template/default/image/tuo.gif" /><a href="payf.php">���</a></li>
<li><img src="template/default/image/yqimg.gif" /><a href="cp.php?ac=invite">�������</a></li>
</ul>
</div>
</div>
<?php } else { ?>
<div class="nr">
<form id="loginform" name="loginform" action="do.php?ac=<?=$_SCONFIG['login_action']?>&<?=$url_plus?>&ref" method="post">
<ul>
<li class="tit"><label for="username">�ʺţ�</label></li><li class="input"><input type="text" name="username" id="username" class="t_input" value="<?=$membername?>" /></li>
<li class="tit"><label for="password">���룺</label></li><li class="input"><input type="password" name="password" id="password" class="t_input" value="<?=$password?>" /></li>
<li class="tit"></li><li class="qt"><input type="checkbox" id="cookietime" name="cookietime" value="315360000" <?=$cookiecheck?> style="margin-bottom: -2px;" /><label for="cookietime">�´��Զ���¼</label></li>
<li class="tit"></li><li class="qt"><input type="hidden" name="refer" value="space.php?do=home" />
<input type="submit" id="loginsubmit" name="loginsubmit" value="��¼" class="submit" tabindex="5" />  <a href="do.php?ac=lostpasswd" target="_blank"><font color="#E40F74">�һ�����</font></a>
<!--<input type="image" id="loginsubmit" name="loginsubmit" value="��¼" src="template/default/image/login_bn.gif" />--></li>
<li class="zc">�����ǻ�Ա��  <a href="do.php?ac=b074b096e28670e8301d209041ba2cdf">����ע��</a></li>
</ul><input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
</div>
<?php } ?>

<div class="bottom"></div>
</div>
</div>
<!-- ͼƬ����¼end -->

<!-- ���������� -->
<div id="soren">
<div class="search"> 
<form action="cp.php" method="get">
<input type="hidden" name="ac" value="friend">
<input type="hidden" name="op" value="search">
<input type="hidden" name="all" value="yes">
<input type="hidden" name="searchsubmit" value="����">
<input type="hidden" name="searchmode" value="1">
<b>��������</b>&nbsp;&nbsp;��Ҫ��&nbsp;<select name="sex" size="1"><option value="2">��Ů</option><option value="1">˧��</option></select>&nbsp;&nbsp;����<input type="text" name="startage" value="18" size="2" class="t_input" />&nbsp;&nbsp;��&nbsp;&nbsp;<input type="text" name="endage" value="32" size="2" class="t_input" />&nbsp;&nbsp;���� &nbsp;&nbsp;<span id="residecitybox1"></span><script type="text/javascript" src="/source/script_city.js"></script>
<script type="text/javascript">showprovince('resideprovince1', 'residecity1', '', 'residecitybox1');showcity('residecity1', '', 'resideprovince1', 'residecitybox1');</script>&nbsp;&nbsp;<input type="checkbox" name="avatar" value="1" class="in">����Ƭ&nbsp;<input type="submit" class="submit" value="��ʼ����">
</form>
</div> 
<div class="ren">
���߻�Ա <span class="STYLE1"><font>3568</font></span> ��<br />
���� <span class="STYLE2"><font>182588</font></span> λ��Ա����</div>
</div>
<!-- ����������end -->

<!-- �������а��Ҳ� -->
<div id="main">
<div class="tongc">
<div class="tit">
<h2>�������а�</h2>
<div class="cs"><a href='cp.php?resideprovince=%B1%B1%BE%A9&amp;residecity=&amp;name=&amp;username=&amp;searchsubmit=%B2%E9%D5%D2&amp;ac=friend&amp;op=search&amp;type=base' target='_blank'>�Ϻ�</a> | <a href='cp.php?resideprovince=%C9%CF%BA%A3&amp;residecity=&amp;name=&amp;username=&amp;searchsubmit=%B2%E9%D5%D2&amp;ac=friend&amp;op=search&amp;type=base' target='_blank'>�㶫</a> | <a href='cp.php?resideprovince=�㶫&amp;residecity=����&amp;name=&amp;username=&amp;searchsubmit=����&amp;ac=friend&amp;op=search&amp;type=base' target='_blank'>����</a> | <a href='cp.php?resideprovince=%BA%FE%B1%B1&amp;residecity=%CE%E4%BA%BA&amp;name=&amp;username=&amp;searchsubmit=%B2%E9%D5%D2&amp;ac=friend&amp;op=search&amp;type=base' target='_blank'>�ɶ�</a> | <a href='cp.php?resideprovince=%D6%D8%C7%EC&amp;residecity=&amp;name=&amp;username=&amp;searchsubmit=%B2%E9%D5%D2&amp;ac=friend&amp;op=search&amp;type=base' target='_blank'>����</a> | <a href='cp.php?resideprovince=%CC%EC%BD%F2&amp;residecity=&amp;name=&amp;username=&amp;searchsubmit=%B2%E9%D5%D2&amp;ac=friend&amp;op=search&amp;type=base' target='_blank'>����</a> | <a href='cp.php?resideprovince=%B9%E3%B6%AB&amp;residecity=%C9%EE%DB%DA&amp;name=&amp;username=&amp;searchsubmit=%B2%E9%D5%D2&amp;ac=friend&amp;op=search&amp;type=base' target='_blank'>����</a> |<a href='cp.php?resideprovince=%BA%FE%C4%CF&amp;residecity=%B3%A4%C9%B3&amp;name=&amp;username=&amp;searchsubmit=%B2%E9%D5%D2&amp;ac=friend&amp;op=search&amp;type=base' target='_blank'>ͬ�ǽ��Ѱ��鹫Ԣ��ӭ����ף���ҵ�ͬ������</a></div>
<div class="more"><a href="cp.php?ac=friend&op=search&all=yes">����>></a></div>
</div>

<?php if(is_array($spacelist)) { foreach($spacelist as $value) { ?>			
<div class="grxx">
<table width="100%"><tr>
<td width="140" align="center">
<div class="arin_r_t"><div class="arin_l_t"><div class="arin_r_b"><div class="arin_l_b">
<a href="space.php?uid=<?=$value['uid']?>" title="<?=$_SN[$value['uid']]?>" target="_blank">
<?php echo avatar($value[uid],middle,false,$value[sex]); ?></a>
<a href="space.php?uid=<?=$value['uid']?>" title="<?=$_SN[$value['uid']]?>" target="_blank"><div class="user_div3" title="<?=$_SN[$value['uid']]?>" ></div></a></div></div></div></div>
</td>
<td valign="top">
<h2><a href="space.php?uid=<?=$value['uid']?>" target="_blank"><?=$_SN[$value['uid']]?></a><?php if($value['sex']==2) { ?>��Ů<?php } elseif($value['sex']==1) { ?>˧��<?php } ?> <?=$value['birth']?></h2>
<font>����<?=$value['resideprovince']?> <?=$value['residecity']?></font>
<a href="cp.php?ac=friend&op=search&view=reside" target="_blank">&raquo; ����ͬ��</a>
</br>
<a href="cp.php?ac=friend&op=search&view=sex" target="_blank">&raquo; ������Ů����</a>
</br><font></font>
<a href="space.php?uid=<?=$value['uid']?>" class="xq">�鿴��ϸ����</a>
</td></tr></table></div>
<?php } } ?>
</div>

<div class="mainr">

<div class="new">
<div class="gqjy"><img src="template/default/image/tit2.gif" align="absmiddle" /> ��Ա��̬</div>
<div class="list">
<?php block("perpage/10/sql/SELECT%20%2A%20FROM%20%60uchome_feed%60%20AS%20%60feed%60%20WHERE%20%60feed%60.%60friend%60%3D%270%27/cachename/block2/cachetime/0"); ?>
<ul>
<?php if(is_array($_SBLOCK['block2'])) { foreach($_SBLOCK['block2'] as $value) { ?>
<li><img src="template/default/image/tit.gif" />��ӭ  <font color='#FF00FF'><?=$value['username']?></font>   ��פͬ�ǰ��鹫Ԣͬ�ǽ�����!<span class="gray"><?php echo sgmdate('m-d H:i',$value[dateline],1); ?></span></li>
<?php } } ?>
</ul>
</div>
</div>

<div class="new">
<div class="gqjy"><img src="template/default/image/tit2.gif" align="absmiddle" /> �Ƽ���־</div>
<div class="list">
<?php block("sql/SELECT%20%2A%20FROM%20%60uchome_blog%60%20AS%20%60blog%60%20WHERE%20%60blog%60.%60friend%60%3D%270%27%20LIMIT%200%2C1/cachename/block1/cachetime/0"); ?>
<style type="text/css">
<!--
.STYLE3 {color: #999999}
-->
</style>

<ul>
<?php if(is_array($_SBLOCK['block1'])) { foreach($_SBLOCK['block1'] as $value) { ?>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=<?=$value['uid']?>&do=blog&id=<?=$value['blogid']?>" target="_blank"><?=$value['subject']?></a>&nbsp;&nbsp;<span class="gray STYLE3">3����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=2&do=blog&id=2" target="_blank">ͬ�ǽ�������Աͻ��15��</a>&nbsp;&nbsp;<span class="gray STYLE3">3����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=3&do=blog&id=3" target="_blank">�����˳ɾ������Ҹ������</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=4&do=blog&id=4" target="_blank">��л�Ͳ���������ҵ��Ҹ�</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=2&do=blog&id=2" target="_blank">Ѱ�������ˣ�ϣ�����ҵ�</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=3&do=blog&id=3" target="_blank">��į���˭��������</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=4&do=blog&id=4" target="_blank">Ů����ʵ���˭�����</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=4&do=blog&id=4" target="_blank">�ո�ʧ���������</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=2&do=blog&id=2" target="_blank">��Ů��ϵ�Ҷ�</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=3&do=blog&id=3" target="_blank">�Ҹ���Ǯ��˧��</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=4&do=blog&id=4" target="_blank">׼��ȥ���Σ�˭ȥ��</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=4&do=blog&id=4" target="_blank">�ȴ���.......</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<li><img src="template/default/image/tit.gif" /><a href="/space.php?uid=4&do=blog&id=4" target="_blank">�������ˣ�����</a>&nbsp;&nbsp;<span class="gray STYLE3">1����ǰ</span></li>
<?php } } ?>
</ul>
</div>
</div>

</div>
</div>
<!-- ͬ�����ˡ��Ҳ�end -->
<div id="link">
<div class="link_lj"><b>�������ӣ�</b><a href='http://www.10ss.info' target='_blank'>ͬ�ǰ��鹫Ԣ</a><a href="http://www.baidu.com"></a> <a href='http://www.10ss.info' target='_blank'>ͬ���Ұ�����</a> <a href='http://www.10ss.info' target='_blank'>ͬ�ǽ���</a> <a href='http://www.10ss.info' target='_blank'>ͬ�ǻ����  </a> <a href="http://www.10ss.info" target="_blank">ͬ��ְҵѧԺ��̳</a> <a href="http://www.10ss.info" target="_blank">ɽ������ѧ��̳</a> <a href="http://www.10ss.info" target="_blank">ͬ����̳</a></a></div>
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
<?php } ?>

<?php ob_out();?>