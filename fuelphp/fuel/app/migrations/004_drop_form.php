<?php

namespace Fuel\Migrations;

class Drop_form
{
	public function up()
	{
		\DBUtil::drop_table('form');
	}

	public function down()
	{
		\DBUtil::create_table('form', array(
			'id' => array('type' => 'int', 'null' => false, 'auto_increment' => true, 'unsigned' => true, 'constraint' => 11),
			'name' => array('type' => 'varchar', 'null' => false),
			'email' => array('type' => 'varchar', 'null' => false),
			'comment' => array('type' => 'varchar', 'null' => false),
			'ip_address' => array('type' => 'varchar', 'null' => false),
			'user_agent' => array('type' => 'varchar', 'null' => false),
			'created_at' => array('type' => 'int', 'null' => false, 'constraint' => 11),
			'updated_at' => array('type' => 'int', 'null' => false, 'constraint' => 11),
		));
	}
}