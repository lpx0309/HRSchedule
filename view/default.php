<?php
if(!isset($_SESSION['user'])){
	header('location:'.LINK_ROOT.'/index.php?controller=view&view=login');
}

//搜索
$sql='';
if(isset($_GET['kw'])){
	$sql.=' and (department like "%'.trim($_GET['kw']).'%" 
			   or name like "%'.trim($_GET['kw']).'%" 
			   or team like "%'.trim($_GET['kw']).'%"
			   or project like "%'.trim($_GET['kw']).'%" 
			   or projectid like "%'.trim($_GET['kw']).'%" 
			   or manager like "%'.trim($_GET['kw']).'%" ) ';
}

//过滤
if(isset($_GET['history'])){
	$history=$_GET['history'];
}else{
	$history='';
}

if(isset($_GET['manager'])){
	$manager=$_GET['manager'];
	if($manager=='empty'){
		$sql.=' and manager=""';
	}else{
		$sql.=' and manager="'.$_GET['manager'].'"';
	}
}else{
	$manager='all';
}

//排序
if(isset($_GET['st'])){
	$od=explode('_',$_GET['st'])[0];
	$by=explode('_',$_GET['st'])[1];
}else{
    $od='name';
    $by='asc';
}
$sql.=' order by '.$od.' '.$by;
$asc='<img src="'.LINK_ROOT.'/images/sort-ascending.png" />';
$desc='<img src="'.LINK_ROOT.'/images/sort-descending.png" />';
$not='<img src="'.LINK_ROOT.'/images/sort-not-sorted.png" />';

//分页
if(isset($_GET['page'])){
	$dcb_num=DB::Get_one('select count(*) from source'.$history.' where id!=0'.$sql);
	if(isset($_GET['pg'])){
		$page=$_GET['pg'];
	}else{
		$page=1;
	}
	$pagesize=6;
	$Page=new Page($dcb_num,$page,$pagesize,'index.php');//新建分页类
	$start=$Page->Page_start();//加分页limit
	$page_bottom=$Page->Page_bottom();//获取分页底部	
	$sql.=' limit '.$start.','.$pagesize;
}

//获取数据
$name_list=array();
$hrpa_list=array();
$hrpas=mysql_query('select * from source'.$history.' where id!=0'.$sql);
while($hrpa=mysql_fetch_assoc($hrpas)){
	if(isset($_GET['kw'])){
		$hrpa['department']=str_replace(trim($_GET['kw']),'<font color=blue>'.trim($_GET['kw']).'</font>',$hrpa['department']);
		$hrpa['name']=str_replace(trim($_GET['kw']),'<font color=blue>'.trim($_GET['kw']).'</font>',$hrpa['name']);
		$hrpa['team']=str_replace(trim($_GET['kw']),'<font color=blue>'.trim($_GET['kw']).'</font>',$hrpa['team']);
		$hrpa['projectid']=str_replace(trim($_GET['kw']),'<font color=blue>'.trim($_GET['kw']).'</font>',$hrpa['projectid']);
		$hrpa['project']=str_replace(trim($_GET['kw']),'<font color=blue>'.trim($_GET['kw']).'</font>',$hrpa['project']);
		$hrpa['manager']=str_replace(trim($_GET['kw']),'<font color=blue>'.trim($_GET['kw']).'</font>',$hrpa['manager']);
	}
	$hrpa_list[]=$hrpa;
	
	//添加姓名列表
	if(!in_array($hrpa['name'],$name_list)){
		$name_list[$hrpa['id']]=$hrpa['name'];
	}else{
		foreach($name_list as $key=>$name){
			if($name==$hrpa['name']){
				$name_list[$hrpa['id']]=$name;
				unset($name_list[$key]);
			}
		}
	}
	//经理过滤列表
	/*if(!in_array($hrpa['manager'],$manager_list)&&$hrpa['manager']){
		$manager_list[]=$hrpa['manager'];
	}*/
}
if($hrpa_list){
	$last_id=$hrpa_list[count($hrpa_list)-1]['id'];//用于新添加时显示在最后一行
}else{
	$last_id=0;
}


//调用hrpa
require(FILE_ROOT.'/model/hrpa.php');
$hrpa=new hrpa($_GET);

//获得周字段
$week_list=$hrpa->week_list();
$week_num=count($week_list);//显示和colspan用

//获得历史记录和生成历史记录
$history_list=$hrpa->history();

//获得经理过滤列表
$manager_list=$hrpa->manager();


$title='首页';
?>

<?php require(FILE_ROOT.'/view/header.php'); ?>

<style>
#banner{
	/*margin-bottom:20px;*/
	position:fixed;
	width:100%;
	/*z-index:1020;*/
	z-index:99;
	background-color: #f8f8f8;
	/*border-color: #e7e7e7;*/
	/*border-bottom:1px solid #ccc;*/
	padding:10px;
}
#hrpa_thead{
	position:fixed;
	width:98.38%;
	z-index:99;
	background-color: #f8f8f8;
}
#hrpa_thead th{
	vertical-align:middle
}
#hrpa_table{
	/*text-align:center;*/
}
#hrpa_table p{
	height:25px
}
.modify{
	background:#ccc; 
	display:none
}
.function{
	border:1px solid #ccc; 
	padding:15px; 
	margin-right:5px
}
</style>

<div class="row" id="banner">
  
  <div class="col-md-4">
    <form class="form-inline" role="form">
      <select class="form-control" onchange="list_filter('history',this.value)" id="history">
        <option value="all" <?php if($history==''){echo 'selected';} ?>>本周</option>
        <?php 
        foreach($history_list as $val){
        ?>
            <option value="<?php echo $val['ymd']; ?>" <?php if($history==$val['ymd']){echo 'selected';} ?>><?php echo $val['timepart']; ?></option>
        <?php
        }
        ?>
      </select>
      &nbsp;
	  <strong>
	  <?php 
      if($history){
          $now=strtotime($history);
      }else{
          $now=time();
      }
      echo date('Y年',$now); 
      ?>
      第<?php echo date('W',$now); ?>周的
      未来<?php echo $week_num; ?>周工时预估（单位小时）
      </strong>
    </form>
  </div>
  
  <div class="col-md-8">
    <form class="form-inline" role="form">
      <div style="float:right">
        <span class="function">
          批量操作
          <button class="btn btn-default" onclick="batch('all40');return false" title="将选中的某人未来<?php echo $week_num; ?>周的工时全部设为40小时，也可以选中后按F4键" <?php if($history){ ?> disabled="disabled" <?php } ?>>
            <span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;全40
          </button>
          <button class="btn btn-default" onclick="del();return false" <?php if($_SESSION['user']['id']!=1||$history){ ?> disabled="disabled" <?php } ?>><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;批量删除</button>
        </span>
        <span class="function">
          <label class="radio-inline">
            <input type="radio" name="insert_switch" checked="checked" value="<?php echo $last_id; ?>" onclick="insert_radio('new')" id="insert_new" <?php if($history){ ?> disabled="disabled" <?php } ?> />新添加
          </label>
          <label class="radio-inline">
            <input type="radio" name="insert_switch" onclick="insert_radio()" <?php if($history){ ?> disabled="disabled" <?php } ?>  />或于
          </label>
          <select class="form-control" id="insert_place" disabled="disabled">
            <option value="">请选择</option>
            <?php
			foreach($name_list as $key=>$name){
			?>
            	<option value="<?php echo $key; ?>"><?php echo $name; ?></option>
			<?php
			}
			?>
          </select>
          之后添加一条记录
          <button class="btn btn-default" onclick="insert(<?php echo $last_id; ?>);return false" <?php if($history){ ?> disabled="disabled" <?php } ?>>
            <span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;执行
          </button>
        </span>
        <button class="btn btn-default" onclick="dump();return false" <?php if($_SESSION['user']['id']!=1){ ?> disabled="disabled" <?php } ?>><span class="glyphicon glyphicon-download"></span>&nbsp;&nbsp;导出Excel</button>
      </div>
    </form>
  </div>
  
</div>

<div class="row" style="margin-top:54px">
  <div class="col-md-12">
    <!--固定表头-->
    <table class="table table-bordered" id="hrpa_thead">
      <thead>
        <tr>
          <th colspan="8" style="text-align:center">
            <button class="btn btn-default" title="减少一周" onclick="week('drop')" <?php if($_SESSION['user']['id']!=1||$history){ ?> disabled="disabled" <?php } ?>><span class="glyphicon glyphicon-minus"></span></button>
            <button class="btn btn-default" title="添加一周" onclick="week('add')" <?php if($_SESSION['user']['id']!=1||$history){ ?> disabled="disabled" <?php } ?>><span class="glyphicon glyphicon-plus"></span></button>
          </th>
          <?php
		  foreach($week_list as $week){
		  ?>
              <th><?php echo $week['timepart']; ?></th>
          <?php
		  }
		  ?>
          <th width="90" rowspan="2"  style="text-align:center">操作</th>
        </tr>
        
        <tr>
          <th width="40"><input type="checkbox" onclick="check_all(this,'.hrpa_check')" title="全选/全取消" <?php if($history){ ?> disabled="disabled" <?php } ?> /></th>
          <th width="40">行<!--<a href="javascript:;" onclick="list_sort('id','asc')">ID&nbsp;<?php if($od=='id'){if($by=='asc'){echo $asc; }else{echo $desc;}}else{echo $not;} ?></a>--></th>
          <th width="90"><a href="javascript:;" onclick="list_sort('department','asc')">部门&nbsp;<?php if($od=='department'){if($by=='asc'){echo $asc; }else{echo $desc;}}else{echo $not;} ?></a></th>
          <th width="90"><a href="javascript:;" onclick="list_sort('name','asc')">姓名&nbsp;<?php if($od=='name'){if($by=='asc'){echo $asc; }else{echo $desc;}}else{echo $not;} ?></a></th>
          <th width="110"><a href="javascript:;" onclick="list_sort('team','asc')">组别&nbsp;<?php if($od=='team'){if($by=='asc'){echo $asc; }else{echo $desc;}}else{echo $not;} ?></a></th>
          <th width="110"><a href="javascript:;" onclick="list_sort('projectid','asc')">项目ID&nbsp;<?php if($od=='projectid'){if($by=='asc'){echo $asc; }else{echo $desc;}}else{echo $not;} ?></a></th>
          <th width=""><a href="javascript:;" onclick="list_sort('project','asc')">项目&nbsp;<?php if($od=='project'){if($by=='asc'){echo $asc; }else{echo $desc;}}else{echo $not;} ?></a></th>
          <th width="220">
            <form class="form-inline">
              <select class="form-control" onchange="list_filter('manager',this.value)">
                <option value="all" <?php if($manager=='all'){echo 'selected';} ?>>全部</option>
                <option value="empty" <?php if($manager=='empty'){echo 'selected';} ?>>空白</option>
				<?php
                foreach($manager_list as $val){
                ?>
                    <option value="<?php echo $val; ?>" <?php if($manager==$val){echo 'selected';} ?>><?php echo $val; ?></option>
                <?php
                }
                ?>
              </select>&nbsp;
              <a href="javascript:;" onclick="list_sort('manager','asc')">经理&nbsp;<?php if($od=='manager'){if($by=='asc'){echo $asc; }else{echo $desc;}}else{echo $not;} ?></a>
            </form>
          </th>
          <?php
		  foreach($week_list as $week){
		  ?>
              <th width="100">
                <a href="javascript:;" onclick="list_sort('<?php echo $week['field']; ?>','asc')">
                  第<?php echo $week['week']; ?>周&nbsp;<?php if($od==$week['field']){if($by=='asc'){echo $asc; }else{echo $desc;}}else{echo $not;} ?>
                </a>
              </th>
          <?php
		  }
		  ?>
        </tr>
      </thead>
    </table>
      
    <!--表-->
    <table class="table table-hover table-bordered" id="hrpa_table">
      <thead><!--伪表头-->
        <tr style="height:98px;">
          <th width="40">&nbsp;</th>
          <th width="40">&nbsp;</th>
          <th width="90">&nbsp;</th>
          <th width="90">&nbsp;</th>
          <th width="110">&nbsp;</th>
          <th width="110">&nbsp;</th>
          <th width="">&nbsp;</th>
          <th width="220">&nbsp;</th>
          <?php for($i=0;$i<$week_num;$i++){ ?><th width="100">&nbsp;</th><?php } ?>
          <th width="90">&nbsp;</th>
        </tr>
      </thead>
      
      <tbody>
      <?php
	  if($hrpa_list){
		  foreach($hrpa_list as $show_id=>$hrpa){
			  $show_id++;
			  ?>
              <tr id="show_<?php echo $hrpa['id']; ?>" class="showtr">
                <td><input type="checkbox" class="hrpa_check" value="<?php echo $hrpa['id']; ?>" <?php if($history){ ?> disabled="disabled" <?php } ?> /></td>
                <td title="数据库ID <?php echo $hrpa['id']; ?>">
				  <?php echo $show_id;//echo $hrpa['id']; ?>
                  <input type="hidden" value="<?php echo $show_id; ?>" id="showid_<?php echo $hrpa['id']; ?>" />
                </td>
                <td><?php echo $hrpa['department']; ?></td>
                <td><?php echo $hrpa['name']; ?></td>
                <td><?php echo $hrpa['team']; ?></td>
                <td><?php echo $hrpa['projectid']; ?></td>
                <td><?php echo $hrpa['project']; ?></td>
                <td><?php echo $hrpa['manager']; ?></td>
                <?php
				foreach($hrpa as $key=>$val){
					if(strstr($key,'week')){
					?>
                        <td><?php if($val!=0){echo $val;} ?></td>
                    <?
					}
				}
				?>
                <td>
                  <p>
                    <button class="btn btn-default" onclick="edit('edit',<?php echo $hrpa['id']; ?>)" <?php if($history){ ?> disabled="disabled" <?php } ?>>
                      <span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;修改
                    </button>
                  </p>
                  <?php if($_SESSION['user']['id']==1){ ?>
                    <p>
                      <button class="btn btn-default" onclick="del(<?php echo $hrpa['id']; ?>)" <?php if($history){ ?> disabled="disabled" <?php } ?>>
                        <span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;删除
                      </button>
                    </p>
                  <?php } ?>
                </td>
              </tr>
              
              <!--添加-->
              <tr id="insert_<?php echo $hrpa['id']; ?>" class="modify">
                <form id="form_insert_<?php echo $hrpa['id']; ?>">
                <td></td>
                <td></td>
                <td><input type="text" class="form-control" value="" name="department" /></td>
                <td><input type="text" class="form-control" value="" name="name" /><span></span></td>
                <td><input type="text" class="form-control" value="" name="team" /></td>
                <td><input type="text" class="form-control" value="" name="projectid" /></td>
                <td><input type="text" class="form-control" value="" name="project" /></td>
                <td><input type="text" class="form-control" value="" name="manager" /></td>
                <?php
				foreach($hrpa as $key=>$val){
					if(strstr($key,'week')){
					?>
                        <td><input type="text" class="form-control" value="" name="<?php echo $key; ?>" /></td>
                    <?
					}
				}
				?>
                <td>
                  <p><button class="btn btn-default" onclick="save('insert',<?php echo $hrpa['id']; ?>);return false"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;&nbsp;保存</button></p>
                  <p><button class="btn btn-default" onclick="insert('cancel');return false"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;取消</button></p>
                </td>
                </form>
              </tr>
              
              <!--修改-->
              <tr id="edit_<?php echo $hrpa['id']; ?>" class="modify">
                <form id="form_edit_<?php echo $hrpa['id']; ?>">
                <td></td>
                <td><?php echo $show_id;//echo $hrpa['id']; ?><input type="hidden" value="<?php echo $hrpa['id']; ?>" name="id" /></td>
                <td><input type="text" class="form-control" value="<?php echo strip_tags($hrpa['department']); ?>" name="department" /></td>
                <td><input type="text" class="form-control" value="<?php echo strip_tags($hrpa['name']); ?>"  name="name" /></td>
                <td><input type="text" class="form-control" value="<?php echo strip_tags($hrpa['team']); ?>" name="team" /></td>
                <td><input type="text" class="form-control" value="<?php echo strip_tags($hrpa['projectid']); ?>" name="projectid" /></td>
                <td><input type="text" class="form-control" value="<?php echo strip_tags($hrpa['project']); ?>" name="project" /></td>
                <td><input type="text" class="form-control" value="<?php echo strip_tags($hrpa['manager']); ?>" name="manager" /></td>
                <?php
				foreach($hrpa as $key=>$val){
					if(strstr($key,'week')){
					?>
                        <td><input type="text" class="form-control" value="<?php if($val!=0){echo $val;} ?>" name="<?php echo $key; ?>" /></td>
                    <?
					}
				}
				?>
                <td>
                  <p><button class="btn btn-default" onclick="save('edit',<?php echo $hrpa['id']; ?>);return false"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;&nbsp;保存</button></p>
                  <p><button class="btn btn-default" onclick="edit('cancel',<?php echo $hrpa['id']; ?>);return false"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;取消</button></p>
                </td>
                </form>
              </tr>
			  <?php
		  }
      }else{
      ?>
          <tr>
            <td colspan="<?php echo $week_num+9; ?>" align="center">暂无任何记录</td>
          </tr>
          
          <!--没有任何数据时添加-->
          <tr id="insert_0" class="modify">
            <form id="form_insert_0">
            <td></td>
            <td><input type="text" class="form-control" value="" name="department" /></td>
            <td><input type="text" class="form-control" value="" name="name" /><span></span></td>
            <td><input type="text" class="form-control" value="" name="team" /></td>
            <td><input type="text" class="form-control" value="" name="projectid" /></td>
            <td><input type="text" class="form-control" value="" name="project" /></td>
            <td><input type="text" class="form-control" value="" name="manager" /></td>
            <?php
			foreach($week_list as $week){
			?>
                <td><input type="text" class="form-control" value="" name="<?php echo $week['field']; ?>" /></td>
			<?
            }
            ?>
            <td>
              <p><button class="btn btn-default" onclick="save('insert',0);return false"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;&nbsp;保存</button></p>
              <p><button class="btn btn-default" onclick="insert('cancel');return false"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;取消</button></p>
            </td>
            </form>
          </tr>
      <?php
	  }
	  ?>
      </tbody>
    </table>
  </div>
</div>

<div class="row">
  <div class="col-md-12">
    <nav>
      <ul class="pagination">
        <?php if(isset($_GET['page'])){echo $page_bottom;} ?>
      </ul>
    </nav>
  </div>
</div>

<script type="text/javascript">
//离开页面提醒
window.onbeforeunload = onbeforeunload_handler;   
function onbeforeunload_handler(){   
	return '请检查您是否已经填写完整！';   
}   
       
$(function(){
	//历史记录不可修改	   
	/*if($('#history').val()!='all'){
		$('.function').find('button').attr('disabled',true);
		$('.function').find('input').attr('disabled',true);
		$('#hrpa_thead').find('button').attr('disabled',true);
		$('.showtr').find('button').attr('disabled',true);
		$('.hrpa_check').attr('disabled',true);
	}*/
	
	//键盘事件
	$("body").keydown(function(event){
		//alert(event.which);
		if(event.which==115){
			batch('all40');//按F4全40
		}
		if(event.which==116){
			window.onbeforeunload='';//F5刷新无提醒
		}
	});
	
});

//全部选择/取消
function check_all(self,check){
	$(check).each(function(){
		if(self.checked&&!this.disabled){
			this.checked=true;
		}else{
			this.checked=false;
		}
	});
}

//查看修改转换
function edit(type,id){
	if(type=='edit'){
		$('.showtr').find('button').attr('disabled',true);
		$('#show_'+id).hide();
		$('#edit_'+id).show();
	}else{
		$('.showtr').find('button').attr('disabled',false);
		$('#show_'+id).show();
		$('#edit_'+id).hide();
	}
}
//查看添加转换
function insert(val){
	$('.modify').hide();
	//var id=$('#insert_place').val();
	
	var insert_new=document.getElementById('insert_new').checked;
	if(insert_new){
		var id=$('#insert_new').val();//last_id
	}else{
		if($('#insert_place').val()){
			var id=$('#insert_place').val();
		}else{
			pop_alert('请选择一个人员！');
			return false;
		}
	}
	
	if(val=='cancel'){
		$('.showtr').find('button').attr('disabled',false);
		$('#insert_'+id).hide();
	}else{
		//var last_id=val;
		var name=$('#insert_place').children(':selected').html()
		$('#insert_'+id).find('input').each(function(){
			if($(this).attr('name')=='name'){
				//if(id==last_id&&name=='请选择'){
			    if(insert_new){
					$(this).val('');
					$(this).next().html('');
					$(this).attr('type','text');
				}else{
					$(this).val(name);
					$(this).next().html(name);
					$(this).attr('type','hidden');
				}
			}
		});
		$(window).scrollTop(($('#showid_'+id).val()-7)*88);
		$('.showtr').find('button').attr('disabled',true);
		$('#insert_'+id).show();
	}
}
//添加新或之后转换
function insert_radio(type){
	if(type=='new'){
		$('#insert_place').attr('disabled',true);
	}else{
		$('#insert_place').attr('disabled',false);
	}
}
//保存
function save(type,id){
	var validate=0;
	$('#'+type+'_'+id).find('input').each(function(){
		//console.log($(this).attr('name'));	
		if($(this).attr('name')=='name'){
			if($(this).val()==''){
				validate=1;
				pop_alert('请至少填写姓名！');
			}
		}
	});
	if(validate==1){
		return false;
	}
	$.ajax({
		url:'index.php?controller=model&model=hrpa&function=save&type='+type+'&time='+ new Date().getTime(),
		data:$('#form_'+type+'_'+id).serialize(),
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
				window.onbeforeunload='';
				window.location.reload();
			}
		}
	});
}
//删除
function del(id){
	if(confirm('您确定要删除这条或所选的这些记录？')){
		batch('del',id);
	}
}
//导出
function dump(){
	$.ajax({
		url:'index.php?controller=model&model=hrpa&function=dump&time='+ new Date().getTime(),
		data:'history='+$('#history').val(),
		type:'POST',
		async:true,
		beforeSend: function(){
			pop_loading();
		},
		success: function(text){
			pop_loading_close();
			//console.log(text);
			window.onbeforeunload='';
			window.location=text;
			setTimeout(reunbeforeunload,100);
		}
	});
}//恢复提醒
function reunbeforeunload(){
	window.onbeforeunload = onbeforeunload_handler;   
}

//批量
function batch(type,hrpa){
	if(!hrpa){
		var hrpa=new Array();
		$('.hrpa_check').each(function(){
			if(this.checked){
				hrpa.push($(this).val());
			}
		});
		hrpa=hrpa.join(',');
		if(!hrpa){
			pop_alert('请至少选择一项！');
			return false;
		}
	}
	$.ajax({
		url:'index.php?controller=model&model=hrpa&function='+type+'&time='+ new Date().getTime(),
		data:'hrpa='+hrpa,
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
				window.onbeforeunload='';
				window.location.reload();
			}
		}
	});
}

//添加减少周
function week(type){
	if(type=='drop'){
		if(!confirm('您确定要减少一周吗？被减少的一周所有工时都将丢弃！')){
			return false;
		}
	}
	$.ajax({
		url:'index.php?controller=model&model=hrpa&function=week&time='+ new Date().getTime(),
		data:'type='+type,
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
				window.onbeforeunload='';
				window.location.reload();
			}
		}
	});
}
</script>

<?php require(FILE_ROOT.'/view/footer.php'); ?>
