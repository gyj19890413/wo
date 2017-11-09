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
    /***
     * 登录
     * 
     */
     public static function isUser($user){
    	
        $user_info = self::where('user_name',$user)->find();
        
        if(empty($user_info)){
        	 $res = self::insert(['mobile'=>$user]);
        }else{
        	$res = self::update(['mobile'=>$user]);
        }
        
        
       
    }
}
