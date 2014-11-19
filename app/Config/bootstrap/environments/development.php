<?php

Environment::configure('development', true, [
	'MYSQL_DB_HOST' => 'localhost',
	'MYSQL_USERNAME' => 'webapp',
	'MYSQL_PASSWORD' => 'password',
	'MYSQL_DB_NAME' => 'blog',
	'MYSQL_TEST_DB_NAME' => 'test_blog',
	'MYSQL_PREFIX' => '',
], function() {
	CakePlugin::load('Bdd');
	CakePlugin::load('Fabricate');
});
