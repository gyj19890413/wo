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

use app\index\model\Memberbase as MemberbaseModel;
use app\index\model\Feedback as FeedbackModel;

/**
 * 前台首页控制器
 * @package app\index\controller
 */
class User extends Home
{
    public function index()
    {
        
  		$user_name = session('user_name');
  		
  		
  		$this->assign('user_name',$user_name);
        return $this->fetch('/user/index');
         
    }
    
    /**
     * 意见反馈
     * 
     * */
    public function feedback()
    {
      
        
        return $this->fetch('/user/feedback');
         
    }
     /**
     * 关于我们
     * 
     * */
    public function about()
    {
      
        
        return $this->fetch('/user/about');
         
    }
   
    
    /***
     * 
     * 提交意见
     * */
     public function subfeedback()
    {        
    	  $content = input('desc','','trim');
    	  $qq = input('qq','','trim');
    	  $data=[];
    	  $data['content']=$content;
    	  $data['qq']=$qq;
    	 
    	 $res = FeedbackModel::inpquestion($data);
    	 if($res){
    	 	$redata = [
    	 		'ret'=>200,
    	 		'msg'=>'反馈成功'
    	 	];
    	 }else{
    	 	$redata = [
    	 		'ret'=>201,
    	 		'msg'=>'反馈失败'
    	 	];
    	 }
    	  
        return $redata;
         
    }
}
