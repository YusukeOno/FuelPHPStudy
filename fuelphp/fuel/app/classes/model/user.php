<?php

class Model_User extends \Orm\Model
{
	protected static $_properties = array(
		"id" => array(
			"label" => "Id",
			"data_type" => "int",
		),
		"username" => array(
			"label" => "Username",
			"data_type" => "varchar",
		),
		"password" => array(
			"label" => "Password",
			"data_type" => "varchar",
		),
		"group" => array(
			"label" => "Group",
			"data_type" => "int",
			"default" => "1",
		),
		"email" => array(
			"label" => "Email",
			"data_type" => "varchar",
		),
		"last_login" => array(
			"label" => "Last login",
			"data_type" => "varchar",
		),
		"login_hash" => array(
			"label" => "Login hash",
			"data_type" => "varchar",
		),
		"profile_fields" => array(
			"label" => "Profile fields",
			"data_type" => "text",
		),
	);

	protected static $_observers = array(
	);

	protected static $_table_name = 'user';

	protected static $_primary_key = array('id');

	protected static $_has_many = array(
	);

	protected static $_many_many = array(
	);

	protected static $_has_one = array(
	);

	protected static $_belongs_to = array(
	);

}
