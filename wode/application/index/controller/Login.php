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

/**
 * @package app\index\controller
 */
class Login extends Home
{
    public function index()
    {
        
  		
        return $this->fetch('/login/index');
    }
    
    
     public function register()
    {
        
        return $this->fetch('/login/register');
    }
    /**
     * 判断是否登录
     * 
     * */
    public function check_login(){
    	$data = [
    		'code'=>200,
    	];
    	
    	if(empty(session('user_name'))){
    		session('historygo',$_SERVER['HTTP_REFERER']);
    		$data['code']=201;
    	};
    	
    	return $data;
    	
    }
    
    /***
     * 
     * 登录
     * 
     * **/
    public function login(){
    	
    	$user = input('username','','trim');
    	$pass = input('pass','','trim');
    	
    	$data=[
    		'code'=>200,
    		'msg'=>'登录成功'
    	];
    	
    	$ureg = '/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/';
    	if(!preg_match($ureg,$user)){
				$data['code']=201;
				$data['msg']='账号错误';
			return $data;
		};
    	
    	if(strlen($pass)!=6){
    		$data['code']=201;
			$data['msg']='密码错误';
			return $data;
    	};
    	
    	
    	$res = MemberbaseModel::isUser($user,$pass);
    	
    	if($res['code']==200){
    		$res['url']=session('historygo');
    		session('user_name',$user);    		
    	};
    	return $res;
    	
    	
    }
    
    /*
     	注册
     * */
    public function adduser(){
    	$user = input('username','','trim');
    	$pass = input('pass','','trim');
    	
    	$data=[
    		'code'=>200,
    		'msg'=>'注册成功'
    	];
    	
    	$ureg = '/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/';
    	if(!preg_match($ureg,$user)){
				$data['code']=201;
				$data['msg']='账号不符合规则';
			return $data;
		};
    	
    	if(strlen($pass)!=6){
    		$data['code']=201;
			$data['msg']='密码不符合规则';
			return $data;
    	};
    	
    	
    	$res = MemberbaseModel::addUser($user,$pass);
    	
    	if($res['code']==200){
    		$res['url']=session('historygo');
    		session('user_name',$user);    		
    	};
    	return $res;
    }
    
    
    
    /**
     * 
     *退出登录
     * */
    public function logout(){
    	session('user_name',null);
    	return [
    		'code'=>'200'
    	];
    }
}
