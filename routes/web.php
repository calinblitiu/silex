<?php

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

$app->get('/', function() use ($app) {
	// return new Response('home', 200);
	if(null === $isLogin = $app['session']->get('isLogin')){
		return $app['twig']->render('login.twig', array(
			'name' => "test"
		));
	} else {
		return $app->redirect('/home');
	}
	

});

$app->post('/login', function(Request $request) use($app){
	

	$user_email = $request->get('user_email');
	$user_pwd = $request->get('user_pwd');

	$sql = "select * from tbl_user where user_email = '" . $user_email . "' AND user_pwd = '" . md5($user_pwd) . "'";

	$post = $app['db']->fetchAll($sql);

	if(count($post) == 0) {
		return $app['twig']->render('login.twig', array(
				'msg' => "User Email or Password is matched"
		));
	} else {
		$app['session']->set('isLogin', true);
		return $app->redirect('/home');
	}

});

$app->get('/home', function() use($app){
	if(null === $isLogin = $app['session']->get('isLogin')){
		return $app->redirect('/');
	}
	return $app['twig']->render('home.twig', array(
		
	));
});

$app->get('/logout', function() use($app){
	$app['session']->set('isLogin', null);
	return $app->redirect('/');
});