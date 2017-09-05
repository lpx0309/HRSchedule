<?php
//文件根路径
define('FILE_ROOT',dirname(__FILE__));
//基本配置
require_once(FILE_ROOT.'/config.php');
//通用方法
require_once(FILE_ROOT.'/common.php');
//数据库连接
DB::Connect();
//用户session和cookie
session_start();
if(isset($_COOKIE['uid'])){
	$_SESSION['user']=DB::Get_arr('select * from user where id='.$_COOKIE['uid']);
}
//路由
if(isset($_GET['controller'])){
	if($_GET['controller']=='view'){
		$view=$_GET['view'];
		include(FILE_ROOT.'/view/'.$view.'.php');
	}else{
		include(FILE_ROOT.'/model/'.$_GET['model'].'.php');
		$model=new $_GET['model']($_GET,$_POST);
		$model->$_GET['function']();
	}
}else{
	$view='default';
	include(FILE_ROOT.'/view/'.$view.'.php');
}
?>