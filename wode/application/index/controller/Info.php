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
use think\Cache;
use app\index\model\Portalpost as PortalpostModel;

/**
 * 前台首页控制器
 * @package app\index\controller
 */
class Info extends Home
{
    public function index($id)
    {
        $list =Cache::get('information_detail'.$id);
        
        if(empty($list)){
        	 $list = PortalpostModel::getDetail($id);
       		 $list['content_detail']=htmlspecialchars_decode($list['post_content']);
       		 Cache::set('information_detail'.$id,$list,'300');
        }
       
  		$this->assign('list',$list);
        return $this->fetch('/info/index');       
    }
}
