<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/pay_index|template/blue/header|template/blue/footer', '1318216970', 'template/blue/pay_index');?><?php if(empty($_SGLOBAL['inajax'])) { ?>
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
<h2 class="title"><img src="image/credit.gif">支付中心</h2>
<div class="tabs_header">
<ul class="tabs">
<li<?=$actives['index']?>><a href="pay.php?ac=index"><span>积分充值</span></a></li>
<li<?=$actives['vip']?>><a href="pay.php?ac=vip"><span>VIP特权</span></a></li>
<li<?=$actives['list']?>><a href="pay.php?ac=list"><span>交易明细</span></a></li>
<?php if($adid) { ?>
<li<?=$actives['userlist']?>><a href="pay.php?ac=userlist"><span>会员管理</span></a></li>
<li<?=$actives['config']?>><a href="pay.php?ac=config"><span>充值配置</span></a></li>
<li<?=$actives['vipconfig']?>><a href="pay.php?ac=vipconfig"><span>VIP功能配置</span></a></li>
<li<?=$actives['cfhelp']?>><a href="pay.php?ac=cfhelp"><font color="#0000ff"><span>系统帮助</span></font></a></li>
<li<?=$actives['update']?>><a href="pay.php?ac=update"><font color="#cc00000"><span>版本升级</span></font></a></li>
<?php } else { ?>

<li<?=$actives['cfhelp']?>><a href="<?=$_SCONFIG['pay_help']?>" target="_blank"><font color="#0000ff"><span>充值帮助</span></font></a></li>
<?php } ?>
</ul>
</div>
<table border="0" align="right">
  <tr>
    <td width="185" height="48" align="center">	
 <strong> <?php if($space['groupid'] == $_SCONFIG['vipapp']) { ?>
      <font color="#666666">VIP状态:<?=$v_day['day']?> 天</font>		
  <img src="image/pay/vip.gif" alt="VIP会员:<?=$v_day['day']?>天" border="0" align="absmiddle" />
<?php } else { ?>
      <font color="#666666">VIP状态:未激活</font>	<img src="image/pay/vip2.gif" alt="未激活" border="0" align="absmiddle" />
<?php } ?></strong><br />
    用户:<strong> <?=$space['username']?></strong> 积分:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>   </font> </td>
  </tr>
</table>
<br />

<?php if($pay == '') { ?>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="formtable">
      <caption>
      <h2>在线充值</h2>
  
        </caption>
 <!--<?php if($_SCONFIG['appay'] != '') { ?>
  <tr>
    <td width="150" align="center"><a href="pay.php?pay=appay" target="_blank"><img src="image/pay/alipay.jpg" width="125" height="50" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>支付宝 - <?=$_SCONFIG['aps']?>%手续费</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['apnote']?>
</p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=appay" target="_blank">我要充值</a> </div>       </td>
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
      <h2>财付通 - <?=$_SCONFIG['tps']?>%手续费</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['tpnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=tenpay" target="_blank">我要充值</a> </div>       </td>
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
      <h2>网银在线 - <?=$_SCONFIG['cbs']?>%手续费</h2>
        <p>&nbsp;&nbsp&nbsp<?=$_SCONFIG['cbnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=chinabank" target="_blank">我要充值</a> </div> </td>
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
      <h2>神州行手机卡充值 - <?=$_SCONFIG['cls']?>%手续费</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['clnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=clpay" target="_blank">我要充值</a> </div>       </td>
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
      <h2>网上银行在线充值 - <?=$_SCONFIG['clbs']?>%手续费</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['clbnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=clbpay" target="_blank">我要充值</a> </div>       </td>
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
      <h2>PayPal(海外专用) - <?=$_SCONFIG['pps']?>%手续费</h2>
        <p>&nbsp;&nbsp;&nbsp<?=$_SCONFIG['ppnote']?></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=pppay" target="_blank">我要充值</a> </div>       </td>
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
      <h2>升级VIP功能</h2>
        </caption>
<?php if($_SCONFIG['vipcls'] != '') { ?>

  <tr>
    <td width="150" align="center"><a href="pay.php?pay=buyvip" target="_blank"><img src="image/pay/vippay.jpg" border="0" /></a></td>
    <td><table cellspacing="0" cellpadding="0" class="formtable">
      <caption>
      <h2>购买VIP</h2>
        <p>&nbsp;&nbsp&nbsp<?=$_SCONFIG['clsnote']?> <br />
          &nbsp;&nbsp&nbsp<a href="pay.php?ac=vip" target="_blank">查看VIP特权</a></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td align="left"><div class="submit" id="stk"><a href="pay.php?pay=buyvip" target="_blank">我要购买</a> </div>     </td>
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
      <h2>积分兑换VIP</h2>
        <p>&nbsp;&nbsp&nbsp<?=$_SCONFIG['jfnote']?><br />
          &nbsp;&nbsp&nbsp<a href="pay.php?ac=vip" target="_blank">查看VIP特权</a></p>
        </caption>
      <tr>
        <th width="120"></th>
        <td></td>
      </tr>

      <tr>
        <td colspan="2" align="left"><div class="submit" id="stk"><a href="pay.php?pay=ctvip" target="_blank">我要兑换</a> </div>     </td>
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
      <strong><font color="#666666"> 第一步<br />
     输入金额</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     在线支付     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    完成充值   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>在线充值 - 支付宝<?=$_SCONFIG['aps']?>%手续费</h2>
  
        <p>&nbsp;&nbsp&nbsp 充值成功后，系统将会向 <?=$space['username']?> 的账号自动充入积分，
无需等待，即时生效！</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">用 户 名</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (我的积分:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>积分)</td>
    </tr>
  <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['apfile']?>/index.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">充值金额</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="6" />
      <span class="spaf"><strong>元</strong><strong>(RMB)</strong> (一元人民币 = <strong><?=$_SCONFIG['bilv']?> </strong>积分)</span></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="确认充值" title="我要充值"  /></td>
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
      <strong><font color="#666666"> 第一步<br />
     输入金额</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     在线支付     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    完成充值   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>在线充值 - 财付通<?=$_SCONFIG['tps']?>%手续费</h2>
  
        <p>&nbsp;&nbsp&nbsp 充值成功后，系统将会向 <?=$space['username']?> 的账号自动充入积分，
无需等待，即时生效！</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">用 户 名</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (我的积分:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>积分)</td>
    </tr>
  <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['tfile']?>/index.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">充值金额</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="6" />
      <span class="spaf"><strong>元</strong><strong>(RMB)</strong> (一元人民币 = <strong><?=$_SCONFIG['bilv']?> </strong>积分)</span></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="确认充值" title="我要充值"  /></td>
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
      <strong><font color="#666666"> 第一步<br />
     输入金额</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     在线支付     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    完成充值   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <caption>  
  <h2>在线充值 - 网银在线<?=$_SCONFIG['cbs']?>%手续费</h2>
  
        <p>&nbsp;&nbsp&nbsp 充值成功后，系统将会向 <?=$space['username']?> 的账号自动充入积分，
无需等待，即时生效！</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">用 户 名</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (我的积分:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>积分)</td>
  </tr>
  <form id="form10" name="form10" method="POST" action="<?=$_SCONFIG['cbfile']?>/Send.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">充值金额</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="6" />
      <span class="spaf"><strong>元</strong><strong>(RMB)</strong> (一元人民币<strong> </strong>= <strong><?=$_SCONFIG['bilv']?> </strong>积分)</span></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="确认充值" title="我要充值"  /></td>
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
      <strong><font color="#666666"> 第一步<br />
     输入金额</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     在线支付     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    完成充值   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>在线充值 - 神州行手机卡充值<?=$_SCONFIG['cls']?>%手续费</h2>
  
        <p>&nbsp;&nbsp&nbsp 充值成功后，系统将会向 <?=$space['username']?> 的账号自动充入积分，
无需等待，即时生效！</p>
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
                  <td width="130" height="25" align="center" bgcolor="#FFFFFF"><span class="spaf" style="font-weight: bold">用 户 名</span></td>
                  <td bgcolor="#FFFFFF" class="spaf"><?=$space['username']?> (我的积分:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>积分)</td>
                </tr>
                <tr>
                  <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">神州行充值卡面额</strong></td>
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
                  <span class="spaf">元</span><br />
                  <strong>
(1元 </strong>= <strong><?=$_SCONFIG['bilv']?> </strong>积分)</strong></td>
                </tr>
                <tr>
                  <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">神州行充值卡序列号</strong></td>
                  <td bgcolor="#FFFFFF"><input name="pa7_cardNo" type="text" class="tts" id="pa7_cardNo" size="30" /></td>
                </tr>
                <tr>
                  <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">神州行充值卡密码</strong></td>
                  <td bgcolor="#FFFFFF"><input name="pa8_cardPwd" type="password" class="tts" id="pa8_cardPwd" size="30" /></td>
                </tr>
                <tr>
                  <td height="65" align="center" bgcolor="#FFFFFF">&nbsp;</td>
                  <td height="65" align="left" bgcolor="#FFFFFF"><input class="submit" name="Submit33" type="submit" value="确认充值" title="我要充值"></td>
                </tr>
              </form>
            </table>
            </td>
          </tr>
        </table></td>
            <td><ul>
              <li><strong>支持卡种：</strong> </li>
              <li value="2">全国卡：卡号17位，密码18位。面额：10，20，30，50，100，300，500元 </li>
              <li>江苏地方卡：卡号16位，密码17位。面额：30，50，100元 </li>
              <li>浙江地方卡：卡号10位，密码8位。面额：20，30，50，100元 </li>
              <li>辽宁地方卡：卡号16位，密码21位。面额：50，100元<br />
                  <br />
              </li>
              <li><strong>支付说明：</strong> </li>
              <li><strong>※ </strong>新充值卡和在本站支付后产生余额的充值卡都可以进行支付。 </li>
              <li><strong>※ </strong>在本站支付后产生余额的充值卡，不能给手机充值。 </li>
              <li><strong>※ </strong>提交卡密后请稍后，不要关闭系统处理页面。 </li>
              <li><strong>※ </strong>如果您的订单金额较大，您可以使用多张充值卡支付。<br />
                  <br />
              </li>
              <li><strong><font color=red>注意事项：</font></strong> </li>
              <li><font color=red><strong>※ </strong>请务必使用与您选择的面额相同的神州行卡进行支付，否则引起的交易失败交易金额不予退还。</font>如：选择50元面额但使用100元卡支付，则系统认为实际支付金额为50元，高于50元部分不予退还；选择50元面额但使用30元卡支付则系统认为支付失败，30元不予退还。</li>
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
      <strong><font color="#666666"> 第一步<br />
     输入金额</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     在线支付     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    完成充值   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>在线充值 - <span class="spaf">网上银行在线充值</span><?=$_SCONFIG['clbs']?>%手续费</h2>
  
        <p>&nbsp;&nbsp&nbsp 充值成功后，系统将会向 <?=$space['username']?> 的账号自动充入积分，
无需等待，即时生效！</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">用 户 名</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (我的积分:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>积分)</td>
    </tr>
  <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['clbfile']?>/req.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">充值金额</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="6" />
      <span class="spaf"><strong>元</strong><strong>(RMB)</strong> (一元人民币<strong> </strong>= <strong><?=$_SCONFIG['bilv']?> </strong>积分)</span></td>
    </tr> 
<tr>
      <td width="130" height="25" align="center"><strong class="spaf">选择银行</strong></td>
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
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="确认充值" title="我要充值"  /></td>
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
      <strong><font color="#666666"> 第一步<br />
     输入金额</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     在线支付     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    完成充值   </font></strong> </td>
  </tr>
</table>
<br />

<table width="98%" border="0" class="formtable">
      <caption>
      <h2>在线充值 - PayPal在线支付<?=$_SCONFIG['pps']?>%手续费</h2>
  
        <p>&nbsp;&nbsp&nbsp 充值成功后，系统将会向 <?=$space['username']?> 的账号自动充入积分，
无需等待，即时生效！</p>
        </caption>
<tr>
      <td width="130" height="25" align="center"><span class="spaf" style="font-weight: bold">用 户 名</span></td>
      <td width="629" class="spaf"><?=$space['username']?> (我的积分:<span style="color: #FF0000;font-weight: bold;"><?=$space['credit']?></span>积分)</td>
    </tr>
  <form id="form10" name="form10" method="post" action="<?=$_SCONFIG['ppfile']?>/paypal.php">
    <tr>
      <td width="130" height="25" align="center"><strong class="spaf">充值金额</strong></td>
      <td><input name="paym" type="text" class="tts" id="paym" onkeypress="if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false" size="7" />
      <span class="spaf"><strong>美元(USD)</strong> (一美元<strong> </strong>=<strong> <?=$_SCONFIG['ppbilv']?></strong> 积分)</span></td>
    </tr>
    <tr>
      <td height="65" align="center">&nbsp;</td>
      <td height="65" align="left"><input class="submit" name="Submit3" type="submit" value="确认充值" title="我要充值"  /></td>
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
      <strong><font color="#666666"> 第一步<br />
     选择服务</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     确认购买     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    在线支付   </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第四步<br />
    完成购买   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="pay.php?pay=info">
      <caption>
      <h2>购买VIP - 选择服务</h2>
  
        <p>&nbsp;&nbsp&nbsp 购买成功后，无需等待，即时生效！</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">商品名称:</strong></td>
    <td class="STYLE2">VIP会员
    <a href="pay.php?ac=vip" target="_blank">查看VIP特权</a></td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">服务类型:</strong></td>
    <td>

<?php if(is_array($varr)) { foreach($varr as $key => $value) { ?>
<p>
<?php if($key == 1) { ?>
 
        <input name="cvip" type="radio" value="<?=$key?>" checked="checked" />
<?php } else { ?>
        <input name="cvip" type="radio" value="<?=$key?>" />
<?php } ?>
        <span class="spaf"><?=$value['0']?> ￥<s><?=$value['1']?></s>&nbsp; &nbsp; ￥<b><?=$value['3']?></b> 节省￥<?=$value['4']?></span>      </p>
<?php } } ?>
</td>
    </tr>
  <tr>
    <td height="30" align="center" valign="middle"><strong class="spaf">选择支付方式:</strong></td>
    <td><p>
<!--
<?php if($_SCONFIG['appay'] != '') { ?>
        <input name="cpay" type="radio" value="3" />
        <span class="spaf">支付宝</span>
<?php } ?>
<?php if($_SCONFIG['tenpay'] != '') { ?>
        <input name="cpay" type="radio" value="1" checked="checked" />
        <span class="spaf">财付通</span>
<?php } ?>
<?php if($_SCONFIG['cbankpay'] != '') { ?>
      <input type="radio" name="cpay" value="2" />
      <span class="spaf">网银在线</span>
<?php } ?>
-->
<?php if($_SCONFIG['clpay'] != '') { ?>
      <input name="cpay" type="radio" value="4" />
      <span class="spaf">神州行手机卡充值</span>
<?php } ?>
<?php if($_SCONFIG['clbpay'] != '') { ?>
        <input name="cpay" type="radio" value="5" checked="checked" />
      <span class="spaf">网上银行在线充值</span>
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
    <td><input class="submit" name="Submit32" type="submit" value="下一步"></td>
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
      <strong><font color="#666666"> 第一步<br />
     选择服务</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     确认兑换     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    完成兑换   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="pay.php?pay=ctinfo">
      <caption>
      <h2>积分兑换VIP - 选择服务</h2>
  
        <p>&nbsp;&nbsp&nbsp 兑换成功后，无需等待，即时生效！</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">商品名称:</strong></td>
    <td class="STYLE2">VIP会员
    <a href="pay.php?ac=vip" target="_blank">查看VIP特权</a>(可用积分:<?=$space['credit']?>)</td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">服务类型:</strong></td>
    <td>

<?php if(is_array($ctarr)) { foreach($ctarr as $key => $value) { ?>
<p>
<?php if($key == 0) { ?>
 
        <input name="cvip" type="radio" value="<?=$key?>" checked="checked" />
<?php } else { ?>
        <input name="cvip" type="radio" value="<?=$key?>" />
<?php } ?>
        <span class="spaf"><?=$value['0']?>积分 &nbsp; <-> &nbsp; <b><?=$value['1']?></b>天 </span>      </p>
<?php } } ?>
</td>
    </tr>
  <tr>
    <td height="30" align="center" valign="middle">&nbsp;</td>
    <td><input class="submit" name="Submit32" type="submit" value="下一步"></td>
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
      <strong><font color="#666666"> 第一步<br />
     选择服务</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     确认兑换     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    完成兑换   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="pay.php?pay=ctinfo">
      <caption>
      <h2>积分兑换VIP - 选择服务</h2>
  
        <p>&nbsp;&nbsp&nbsp 兑换成功后，无需等待，即时生效！</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">商品名称:</strong></td>
    <td class="STYLE2">VIP会员
    <a href="pay.php?ac=vip" target="_blank">查看VIP特权</a>(可用积分:<?=$space['credit']?>)</td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">服务类型:</strong></td>
    <td>

 
        <input name="cvip" type="hidden" value="<?=$cvip?>" checked="checked" />
        <span class="spaf"><?=$ctinfo['vjf']?>积分 &nbsp; <-> &nbsp; <b><?=$ctinfo['vday']?></b>天 </span>      </p>
</td>
    </tr>
  <tr>
    <td height="30" align="center" valign="middle">&nbsp;</td>
    <td><input class="submit" name="ctsubmit" type="submit" value="确认兑换">
    <input class="submit" type="button" name="Submit2" value="重新选择" onclick="javascript:history.go(-1);" /></td>
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
      <strong><font color="#666666"> 第一步<br />
     选择服务</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     确认购买     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
    在线支付   </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第四步<br />
    完成购买   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <tr><td width="130"><form id="form2" name="form2" method="post" action="<?=$paypost?>">
      <caption>
      <h2>购买VIP - 确认购买</h2>
  
        <p>&nbsp;&nbsp&nbsp 购买成功后，无需等待，即时生效！</p>
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
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><span class="spaf" style="font-weight: bold"><strong class="spaf">商品名称:</strong></span></td>
                        <td align="left" bgcolor="#FFFFFF" class="spaf"><span class="STYLE2">VIP会员</span> <a href="pay.php?ac=vip" target="_blank"><strong>查看VIP特权</strong></a></td>
                      </tr>                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">服务类型:</strong></td>
                        <td align="left" bgcolor="#FFFFFF"><span class="STYLE2">
                        <?=$vipinfo['pmey']?>元/<?=$vipinfo['day']?>天
                          <input name="cvip" type="hidden" id="cvip" value="<?=$cvip?>" />
                          <input name="cpay" type="hidden" id="cpay" value="<?=$cpay?>" />
                            </span></td>
                      </tr>
                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">神州行充值卡面额</strong></td>
                        <td align="left" bgcolor="#FFFFFF"><select name="select" id="select">
                            <option value="10">10</option>
                            <option value="20">20</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                            <option value="300">300</option>
                            <option value="500">500</option>
                          </select>
                            <span class="spaf">元</span><br />                            </strong></td>
                      </tr>
                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">神州行充值卡序列号</strong></td>
                        <td align="left" bgcolor="#FFFFFF"><input name="pa7_cardNo" type="text" class="tts" id="pa7_cardNo" size="30" /></td>
                      </tr>
                      <tr>
                        <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">神州行充值卡密码</strong></td>
                        <td align="left" bgcolor="#FFFFFF"><input name="pa8_cardPwd" type="password" class="tts" id="pa8_cardPwd" size="30" /></td>
                      </tr>
                      <tr>
                        <td height="65" colspan="2" align="center" bgcolor="#FFFFFF"><input class="submit" name="Submit32" type="submit" value="确认购买">
      <input class="submit" type="button" name="Submit" value="重新选择" onclick="javascript:history.go(-1);" /></td>
                      </tr>
                </table></td>
              </tr>
          </table></td>
          <td align="left"><ul>
              <li><strong>支持卡种：</strong> </li>
            <li value="2">全国卡：卡号17位，密码18位。面额：10，20，30，50，100，300，500元 </li>
            <li>江苏地方卡：卡号16位，密码17位。面额：30，50，100元 </li>
            <li>浙江地方卡：卡号10位，密码8位。面额：20，30，50，100元 </li>
            <li>辽宁地方卡：卡号16位，密码21位。面额：50，100元<br />
                  <br />
              </li>
            <li><strong>支付说明：</strong> </li>
            <li><strong>※ </strong>新充值卡和在本站支付后产生余额的充值卡都可以进行支付。 </li>
            <li><strong>※ </strong>在本站支付后产生余额的充值卡，不能给手机充值。 </li>
            <li><strong>※ </strong>提交卡密后请稍后，不要关闭系统处理页面。 </li>
            <li><strong>※ </strong>如果您的订单金额较大，您可以使用多张充值卡支付。<br />
                  <br />
              </li>
            <li><strong><font color="red">注意事项：</font></strong> </li>
            <li><font color="red"><strong>※ </strong>请务必使用与您选择的面额相同的神州行卡进行支付，否则引起的交易失败交易金额不予退还。</font>如：选择50元面额但使用100元卡支付，则系统认为实际支付金额为50元，高于50元部分不予退还；选择50元面额但使用30元卡支付则系统认为支付失败，30元不予退还。</li>
          </ul></td>
        </tr>
      </table></td>
      </tr>  
<?php } ?>

<?php if($cpay == 5) { ?>
   <tr>
      <td height="25" colspan="2" align="center"><strong class="spaf">选择银行</strong>
        <table width="100%" border="0" cellspacing="1" cellpadding="1">
          <tr>
            <td width="130" height="25" align="center" bgcolor="#FFFFFF"><span class="spaf" style="font-weight: bold"><strong class="spaf">商品名称:</strong></span></td>
            <td align="left" bgcolor="#FFFFFF" class="spaf"><span class="STYLE2">VIP会员</span> <a href="pay.php?ac=vip" target="_blank"><strong>查看VIP特权</strong></a></td>
          </tr>
          <tr>
            <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">服务类型:</strong></td>
            <td align="left" bgcolor="#FFFFFF"><span class="STYLE2"> <?=$vipinfo['pmey']?>元/<?=$vipinfo['day']?>天
              <input name="cvip" type="hidden" id="cvip2" value="<?=$cvip?>" />
                  <input name="cpay" type="hidden" id="cpay" value="<?=$cpay?>" />
            </span></td>
          </tr>
          <tr>
            <td width="130" height="25" align="center" bgcolor="#FFFFFF"><strong class="spaf">请选择银行</strong></td>
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
            <td height="65" colspan="2" align="center" bgcolor="#FFFFFF"><input class="submit" name="Submit322" type="submit" value="确认购买" />
                <input class="submit" type="button" name="Submit4" value="重新选择" onclick="javascript:history.go(-1);" /></td>
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
      <strong><font color="#666666"> 第一步<br />
     选择用户</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     确认升级     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
     完成操作   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="<?=$paypost?>">
      <caption>
      <h2>升级VIP - 确认升级</h2>
  
        <p>&nbsp;&nbsp&nbsp 升级成功后，无需等待，即时生效！</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">用户名:</strong></td>
    <td><span class="STYLE2"><?=$space['username']?></span>    </td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">服务天数:</strong></td>
    <td class="STYLE2">
<select name="v_day">
      <?php if(is_array($dayarr)) { foreach($dayarr as $key => $value) { ?>
       <option value="<?=$key?>"><?=$value?> 天</option>
 
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
    <td><input class="submit" name="openvip" type="submit" value="确认操作">
    <input class="submit" type="button" name="Submit" value="重新选择" onclick="javascript:history.go(-1);" /></td>
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
      <strong><font color="#666666"> 第一步<br />
     选择用户</font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第二步<br />
     确认取消     </font></strong> </td>
    <td width="110" height="48" align="center" background="image/pay/pay_04.gif">
      <strong><font color="#666666"> 第三步<br />
     完成操作   </font></strong> </td>
  </tr>
</table>
<br />
<table width="98%" border="0" class="formtable">
      <form id="form2" name="form2" method="post" action="<?=$paypost?>">
      <caption>
      <h2>取消VIP - 确认取消</h2>
  
        <p>&nbsp;&nbsp&nbsp 取消成功后，无需等待，即时生效！</p>
        </caption>
  <tr>
    <td width="120" height="25" align="center"><strong class="spaf">用户名:</strong></td>
    <td><span class="STYLE2"><?=$space['username']?></span>    </td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">当前天数:</strong></td>
    <td>
<span class="STYLE2">剩余</span> <strong><?=$v_day['vday']?></strong> <span class="STYLE2">天</span>
    <input name="cpay" type="hidden" id="cpay" value="5" />
    <input name="uid" type="hidden" id="uid" value="<?=$space['uid']?>" /></td>
    </tr>
  <tr>
    <td align="center" valign="top"><strong class="spaf">减少天数:</strong></td>
    <td><input name="v_day" type="text" class="tts" id="v_day" value="<?=$v_day['vday']?>" size="6" /></td>
    </tr>
      <tr>
        <td height="10" colspan="2"></td>
      </tr>
  <tr>
    <td height="30" align="center" valign="middle"></td>
    <td><input class="submit" name="disablevip" type="submit" value="确认操作">
    <input class="submit" type="button" name="Submit" value="重新选择" onclick="javascript:history.go(-1);" /></td>
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