<?php
$user_list=array();

$users=mysql_query('select * from user');
while($user=mysql_fetch_assoc($users)){
	$user_list[]=$user;
}

$title='用户管理';
?>

<?php require(FILE_ROOT.'/view/header.php'); ?>

<div class="row" style="margin-top:20px">
  <div class="col-md-4">
    <table class="table table-hover table-bordered">
      <th style="vertical-align:middle">
        用户
        <button class="btn btn-default" onclick="$('#add').show()"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加</button>
      </th>
      <th width="240" style="vertical-align:middle">操作</th>
      
      <?php
	  foreach($user_list as $user){
	  ?>
          <tr>
            <td><?php echo $user['username']; ?></td>
            <td>
              <button class="btn btn-default" onclick="del(<?php echo $user['id']; ?>)"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;删除</button>
              <button class="btn btn-default" onclick="rst(<?php echo $user['id']; ?>)"><span class="glyphicon glyphicon-repeat"></span>&nbsp;&nbsp;重置密码</button>
            </td>
          </tr>
	  <?php  
	  }	  
	  ?>
      
      <tr id="add" style="background:#ccc;display:none">
        <td><input type="text" class="form-control" placeholder="用户名" id="username"  /></td>
        <td>
          <button class="btn btn-default" onclick="save()"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;&nbsp;保存</button>
          <button class="btn btn-default" onclick="$('#add').hide()"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;取消</button>
        </td>
      </tr>
    </table>
  </div>
</div>

<script type="text/javascript">
function del(id){
	if(confirm('您确定要删除这个用户？')){
		$.ajax({
			url:'index.php?controller=model&model=user&function=del&time='+ new Date().getTime(),
			data:'id='+id,
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
					window.location.reload();
				}
			}
		});
	}
}
function rst(id){
	if(confirm('您确定要重置这个用户的密码？')){
		$.ajax({
			url:'index.php?controller=model&model=user&function=rst&time='+ new Date().getTime(),
			data:'id='+id,
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
}
function save(){
	if(!$('#username').val()){
		pop_alert('请填写用户名！');
		return false;
	}
	$.ajax({
		url:'index.php?controller=model&model=user&function=save&time='+ new Date().getTime(),
		data:'username='+$('#username').val(),
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

<?php require(FILE_ROOT.'/view/footer.php'); ?>
