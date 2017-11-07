<?php

namespace app\index\controller;
use think\Cache;
use app\index\model\Proimg as ProimgModel;



/**
 * 前台首页控制器
 * @package app\index\controller
 */
class Prod extends Home
{
    public function index()
    {
        // 数据列表
        
		$where_map =$this->where_map;
		$b_type=input('b_type','0','trim');
		$classify=input('classify','0','trim');
		$p_name=input('p_name','0','trim');
		
		if($p_name!='0'){
			$where_map['b_type'] =$p_name-1;			
		}else{
			$where_map['b_type'] =['<>','4'];	
		}
		
		$data_class ='';//Cache::get('data_class'.'_'.$b_type.'_'.$classify.'_'.$p_name);
		if(!$data_class){
			$where_map['classify'] =['<>','2'];				
	        $data= ProimgModel::getList($where_map);        
	        $data_class = $this->get_type($data);
	        Cache::set('data_class'.'_'.$b_type.'_'.$classify.'_'.$p_name,$data_class,'300');
		};
		
       
        $titlearr =$this->indexClassName;
        $title =$titlearr[$p_name];
        
   		$this->assign('title',$title);
        $this->assign('data',$data_class);	    

  		
        return $this->fetch('prod/index');       
    }
    
    /**
     * 理财产品
     * 
     * **/
    public function managemoney (){
    
    	$where_map =[];
		
		$data_class =Cache::get('data_class_managemoney');
		
		if(!$data_class){
			$where_map['b_type'] ='4';	
			$where_map['classify'] =['<>','2'];				
	        $data= ProimgModel::getList($where_map);        
	        $data_class = $this->get_type($data);
	        Cache::set('data_class_managemoney',$data_class,'300');
		};

		$this->assign('title','理财产品');
        $this->assign('data',$data_class);	    

    	return $this->fetch('prod/managemoney');     	
    }
    
    
    //处理 日期    类型
   public function get_type($arr){
   		$list=[
   			'banner'=>[],
   			'prodlist'=>[],
   			'pic'=>$arr['pic']
   		];
   		
   		foreach($arr['list'] as $k=>$v){
  
   				if($v['rate_type']=='0'){
   					$v['rate_type1'] ='日';
   				}elseif($v['rate_type']=='1'){
   					$v['rate_type1'] ='月';   					
   				}else{
   					$v['rate_type1'] ='年';
   				};
   				
   				if($v['deadline_type']=='0'){
   					$v['deadline_type1'] ='日';   					  					
   				}elseif($v['deadline_type']=='1'){
   					$v['deadline_type1'] ='月'; 
   				}else{
   					$v['deadline_type1'] ='年';   					
   				};
   				
   				if($v['classify']=='0'){
   					array_push($list['banner'],$v);
   				}elseif($v['classify']=='1'){
   					array_push($list['prodlist'],$v);		
   				};
   				
   				
   				if(!empty($v['tag'])){   					
   					$v['tags'] =explode("|",$v['tag']);
   				};
   				
   				
   		}
   		return $list;   	
   }
    
}
