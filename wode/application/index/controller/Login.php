<?php

namespace app\index\controller;

use app\index\model\Memberbase as MemberbaseModel;

use app\index\model\Sms as SmsModel;
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
    	
    	$phone = input('username','','trim');
    	$code = input('pass','','trim');
    	
    	$data=[
    		'code'=>200,
    		'msg'=>'登录成功'
    	];
    	
    	$ureg = '/^13[\d]{9}$|^14[0-9]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0-9]{1}\d{8}$|^18[\d]{9}$/';
    	if(!preg_match($ureg,$phone)){
				$data['code']=201;
				$data['msg']='电话号码有误';
			return $data;
		};
    	
    	if(strlen($code)!=6){
    		$data['code']=201;
			$data['msg']='验证码错误';
			return $data;
    	};
    	
    	
    	$code_data =SmsModel::checkSms($phone);
    	if(empty($code_data)){
    		$data['code']=201;
			$data['msg']='验证码错误';
			return $data;
    	};
    	if($code_data['checkstate']==1){
    		$data['code']=201;
			$data['msg']='该验证码已使用';
			return $data;
    	};
    	
    	    	    
    	MemberbaseModel::isUser($phone);    	
    	SmsModel::upSms($code_data['id']);
    	
    	$res['code']==200;
    	$res['url']=session('historygo');
    	session('user_name',$phone);
    	    
    	return $res;    	
    	
    }
    
    /**
     *  验证码 
     *  
     */
    public function veri(){
        $config =    array(
            'fontSize'=>20,    //验证码字体大小
            'length'=>4,       //验证码位数
            'useNoise'=>false, //关闭验证码杂点
            'imageW'=>'140px',
            'imageH'=>'120px',
            'useCurve'=>false,
            'fontttf'=>'4.ttf',
            'codeSet'=>'0123456789'
        );
        $Verify = new Captcha($config);
//      $Verify-> = '0123456789';
        $Verify->entry();
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
