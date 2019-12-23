<h2>表示 #<?php echo $form->id; ?></h2>
<br>

<dl class="dl-horizontal">
	<dt>日時</dt>
	<dd><?php echo Date::forge($form->created_at)->format('mysql'); ?></dd>
	<br>
	<dt>日時</dt>
	<dd><?php echo $form->name; ?></dd>
	<br>
	<dt>メールアドレス</dt>
	<dd><?php echo $form->email; ?></dd>
	<br>
	<dt>コメント</dt>
	<dd><?php echo nl2br($form->comment, false); ?></dd>
	<br>
	<dt>IPアドレス</dt>
	<dd><?php echo $form->ip_address; ?></dd>
	<br>
	<dt>ブラウザ</dt>
	<dd><?php echo $form->user_agent; ?></dd>
	<br>
</dl>

<div class="btn-group">
	<?php echo Html::anchor('admin/form/edit/'.$form->id, '編集', array('class' => 'btn btn-warning')); ?>
	<?php echo Html::anchor('admin/form', '戻る', array('class' => 'btn btn-default')); ?>
</div>
