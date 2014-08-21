<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/cp_privacy|template/blue/header|template/blue/cp_header|template/blue/footer', '1318238441', 'template/blue/cp_privacy');?><?php if(empty($_SGLOBAL['inajax'])) { ?>
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
<a href="cp.php?ac=privacy"<?=$cat_actives['base']?>>隐私设置</a><span class="pipe">|</span>
<a href="cp.php?ac=privacy&op=view"<?=$cat_actives['view']?>>动态筛选</a>
</div>


<form method="post" action="cp.php?ac=privacy" class="c_form">

<?php if(empty($_GET['op'])) { ?>
<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>个人隐私设置</h2>
<p>你可以完全控制哪些人可以看到你的主页上面的内容</p>
</caption>
<tr>
<th width="150">个人主页</th>
<td><select name="privacy[view][index]">
<option value="0"<?=$sels['view']['index']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['index']['1']?>>仅好友可见</option>
<option value="2"<?=$sels['view']['index']['2']?>>仅自己可见</option>
</select></td>
</tr>
<tr>
<th>好友列表</th>
<td><select name="privacy[view][friend]">
<option value="0"<?=$sels['view']['friend']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['friend']['1']?>>仅好友可见</option>
<option value="2"<?=$sels['view']['friend']['2']?>>仅自己可见</option>
</select></td>
</tr>
<tr>
<th>留言板</th>
<td><select name="privacy[view][wall]">
<option value="0"<?=$sels['view']['wall']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['wall']['1']?>>仅好友可见</option>
<option value="2"<?=$sels['view']['wall']['2']?>>仅自己可见</option>
</select></td>
</tr>
<tr>
<th>个人动态</th>
<td><select name="privacy[view][feed]">
<option value="0"<?=$sels['view']['feed']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['feed']['1']?>>仅好友可见</option>
</select></td>
</tr>
<tr>
<th>记录</th>
<td><select name="privacy[view][doing]">
<option value="0"<?=$sels['view']['doing']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['doing']['1']?>>仅好友可见</option>
</select>
</td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">
本隐私设置仅在其他用户查看您主页时有效；
<br>在全站的记录列表中可能会出现您的记录。
</td>
</tr>
<tr>
<th>日志</th>
<td><select name="privacy[view][blog]">
<option value="0"<?=$sels['view']['blog']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['blog']['1']?>>仅好友可见</option>
</select>
</td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">本隐私设置仅在其他用户查看您主页时有效；
<br>相关浏览权限需要在每篇日志中单独设置方可完全生效。
</td>
</tr>
<tr>
<th>相册</th>
<td><select name="privacy[view][album]">
<option value="0"<?=$sels['view']['album']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['album']['1']?>>仅好友可见</option>
</select>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">本隐私设置仅在其他用户查看您主页时有效；
<br>相关浏览权限需要在每个相册中单独设置方可完全生效。</td>
</tr>
<tr>
<th>分享</th>
<td><select name="privacy[view][share]">
<option value="0"<?=$sels['view']['share']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['share']['1']?>>仅好友可见</option>
</select></td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">
本隐私设置仅在其他用户查看您主页时有效；
<br>在全站的分享列表中可能会出现您的分享。
</td>
</tr>
<tr>
<th>活动</th>
<td><select name="privacy[view][event]">
<option value="0"<?=$sels['view']['event']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['event']['1']?>>仅好友可见</option>
</select></td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">
本隐私设置仅在其他用户查看您主页时有效；
</td>
</tr>
<tr>
<th>投票</th>
<td><select name="privacy[view][poll]">
<option value="0"<?=$sels['view']['poll']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['poll']['1']?>>仅好友可见</option>
</select></td>
</tr>
<tr>
<th>&nbsp;</th>
<td class="gray">
本隐私设置仅在其他用户查看您主页时有效；
</td>
</tr>
<tr>
<th>群组</th>
<td><select name="privacy[view][mtag]">
<option value="0"<?=$sels['view']['mtag']['0']?>>全站用户可见</option>
<option value="1"<?=$sels['view']['mtag']['1']?>>仅好友可见</option>
<option value="2"<?=$sels['view']['mtag']['2']?>>仅自己可见</option>
</select></td>
</tr>
<?php if($_SCONFIG['videophoto'] && $space['videostatus']) { ?>
<tr>
<th></th>
<td><img src="image/videophoto.gif" align="absmiddle"> 你已经通过视频认证，对于没有通过视频认证的用户，你可以设置以下权限：</td>
</tr>
<tr>
<th>查看我的认证照片</th>
<td><select name="privacy[view][videoviewphoto]">
<option value="0"<?=$sels['view']['videoviewphoto']['0']?>>站点默认设置</option>
<option value="1"<?=$sels['view']['videoviewphoto']['1']?>>允许</option>
<option value="2"<?=$sels['view']['videoviewphoto']['2']?>>禁止</option>
</select></td>
</tr>
<tr>
<th>向我申请好友</th>
<td><select name="privacy[view][videofriend]">
<option value="0"<?=$sels['view']['videofriend']['0']?>>站点默认设置</option>
<option value="1"<?=$sels['view']['videofriend']['1']?>>允许</option>
<option value="2"<?=$sels['view']['videofriend']['2']?>>禁止</option>
</select></td>
</tr>
<tr>
<th>向我打招呼</th>
<td><select name="privacy[view][videopoke]">
<option value="0"<?=$sels['view']['videopoke']['0']?>>站点默认设置</option>
<option value="1"<?=$sels['view']['videopoke']['1']?>>允许</option>
<option value="2"<?=$sels['view']['videopoke']['2']?>>禁止</option>
</select></td>
</tr>
<tr>
<th>给我留言</th>
<td><select name="privacy[view][videowall]">
<option value="0"<?=$sels['view']['videowall']['0']?>>站点默认设置</option>
<option value="1"<?=$sels['view']['videowall']['1']?>>允许</option>
<option value="2"<?=$sels['view']['videowall']['2']?>>禁止</option>
</select></td>
</tr>
<tr>
<th>评论我的信息</th>
<td><select name="privacy[view][videocomment]">
<option value="0"<?=$sels['view']['videocomment']['0']?>>站点默认设置</option>
<option value="1"<?=$sels['view']['videocomment']['1']?>>允许</option>
<option value="2"<?=$sels['view']['videocomment']['2']?>>禁止</option>
</select></td>
</tr>
<?php } ?>
<tr>
<th>&nbsp;</th>
<td><input type="submit" name="privacysubmit" value="保存设置" class="submit"></td>
</tr>
</table>

<table cellspacing="0" cellpadding="0" class="formtable" id="feed">
<caption>
<h2>个人动态发布设置</h2>
<p>系统会将您的各项动作反映到个人动态里，方便朋友了解你的动态。<br>你可以控制是否在下列动作发生时，在个人动态里发布相关信息</p>
</caption>
<tr>
<th width="150">&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][doing]" value="1"<?=$sels['feed']['doing']?>>记录</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][blog]" value="1"<?=$sels['feed']['blog']?>>撰写日志</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][upload]" value="1"<?=$sels['feed']['upload']?>>上传图片</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][share]" value="1"<?=$sels['feed']['share']?>>添加分享</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][poll]" value="1"<?=$sels['feed']['poll']?>>发起投票</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][joinpoll]" value="1"<?=$sels['feed']['joinpoll']?>>参与投票</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][thread]" value="1"<?=$sels['feed']['thread']?>>发起话题</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][post]" value="1"<?=$sels['feed']['post']?>>对话题回复</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][mtag]" value="1"<?=$sels['feed']['mtag']?>>加入群组</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][event]" value="1"<?=$sels['feed']['event']?>>发起活动</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][join]" value="1"<?=$sels['feed']['join']?>>参加活动</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][friend]" value="1"<?=$sels['feed']['friend']?>>添加好友</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][comment]" value="1"<?=$sels['feed']['comment']?>>发表评论/留言</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][show]" value="1"<?=$sels['feed']['show']?>>竞价排名</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][credit]" value="1"<?=$sels['feed']['credit']?>>积分消费</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][invite]" value="1"<?=$sels['feed']['invite']?>>邀请好友</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][task]" value="1"<?=$sels['feed']['task']?>>完成任务</td>
</tr>				
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][profile]" value="1"<?=$sels['feed']['profile']?>>更新个人资料</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="checkbox" name="privacy[feed][click]" value="1"<?=$sels['feed']['click']?>>对日志/图片/话题表态</td>
</tr>
<tr>
<th>&nbsp;</th>
<td><input type="submit" name="privacysubmit" value="保存设置" class="submit"></td>
</tr>
</table>

<?php } else { ?>
<?php $iconnames['activity'] = '日志';
			$iconnames['album'] = '相册';
			$iconnames['blog'] = '日志';
			$iconnames['comment'] = '评论';
			$iconnames['blogcomment'] = '日志评论';
			$iconnames['clickblog'] = '日志表态';
			$iconnames['clickpic'] = '图片表态';
			$iconnames['clickthread'] = '话题表态';
			$iconnames['piccomment'] = '图片评论';
			$iconnames['sharecomment'] = '分享评论';
			$iconnames['debate'] = '论坛辩论';
			$iconnames['discuz'] = '论坛';
			$iconnames['doing'] = '记录';
			$iconnames['friend'] = '好友';
			$iconnames['goods'] = '商品';
			$iconnames['mood'] = '心情';
			$iconnames['mtag'] = '群组';
			$iconnames['event'] = '活动';
			$iconnames['eventcomment'] = '活动留言';
			$iconnames['eventmember'] = '活动成员管理';
			$iconnames['eventmemberstatus'] = '活动成员身份';
			$iconnames['network'] = '随便看看';
			$iconnames['poll'] = '论坛投票';
			$iconnames['post'] = '论坛回贴';
			$iconnames['profile'] = '更新个人资料';
			$iconnames['reward'] = '论坛悬赏';
			$iconnames['share'] = '分享';
			$iconnames['sharenotice'] = '分享通知';
			$iconnames['show'] = '排行榜';
			$iconnames['task'] = '有奖任务';
			$iconnames['thread'] = '话题';
			$iconnames['post'] = '话题回复';
			$iconnames['video'] = '视频';
			$iconnames['wall'] = '留言';
			$iconnames['credit'] = '赠送竞价积分';
			$iconnames['poll'] = '投票';
			$iconnames['pollcomment'] = '投票评论';
			$iconnames['pollinvite'] = '投票邀请'; ?>

<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>筛选规则一：屏蔽指定用户组的动态</h2>
<p>你可以决定屏蔽哪些用户组的动态，屏蔽用户组内的组员所发布的动态都将被屏蔽掉。</p>
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
<input type="submit" name="privacy2submit" value="保存设置" class="submit">
<br>您可以在自己的<a href="space.php?do=friend">好友列表</a>中，对好友进行分组，并可以对用户组进行改名。
</td>
</tr>
</table>
<br>
<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>筛选规则二：屏蔽指定好友指定类型的动态</h2>
<p>点击一下首页好友动态列表后面的屏蔽标志，就可以屏蔽指定好友指定类型的动态了。<br>下面列出的是您已经屏蔽的动态类型识别名和好友名，你可以选择是否取消屏蔽。</p>
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
<span class="type_<?=$icon?>"> <?php if(isset($iconnames[$icon])) { ?><?=$iconnames[$icon]?><?php } else { ?><?=$icon?><?php } ?> (<?php if($users[$uid]) { ?><a href="space.php?uid=<?=$uid?>" target="_blank"><?=$users[$uid]?></a><?php } else { ?>所有好友<?php } ?>)</span>
</li>
<?php } } ?>
</ul>
</td>
</tr>
<tr>
<th>&nbsp;</th>
<td>
<input type="submit" name="privacy2submit" value="保存设置" class="submit">
</td>
</tr>
<?php } else { ?>
<tr>
<th width="150">&nbsp;</th>
<td>现在还没有屏蔽的动态类型</td>
</tr>
<?php } ?>
</table>
<br>
<table cellspacing="0" cellpadding="0" class="formtable">
<caption>
<h2>筛选规则三：屏蔽指定好友指定类型的通知</h2>
<p>点击一下通知列表后面的屏蔽标志，就可以屏蔽指定好友指定类型的通知了。<br>下面列出的是您已经屏蔽的通知类型和好友名，你可以选择是否取消屏蔽。</p>
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
<span class="type_<?=$type?>"> <?php if(isset($iconnames[$type])) { ?><?=$iconnames[$type]?><?php } else { ?><?=$type?><?php } ?> (<?php if($users[$uid]) { ?><a href="space.php?uid=<?=$uid?>" target="_blank"><?=$users[$uid]?></a><?php } else { ?>所有好友<?php } ?>)</span>
</li>
<?php } } ?>
</ul>
</tr>
<tr>
<th>&nbsp;</th>
<td>
<input type="submit" name="privacy2submit" value="保存设置" class="submit">
</td>
</tr>
<?php } else { ?>
<tr>
<th width="150">&nbsp;</th>
<td>现在还没有屏蔽的通知类型</td>
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