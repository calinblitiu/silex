<?php

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

// home page

$app->get('/', function() use ($app) {
	// session check
	if(null === $isLogin = $app['session']->get('isLogin')){
		return $app['twig']->render('login.twig', array(
			'name' => "test"
		));
	} else {
		return $app->redirect('/home');
	}
});

// login post

$app->post('/login', function(Request $request) use($app){
	
	$user_email = $request->get('user_email');
	$user_pwd = $request->get('user_pwd');

	$sql = "select * from tbl_user where user_email = '" . $user_email . "' AND user_pwd = '" . md5($user_pwd) . "'";

	$post = $app['db']->fetchAll($sql);

	if(count($post) == 0) { // if user null, then error message
		return $app['twig']->render('login.twig', array(
			'msg' => "User Email or Password is matched"
		));
	} else {
		$app['session']->set('isLogin', true);
		return $app->redirect('/home');
	}

});

// home page after login

$app->get('/home', function() use($app){
	// session check
	if(null === $isLogin = $app['session']->get('isLogin')){
		return $app->redirect('/');
	}

	$sql = "SELECT * FROM `tbl_post` ORDER BY `post_updated` DESC";

	$post = $app['db']->fetchAll($sql);
	// var_dump($post);

	return $app['twig']->render('home.twig', array('posts' => $post));
});

// log out

$app->get('/logout', function() use($app){
	$app['session']->set('isLogin', null);
	return $app->redirect('/');
});

// post

$app->post('/post', function(Request $request) use($app){
	$post_data = $request->get('post_data');

	$app['db']->insert('tbl_post', array(
		'post_data' => $post_data
	));

	return $app->redirect('/home');
});