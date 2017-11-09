<?php


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
     * 添加验证码到数据库
     * `id` int(11) NOT NULL AUTO_INCREMENT,
     * `phone` char(11) NOT NULL COMMENT '手机号',
	  `type` varchar(4) NOT NULL DEFAULT '1' COMMENT '类型 1登录验证码 ',
	  `code` varchar(10) NOT NULL COMMENT '手机验证码',
	  `sendstate` tinyint(2) NOT NULL DEFAULT '0',
	  `checkstate` tinyint(2) NOT NULL DEFAULT '0' COMMENT '验证状态 1已验证 0未验证',
	  `date` varchar(30) NOT NULL DEFAULT '使用时间' COMMENT '日期',
	  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  `ip` varchar(50) DEFAULT NULL COMMENT 'Ip',
     */
    public static function addSms(){
    	

    	
    }
}
