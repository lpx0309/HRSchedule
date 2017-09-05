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
<script type="text/javascript" src="<?php echo LINK_ROOT; ?>/js/url.js"></script>
<script type="text/javascript" src="<?php echo LINK_ROOT; ?>/js/pop_div.js"></script>
<script type="text/javascript" src="<?php echo LINK_ROOT; ?>/js/pop_loading.js"></script>

<title><?php echo $title; ?> - 人力资源计划分析</title>
</head>

<body style="padding-top:50px">
<!--头部-->

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<?php echo LINK_ROOT; ?>">人力资源计划分析</a>
    </div>
    
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <?php
		if($_SESSION['user']['id']==1){
		?>
            <li <?php if($view=='user'){ ?>class="active"<?php } ?>><a href="<?php echo LINK_ROOT; ?>/index.php?controller=view&view=user">用户管理</a></li>
        <?php
		}
		?>
        <!--<li <?php if($view=='log'){ ?>class="active"<?php } ?>><a href="<?php echo LINK_ROOT; ?>/index.php?controller=view&view=log">操作记录</a></li>
        <li><a href="<?php echo LINK_ROOT; ?>/index.php?controller=model&model=user&function=logout">登出</a></li>-->
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      	<!--<li><a href="javascript:;" class="glyphicon glyphicon-arrow-up" onclick="$(window).scrollTop(0)">&nbsp;返回顶部</a></li>-->
        <li><a href="javascript:;" class="glyphicon glyphicon-user"></a></li>
        <li class="dropdown">
          <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><?php echo $_SESSION['user']['username']; ?>&nbsp;<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="javascript:;" onclick="pwdmdf()">修改密码</a></li>
            <li class="divider"></li>
            <li><a href="<?php echo LINK_ROOT; ?>/index.php?controller=model&model=user&function=logout">登出</a></li>
          </ul>
        </li>
      </ul>
      
      <form class="navbar-form navbar-right" role="form">
        <label class="sr-only" for="hrpa_keyword">search</label>
        <input type="text" class="form-control" id="hrpa_keyword" placeholder="部门，姓名，组别，项目ID，项目，经理" value="<?php if(isset($_GET['kw'])){echo $_GET['kw'];} ?>" style="width:300px">
        <button type="submit" class="btn btn-default" onclick="list_search('hrpa');return false"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;搜索</button>
      </form>
    </div>
    
  </div>
</nav>

      
<div id="pwdmdf">
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label for="password" class="col-sm-4 control-label">新密码</label>
      <div class="col-sm-8">
        <input type="password" class="form-control" id="password" />
      </div>
    </div>
    <div class="form-group">
      <label for="pwdcfm" class="col-sm-4 control-label">确认新密码</label>
        <div class="col-sm-8">
      <input type="password" class="form-control" id="pwdcfm" />
      </div>
    </div>
  </form>
</div>

<script>
function pwdmdf(){
    window.onbeforeunload='';
    $('#pwdmdf').dialog('open');
}
$('#pwdmdf').dialog({
    modal: true,				 
    autoOpen:false,
    resizable:false,
    width:350,
    height:240,
    title:'修改密码',
    buttons:{
        "确定":function(){
			if($('#password').val().length<6){
				pop_alert('密码不能少于6位！');
				return false;
			}
			if($('#password').val()!=$('#pwdcfm').val()){
				pop_alert('两次输入不一致！');
				return false;
			}
			$.ajax({
				url:'index.php?controller=model&model=user&function=pwdmdf&time='+ new Date().getTime(),
				data:'password='+$('#password').val(),
				type:'POST',
				async:true,
				beforeSend: function(){
					pop_loading();
				},
				success: function(text){
					pop_loading_close();
					if(text){
						alert(text);
						console.log(text);
					}else{
						$('#pwdmdf').dialog('close');
					}
				}
			});
        },
        "取消":function(){
            $(this).dialog("close");
        }
    },
    close:function(){
        window.onbeforeunload = onbeforeunload_handler; 
    }
});
</script>


<div class="container-fluid">
