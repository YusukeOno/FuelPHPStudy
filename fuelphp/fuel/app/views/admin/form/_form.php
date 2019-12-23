<?php echo Form::open(); ?>
	<fieldset>
		<div class="form-group">
			<?php echo Form::label('名前', 'name', array('class' => 'control-label')); ?>

			<?php echo Form::input('name', Input::post('name', isset($form) ? $form->name : ''), array('class' => 'form-control', 'placeholder' => 'Name')); ?>
		</div>

		<div class="form-group">
			<?php echo Form::label('メールアドレス', 'email', array('class' => 'control-label')); ?>

			<?php echo Form::input('email', Input::post('email', isset($form) ? $form->email : ''), array('class' => 'form-control', 'placeholder' => 'Email')); ?>
		</div>

		<div class="form-group">
			<?php echo Form::label('コメント', 'comment', array('class' => 'control-label')); ?>

			<?php echo Form::input('comment', Input::post('comment', isset($form) ? $form->comment : ''), array('class' => 'form-control', 'placeholder' => 'Comment')); ?>
		</div>

		<div class="form-group">
			<?php echo Form::label('IPアドレス', 'ip_address', array('class' => 'control-label')); ?>

			<?php echo Form::input('ip_address', Input::post('ip_address', isset($form) ? $form->ip_address : ''), array('class' => 'form-control', 'placeholder' => 'Ip address')); ?>
		</div>

		<div class="form-group">
			<?php echo Form::label('ブラウザ', 'user_agent', array('class' => 'control-label')); ?>

			<?php echo Form::input('user_agent', Input::post('user_agent', isset($form) ? $form->user_agent : ''), array('class' => 'form-control', 'placeholder' => 'User agent')); ?>
		</div>

		<div class="form-group">
			<?php echo Form::submit('submit', '保存', array('class' => 'btn btn-primary')); ?>

			<div class="pull-right">
				<?php if (Uri::segment(3) === 'edit'): ?>
					<div class="btn-group">
						<?php echo Html::anchor('admin/form', '戻る', array('class' => 'btn btn-default')); ?>
					</div>
				<?php else: ?>
					<?php echo Html::anchor('admin/form', 'Back', array('class' => 'btn btn-link')); ?>
				<?php endif ?>
			</div>
		</div>
	</fieldset>


<?php echo Form::close(); ?>