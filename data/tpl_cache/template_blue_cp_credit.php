<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/cp_credit|template/blue/header|template/blue/cp_header|template/blue/footer', '1318238439', 'template/blue/cp_credit');?><?php if(empty($_SGLOBAL['inajax'])) { ?>
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
<a href="cp.php?ac=credit"<?=$cat_actives['base']?>>我的积分</a><span class="pipe">|</span>
<a href="cp.php?ac=credit&op=rule"<?=$cat_actives['rule']?>>积分规则</a><span class="pipe">|</span>
<a href="cp.php?ac=credit&op=usergroup"<?=$cat_actives['usergroup']?>>用户组规则</a><span class="pipe">|</span>
<a href="cp.php?ac=credit&op=exchange"<?=$cat_actives['exchange']?>>积分兑换</a>
    <span class="pipe">|</span> <a href="pay.php?pay=buyvip"<?=$cat_actives['exchange']?>>金豆充值</a></div>

<?php $_TPL['cycletype'] = array(
		'0' => '一次性',
		'1' => '每天',
		'2' => '整点',
		'3' => '间隔分钟',
		'4' => '不限周期'
	); ?>

<div class="c_form">
<?php if(empty($_GET['op'])) { ?>	

<table cellspacing="0" cellpadding="0" class="formtable">
<tr>
<th width="150">经验值:</th>
<td><span style="color:green;font-size:14px;"><?=$space['experience']?></span> <?php echo getstar($space[experience]); ?></td>
</tr>
<tr><th width="150">&nbsp;</th><td class="gray">
经验每满 <strong><?=$_SCONFIG['starcredit']?></strong> 个，就会增加一个图标 <img src="image/star_level1.gif" align="absmiddle"><br>
每满 <strong><?=$_SCONFIG['starlevelnum']?></strong> 个当前图标就升级为 <strong>1</strong> 个高一等级图标<br>
图标等级由低到高为：<?php for($i=1;$i<11;$i++){ ?><img src="image/star_level<?=$i?>.gif"><?php } ?></td></tr>
<tr>
<th width="150">用户组:</th>
<td>
<span<?php g_color($space[groupid]); ?>><?=$space['grouptitle']?></span>
<?php g_icon($space[groupid]); ?>
</td>
</tr>
<tr>
<th width="150">金豆:</th>
<td>
<img src="image/credit.gif">
<span style="color:red;font-size:14px;"><?=$space['credit']?></span>
<span class="gray">(<a href="space.php?do=top&view=credit">查看排名</a>)</span>
</td>
</tr>
<tr><th>访问量:</th>
<td><?=$space['viewnum']?> 
<span class="gray">(<a href="space.php?do=top&view=viewnum">查看排名</a>)</span>
</td></tr>
<tr><th>创建时间:</th><td><?php echo sgmdate('Y-m-d',$space[dateline],1); ?></td></tr>
<tr><th>上次登录:</th><td><?php echo sgmdate('Y-m-d',$space[lastlogin],1); ?></td></tr>
<tr><th>最后更新:</th><td><?php echo sgmdate('Y-m-d',$space[updatetime],1); ?></td></tr>

<tr>
<th>空间容量:</th>
<td> 最大空间 <?=$maxattachsize?>, 已用 <?=$space['attachsize']?> (<?=$percent?>%)</td>
</tr>
<?php if($space['haveattachsize']) { ?><tr><th>剩余空间:</th><td><?=$space['haveattachsize']?></td></tr><?php } ?>
</table>
<br>

<table cellspacing="0" cellpadding="0" class="listtable">
<caption>
<h2>获得积分历史</h2>
<p>显示你获得积分的动作列表，奖励积分值与经验值只记录最后一次获得的奖励</p>
</caption>
<thead>
<tr class="title">
<td>动作名称</td>
<td align="center">总次数</td>
<td align="center">周期次数</td>
<td align="center">单次积分</td>
<td align="center">单次经验值</td>
<td align="center">最后奖励时间</td>
</tr>
</thead>
<?php if($list) { ?>
<?php if(is_array($list)) { foreach($list as $key => $value) { ?>
<tr<?php if($key%2==0) { ?> class="line"<?php } ?>>
<td><a href="cp.php?ac=credit&op=rule&rid=<?=$value['rid']?>"><?=$value['rulename']?></a></td>
<td align="center"><?=$value['total']?></td>
<td align="center"><?=$value['cyclenum']?></td>
<td align="center"><?=$value['credit']?></td>
<td align="center"><?=$value['experience']?></td>
<td align="center"><?php echo sgmdate('m-d H:i',$value[dateline]); ?></td>
</tr>
<?php } } ?>
<?php } else { ?>
<tr>
<td colspan="6">暂时没有获务任何积分</td>
</tr>
<?php } ?>
<?php if($multi) { ?>
<tr>
<td colspan="6"><div class="page"><?=$multi?></div></td>
</tr>
<?php } ?>
</table>

<?php } elseif($_GET['op'] == 'exchange') { ?>

<form method="post" action="cp.php?ac=credit&op=exchange">
<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>积分兑换</h2>
<p>您可以将自己的积分兑换到本站其他的应用（比如论坛）里面。</p>
</caption>
<tr><th width="150">目前您的积分数:</th><td> <?=$space['credit']?></td></tr>
<tr>
<th><label for="password">密码</label>:</th>
<td><input type="password" name="password" class="t_input" /></td>
</tr>
<tr>
<th>支出积分:</th>
<td><input type="text" id="amount" name="amount" value="0" class="t_input" onkeyup="calcredit();" /></td>
</tr>
<tr>
<th>兑换成:</th>
<td>
<input type="text" id="desamount" value="0" class="t_input" disabled />&nbsp;&nbsp;
<select name="tocredits" id="tocredits" onChange="calcredit();">
<?php if(is_array($_CACHE['creditsettings'])) { foreach($_CACHE['creditsettings'] as $id => $ecredits) { ?>
<?php if($ecredits['ratio']) { ?>
<option value="<?=$id?>" unit="<?=$ecredits['unit']?>" title="<?=$ecredits['title']?>" ratio="<?=$ecredits['ratio']?>"><?=$ecredits['title']?></option>
<?php } ?>
<?php } } ?>
</select>
</td>
</tr>
<tr>
<th>兑换比率:</th>
<td><span class="bold">1</span>&nbsp;<span id="orgcreditunit">积分</span><span id="orgcredittitle"></span>&nbsp;兑换&nbsp;<span class="bold" id="descreditamount"></span>&nbsp;<span id="descreditunit"></span><span id="descredittitle"></span></td>
</tr>
<tr><th>&nbsp;</th><td><input type="submit" name="exchangesubmit" value="兑换积分" class="submit"></td></tr>
</table>
<input type="hidden" name="formhash" value="<?php echo formhash(); ?>" />
</form>
<script type="text/javascript">
function calcredit() {
tocredit = $('tocredits')[$('tocredits').selectedIndex];
$('descreditunit').innerHTML = tocredit.getAttribute('unit');
$('descredittitle').innerHTML = tocredit.getAttribute('title');
$('descreditamount').innerHTML = Math.round(1/tocredit.getAttribute('ratio') * 100) / 100;
$('amount').value = $('amount').value.toInt();
if($('amount').value != 0) {
$('desamount').value = Math.floor(1/tocredit.getAttribute('ratio') * $('amount').value);
} else {
$('desamount').value = $('amount').value;
}
}
String.prototype.toInt = function() {
var s = parseInt(this);
return isNaN(s) ? 0 : s;
}
calcredit();
</script>

<?php } elseif($_GET['op'] == 'rule') { ?>

<?php if($list) { ?>
<table cellspacing="0" cellpadding="0" class="listtable">
<caption>
<h2>积分奖励规则</h2>
<p>1：注册即可获赠1个金豆，每邀请一位好友注册可获得1个金豆奖励；<a href="cp.php?ac=invite">--&gt;参与邀请</a></p>
<p>2、查看会员联系方式需支付2金豆，可看资料(QQ号、手机等)，不会重复扣金豆。</p>
<p>3、VIP会员可免费查看所有异性会员联系方式，不会扣金豆。<a href="pay.php?pay=buyvip">--&gt;立刻升级VIP会员</a></p>
</caption>
<tr class="title">
<td>动作名称</td>
<td align="center">周期范围</td>
<td align="center">周期内最多奖励次数</td>
<td align="center" width="100">单次奖励分值</td>
</tr>
<?php if(is_array($list)) { foreach($list as $key => $value) { ?>
<tr<?php if($key%2==0) { ?> class="line"<?php } ?>>
<td><?=$value['rulename']?></td>
<td align="center"><?=$_TPL['cycletype'][$value['cycletype']]?></td>
<td align="center"><?php if($value['rewardnum']) { ?><?=$value['rewardnum']?><?php } else { ?>不限次数<?php } ?></td>
<td align="center"><?=$value['credit']?></td>
</tr>
<?php } } ?>
</table>
<?php } ?>

<?php if($list2) { ?>
<br>
<table cellspacing="0" cellpadding="0" class="listtable">
<caption>
<h2>积分扣减规则</h2>
<p>以下事件动作发生时，会扣减积分。其中，自己发布的信息自己删除，不扣减积分，被管理员删除才会扣减积分。</p>
</caption>
<tr class="title">
<th>动作名称</th>
<th align="center">单次扣减分值</th>
</tr>
<?php if(is_array($list2)) { foreach($list2 as $key => $value) { ?>
<tr<?php if($key%2==0) { ?> class="line"<?php } ?>>
<td><?=$value['rulename']?></td>
<td align="center" width="100"><?=$value['credit']?></td>
</tr>
<?php } } ?>
</table>
<?php } ?>

<?php } elseif($_GET['op'] == 'usergroup') { ?>

<table cellspacing="0" cellpadding="0" class="listtable">
<caption>
<h2>普通用户组</h2>
<p>随着您的经验值的提高，您的用户组所拥有的权限也会越多。</p>
</caption>
<tr class="title">
<th width="150">用户组名</th>
<td>经验值范围</td>
</tr>
<?php if(is_array($groups)) { foreach($groups as $value) { ?>
<tr>
<th><span<?php g_color($value[gid]); ?>><?=$value['grouptitle']?></span><?php g_icon($value[gid]); ?></th>
<td><?=$value['explower']?> ~ <?=$value['exphigher']?></td>
</tr>
<?php } } ?>
</table>

<table cellspacing="0" cellpadding="0" class="listtable">
<caption>
<h2>特殊用户组</h2>
<p>不受经验值限制。</p>
</caption>
<tr class="title">
<th width="150">用户组名</th>
<td>经验值范围</td>
</tr>
<?php if(is_array($s_groups)) { foreach($s_groups as $value) { ?>
<tr>
<th><span<?php g_color($value[gid]); ?>><?=$value['grouptitle']?></span><?php g_icon($value[gid]); ?></th>
<td>-</td>
</tr>
<?php } } ?>
</table>

<?php } ?>

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
<?php } ?>
<?php ob_out();?>