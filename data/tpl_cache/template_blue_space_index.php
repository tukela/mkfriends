<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('template/blue/space_index|template/blue/header|template/blue/space_comment_li|template/blue/footer', '1318212723', 'template/blue/space_index');?><?php $_TPL['nosidebar']=1; ?>
<?php if(empty($_SGLOBAL['inajax'])) { ?>
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
if(!this.xmlhttp) { alert("浏览器不支持XMLHTTP，请更新你的浏览器"); return; }
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
$(obj).innerHTML = "加载失败";
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
<a href="pay.php?pay=buyvip" target ="_blank">我要升级VIP</a>			</div>
</div><br />
<?php } ?>
 
<div class="borderbox">
<ul class="spacemenu_list" style="width:100%; overflow:hidden;">
<?php if(!$space['isfriend']) { ?>
<li><img src="image/icon/friend.gif"><a href="cp.php?ac=friend&op=add&uid=<?=$space['uid']?>" id="a_friend_notice" onclick="ajaxmenu(event, this.id, 1)">加为好友</a></li>
<?php } ?>
<!--<li><img src="image/icon/wall.gif"><a href="#comment" onclick="<?php if(checkperm('managespace') or ($_SCONFIG['viplookinfo'] == 1 and $vips['day'] > 0)) { ?>return true;<?php } else { ?>alert('您还不是VIP会员无法给其他会员留言！点击‘确定’完成VIP升级');window.open('pay.php?pay=buyvip');return false;<?php } ?>">给我留言</a></li>-->
<li><img src="image/icon/poke.gif"><a href="cp.php?ac=poke&op=send&uid=<?=$space['uid']?>" id="a_poke" onclick="ajaxmenu(event, this.id, 99999, '', -1)">打个招呼</a>
<li><img src="image/icon/pm.gif"><a href="cp.php?ac=pm&uid=<?=$space['uid']?>" id="a_pm" onclick="<?php if(checkperm('managespace') or ($_SCONFIG['viplookinfo'] == 1 and $vips['day'] > 0)) { ?>ajaxmenu(event, this.id, 1)<?php } else { ?>alert('您还不是VIP会员无法发送消息！点击‘确定’完成VIP升级');window.open('pay.php?pay=buyvip');return false;<?php } ?>" onmouseover="window.status='';">站内聊天</a></li>
<li><img src="image/icon/report.gif"><a href="cp.php?ac=common&op=report&idtype=uid&id=<?=$space['uid']?>" id="a_report" onclick="ajaxmenu(event, this.id, 1)">违规举报</a></li>
<?php if(checkperm('managename')||checkperm('managespacegroup')||checkperm('managespaceinfo')||checkperm('managespacecredit')||checkperm('managespacenote')) { ?>
<li><img src="image/icon/profile.gif"><a href="admincp.php?ac=space&op=manage&uid=<?=$space['uid']?>" id="a_manage">管理用户</a></li>
<?php } ?>
</ul>
</div><br />
<div class="borderbox">
<ul class="spacemenu_list" style="width:100%; overflow:hidden;">
            <li><img src="template/default/image/titit.gif"><A href="/template/default/faq.html" target="_BLANK">常见问题</A></li>
            <li><img src="template/default/image/titit.gif"><A href="/template/default/gl.html" target="_BLANK">情人攻略</A></li>
            <li><img src="template/default/image/titit.gif"><A href="/template/default/mzsm.html" target="_BLANK">免责声明</A></li>
            <li><img src="template/default/image/titit.gif"><A href="/template/default/gy.html" target="_BLANK">自律公约</A></li>
 			</ul>
</div>
       <br />
<div class="borderbox1">
        <a href="/pay.php?pay=buyvip" target="_blank"><img src="/image/vip.jpg" width="195" border="0"></img></a>  		</div>
       <br />
<div class="borderbox">
<ul class="spacemenu_list" style="width:100%; overflow:hidden;">
             友情提醒：<br>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本站男女比例超过10比1，女士基本能找到情人，当然要非常满意也需要运气！<br>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;守株待兔的男士基本没戏，男士必需主动联系女士才有机会，本站提倡加QQ联系！
</ul>
</div>
       <br />
<?php if($guidelist) { ?>
<div id="space_app_guide">
<h2>应用菜单</h2>
<ul class="line_list">
<?php if(is_array($guidelist)) { foreach($guidelist as $value) { ?>
<li id="space_app_profilelink_<?=$value['appid']?>">
<?php if($space['self']) { ?>
<a href="cp.php?ac=space&op=delete&appid=<?=$value['appid']?>&type=profilelink" id="user_app_profile_<?=$value['appid']?>" class="r_option float_del" style="position: static;" onclick="ajaxmenu(event, this.id)" title="删除">删除</a>
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
<a href="cp.php?ac=space&op=delete&appid=<?=$value['appid']?>" id="user_app_<?=$value['appid']?>" class="r_option float_del" onclick="ajaxmenu(event, this.id)" title="删除">删除</a>
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
<?php if($_SGLOBAL['session']['magichidden']) { ?>当前隐身<?php } else { ?>当前在线<?php } ?>
 
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
<li>已有 <?=$space['viewnum']?> 人来访<em>(姓名: <?=$space['name']?>)</em></li><li>&nbsp;</li>
<?php if($space['sex']) { ?>
<li><em>性别:</em><?=$space['sex']?></li>
<?php } ?>
<?php if($space['birth']) { ?>
<li><em>年龄:</em><?=$space['birth']?></li>
        <li><em>血型:</em><?=$space['blood']?></li>
          <li><em>婚恋:</em><?=$space['marry']?></li>
  <?php } ?>
      <?php if($space['height']) { ?>
<li><em>身高:</em><?=$space['height']?></li>
  <?php } ?>
      <?php if($space['field_9']) { ?>
<li><em>学历:</em><?=$space['field_11']?></li>
    <?php } ?>
      <?php if($space['field_8']) { ?>
<li><em>年收入:</em><?=$space['field_10']?></li>
    <?php } ?>
      <?php if($space['field_10']) { ?>
<li><em>职业:</em><?=$space['field_12']?></li>
    <?php } ?>
      <?php if($space['residecity']) { ?>
<li><em>居住:</em><?=$space['residecity']?></li>
  <?php } ?>
      <?php if($space['birthcity']) { ?>
<li><em>家乡:</em><?=$space['birthcity']?></li>
  <?php } ?>
<?php if($isonline) { ?>
<li><em>活跃:</em><?=$isonline?> (当前在线)</li>
<?php } ?>
<li><em>上次登录:</em>
      <?php if($space['lastlogin']) { ?>
  <?php echo sgmdate('Y-m-d',$space[lastlogin],1); ?>
  <?php } ?>
  </li>
</ul>
</div>
<br><br>

<div class="space_info1">
<h3 class="spaceindex_name"><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>的交友宣言</h3>
<ul class="spacemenu_list">
<li><b><?php if($space['jymd']==0) { ?><?php if(empty($space['ask'])) { ?><?php } ?>
    </b><span class="STYLE11"><?=$space['field_9']?></span><b>
  <?php } else { ?>
  待审核
  <?php } ?>
      </b></li>
</ul>
</div>
<br><br>
 
<div class="space_info1">
<h3 class="spaceindex_name"><font color="#999">联系方式</font></h3>
<ul class="spacemenu_list">
<?php if(checkperm('managespace') or $space['uid'] == $_SGLOBAL['supe_uid']) { ?>
<?php if($space['mobile']) { ?>
<li><em>手机:</em><?=$space['mobile']?></li>
<?php } ?>
<?php if($space['qq']) { ?>
<li><em>QQ：</em><?=$space['qq']?></li>
<?php } ?>
<?php if($space['email']) { ?>
<li><em>邮箱：</em><?=$space['email']?></li>
<?php } ?>
<?php } elseif($space['vip'] == 1 and $space['sex_org'] == 1 and $a_sex == 2) { ?>
<?php if($space['mobile']) { ?>
<li><em>手机:</em><a href="#" onclick="$('TipsvMobile').style.display='';viewvv(<?=$space['uid']?>, 'mobile');">免费查看</a>&nbsp;<span id="TipsvMobile" style='display:none;'><?=$space['mobile']?></span></li>
<?php } ?>
<?php if($space['qq']) { ?>
<li><em>QQ：</em><a href="#" onclick="$('TipsvQQ').style.display='';viewvv(<?=$space['uid']?>, 'qq');">免费查看</a>&nbsp;<span id="TipsvQQ" style='display:none;'><?=$space['qq']?></span></li>
<?php } ?>
<?php if($space['email']) { ?>
<li><em>邮箱：</em><a href="#" onclick="$('TipsvEmail').style.display='';viewvv(<?=$space['uid']?>, 'email');">免费查看</a>&nbsp;<span id="TipsvEmail" style='display:none;'><?=$space['email']?></span></li>
<?php } ?>
<?php } else { ?>
<?php if($_SCONFIG['viplookinfo'] == 1 and $vips['day'] > 0) { ?>
<?php if($space['mobile']) { ?>
<li><em>手机:</em><a href="#" onclick="$('TipsvMobile').style.display='';viewv(<?=$space['uid']?>, 'mobile');">免费查看</a>&nbsp;<span id="TipsvMobile" style='display:none;'><?=$space['mobile']?></span></li>
<?php } ?>
<?php if($space['qq']) { ?>
<li><em>QQ：</em><a href="#" onclick="$('TipsvQQ').style.display='';viewv(<?=$space['uid']?>, 'qq');">免费查看</a>&nbsp;<span id="TipsvQQ" style='display:none;'><?=$space['qq']?></span></li>
<?php } ?>
<?php if($space['email']) { ?>
<li><em>邮箱：</em><a href="#" onclick="$('TipsvEmail').style.display='';viewv(<?=$space['uid']?>, 'email');">免费查看</a>&nbsp;<span id="TipsvEmail" style='display:none;'><?=$space['email']?></span></li>
<?php } ?>
<?php } elseif($_SGLOBAL['supe_uid']) { ?>
<li><em>手机：</em>
<?php if($space['mobile']) { ?>
<?php if($viewed) { ?>
<?=$space['mobile']?>
<?php } else { ?>
<b>已填 </b><a href="#" onclick="view(<?=$space['uid']?>, 'mobile');">查看</a>&nbsp;<span id="TipsMobile" style='display:none;'></span>
<?php } ?>
<?php } else { ?>
未填
<?php } ?> </li>
<li><em>Q Q：</em>
<?php if($space['qq']) { ?>
<?php if($viewed) { ?>
<?=$space['qq']?>
<?php } else { ?>
<b>已填 </b><a href="#" onclick="view(<?=$space['uid']?>, 'qq');">查看</a>&nbsp;<span id="TipsQQ" style='display:none;'></span>
<?php } ?>
<?php } else { ?>
未填
<?php } ?></li>
<li><em>邮箱：</em>
<?php if($space['email']) { ?>
<?php if($viewed) { ?>
<?=$space['email']?>
<?php } else { ?>
<b>已填 </b><a href="#" onclick="view(<?=$space['uid']?>, 'email');">查看</a>&nbsp;<span id="TipsEmail" style='display:none;'></span>
<?php } ?>
<?php } else { ?>
未填
<?php } ?></li>
<li>备注：<font size="2">您的金豆余额<span style="color:#FF0099;font-size:14px;"><strong><?=$space['credit']?></strong></span>个，查看联系方式需支付<span class="STYLE1">2</span>金豆。<span style="color:#FB03A9;"><a href="/pay.php?pay=buyvip" target="_blank">→金豆充值</a></span>&nbsp;&nbsp;<a href="/cp.php?ac=invite" target="_blank"><span style="color:#FB03A9;">→邀请好友赚金豆</span></a><br>
  VIP会员可免费查看联系方式，VIP男士联系方式可以被美女免费看！<a href="pay.php?pay=buyvip" target="_blank">→马上升级VIP</a></font>              </li>
<?php } else { ?>
<li>您需要<a href="do.php?ac=login">登录</a>/<a href="do.php?ac=register">注册</a>才可以查看详细资料</li>
<?php } ?>
<?php } ?>
</ul>
</div>
<br><br>

<?php if($dolist) { ?>
<div class="space_info1">
<h3 class="spaceindex_name"><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>的心情记录</h3>
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
<h3 class="spaceindex_name"><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>的交友密语</h3>
<ul class="spacemenu_list">
<li><em><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>的交友目的</em><em>：</em><strong>想找一位同城情人</strong></li>
<li><em><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>愿意为对方提供：</em><strong><?=$space['field_1']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>希望获得帮助：</em><strong><?=$space['field_2']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>的外貌：</em><strong><?=$space['field_3']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>的个性：</em><strong><?=$space['field_4']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>的爱好：</em><strong><?=$space['field_8']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>的性爱观念：</em><strong><?=$space['field_6']?></strong></li>
<li><em><?php if(strip_tags($space['sex'])=='女') { ?>她<?php } else { ?>他<?php } ?>第一次见面希望：</em><strong><?=$space['field_7']?></strong></li>
</ul>
</div>
<br><br>
 
<?php if($albumlist) { ?>
<div id="space_photo">
<h3 class="feed_header">
<a href="space.php?uid=<?=$space['uid']?>&do=album&view=me" class="r_option">全部</a>
相册			</h3>
<table cellspacing="4" cellpadding="4" width="100%">
<tr>
<?php if(is_array($albumlist)) { foreach($albumlist as $key => $value) { ?>
<td width="85" align="center"><a href="space.php?uid=<?=$space['uid']?>&do=album&id=<?=$value['albumid']?>" target="_blank"><img src="<?=$value['pic']?>" alt="<?=$value['albumname']?>" width="70" /></a></td>
<td width="165">
<h6><a href="space.php?uid=<?=$space['uid']?>&do=album&id=<?=$value['albumid']?>" target="_blank" title="<?=$value['albumname']?>"><?=$value['albumname']?></a></h6>
<p class="gray"><?=$value['picnum']?> 张照片</p>
<p class="gray">更新于 <?php echo sgmdate('m-d',$value[dateline],1); ?></p>				</td>
<?php if($key%2==1) { ?></tr><tr><?php } ?>
<?php } } ?>
</tr>
</table>
</div>
<?php } ?>
 
<?php if($bloglist) { ?>
<div id="space_blog" class="feed">
<h3 class="feed_header">
<a href="space.php?uid=<?=$space['uid']?>&do=blog&view=me" class="r_option">全部</a>
日志			</h3>
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
<a href="cp.php?ac=space&op=delete&appid=<?=$value['appid']?>" id="user_app_<?=$value['appid']?>" class="r_option float_del" onclick="ajaxmenu(event, this.id)" title="删除">删除</a>
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
<a href="space.php?uid=<?=$space['uid']?>&do=wall&view=me" class="r_option">全部</a>
留言板
</h3>
 
<div class="box">
<form action="cp.php?ac=comment" id="quick_commentform_<?=$space['uid']?>" name="quick_commentform_<?=$space['uid']?>" method="post" style="padding:0 0 0 5px;">
<a href="###" id="editface" onclick="showFace(this.id, 'comment_message');return false;"><img src="image/facelist.gif" align="absmiddle" /></a>
<?php if($_SGLOBAL['magic']['doodle']) { ?>
<a id="a_magic_doodle" href="magic.php?mid=doodle&showid=comment_doodle&target=comment_message" onclick="ajaxmenu(event, this.id, 1)"><img src="image/magic/doodle.small.gif" class="magicicon" />涂鸦板</a>
<?php } ?>
<br />
<textarea name="message" id="comment_message" rows="4" cols="60" style="width:98%;" onkeydown="ctrlEnter(event, 'commentsubmit_btn');"></textarea><br>
<input type="hidden" name="refer" value="space.php?uid=<?=$space['uid']?>" />
<input type="hidden" name="id" value="<?=$space['uid']?>" />
<input type="hidden" name="idtype" value="uid" />
<input type="hidden" name="commentsubmit" value="true" />
<input type="button" id="commentsubmit_btn" name="commentsubmit_btn" class="submit" value="留言" onclick="ajaxpost('quick_commentform_<?=$space['uid']?>', 'wall_add')" />
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
<a id="a_magic_flicker_<?=$value['cid']?>" href="cp.php?ac=magic&op=cancelflicker&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id)">取消<?=$_SGLOBAL['magic']['flicker']?></a>
<?php } else { ?>
<a id="a_magic_flicker_<?=$value['cid']?>" href="magic.php?mid=flicker&idtype=cid&id=<?=$value['cid']?>" onclick="ajaxmenu(event,this.id, 1)"><?=$_SGLOBAL['magic']['flicker']?></a>
<?php } ?>
<span class="pipe">|</span>
<?php } ?>

<a href="cp.php?ac=comment&op=edit&cid=<?=$value['cid']?>" id="c_<?=$value['cid']?>_edit" onclick="ajaxmenu(event, this.id, 1)">编辑</a>
<?php } ?>
<?php if($value['authorid']==$_SGLOBAL['supe_uid'] || $value['uid']==$_SGLOBAL['supe_uid'] || checkperm('managecomment')) { ?>
<a href="cp.php?ac=comment&op=delete&cid=<?=$value['cid']?>" id="c_<?=$value['cid']?>_delete" onclick="ajaxmenu(event, this.id)">删除</a>
<?php } ?>
<?php if($value['authorid']!=$_SGLOBAL['supe_uid'] && ($value['idtype'] != 'uid' || $space['self'])) { ?>
<a href="cp.php?ac=comment&op=reply&cid=<?=$value['cid']?>&feedid=<?=$feedid?>" id="c_<?=$value['cid']?>_reply" onclick="ajaxmenu(event, this.id, 1)">回复</a>
<?php } ?>
<a href="cp.php?ac=common&op=report&idtype=comment&id=<?=$value['cid']?>" id="a_report_<?=$value['cid']?>" onclick="ajaxmenu(event, this.id, 1)">举报</a>
</div>

<?php if($value['author']) { ?>
<a href="space.php?uid=<?=$value['authorid']?>" id="author_<?=$value['cid']?>"><?=$_SN[$value['authorid']]?></a> 
<?php } else { ?>
匿名
<?php } ?>
<span class="gray"><?php echo sgmdate('Y-m-d H:i',$value[dateline],1); ?></span>

</div>

<div class="detail<?php if($value['magicflicker']) { ?> magicflicker<?php } ?>" id="comment_<?=$value['cid']?>"><?=$value['message']?></div>

<?php if(empty($ajax_edit)) { ?></li><?php } ?>

<?php } } ?>
</ul>
<?php if($walllist) { ?>
<p class="r_option" style="padding:5px 0 10px 0;"><a href="space.php?uid=<?=$space['uid']?>&do=wall&view=me">&raquo; 更多留言</a></p>
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
<a href="space.php?uid=<?=$space['uid']?>&do=friend&view=visitor" class="r_option">全部</a>
最近来访
<?php if(!$space['self'] && $_SGLOBAL['magic']['anonymous']) { ?>
<span class="gray"><img title="<?=$_SGLOBAL['magic']['anonymous']?>" src="image/magic/anonymous.small.gif"/><a id="a_magic_anonymous" href="magic.php?mid=anonymous&idtype=uid&id=<?=$space['uid']?>" onclick="ajaxmenu(event,this.id,1)">匿名</a></span>
<?php } ?>
</h2>
<ul class="avatar_list">
<?php if(is_array($visitorlist)) { foreach($visitorlist as $key => $value) { ?>
<li>
<?php if($value['vusername'] == '') { ?>
<div class="avatar48"><img src="image/magic/hidden.gif" alt="匿名" /></div>
<p>匿名</p>
<p class="gray"><?php echo sgmdate('n月j日',$value[dateline],1); ?></p>
<?php } else { ?>
<div class="avatar48"><a href="space.php?uid=<?=$value['vuid']?>"><?php echo avatar($value[vuid],small,false,$value[sex]); ?></a></div>
<p<?php if($ols[$value['vuid']]) { ?> class="online_icon_p"<?php } ?>><a href="space.php?uid=<?=$value['vuid']?>" title="<?=$_SN[$value['vuid']]?>"><?=$_SN[$value['vuid']]?></a></p>
<p class="gray"><?php echo sgmdate('n月j日',$value[dateline],1); ?></p>
<?php } ?>
</li>
<?php } } ?>
</ul>
</div> -->
<?php } ?>
<?php } ?>
 
</div>
 
</div>
 
<?php if($_GET['theme']) { ?><div class="nn">您是否想使用这款个性风格?<br /><a href="cp.php?ac=theme&op=use&dir=<?=$_GET['theme']?>">[应用]</a><a href="cp.php?ac=theme">[取消]</a></div><?php } ?>
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
 
<script> 
function getindex(type) {
var plus = '';
if(type == 'event') plus = '&type=self';
ajaxget('space.php?uid=<?=$space['uid']?>&do='+type+'&view=me'+plus+'&ajaxdiv=maincontent', 'maincontent');
}
 
//彩虹炫
var elems = selector('div[class~=magicflicker]'); 
for(var i=0; i<elems.length; i++){
magicColor(elems[i]);
}
 
</script>
<?php ob_out();?>