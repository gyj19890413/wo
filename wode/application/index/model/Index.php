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
class Index extends ThinkModel
{
    // 设置当前模型对应的完整数据表名称
    protected $table = '__DKCS_BANNER__';

    // 自动写入时间戳
    // protected $autoWriteTimestamp = true;

    // 
    public static function getBanner(){
        $list = self::where('status',1)->order('sort', 'asc')->select();
        $pic = self::handleImg($list);
        
        $data=array(
            'list'=>$list,
            'pic'=>$pic
        );
        return $data;
    }

    public static function handleImg($list){
        $list = collection($list)->toArray();
        $ids =  array_column($list,'p_pic','id');

        $arr = self::getImgs($ids);
        return $arr;
    }
     public static function getImgs($ids){

        if(is_array($ids)){
            $id = implode(',',$ids);
            // print_r($id);die();
            $idCar = str_replace(',','_',$ids);
            $imgList = '';//S('getImgs_pics_path_'.$idCar);
            if(empty($imgList)){
                $imgList = Db::table('dp_admin_attachment')->where(" id in(".$id.")")->field('id as p_pic,path')->select();
                $imgList = array_column($imgList,'path','p_pic');
            }

            foreach ($imgList as $key => $value){
                $imgList[$key] = '/ht/public/'.$value;
            }
            return $imgList;
        }else{
            $imgList = '';//S('getImgs_pic_path_'.$ids);
            if(empty($path)){
                 $imgList = Db::table('dp_admin_attachment')->where(" id in(".$id.")")->field('id as p_pic,path')->select();
                 $imgList = array_column($imgList,'path','p_pic');
            }

            return $imgList['path'];
        }
    }
}
