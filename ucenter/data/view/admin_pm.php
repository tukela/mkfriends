<? if(!defined('UC_ROOT')) exit('Access Denied');?>
<? include $this->gettpl('header');?>

<script src="js/common.js" type="text/javascript"></script>
<? if($a == 'ls') { ?>
<div class="container">
	<? if($status) { ?>
		<div class="correctmsg"><p><? if($status == 1) { ?>�ɹ�ɾ��������Ϣ<? } ?></p></div>
	<? } ?>
	<h3 class="marginbot">
		������Ϣ����
		<a href="admin.php?m=pm&a=send" class="sgbtn">���͹�����Ϣ</a>
		<a href="admin.php?m=pm&a=clear" class="sgbtn">�������Ϣ</a>
	</h3>
	<div class="mainbox">
	<? if($pmlist) { ?>
		<form action="admin.php?m=pm&a=ls" method="post">
			<input type="hidden" name="formhash" value="<?=FORMHASH?>">
			<table class="datalist fixwidth" onmouseover="addMouseEvent(this);">
				<tr>
					<th><input type="checkbox" name="chkall" id="chkall" onclick="checkall('delete[]')" class="checkbox" /><label for="chkall">ɾ��</label></th>
					<th>����</th>
					<th>������</th>
					<th>ʱ��</th>
				</tr>
				<? foreach((array)$pmlist as $pm) {?>
					<tr>
						<td class="option"><input type="checkbox" name="delete[]" value="<?=$pm['pmid']?>" class="checkbox" /></td>
						<td><a href="admin.php?m=pm&a=view&pmid=<?=$pm['pmid']?>&<?=$extra?>"><? if($pm['subject']) { ?><?=$pm['subject']?><? } else { ?>[�ޱ���]<? } ?></a></td>
						<td><?=$pm['msgfrom']?></td>
						<td><?=$pm['dateline']?></td>
					</tr>
				<? } ?>
				<tr class="nobg">
					<td><input type="submit" value="�� ��" class="btn" /></td>
					<td class="tdpage" colspan="4"><?=$multipage?></td>
				</tr>
			</table>
		</form>
	<? } else { ?>
		<div class="note">
			<p class="i">Ŀǰû����ؼ�¼!</p>
		</div>
	<? } ?>
	</div>
</div>
<? } elseif($a == 'view') { ?>
<div class="container">
	<h3 class="marginbot">������Ϣ����<a href="admin.php?m=pm&a=ls&<?=$extra?>" class="sgbtn">����</a></h3>
	<div class="mainbox">
	<? if($pms) { ?>
		<table class="datalist fixwidth">
			<tr><th>������</th><td><?=$pms['msgfrom']?></td></tr>
			<tr><th>ʱ��</th><td><?=$pms['dateline']?></td></tr>
			<tr><th>����</th><td><? if($pms['subject']) { ?><?=$pms['subject']?><? } else { ?>[�ޱ���]<? } ?></td></tr>
		<tr class="nobg"><td colspan="2"><?=$pms['message']?></td></tr>
		</table>
	<? } else { ?>
		<div class="note">
			<p class="i">Ŀǰû����ؼ�¼!</p>
		</div>
	<? } ?>
	</div>
</div>
<? } ?>

<? include $this->gettpl('footer');?>