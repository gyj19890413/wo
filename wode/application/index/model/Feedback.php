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
 * dkcs_feedback
 */
class Feedback extends ThinkModel
{
    protected $table = '__DKCS_FEEDBACK__';
    protected $autoWriteTimestamp = true;
      
    public static function inpquestion($data){
    	
        $list = self::insert($data);
        
        return $list;
    }

	
}
