<?php

namespace Fuel\Migrations;

class Create_form
{
	public function up()
	{
		\DBUtil::create_table('form', array(
			'id' => array('type' => 'int', 'unsigned' => true, 'null' => false, 'auto_increment' => true, 'constraint' => '11'),
			'name' => array('constraint' => 50, 'null' => false, 'type' => 'varchar'),
			'email' => array('constraint' => 100, 'null' => false, 'type' => 'varchar'),
			'comment' => array('constraint' => 400, 'null' => false, 'type' => 'varchar'),
			'ip_address' => array('constraint' => 39, 'null' => false, 'type' => 'varchar'),
			'user_agent' => array('constraint' => 512, 'null' => false, 'type' => 'varchar'),
			'created_at' => array('constraint' => '11', 'null' => false, 'type' => 'int'),
			'updated_at' => array('constraint' => '11', 'null' => false, 'type' => 'int'),
		), array('id'));
	}

	public function down()
	{
		\DBUtil::drop_table('form');
	}
}