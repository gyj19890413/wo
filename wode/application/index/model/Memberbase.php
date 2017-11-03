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

namespace app\index\model;

use think\Model as ThinkModel;
use think\Db;
/**
 * 广告模型
 * 
 */
class Memberbase extends ThinkModel
{
    // 设置当前模型对应的完整数据表名称
    protected $table = '__DKCS_MEMBER_BASE__';

    // 自动写入时间戳
    // protected $autoWriteTimestamp = true;
protected $autoWriteTimestamp = true;
    // 
    public static function addUser($user,$pass){
    	
        $user_info = self::where('user_name',$user)->select();
        
        if(!empty($user_info)){
        	return [
        		'code'=>201,
        		'msg'=>'已存在该账号'
        	];
        };
        
        $res = self::insert(['user_name'=>$user,'pass'=>$pass]);
       if(!$res){
       		return [
        		'code'=>201,
        		'msg'=>'注册异常,重新注册'
        	];
       };
        return [
        		'code'=>200,
        		'msg'=>'注册成功'
        	];
    }
    /***
     * 登录
     * 
     */
     public static function isUser($user,$pass){
    	
        $user_info = self::where('user_name',$user)->find();
        
        if(empty($user_info)){
        	return [
        		'code'=>201,
        		'msg'=>'不存在该账号'
        	];
        };
        
        
       if($user_info['pass']!=$pass){
       		return [
        		'code'=>201,
        		'msg'=>'账号或者密码错误'
        	];
       };
        return [
        		'code'=>200,
        		'msg'=>'登录成功'
        	];
    }
}
