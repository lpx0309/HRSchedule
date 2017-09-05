<?php
if(isset($_SESSION['user'])){
	header('location:'.LINK_ROOT);
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" href="<?php echo LINK_ROOT; ?>/css/jquery-ui.min.css" />
<link type="text/css" rel="stylesheet" href="<?php echo LINK_ROOT; ?>/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="<?php echo LINK_ROOT; ?>/css/pop_loading.css" />

<script type="text/javascript" src="<?php echo LINK_ROOT; ?>/js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo LINK_ROOT; ?>/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="<?php echo LINK_ROOT; ?>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo LINK_ROOT; ?>/js/pop_div.js"></script>
<script type="text/javascript" src="<?php echo LINK_ROOT; ?>/js/pop_loading.js"></script>

<style>
body {
  padding-top: 10%;
  padding-bottom: 40px;
  background-color: #eee;
}

.form-signin {
  width:400px;
  /*max-width: 330px;*/
  padding: 30px;
  margin: 0 auto;
  background:#fff;
  border-radius:20px;
  box-shadow:0px 0px 30px #ccc;
}
.form-signin ,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin-heading{
	text-align:center;
	margin-bottom: 30px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin-bottom: 10px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>

<title>登录 - 人力资源计划分析</title>
</head>

<body>

  <div class="container">

    <form class="form-signin" role="form" id="form_login">
      <h2 class="form-signin-heading">人力资源计划分析</h2>
      <h5 class="form-signin-heading"></h5>
      <input type="text" class="form-control" placeholder="用户名" required="" autofocus="" name="username">
      <input type="password" class="form-control" placeholder="密码" required="" name="password">
      <div class="checkbox">
        <label>
          <input type="checkbox" value="1" name="autologin"> 1个月内自动登录
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" onclick="login();return false">登录</button>
    </form>

  </div> <!-- /container -->

</body>
</html>

<script type="text/javascript">
function login(){
	$.ajax({
		url:'index.php?controller=model&model=user&function=login&time='+ new Date().getTime(),
		data:$('#form_login').serialize(),
		type:'POST',
		async:true,
		beforeSend: function(){
			pop_loading();
		},
		success: function(text){
			pop_loading_close();
			if(text){
				pop_alert(text);
				console.log(text);
			}else{
				window.location.reload();
			}
		}
	});
}
</script>