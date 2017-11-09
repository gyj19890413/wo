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
class Sms extends ThinkModel
{
    // 设置当前模型对应的完整数据表名称
    protected $table = '__DKCS_SMS__';

    // 自动写入时间戳
    // protected $autoWriteTimestamp = true;
protected $autoWriteTimestamp = true;
    // 
    public static function checkSms($phone){
    	$map =[
    		'phone'=>$phone
    	];
    	$data = self::where('phone',$phone)->find();
		return $data;
    }
    
    /*
     		修改验证码状态
     * */
     public static function upSms($id){

    	$data = self::where('id',$id)->update(['checkstate'=>1,'date'=>date("Y-m-d H:i:s",time())]);
    	
		return $data;
    }
    /***
     * 登录
     * 
     */
    public static function addSms($phone){
    	
//  	$data=[
//  		'phone'=>$phone,
//  		'type'=>1,
//  		'code'=>
//  	];
    	
    }
}
