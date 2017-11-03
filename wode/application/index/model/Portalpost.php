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
class Portalpost extends ThinkModel
{
    
    public static function getList(){
    	
        $list = Db::table('jr_portal_post')->where('post_status','1')->limit(8)->order('published_time', 'desc')->select();
        
        return $list;
    }

	/**
	 * 去具体的详情
	 * 
	 * **/
	public static function getDetail($id){
    	
        $list = Db::table('jr_portal_post')->where('id',$id)->find();
        
        return $list;
    }
}
