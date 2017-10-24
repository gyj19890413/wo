<?php
// +----------------------------------------------------------------------
// | 海豚PHP框架 [ DolphinPHP ]
// +----------------------------------------------------------------------
// | 版权所有 2016~2017 河源市卓锐科技有限公司 [ http://www.zrthink.com ]
// +----------------------------------------------------------------------
// | 官方网站: http://dolphinphp.com
// +----------------------------------------------------------------------
// | 开源协议 ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------

namespace app\index\controller;

use app\index\model\Proimg as ProimgModel;



/**
 * 前台首页控制器
 * @package app\index\controller
 */
class Index extends Home
{
    public function index()
    {
        // 数据列表
		$where_map =$this->where_map;
		$where_map['b_type']=5;
		$where_map['classify']=1;
		
				
        $data= ProimgModel::getList($where_map);
        
        $data_class= ProimgModel::getList('class_type <> 4');
        
        $data_class = $this->getClass($data_class);
        
        $this->assign('data',$data);	    
        $this->assign('data_class',$data_class);
  		
        return $this->fetch('/index/index');       
    }
    
    /**
     * 处理首页分类图片
     * 0:贷款分类。1:理财。2：推荐理财产品  3：贷款  4：其他类别
     * */
    public function getClass($data_class){
    	
    	$arr =[
    		'class_0'=>[],
    		'class_1'=>'',
    		'class_2'=>[],
    		'class_3'=>''    		
    	];
    	foreach ($data_class['list'] as $k => $v) { 
    		
    					
			switch($v['class_type'])
				{
				case 0:
					
					array_push($arr['class_0'],$data_class['pic'][$v['p_pic']]);
				  break;
				case 1:
					$arr['class_1'] =$data_class['pic'][$v['p_pic']];
				  break;
				case 2:
					$arr['class_2']['pic'] =$data_class['pic'][$v['p_pic']];
					$arr['class_2']['src'] =$v['jump_url'];					
				  break;
				case 3:
					$arr['class_3'] =$data_class['pic'][$v['p_pic']];
				  break;
				}
		} 
    	
    	return $arr;
    }
    
}
