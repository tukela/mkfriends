<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/cp_profile|template/blue/header|template/blue/cp_header|template/blue/footer', '1318212727', 'template/blue/cp_profile');?><?php if(empty($_SGLOBAL['inajax'])) { ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=<?=$_SC['charset']?>" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<title><?php if($_TPL['titles']) { ?><?php if(is_array($_TPL['titles'])) { foreach($_TPL['titles'] as $value) { ?><?php if($value) { ?><?=$value?> - <?php } ?><?php } } ?><?php } ?><?php if($_SN[$space['uid']]) { ?><?=$_SN[$space['uid']]?> - <?php } ?><?=$_SCONFIG['sitename']?>-同城交友网|同城婚介所|同城交友找情人</title>
<META content="同城交友，同城交友网，同城婚介，同城交友，同城婚介所，同城爱情公寓，同城同城交友找情人，同城同城交友" name="keywords">
<META content="【同城爱情公寓】同城交友网提供同城同城交友找情人、同城婚介所服务，是同城最专业的同城交友平台，祝您找到同城情人。" name="description">
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

<!-- 顶部 -->
<div id="indextop">
<div class="logo"><a href="/"><img src="template/default/image/logo.gif" /></a></div>
<div class="topright">
<div class="qq"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=417215092&amp;site=qq&amp;menu=yes" target="_blank">在线客服</a><a href="javascript:window.external.AddFavorite('http://www.zibo3.com', '同城爱情公寓 ')">收藏本站</a></div>
<div class="slogan">
<ul id="scroll">
<li><img src="template/default/image/sound.gif" />本站专为情感孤独、寂寞人士服务，拒绝色情!本站提倡真情关爱、生活帮助、事业援助！</li>
<li><img src="template/default/image/sound.gif" />本站男多女少，男女比例大约10:1，守株待兔的男士基本没戏，必需主动加美女QQ联系！</li>
<li><img src="template/default/image/sound.gif" />【同城爱情公寓】同城交友网提供同城同城交友找情人，最专业的同城婚介所 </li>
<li><img src="template/default/image/sound.gif" />真实头像可以增加10倍的交友效果！<A href="/cp.php?ac=avatar">→更新头像</A>&nbsp;&nbsp;交友有风险 约会请谨慎！<A href="/about/fpmj.htm" target=_blank>→防骗秘笈</A></li>
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
<!-- 顶部end -->

<!-- 菜单 -->
<div id="menu">
<ul>
<li class="left"></li>
<?php if($_SGLOBAL['supe_uid']) { ?>
<li><a href="index.php" class="home">首页</a></li>
<li><?php if($_GET['do']=='home') { ?><a href="space.php?do=home" class="mf_a">个人中心</a><?php } else { ?><a href="space.php?do=home" class="mf">个人中心</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='girl') { ?><a href="space.php?do=top&view=mm" class="mf_a">迷人女士</a><?php } else { ?><a href="space.php?do=top&view=mm" class="mf">迷人女士</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='man') { ?><a href="space.php?do=top&view=gg" class="mf_a">大方绅士</a><?php } else { ?><a href="space.php?do=top&view=gg" class="mf">大方绅士</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='') { ?><a href="/cp.php?ac=friend&op=search" class="mf_a">同城异性</a><?php } else { ?><a href="/cp.php?ac=friend&op=search" class="mf">同城异性</a><?php } ?></li><li class="notifyhot"><img src="image/hot.gif" height="14" width="22" border="0" /></li>
<li><?php if($_GET['ac']=='friend' and $_GET['op']=='search') { ?><a href="cp.php?ac=friend&op=search&all=yes" class="mt_a">搜索</a><?php } else { ?><a href="cp.php?ac=friend&op=search&all=yes" class="mt">搜索</a><?php } ?></li>
<li><?php if($_GET['do']=='blog') { ?><a href="space.php?do=blog" class="mt_a">日志</a><?php } else { ?><a href="space.php?do=blog" class="mt">日志</a><?php } ?></li>
<li><?php if($_GET['do']=='album') { ?><a href="space.php?do=album" class="mt_a">相册</a><?php } else { ?><a href="space.php?do=album" class="mt">相册</a><?php } ?></li>
<li><?php if($_GET['do']=='pm') { ?><a href="space.php?do=pm<?php if(!empty($_SGLOBAL['member']['newpm'])) { ?>&filter=newpm<?php } ?>" class="mt_a">消息</a><?php } else { ?><a href="space.php?do=pm<?php if(!empty($_SGLOBAL['member']['newpm'])) { ?>&filter=newpm<?php } ?>" class="mt">消息</a><?php } ?></li><?php if($_SGLOBAL['member']['allnotenum']) { ?><li class="notify" id="membernotemenu" onmouseover="showMenu(this.id)">未读<a href="space.php?do=notice"><?=$_SGLOBAL['member']['allnotenum']?></a></li><?php } ?>
<?php } else { ?>
<li><a href="index.php" class="home">首页</a></li>
<li><?php if($_GET['do']=='home') { ?><a href="space.php?do=home" class="mf_a">个人中心</a><?php } else { ?><a href="space.php?do=home" class="mf">个人中心</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='girl') { ?><a href="space.php?do=top&view=mm" class="mf_a">迷人女士</a><?php } else { ?><a href="space.php?do=love&p=girl" class="mf">迷人女士</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='man') { ?><a href="space.php?do=top&view=gg" class="mf_a">大方绅士</a><?php } else { ?><a href="space.php?do=love&p=man" class="mf">大方绅士</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='man') { ?><a href="space.php?do=top&view=gg" class="mf_a">夫妻会员</a><?php } else { ?><a href="space.php?do=love&p=fq" class="mf">夫妻会员</a><?php } ?></li>
<li><?php if($_GET['do']=='love' and $_GET['p']=='') { ?><a href="space.php?do=love" class="mf_a">同城异性</a><?php } else { ?><a href="space.php?do=love" class="mf">同城异性</a><?php } ?></li><li class="notifyhot"><img src="image/hot.gif" height="14" width="22" border="0" /></li>
<li><?php if($_GET['ac']=='friend' and $_GET['op']=='search') { ?><a href="cp.php?ac=friend&op=search&all=yes" class="mt_a">搜索</a><?php } else { ?><a href="cp.php?ac=friend&op=search&all=yes" class="mt">搜索</a><?php } ?></li>
<li><?php if($_GET['do']=='blog') { ?><a href="space.php?do=blog" class="mt_a">日志</a><?php } else { ?><a href="space.php?do=blog" class="mt">日志</a><?php } ?></li>
<li><?php if($_GET['do']=='album') { ?><a href="space.php?do=album" class="mt_a">相册</a><?php } else { ?><a href="space.php?do=album" class="mt">相册</a><?php } ?></li>
<?php } ?>
<li class="right_login">
<?php if($_SGLOBAL['supe_uid']) { ?>
<a href="space.php?uid=<?=$_SGLOBAL['supe_uid']?>" class="login_thumb"><?php echo avatar($_SGLOBAL[supe_uid],small,false,$_space[sex]); ?></a>
<div class="name"><a href="space.php?uid=<?=$_SGLOBAL['supe_uid']?>" class="loginName"><?=$_SN[$_SGLOBAL['supe_uid']]?></a>
<?php if($_SGLOBAL['member']['credit']) { ?>
<a href="cp.php?ac=credit"><img src="image/credit.gif"><?=$_SGLOBAL['member']['credit']?></a>
<?php } ?>
<?php if($vips['ztime'] > 0) { ?>
<a href="pay.php?ac=vip"><img src="image/pay/vip.gif" alt="VIP会员:<?=$vips['day']?>天" border="0" align="absmiddle" /></a>
<?php } else { ?>
<a href="pay.php?ac=vip" target="_blank"><img src="image/pay/vip2.gif" alt="未激活" border="0" align="absmiddle" /></a>
<?php } ?>
<?php if(empty($_SCONFIG['closeinvite'])) { ?>
<?php } ?>
<a href="cp.php">设置</a> 
<a href="cp.php?ac=common&op=logout&uhash=<?=$_SGLOBAL['uhash']?>">退出</a>
            </div>
<?php } else { ?>

<a href="do.php?ac=<?=$_SCONFIG['login_action']?>" class="login_lo"><img src="template/default/image/login_lo.gif" border="0" align="absmiddle" /> 登录</a>
<a href="do.php?ac=<?=$_SCONFIG['register_action']?>" class="login_zc"><img src="template/default/image/login_zcimg.gif" border="0" align="absmiddle" /> 注册</a>
<?php } ?>
</li>
</ul>
</div>
<!-- 菜单end -->

<div id="wrap">

<?php if(empty($_TPL['nosidebar'])) { ?>
<div id="mainu">
<div id="app_sidebar">
<?php if($_SGLOBAL['supe_uid']) { ?>
<ul class="app_list" id="default_userapp">
<!-- 	<li><img src="template/default/image/app/doing.gif"><a href="space.php?do=doing">记录</a></li> -->
<?php if($_GET['ac']=='upload') { ?>
                <li class="li" style="margin-top:0;"><img src="template/default/image/photoimg.gif"><a href="cp.php?ac=upload"><span style="font:14px/20px '宋体';color:#000;">上传相片</span></a></li>
                <?php } else { ?><li><img src="template/default/image/photoimg.gif"><a href="cp.php?ac=upload"><span style="font:14px/20px '宋体';color:#000;">上传相片</span></a></li><?php } ?>
                
<?php if($_GET['ac']=='blog') { ?>
                <li class="li"><img src="template/default/image/rzimg.gif"><a href="cp.php?ac=blog"><span style="font:14px/20px '宋体';color:#000;">发表日志</span></a></li>
                <?php } else { ?><li><img src="template/default/image/rzimg.gif"><a href="cp.php?ac=blog"><span style="font:14px/20px '宋体';color:#000;">发表日志</span></a></li><?php } ?>

<?php if($_SERVER['REQUEST_URI']=='/cp.php' or $_GET['ac']=='profile' or $_GET['ac']=='info' or $_GET['ac']=='avatar') { ?>
                <li class="li"><img src="template/default/image/infoimg.gif"><a href="/cp.php"><span style="font:bold 14px/20px '宋体';color:#000;">修改资料</span></a></li>
                <?php } else { ?><li><img src="template/default/image/infoimg.gif"><a href="/cp.php">修改资料</a></li><?php } ?>
<li><img src="template/default/image/homeimg.gif"><a href="/space.php" target="_blank">资料预览</a></li>

            <?php if($_GET['do']=='friend' and $_GET['uid']>0) { ?>
<li class="li"><img src="template/default/image/faimg.gif"><a href="/space.php?uid=<?=$_SGLOBAL['supe_uid']?>&do=friend"><span style="font:bold 14px/20px '宋体';color:#000;">我的好友</span></a></li>
            <?php } else { ?><li><img src="template/default/image/faimg.gif"><a href="/space.php?uid=<?=$_SGLOBAL['supe_uid']?>&do=friend">我的好友</a></li><?php } ?>

<?php if($_GET['ac']=='invite') { ?>
<li class="li"><img src="template/default/image/faimg.gif"><a href="/cp.php?ac=invite"><span style="font:bold 14px/20px '宋体';color:#000;">邀请好友</span></a></li>
            <?php } else { ?><li><img src="template/default/image/faimg.gif"><a href="/cp.php?ac=invite">邀请好友</a></li><?php } ?>

            <?php if($_GET['do']=='friend' and $_GET['view']=='visitor') { ?>
<li class="li"><img src="template/default/image/look.gif"><a href="/space.php?do=friend&view=visitor"><span style="font:bold 14px/20px '宋体';color:#000;">谁看过我</span></a></li>
            <?php } else { ?><li><img src="template/default/image/look.gif"><a href="/space.php?do=friend&view=visitor">谁看过我</a></li><?php } ?>
            <?php if($_GET['do']=='friend' and $_GET['view']=='trace') { ?>
<li class="li"><img src="template/default/image/look.gif"><a href="/space.php?do=friend&view=trace"><span style="font:bold 14px/20px '宋体';color:#000;">我看过谁</span></a></li>
            <?php } else { ?><li><img src="template/default/image/look.gif"><a href="/space.php?do=friend&view=trace">我看过谁</a></li><?php } ?>

<?php if($_SERVER['REQUEST_URI']=='/cp.php?ac=credit') { ?>
                <li class="li"><img src="template/default/image/tuo.gif"><a href="/cp.php?ac=credit"><span style="font:bold 14px/20px '宋体';color:#000;">金豆中心</span></a></li>
                <?php } else { ?><li><img src="template/default/image/tuo.gif"><a href="/cp.php?ac=credit">金豆中心</a></li><?php } ?>
                <?php if($_SERVER['REQUEST_URI']=='/payf.php') { ?>
<li class="li"><img src="template/default/image/tuo.gif"><a href="/payf.php"><span style="font:bold 14px/20px '宋体';color:#000;">金豆充值</span></a></li>
                <?php } else { ?><li><img src="template/default/image/tuo.gif"><a href="/pay.php">金豆充值</a></li><?php } ?>
                <?php if($_SERVER['REQUEST_URI']=='/payv.php') { ?>
<li class="li"><img src="template/default/image/vipimg.gif"><a href="pay.php?ac=vip"><span style="font:bold 14px/20px '宋体';color:#000;">升级VIP</span></a> <img src="template/default/image/hot.gif" height="14" width="22" border="0" /></li>
                <?php } else { ?><li><img src="template/default/image/vipimg.gif"><a href="/pay.php?ac=vip">升级VIP</a> <img src="image/hot.gif" height="14" width="22" border="0" /></li><?php } ?>
</ul>
<?php if($_GET['op']=='search' and $_GET['all']=='yes') { ?><?php } else { ?>
      <div class="so">
      <h2>快速搜索</h2>
<form action="cp.php" method="get">
<table width="152">
<!--<tr><td align="right">姓名：</td><td><input type="text" name="name" value="" class="t_input"></td></tr>-->

<!--<tr><td align="right">用户UID：</td><td><input type="text" name="uid" value="" class="t_input"></td></tr>-->
<tr>
<td align="right" width="55">性别：</td>
<td>
<select id="sex" name="sex">
<option value="0">任意</option>
<option value="1">男</option>
<option value="2" selected>女</option>
</select>
</td>
</tr>
<tr>
<td align="right">婚恋：</td>
<td>
<select id="marry" name="marry">
<option value="0">任意</option>
<option value="1">单身</option>
<option value="2">非单身</option>
</select>
</td>
</tr>
<tr>
<td align="right">年龄段：</td>
<td>
<input type="text" name="startage" value="18" size="1"/> ~ <input type="text" name="endage" value="36" size="1"/>
</td>
</tr>
<?php if($_SCONFIG['videophoto']) { ?>
<tr>
<td align="right">视频认证：</td>
<td>
<input type="checkbox" name="videostatus" value="1">通过视频认证
</td>
</tr>
<?php } ?>
<tr>
<td align="right">头像：</td>
<td>
<input type="checkbox" name="avatar" value="1">已上传头像
</td>
</tr>

<tr>
<td align="right" valign="top">居住地：</td>
<td id="residecitybox1"></td>
</tr>
<tr><td align="right">用户名：</td><td><input type="text" name="username" value="" size="7"></td></tr>
<!--<tr>
<td align="right">出生地：</td>
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
<td align="right">生日：</td>
<td>
<select id="birthyear" name="birthyear" onchange="showbirthday();">
<option value="0">&nbsp;</option>
<?=$birthyeayhtml?>
</select> 年 
<select id="birthmonth" name="birthmonth" onchange="showbirthday();">
<option value="0">&nbsp;</option>
<?=$birthmonthhtml?>
</select> 月 
<select id="birthday" name="birthday">
<option value="0">&nbsp;</option>
<?=$birthdayhtml?>
</select> 日
</td>
</tr>

<tr><td align="right">学校：</td><td><input type="text" name="title" value="" class="t_input"> <select name="startyear">
<option value="">入学年份</option>
<?=$yearhtml?>
</select></td></tr>
<tr><td align="right">班级或院系：</td><td><input type="text" name="subtitle" value="" class="t_input"></td></tr>

<tr><td align="right">公司或机构：</td><td><input type="text" name="title" value="" class="t_input"></td></tr>
<tr><td align="right">部门：</td><td><input type="text" name="subtitle" value="" class="t_input"></td></tr>


<tr>
<td align="right">血型：</td>
<td>
<select id="blood" name="blood">
<option value="">任意</option>
<?=$bloodhtml?>
</select>
</td>
</tr>


<tr>
<td align="right">QQ：</td>
<td>
<input type="text" name="qq" value="" class="t_input" />
</td>
</tr>
<tr>
<td align="right">MSN：</td>
<td>
<input type="text" name="msn" value="" class="t_input" />
</td>
</tr>-->

<?php if(is_array($fields)) { foreach($fields as $fkey => $fvalue) { ?>
<?php if($fvalue['allowsearch']) { ?>
<tr>
<td align="right"><?=$fvalue['title']?>：</td>
<td>
<?=$fvalue['html']?>
</td>
</tr>
<?php } ?>
<?php } } ?>

<tr><td></td><td><input type="submit" name="searchsubmit" value="查找" class="submit"></td></tr>
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
<p class="app_more"><a href="javascript:;" id="a_app_more" onclick="userapp_open();" class="off">展开</a></p>
<?php } ?>

<?php if($_SCONFIG['my_status']) { ?>
<div class="app_m">
<ul>
<li><img src="template/default/image/app_add.gif"><a href="cp.php?ac=userapp&my_suffix=%2Fapp%2Flist" class="addApp">添加应用</a></li>
<li><img src="template/default/image/app_set.gif"><a href="cp.php?ac=userapp&op=menu" class="myApp">管理应用</a></li>
</ul>
</div>
<?php } ?>

<?php } else { ?>
<div class="bar_text">
<form id="loginform" name="loginform" action="do.php?ac=<?=$_SCONFIG['login_action']?>&ref" method="post">
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
<p class="title">登录站点</p>
<p>用户名</p>
<p><input type="text" name="username" id="username" class="login_input2" size="15" value="" /></p>
<p>密码</p>
<p><input type="password" name="password" id="password" class="login_input2" size="15" value="" /></p>
<p><input type="checkbox" id="cookietime" name="cookietime" value="315360000" checked /><label for="cookietime">记住我</label></p>
<p>
<input type="submit" id="loginsubmit" name="loginsubmit" value="登录" class="submit" />
<input type="button" name="regbutton" value="注册" class="button" onclick="urlto('do.php?ac=<?=$_SCONFIG['register_action']?>');">
</p>
</form>
</div>
<?php } ?>
</div>

<div id="mainarea">

<?php if($_SGLOBAL['ad']['contenttop']) { ?><div id="ad_contenttop"><?php adshow('contenttop'); ?></div><?php } ?>
<?php } ?>

<?php } ?>
<h2 class="title"><img src="image/icon/profile.gif">个人设置</h2>
<div class="tabs_header">
<a href="cp.php?ac=advance" class="r_option">&raquo; 高级管理</a>
<ul class="tabs">
<li<?=$actives['profile']?>><a href="cp.php?ac=profile"><span>个人资料</span></a></li>
<li<?=$actives['avatar']?>><a href="cp.php?ac=avatar"><span>我的头像</span></a></li>
<?php if($_SCONFIG['videophoto']) { ?>
<li<?=$actives['videophoto']?>><a href="cp.php?ac=videophoto"><span>视频认证</span></a></li>
<?php } ?>
<li<?=$actives['credit']?>><a href="cp.php?ac=credit"><span>我的积分</span></a></li>
<?php if($_SCONFIG['allowdomain'] && $_SCONFIG['domainroot'] && checkperm('domainlength')) { ?>
<li<?=$actives['domain']?>><a href="cp.php?ac=domain"><span>我的域名</span></a></li>
<?php } ?>
<?php if($_SCONFIG['sendmailday']) { ?>
<li<?=$actives['sendmail']?>><a href="cp.php?ac=sendmail"><span>邮件提醒</span></a></li>
<?php } ?>
<li<?=$actives['privacy']?>><a href="cp.php?ac=privacy"><span>隐私筛选</span></a></li>
<li<?=$actives['theme']?>><a href="cp.php?ac=theme"><span>个性化设置</span></a></li>
</ul>
</div>

<div class="l_status c_form">
<a href="cp.php?ac=profile&op=base"<?=$cat_actives['base']?>>基本资料</a><span class="pipe">|</span>
<a href="cp.php?ac=profile&op=contact"<?=$cat_actives['contact']?>>联系方式</a><span class="pipe">|</span>
<a href="cp.php?ac=profile&op=edu"<?=$cat_actives['edu']?>>教育情况</a><span class="pipe">|</span>
<a href="cp.php?ac=profile&op=work"<?=$cat_actives['work']?>>工作情况</a><span class="pipe">|</span>
<a href="cp.php?ac=profile&op=info"<?=$cat_actives['info']?>>个人信息</a>
</div>

<?php $farr = array(0=>'全用户','1'=>'仅好友','3'=>'仅自己'); ?>
<form method="post" action="<?=$theurl?>&ref" class="c_form">

<?php if($_GET['op'] == 'base') { ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<tr>
<th style="width:10em;">您的登录用户名:</th>
<td>
<?php echo stripslashes($space['username']); ?> (<a href="cp.php?ac=password">修改登录密码</a>)
</td>
<td></td>
</tr>
<?php if(!$_SCONFIG['realname']) { ?>
<tr>
<th style="width:10em;">真实姓名:</th>
<td>
<input type="text" id="name" name="name" value="<?php echo stripslashes($space['name']); ?>" class="t_input" />
</td>
<td>&nbsp;</td>
</tr>
<?php } else { ?>
<tr>
<th style="width:10em;">真实姓名:</th>
<td>
<?php if($space['name'] && empty($_GET['namechange'])) { ?>
<span style="font-weight:bold;"><?php echo stripslashes($space['name']); ?></span>
<?php if($_SCONFIG['namechange']) { ?>[<a href="<?=$theurl?>&namechange=1">修改</a>]<?php } ?>
<?php if($space['namestatus']) { ?>[<font color="red">认证通过</font>]<?php } else { ?><br>等待验证中，您目前将只能使用用户名，并且一些操作可能会受到限制<?php } ?>
<input type="hidden" name="name" value="<?php echo stripslashes($space['name']); ?>" />
<?php } else { ?>
<?php if($rncredit && $_GET['namechange']) { ?><img src="image/credit.gif" align="absmiddle"> 本操作需要支付积分 <?=$rncredit?> 个，您现在的积分 <?=$space['credit']?> 个。<br><?php } ?>
<?php if(empty($_SCONFIG['namechange'])) { ?>您的真实姓名一经确认，将不再允许再次修改，请真实填写。<br><?php } ?>
<?php if($_SCONFIG['namecheck']) { ?>您填写/修改真实姓名后，需要等待我们认证后才能有效，在认证通过之前，您将只能使用用户名，并且一些操作可能会受到限制。<br><?php } ?>
<input type="text" id="name" name="name" value="<?php echo stripslashes($space['name']); ?>" class="t_input" /> (请输入2～5个汉字)
<?php } ?>
</td>
<td>&nbsp;</td>
</tr>
<?php } ?>
<tr>
<th style="width:10em;">性别:</th>
<td>
<?php if(empty($space['sex'])) { ?>
<label for="sexm"><input id="sexm" type="radio" value="1" name="sex"<?=$sexarr['1']?> />男</label> 
<label for="sexw"><input name="sex" type="radio" id="sexw" value="2" checked="checked"<?=$sexarr['2']?> />
女</label>
<span style="font-weight:bold;color:red;">(性别选择确定后，将不能再次修改)</span>
<?php } else { ?>
<?php if($space['sex']==1) { ?>男<?php } else { ?>女<?php } ?>
<?php } ?>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<th style="width:10em;">婚恋状态:</th>
<td>
<select id="marry" name="marry">
<option value="0">&nbsp;</option>
<option value="1" selected="selected"<?=$marryarr['1']?>>单身</option>
<option value="2"<?=$marryarr['2']?>>非单身</option>
                        <option value="3"<?=$marryarr['3']?>>夫妻交友</option>
</select>
<a href="cp.php?ac=friend&op=search&view=sex" target="_blank">&raquo; 查找男女朋友</a>
</td>
<td>
<select name="friend[marry]">
<option value="0"<?=$friendarr['marry']['0']?>>全用户可见</option>
<option value="1"<?=$friendarr['marry']['1']?>>仅好友可见</option>
<option value="3"<?=$friendarr['marry']['3']?>>仅自己可见</option>
</select>
</td>
</tr>
<tr>
<th>生日:</th>
<td>
<select id="birthyear" name="birthyear" onchange="showbirthday();">
<option value="0">&nbsp;</option>
<?=$birthyeayhtml?>
</select> 年 
<select id="birthmonth" name="birthmonth" onchange="showbirthday();">
<option value="0">&nbsp;</option>
<?=$birthmonthhtml?>
</select> 月 
<select id="birthday" name="birthday">
<option value="0">&nbsp;</option>
<?=$birthdayhtml?>
</select> 日
<a href="cp.php?ac=friend&op=search&view=birthyear" target="_blank">&raquo; 查找同生日朋友</a>
</td>
<td>
<select name="friend[birth]">
<option value="0"<?=$friendarr['birth']['0']?>>全用户可见</option>
<option value="1"<?=$friendarr['birth']['1']?>>仅好友可见</option>
<option value="3"<?=$friendarr['birth']['3']?>>仅自己可见</option>
</select>
</td>
</tr>
<tr>
<th>血型:</th>
<td>
<select id="blood" name="blood">
<option value="">&nbsp;</option>
<?=$bloodhtml?>

</select>
</td>
<td>
<select name="friend[blood]">
<option value="0"<?=$friendarr['blood']['0']?>>全用户可见</option>
<option value="1"<?=$friendarr['blood']['1']?>>仅好友可见</option>
<option value="3"<?=$friendarr['blood']['3']?>>仅自己可见</option>
</select>
</td>
</tr>
<tr>
<th>家乡:</th>
<td id="birthcitybox">
<script type="text/javascript" src="source/script_city.js"></script>
<script type="text/javascript">
<!--
showprovince('birthprovince', 'birthcity', '<?=$space['birthprovince']?>', 'birthcitybox');
showcity('birthcity', '<?=$space['birthcity']?>', 'birthprovince', 'birthcitybox');

//-->
</script>
<a href="cp.php?ac=friend&op=search&view=birth" target="_blank">&raquo; 查找老乡</a>
</td>
<td>
<select name="friend[birthcity]">
<option value="0"<?=$friendarr['birthcity']['0']?>>全用户可见</option>
<option value="1"<?=$friendarr['birthcity']['1']?>>仅好友可见</option>
<option value="3"<?=$friendarr['birthcity']['3']?>>仅自己可见</option>
</select>
</td>
</tr>
<tr>
<th>居住地:</th>
<td id="residecitybox">
<script type="text/javascript">
<!--
showprovince('resideprovince', 'residecity', '<?=$space['resideprovince']?>', 'residecitybox');
showcity('residecity', '<?=$space['residecity']?>', 'resideprovince', 'residecitybox');
//-->
</script>
<a href="cp.php?ac=friend&op=search&view=reside" target="_blank">&raquo; 查找同城</a>
</td>
<td>
<select name="friend[residecity]">
<option value="0"<?=$friendarr['residecity']['0']?>>全用户可见</option>
<option value="1"<?=$friendarr['residecity']['1']?>>仅好友可见</option>
<option value="3"<?=$friendarr['residecity']['3']?>>仅自己可见</option>
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
<option value="0"<?=$field_friendarr['0']?>>全用户可见</option>
<option value="1"<?=$field_friendarr['1']?>>仅好友可见</option>
<option value="3"<?=$field_friendarr['3']?>>仅自己可见</option>
</select>
</td>
</tr>
<?php } } ?>

<tr>
<th style="width:10em;">&nbsp;</th>
<td>
<input type="submit" name="nextsubmit" value="继续下一项" class="submit" />
<input type="submit" name="profilesubmit" value="保存" class="submit" />
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
<th style="width:10em;">本网站的登录密码:</th>
<td>
<input type="password" id="password" name="password" value="" class="t_input" />
<br>为了您的账号安全，更换新邮箱的时候，需要输入您在本网站的密码。
</td>
<td></td>
</tr>
<tr>
<th style="width:10em;">新邮箱:</th>
<td>
<input type="text" id="email" class="t_input" name="email" value="<?=$space['email']?>" />
<?php if($space['emailcheck']) { ?>
<br>注意：新填写的邮箱只有在验证激活之后，才可以生效。
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
<th style="width:10em;">本网站的登录密码:</th>
<td>
<input type="password" id="password" name="password" value="" class="t_input" />
<br>为了您的账号安全，填写邮箱的时候，需要输入您在本网站的密码。
</td>
<td></td>
</tr>
<?php } ?>
<tr>
<th style="width:10em;">常用邮箱:</th>
<td>
<?php if($space['email']) { ?>
<?=$space['email']?><br>
<?php if($space['emailcheck']) { ?>
当前邮箱已经验证激活 (<a href="<?=$theurl?>&editemail=1">更换</a>)
<?php } else { ?>
邮箱等待验证中...<br>
系统已经向该邮箱发送了一封验证激活邮件，请查收邮件，进行验证激活。<br>
如果没有收到验证邮件，您可以<a href="<?=$theurl?>&editemail=1">更换一个邮箱</a>，或者<a href="<?=$theurl?>&resend=1">重新接收验证邮件</a>
<?php } ?>
<?php } else { ?>
<input type="text" id="email" class="t_input" name="email" value="" />
<br>请准确填写，取回密码、获取通知的时候都会发送到该邮箱。
<br>系统同时会向该邮箱发送一封验证激活邮件，请注意查收。<br>
<?php } ?>
<?php if($space['newemail']) { ?>
<p>您要更换的新邮箱：<strong><?=$space['newemail']?></strong> 需要激活后才能替换当前邮箱并生效。<br>
如果没有收到验证邮件，您可以<a href="<?=$theurl?>&resend=1">重新接收验证邮件</a></p>
<?php } ?>
</td>
<td></td>
</tr>
<?php } ?>
<tr>
<th style="width:10em;">手机:</th>
<td>
<input type="text" class="t_input" name="mobile" value="<?=$space['mobile']?>" /> 
</td>
<td>
<select name="friend[mobile]">
<option value="0"<?=$friendarr['mobile']['0']?>>全用户可见</option>
<option value="1"<?=$friendarr['mobile']['1']?>>仅好友可见</option>
<option value="3"<?=$friendarr['mobile']['3']?>>仅自己可见</option>
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
<option value="0"<?=$friendarr['qq']['0']?>>全用户可见</option>
<option value="1"<?=$friendarr['qq']['1']?>>仅好友可见</option>
<option value="3"<?=$friendarr['qq']['3']?>>仅自己可见</option>
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
<option value="0"<?=$friendarr['msn']['0']?>>全用户可见</option>
<option value="1"<?=$friendarr['msn']['1']?>>仅好友可见</option>
<option value="3"<?=$friendarr['msn']['3']?>>仅自己可见</option>
</select>
</td>
</tr>

<tr>
<th style="width:10em;">&nbsp;</th>
<td>
<input type="submit" name="nextsubmit" value="继续下一项" class="submit" />
<input type="submit" name="profilesubmit" value="保存" class="submit" />
</td>
<td>&nbsp;</td>
</tr>
</table>

<?php } elseif($_GET['op'] == 'edu') { ?>

<?php if($list) { ?>
<table cellspacing="0" cellpadding="0" class="listtable">
<tr class="title">
<td>学校/班级或院系</td>
<td>入学年份</td>
<td>隐私设置</td>
<td>操作</td>
</tr>
<?php if(is_array($list)) { foreach($list as $key => $value) { ?>
<?php if($key%2==1) { ?><tr class="line"><?php } else { ?><tr><?php } ?>
<td><?=$value['title']?><br><?=$value['subtitle']?></td>
<td><?=$value['startyear']?></td>
<td><?=$farr[$value['friend']]?></td>
<td><a href="<?=$theurl?>&subop=delete&infoid=<?=$value['infoid']?>">删除信息</a><br><a href="cp.php?ac=friend&op=search&searchmode=1&type=edu&title=<?=$value['title_s']?>" target="_blank">寻找同学</a></td>
</tr>
<?php } } ?>
</table>
<br>
<?php } ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<?php if($list) { ?>
<caption>
<h2>添加新学校</h2>
</caption>
<?php } ?>
<tbody id="oldtbody">
<tr>
<th style="width:10em;">学校名称:</th>
<td>
<input type="text" name="title[]" value="" class="t_input">
</td>
</tr>
<tr>
<th>班级或院系:</th>
<td>
<input type="text" name="subtitle[]" value="" class="t_input">
</td>
</tr>
<tr>
<th>入学年份:</th>
<td>
<select name="startyear[]">
<?=$yearhtml?>
</select> 年
</td>
</tr>
<tr>
<th>隐私设置:</th>
<td>
<select name="friend[]">
<option value="0">全用户可见</option>
<option value="1">仅好友可见</option>
<option value="3">仅自己可见</option>
</select>
</td>
</tr>
</tbody>

<tbody id="newtbody"></tbody>

<tr>
<th style="width:10em;">&nbsp;</th>
<td><a href="javascript:;" onclick="add_tbody();">添加新的学校信息</a></td>
</tr>
<tr>
<th style="width:10em;">&nbsp;</th>
<td>
<input type="submit" name="nextsubmit" value="继续下一项" class="submit" />
<input type="submit" name="profilesubmit" value="保存" class="submit" /></td>
</tr>
</table>

<?php } elseif($_GET['op'] == 'work') { ?>


<?php if($list) { ?>
<table cellspacing="0" cellpadding="0" class="listtable">
<tr class="title">
<td>公司或机构/部门</td>
<td>工作时间</td>
<td>隐私设置</td>
<td>操作</td>
</tr>
<?php if(is_array($list)) { foreach($list as $key => $value) { ?>
<?php if($key%2==1) { ?><tr class="line"><?php } else { ?><tr><?php } ?>
<td><?=$value['title']?><br><?=$value['subtitle']?></td>
<td>
<?=$value['startyear']?>年<?=$value['startmonth']?>月 ~ 
<?php if($value['endyear']) { ?><?=$value['endyear']?>年<?php } ?>
<?php if($value['endmonth']) { ?><?=$value['endmonth']?>月<?php } ?>
<?php if(!$value['endyear'] && !$value['endmonth']) { ?>现在<?php } ?>
</td>
<td><?=$farr[$value['friend']]?></td>
<td><a href="<?=$theurl?>&subop=delete&infoid=<?=$value['infoid']?>">删除信息</a><br><a href="cp.php?ac=friend&op=search&searchmode=1&type=work&title=<?=$value['title_s']?>" target="_blank">寻找同事</a></td>
</tr>
<?php } } ?>
</table>
<br>
<?php } ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<?php if($list) { ?>
<caption>
<h2>添加新公司或机构</h2>
</caption>
<?php } ?>
<tbody id="oldtbody">
<tr>
<th style="width:10em;">公司或机构:</th>
<td>
<input type="text" name="title[]" value="" class="t_input">
</td>
</tr>
<tr>
<th>部门:</th>
<td>
<input type="text" name="subtitle[]" value="" class="t_input">
</td>
</tr>
<tr>
<th>工作时间:</th>
<td>
<select name="startyear[]">
<?=$yearhtml?>
</select> 年
<select name="startmonth[]">
<?=$monthhtml?>
</select> 月 ~ 
<select name="endyear[]">
<option value="">现在</option>
<?=$yearhtml?>
</select> 年
<select name="endmonth[]">
<option value=""></option>
<?=$monthhtml?>
</select>月
</td>
</tr>
<tr>
<th>隐私设置:</th>
<td>
<select name="friend[]">
<option value="0">全用户可见</option>
<option value="1">仅好友可见</option>
<option value="3">仅自己可见</option>
</select>
</td>
</tr>
</tbody>

<tbody id="newtbody"></tbody>

<tr>
<th style="width:10em;">&nbsp;</th>
<td><a href="javascript:;" onclick="add_tbody();">添加新的公司或机构</a></td>
</tr>
<tr>
<th style="width:10em;">&nbsp;</th>
<td>
<input type="submit" name="nextsubmit" value="继续下一项" class="submit" />
<input type="submit" name="profilesubmit" value="保存" class="submit" /></td>
</tr>
</table>

<?php } elseif($_GET['op'] == 'info') { ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<?php $infoarr = array(
	'trainwith' => '我想结交',
	'interest' => '兴趣爱好',
	'book' => '喜欢的书籍',
	'movie' => '喜欢的电影',
	'tv' => '喜欢的电视',
	'music' => '喜欢的音乐',
	'game' => '喜欢的游戏',
	'sport' => '喜欢的运动',
	'idol' => '偶像',
	'motto' => '座右铭',
	'wish' => '最近心愿',
	'intro' => '我的简介'
); ?>
<tr>
<th>栏目</th>
<td>内容</td>
<td>隐私设置</td>
</tr>

<?php if(is_array($infoarr)) { foreach($infoarr as $key => $value) { ?>
<tr>
<th><?=$value?>:</th>
<td>
<textarea name="info[<?=$key?>]" rows="3" cols="50"><?=$list[$key]['title']?></textarea>
</td>
<td>
<select name="info_friend[<?=$key?>]">
<option value="0"<?=$friends[$key]['0']?>>全用户可见</option>
<option value="1"<?=$friends[$key]['1']?>>仅好友可见</option>
<option value="3"<?=$friends[$key]['3']?>>仅自己可见</option>
</select>
</td>
</tr>
<?php } } ?>

<tr>
<th style="width:10em;">&nbsp;</th>
<td><input type="submit" name="profilesubmit" value="保存" class="submit" /></td>
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
提醒：当前站点处于关闭状态
</p>
<?php } ?>
<p>
<a href="../template/default/about.html" target="_blank">关于我们</a>- 
<a href="../template/default/mzsm.html" target="_blank">法律声明</a>- 
        <a href="../template/default/ysbh.html" target="_blank">隐私保护</a>- 
<a href="../template/default/gl.html" target="_blank">交友攻略</a>- 
<a href="../template/default/fpmj.html" target="_blank">防骗秘籍</a>- 
<a href="../template/default/faq.html" target="_blank">常见问题解答</a>- 
<a href="../template/default/lxwm.html">联系我们</a>- 
<a href="../template/default/gy.html" target="_blank">文明公约</a>
<a  href="http://www.10ss.info" target="_blank">蜀ICP备09179073号</a>
</p>
<p>
Powered by <a href="http://www.10ss.info" target="_blank"><strong>同城交友爱情公寓</strong></a> <!--<span title="<?php echo X_RELEASE; ?>"><?php echo X_VER; ?></span>-->
<?php if(!empty($_SCONFIG['licensed'])) { ?><!--<a  href="http://license.comsenz.com/?pid=7&host=<?=$_SERVER['HTTP_HOST']?>" target="_blank">Licensed</a>--><?php } ?>
&copy; 2008-2011 <a  href="http://www.10ss.info" target="_blank">10ss.info  </a>网站建设维护：<a href="http://www.10ss.info" target="_blank">同城交友</a> 
<script src="http://s11.cnzz.com/stat.php?id=3401980&web_id=3401980&show=pic" language="JavaScript"></script>
  </p>
<p>
声明：【同城交友爱情公寓】10ss交友网提供同城交友爱情公寓找情人、同城婚介所服务，是全国最专业的同城交友平台，所有会员禁止在本站发布任何色情信息。</p>
</div>

</div>
</body>
</html>
</body></noframes>
</html>
<?php } ?><?php ob_out();?>