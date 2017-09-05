<?php
class hrpa{
	public function __construct($get=false,$post=false){
		$this->get=$get;
		$this->post=$post;
	}
	
	//下几周字段
	public function week_list(){
		if(isset($this->get['history'])){
			$history=$this->get['history'];
		}elseif(isset($this->post['history'])){
			if($this->post['history']=='all'){
				$history='';
			}else{
				$history=$this->post['history'];
			}
		}else{
			$history='';
		}
		if($history){
			$start=$history;
		}else{
			$start='monday';
		}
		
		$week_list=array();
		$weeks=mysql_query('show columns from source'.$history.' where field like "week%"');
		while($week=mysql_fetch_assoc($weeks)){
			$week_arr=array();
			$week_arr['field']=$week['Field'];
			$week_arr['val']=intval(str_replace('week','',$week['Field']));
			
			if(date('l',time())=='Monday'||$start!='monday'){
				$monday=strtotime($start.' +'.$week_arr['val'].' weeks');
			}else{
				$monday=strtotime($start.' +'.($week_arr['val']-1).' weeks');
			}
			$week_arr['week']=date('W',$monday);
			$week_arr['monday']=date('m.d',$monday);
			$week_arr['friday']=date('m.d',$monday+24*3600*4);
			$week_arr['timepart']=$week_arr['monday'].'-'.$week_arr['friday'];
			$week_list[]=$week_arr;
		}
		return $week_list;
	}
	
	//历史记录获得和生成
	public function history(){
		$dontcreat=0;
		
		//获得上周周一
		if(date('l',time())=='Monday'){
			$last_monday=date('Ymd',strtotime('monday -1 weeks'));
		}else{
			$last_monday=date('Ymd',strtotime('monday -2 weeks'));
		}
		//如果上周是去年则不要创建
		if(date('Y',strtotime($last_monday))<date('Y',time())){
			$dontcreat=1;
		}
														  
		//获得历史列表和判断上周表是否存在
		$history_list=array();
		$tables=mysql_query('show tables like "source%"');
		while($table=mysql_fetch_row($tables)){
			$ymd=str_replace('source','',$table[0]);
			if($ymd){
				//只取今年的
				if(date('Y',strtotime($ymd))==date('Y',time())){
					if($ymd==$last_monday){
						$dontcreat=1;//如果已经有上周的了则不要创建
					}
					$history=array();
					$history['ymd']=$ymd;
					$history['monday']=date('m.d',strtotime($ymd));
					$history['friday']=date('m.d',strtotime($ymd.' + 4 day'));
					$history['timepart']=$history['monday'].' - '.$history['friday'];
					$history_list[]=$history;
				}else{
					mysql_query('drop table '.$table[0]);//删除以往的
				}
			}
		}
		$history_list=array_reverse($history_list);
		
		//可以创建上周表
		if($dontcreat==0){
			mysql_query('create table source'.$last_monday.' like source');
			mysql_query('insert into source'.$last_monday.' select * from source');
			
			//将本周表数据往前移动一个字段
			$hrpas=mysql_query('select * from source');
			while($hrpa=mysql_fetch_assoc($hrpas)){
				$sql_arr=array();
				$i=0;
				foreach($hrpa as $key=>$val){
					if(strstr($key,'week')){
						if($i>0){
							$sql_arr[]='week'.$i.'='.$val;
						}
						$i++;
					}
				}
				$sql_arr[]='week'.$i.'=0';
				$sql=join(',',$sql_arr);
				//echo $sql.'<Br>';
				mysql_query('update source set '.$sql.' where id='.$hrpa['id']);
			}
		}
		
		return $history_list;
	}
	
	//经理列表
	public function manager(){
		if(isset($this->get['history'])){
			$history=$this->get['history'];
		}else{
			$history='';
		}
		
		$manager_list=array();
		$managers=mysql_query('select distinct manager from source'.$history.' order by name asc');
		while($manager=mysql_fetch_assoc($managers)){
			if($manager['manager']){
				$manager_list[]=$manager['manager'];
			}
		}
		return $manager_list;
	}
	
	
	
	
	//保存
	public function save(){
		//echo $this->get['type'];
		//print_r($this->post);
		if(isset($this->post['id'])){
			//修改
			foreach($this->post as $key=>$item){
				mysql_query('update source set '.$key.'="'.$item.'" where id='.$this->post['id']);
			}
		}else{
			//添加
			mysql_query('insert into source set name="'.$this->post['name'].'"');
			$id=mysql_insert_id();
			foreach($this->post as $key=>$item){
				mysql_query('update source set '.$key.'="'.$item.'" where id='.$id);
			}
		}
	}
	//删除/批量删除
	public function del(){
		//mysql_query('delete from source where id='.$this->post['id']);
		if($this->post['hrpa']){
			foreach(explode(',',$this->post['hrpa']) as $hrpa){
				mysql_query('delete from source where id='.$hrpa);
			}
		}
	}
	//导出
	public function dump(){
		$word_arr=str_split(strtoupper('abcdefghijklmnpqrstuvwxyz'));
		//周
		if($this->post['history']=='all'){
			$history='';
		}else{
			$history=$this->post['history'];
		}
		$week_list=$this->week_list();
		
		//加载PHPExcel
		require(FILE_ROOT."/PHPExcel.php");
		$objPHPExcel = new PHPExcel();
		
		$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth('12');
		$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth('12');
		$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth('12');
		$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth('12');
		$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth('60');
		$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth('20');
		
		//第一行
		foreach($word_arr as $key=>$word){
			if($key<6){
				$objPHPExcel->getActiveSheet()->setCellValue($word.'1','');
			}
		}
		foreach($week_list as $key=>$week){
			$objPHPExcel->getActiveSheet()->setCellValue($word_arr[$key+6].'1',$week['timepart']);
			$objPHPExcel->getActiveSheet()->getColumnDimension($word_arr[$key+6])->setWidth('12');
		}
		//第二行
		$objPHPExcel->getActiveSheet()->setCellValue("A2", "部门");   
		$objPHPExcel->getActiveSheet()->setCellValue("B2", "姓名");   
		$objPHPExcel->getActiveSheet()->setCellValue("C2", "组别");   
		$objPHPExcel->getActiveSheet()->setCellValue("D2", "项目ID");   
		$objPHPExcel->getActiveSheet()->setCellValue("E2", "项目");   
		$objPHPExcel->getActiveSheet()->setCellValue("F2", "直属项目经理");   
		foreach($week_list as $key=>$week){
			$objPHPExcel->getActiveSheet()->setCellValue($word_arr[$key+6].'2','第'.$week['week'].'周');
		}
		//数据
		$key=3;
		$hrpas=mysql_query('select * from source'.$history.' order by name asc');
		while($hrpa=mysql_fetch_assoc($hrpas)){
			$k=0;
			foreach($hrpa as $col=>$val){
				if($col!='id'){
					if(strstr($col,'week')&&$val==0){
						$val='';
					}
					$objPHPExcel->getActiveSheet()->setCellValue($word_arr[$k].$key, $val);
					$k++;
				}
			}
			$key++;
		}
		//导出并返回路径
		foreach(scandir(FILE_ROOT.'/xls/') as $key=>$xls){
			if($key>1){
				unlink(FILE_ROOT.'/xls/'.$xls);
			}
		}
		$filename='/xls/'.date("Y-m-d-H-i-s",time()).'.xls';
		$objWriter = new PHPExcel_Writer_Excel5($objPHPExcel);
		$objWriter->save(FILE_ROOT.$filename);
		echo LINK_ROOT.$filename;
	}
	//导入
	public function import(){
		//解析xls文件
		require(FILE_ROOT."/PHPExcel/IOFactory.php");
		$objPHPExcel = PHPExcel_IOFactory::load(FILE_ROOT.'/example.xlsx');
		$sheetData = $objPHPExcel->getActiveSheet()->toArray(null,true,true,true);
		
		foreach($sheetData as $key=>$cell){
			if($key>2){
				/*echo $cell['A'];
				echo $cell['B'];
				echo $cell['C'];
				echo $cell['D'];
				echo '<br>';*/
				mysql_query('insert into source set 
							department="'.$cell['A'].'",
							name="'.$cell['B'].'",
							team="'.$cell['C'].'",
							projectid="'.$cell['D'].'",
							project="'.$cell['E'].'",
							manager="'.$cell['F'].'",
							week1="'.$cell['BA'].'",
							week2="'.$cell['BB'].'",
							week3="'.$cell['BC'].'",
							week4="'.$cell['BD'].'",
							week5="'.$cell['BE'].'",
							week6="'.$cell['BF'].'"
							');
			}
		}
	}
	//全40
	public function all40(){
		//print_r($this->post);
		if($this->post['hrpa']){
			foreach(explode(',',$this->post['hrpa']) as $hrpa){
				foreach($this->week_list() as $week){
					mysql_query('update source set '.$week['field'].'=40 where id='.$hrpa);
				}
			}
		}
	}
	
	//添加周
	public function week(){
		$week_list=$this->week_list();
		$week_num=count($week_list);
		$at_last=1;
		if($this->post['type']=='add'){
			mysql_query('ALTER TABLE `source` ADD `week'.($week_num+1).'` INT NOT NULL ');
		}else{
			if($week_num>$at_last){
				mysql_query('ALTER TABLE `source` DROP `week'.$week_num.'` ');
			}else{
				echo '最少'.$at_last.'周！';
			}
		}
	}
}