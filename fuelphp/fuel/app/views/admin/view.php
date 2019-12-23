<h2>Viewing #<?php echo $->id; ?></h2>
<br>

<dl class="dl-horizontal">
</dl>

<div class="btn-group">
	<?php echo Html::anchor('admin//edit/'.$->id, 'Edit', array('class' => 'btn btn-warning')); ?>
	<?php echo Html::anchor('admin/', 'Back', array('class' => 'btn btn-default')); ?>
</div>
