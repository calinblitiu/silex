<?php

require __DIR__ . '/../vendor/autoload.php';

$app = new Silex\Application([
	'debug' => true
 ]);

// db setting

$app->register(new Silex\Provider\DoctrineServiceProvider,[
	'db.options' => [
		'driver' => 'pdo_mysql',
		'host' => 'localhost',
		'dbname' => 'silex',
		'user' => 'root',
		'password' => '',
		'charset' => 'utf8mb4'
	]
]);

// view engine

$app->register(new Silex\Provider\TwigServiceProvider(), array(
	'twig.path' => __DIR__ . '/../views',
));

// session

$app->register(new Silex\Provider\SessionServiceProvider());

require __DIR__ . '/../routes/web.php';