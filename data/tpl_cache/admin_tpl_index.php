<?php if(!defined('IN_UCHOME')) exit('Access Denied');?><?php subtplcheck('admin/tpl/index|admin/tpl/header|admin/tpl/side|admin/tpl/footer|template/blue/header|template/blue/footer', '1318212769', 'admin/tpl/index');?><?php $_TPL['menunames'] = array(
		'index' => '管理首页',
		'config' => '站点设置',
		'privacy' => '隐私设置',
		'usergroup' => '用户组',
		'credit' => '积分规则',
		'profilefield' => '用户栏目',
		'profield' => '群组栏目',
		'eventclass' => '活动分类',
		'magic' => '道具设置',
		'task' => '有奖任务',
		'spam' => '防灌水设置',
		'censor' => '词语屏蔽',
		'ad' => '广告设置',
		'userapp' => 'MYOP应用',
		'app' => 'UCenter应用',
		'network' => '随便看看',
		'cache' => '缓存更新',
		'log' => '系统log记录',
		'space' => '用户管理',
		'feed' => '动态(feed)',
		'share' => '分享',
		'blog' => '日志',
		'album' => '相册',
		'pic' => '图片',
		'comment' => '评论/留言',
		'thread' => '话题',
		'post' => '回帖',
		'doing' => '记录',
		'tag' => '标签',
		'mtag' => '群组',
		'poll' => '投票',
		'event' => '活动',
		'magiclog' => '道具记录',
		'report' => '举报',
		'block' => '数据调用',
		'template' => '模板编辑',
		'backup' => '数据备份',
		'stat' => '统计更新',
		'cron' => '系统计划任务',
		'click' => '表态动作',
		'ip' => '访问IP设置',
		'hotuser' => '推荐成员设置',
		'defaultuser' => '默认好友设置',
	); ?>
<?php $_TPL['nosidebar'] = 1; ?>
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

<style type="text/css">
@import url(admin/tpl/style.css);
</style>

<div id="cp_content">


<div class="mainarea">
<div class="maininner">
<?php if($menus['0']['config']) { ?>
<div class="bdrcontent">
<div class="title"><h3>欢迎光临管理平台</h3></div>
<p>通过登录管理平台，您可以对站点的参数进行设置，并可以及时获取官方的更新动态和重要补丁通告。</p>
</div>
<br />

<div class="bdrcontent">
<div class="title">
<h3>官方最新动态</h3>
<p>官方新版本的发布与重要补丁的升级等动态，都会在这里显示。</p>
</div>
<div id="customerinfor" style="line-height:1.5em;"></div>
<br />
<div class="title">
<h3>技术支持服务</h3>
<p>如果你在使用中遇到问题，可以访问以下链接需求帮助</p>
</div>
<ul class="listcol list2col">
<li><a href=http://www.discuz.net/index.php?gid=141 target="_blank">官方交流论坛</a></li>
<li><a href=http://www.comsenz.com/purchase/uchome target="_blank">Comsenz商业支持服务</a></li>
</ul>
</div>
<br />

<div class="bdrcontent">
<div class="title">
<h3>站点数据统计</h3>
<p>通过站点统计，您可以整体把握站点的发展状况。</p>
<p>您还可以查看<a href="do.php?ac=stat" target="_blank">趋势统计</a>，把握站点每日变化。</p>
</div>
<ul class="listcol list2col">
<li>开通空间数: <?=$statistics['spacenum']?> (<a href="do.php?ac=stat&type=login" target="_blank">趋势</a>)</li>
<li>全部动态数: <?=$statistics['feednum']?></li>
<li>全部日志数: <?=$statistics['blognum']?> (<a href="do.php?ac=stat&type=blog" target="_blank">趋势</a>)</li>
<li>全部相册数: <?=$statistics['albumnum']?> (<a href="do.php?ac=stat&type=pic" target="_blank">趋势</a>)</li>
<li>全部分享数: <?=$statistics['sharenum']?> (<a href="do.php?ac=stat&type=share" target="_blank">趋势</a>)</li>
<li>全部话题数: <?=$statistics['threadnum']?> (<a href="do.php?ac=stat&type=thread" target="_blank">趋势</a>)</li>
<li>全部评论数: <?=$statistics['commentnum']?></li>
<li>开启应用数: <?=$statistics['myappnum']?></li>
</ul>
</div>
<br />

<div class="bdrcontent">
<div class="title"><h3>程序数据库/版本</h3></div>
<ul>
<li>操作系统: <?=$os?></li>
<li>数据库版本: <?=$statistics['mysql']?></li>
<li>上传许可: <?=$fileupload?></li>
<li>数据库尺寸: <?=$dbsize?></li>
<li>附件尺寸: <?=$attachsize?></li>
<li>当前程序版本: UCenter Home <?=$statistics['version']?> ( <?=$statistics['release']?> )</li>
<li>UCenter Client 版本: <?=UC_CLIENT_VERSION?> Release <?=UC_CLIENT_RELEASE?></li>
</ul>
</div>
<br />

<div class="bdrcontent">

<div class="title">
<h3>开发团队</h3>
</div>
<table>
<tr><td width="80">版权所有</td><td><a  href="http://www.comsenz.com/" target="_blank">康盛创想(北京)科技有限公司 (Comsenz Inc.)</a></td></tr>
<tr><td>总策划</td><td><a  href="http://www.discuz.net/space.php?uid=1" target="_blank">Kevin 'Crossday' Day</a>, <a  href="http://www.discuz.net/space.php?uid=174393" target="_blank">Guode 'Sup' Li</a></td></tr>
<tr><td>开发团队</td><td><a  href="http://www.discuz.net/space.php?uid=322293" target="_blank">Qingpeng 'Andy' Zheng</a>, <a  href="http://www.discuz.net/space.php?uid=248739" target="_blank">Jing 'Qiezi' Zou</a>, <a  href="http://www.discuz.net/space.php?uid=672953" target="_blank">Fei 'Fengshu' Zhao</a>, <a  href="http://www.discuz.net/space.php?uid=465273" target="_blank">Lijun 'Maple-x' Zhang</a>, <a  href="http://www.discuz.net/space.php?uid=679269" target="_blank">Lei 'Shitou' Zhao</a>, <a  href="http://www.discuz.net/space.php?uid=906359" target="_blank">Peng 'Dingusxp' Xu</a></td></tr>
<tr><td>美工设计</td><td><a  href="http://www.discuz.net/space.php?uid=294092" target="_blank">Fangming 'Lushnis' Li</a>, <a  href="http://www.discuz.net/space.php?uid=174393" target="_blank">Yulong 'Yulong' Li</a>, <a  href="http://www.discuz.net/space.php?uid=41050" target="_blank">Rujian '小古' Mo</a></td></tr>
<tr><td>公司网站</td><td><a href=http://www.comsenz.com target="_blank">http://www.comsenz.com</a></td></tr>
<tr><td>产品网站</td><td><a href=http://u.discuz.net target="_blank">http://u.discuz.net</a></td></tr>
</table>
</div>
<?php } else { ?>
<div class="bdrcontent">
<div class="title"><h3>欢迎光临管理平台</h3></div>
<p>通过管理平台操作，你可以对发布的信息进行批量管理。</p>

<br />
<div class="title"><h3>快捷管理菜单</h3></div>
<ul class="listcol list2col">
<?php if($menus['1']['space']) { ?><li><a href="admincp.php?ac=space" style="font-weight:bold;">用户</a><p>编辑用户的积分、用户组、管理空间信息、删除用户</p></li><?php } ?>
<li><a href="admincp.php?ac=feed" style="font-weight:bold;">事件</a><p>对"我在做什么"进行批量删除</p></li>
<li><a href="admincp.php?ac=blog" style="font-weight:bold;">日志</a><p>对日志进行批量删除、编辑</p></li>
<li><a href="admincp.php?ac=album" style="font-weight:bold;">相册</a><p>对发布的相册进行批量删除</p></li>
<li><a href="admincp.php?ac=pic" style="font-weight:bold;">图片</a><p>对发布的图片进行批量删除</p></li>
<li><a href="admincp.php?ac=comment" style="font-weight:bold;">评论</a><p>对发布的评论进行批量删除</p></li>
<li><a href="admincp.php?ac=thread" style="font-weight:bold;">话题</a><p>对群组上面发布的话题进行批量删除、精华、置顶</p></li>
<li><a href="admincp.php?ac=post" style="font-weight:bold;">回帖</a><p>对群组上面发布的回帖进行批量删除</p></li>
<li><a href="admincp.php?ac=poll" style="font-weight:bold;">投票</a><p>对投票进行批量删除</p></li>
<?php if($menus['1']['tag']) { ?><li><a href="admincp.php?ac=tag" style="font-weight:bold;">标签</a><p>对站点的标签进行删除、关闭、合并</p></li><?php } ?>
<?php if($menus['1']['mtag']) { ?><li><a href="admincp.php?ac=mtag" style="font-weight:bold;">群组</a><p>对站点的群组进行删除、关闭、合并</p></li><?php } ?>
<?php if($menus['1']['event']) { ?><li><a href="admincp.php?ac=event" style="font-weight:bold;">活动</a><p>对站点的活动进行删除、审核、推荐</p></li><?php } ?>
<?php if($menus['1']['css']) { ?><li><a href="admincp.php?ac=css" style="font-weight:bold;">模版样式</a><p>对站点共享的模版样式进行批量审核、删除</p></li><?php } ?>
</ul>
</div><br />
<?php } ?>
</div>
<br>
</div>

<div class="side">
<?php if($menus['0']) { ?>
<div class="block style1">
<h2>基本设置</h2>
<ul class="folder">
<?php if(is_array($acs['0'])) { foreach($acs['0'] as $value) { ?>
<?php if($menus['0'][$value]) { ?>
<?php if($ac==$value) { ?><li class="active"><?php } else { ?><li><?php } ?><a href="admincp.php?ac=<?=$value?>"><?=$_TPL['menunames'][$value]?></a></li>
<?php } ?>
<?php } } ?>
</ul>
</div>
<?php } ?>

<div class="block style1">
<h2>批量管理</h2>
<ul class="folder">
<?php if(is_array($acs['3'])) { foreach($acs['3'] as $value) { ?>
<?php if($ac==$value) { ?><li class="active"><?php } else { ?><li><?php } ?><a href="admincp.php?ac=<?=$value?>"><?=$_TPL['menunames'][$value]?></a></li>
<?php } } ?>
<?php if(is_array($acs['1'])) { foreach($acs['1'] as $value) { ?>
<?php if($menus['1'][$value]) { ?>
<?php if($ac==$value) { ?><li class="active"><?php } else { ?><li><?php } ?><a href="admincp.php?ac=<?=$value?>"><?=$_TPL['menunames'][$value]?></a></li>
<?php } ?>
<?php } } ?>
</ul>
</div>

<?php if($menus['2']) { ?>
<div class="block style1">
<h2>高级设置</h2>
<ul class="folder">
<?php if(is_array($acs['2'])) { foreach($acs['2'] as $value) { ?>
<?php if($menus['2'][$value]) { ?>
<?php if($ac==$value) { ?><li class="active"><?php } else { ?><li><?php } ?><a href="admincp.php?ac=<?=$value?>"><?=$_TPL['menunames'][$value]?></a></li>
<?php } ?>
<?php } } ?>
<?php if($menus['0']['config']) { ?><li><a href="<?=UC_API?>" target="_blank">UCenter</a></li><?php } ?>
</ul>
</div>
<?php } ?>
</div>

<?php if($statistics['update']) { ?>
<script language="javascript" src="http://u.discuz.net/customer/update.php?get=<?=$statistics['update']?>"></script>
<?php } ?>
<?php my_checkupdate(); ?>

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
<?php } ?><?php ob_out();?>