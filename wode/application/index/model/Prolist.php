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
use app\index\model\Index as IndexModel;
use think\Db;
/**
 * 广告模型
 * 
 */
class Prolist extends ThinkModel
{
    // 设置当前模型对应的完整数据表名称
    protected $table = '__DKCS_LIST__';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    // 定义修改器
     public static function getBanner(){
        // $list = $this->where('status',1)->order('sort', 'asc')->select();

        $list = self::where('status',1)->order('sort', 'asc')->select();
        $pic = IndexModel::handleImg($list);
        
        $data=array(
            'list'=>$list,
            'pic'=>$pic
        );
        return $data;
    }

}