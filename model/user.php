<?php 
class user{
	public function __construct($get,$post){
		$this->get=$get;
		$this->post=$post;
		$this->default_pwd='longcredit';
		$this->default_password=md5($this->default_pwd);
	}
	
	public function login(){
		//print_r($this->post);
		$user=DB::Get_arr('select * from user where username="'.trim($this->post['username']).'" and password="'.md5(trim($this->post['password'])).'" ');
		if($user){
			$_SESSION['user']=$user;
			if(isset($this->post['autologin'])){
				setcookie("uid",$user['id'],time()+3600*24*30,"/");
			}
		}else{
			echo '用户名或密码错误！';
		}
	}
	
	public function logout(){
		setcookie("uid",0,time()-3600*24*30,"/");
		session_unset();
		session_destroy();
		/*echo '<script>window.location="'.$index_url.'"</script>';*/
        header('location:'.LINK_ROOT.'/index.php?controller=view&view=login');
	}
	
	
	public function del(){
		mysql_query('delete from user where id='.$this->post['id']);
	}
	
	public function rst(){
		mysql_query('update user set password="'.$this->default_password.'" where id='.$this->post['id']);
		echo '已重置密码为：'.$this->default_pwd;
	}
	
	public function save(){
		if(DB::Get_one('select id from user where username="'.trim($this->post['username']).'" ')){
			echo '该用户名已存在！';
		}else{
			mysql_query('insert into user set username="'.trim($this->post['username']).'",password="'.$this->default_password.'" ');
		}
	}
	
	public function pwdmdf(){
		mysql_query('update user set password="'.md5(trim($this->post['password'])).'" where id='.$_SESSION['user']['id']);
	}
}