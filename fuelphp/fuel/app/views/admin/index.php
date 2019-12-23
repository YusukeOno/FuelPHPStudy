<h2>Listing S</h2>
<br>

<?php if ($s): ?>
	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<th></th>
				</tr>
			</thead>

			<tbody>
				<?php foreach ($s as $item): ?>
					<tr>

						<td>
							<?php echo Html::anchor('admin//view/'.$item->id, 'View'); ?> |
							<?php echo Html::anchor('admin//edit/'.$item->id, 'Edit'); ?> |
							<?php echo Html::anchor('admin//delete/'.$item->id, 'Delete', array('onclick' => "return confirm('Are you sure?')")); ?>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>

	<?php echo $pagination ?>
<?php else: ?>
	<p>No S.</p>
<?php endif; ?>

<p>
	<?php echo Html::anchor('admin//create', 'Add new ', array('class' => 'btn btn-success')); ?>
</p>
