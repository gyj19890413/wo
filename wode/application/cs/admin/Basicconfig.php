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

namespace app\cs\admin;

use app\admin\controller\Admin;
// use think\Db;
use app\common\builder\ZBuilder;
use app\cs\model\Index as BannerModel;
/**
 * 仪表盘控制器
 * @package app\cs\admin
 */
class Basicconfig extends Admin
{
    /**
     * 首页Basicconfig.php
     * @author 蔡伟明 <314013107@qq.com>
     * @return mixed
     */
    public function index($group='tab1')
    {
//       if ($this->request->isPost())
//      {
//          $data = $this->request->post();
//          // $result = $this->validate($data, 'Focus');
//          // if(true !== $result) return $this->error($result);
//          // $product_info = ProductModel::getInfo($data['product_id'],'name,type');
//          // $data['product_name'] = $product_info['name']."(".$product_info['type'].")";
//          // $data['create_time'] = time();
//          // $data['update_time'] = time();
//          if($banner = BannerModel::create($data)) {
//              // 记录行为
//              // action_log('foucs_add', 'focus', $focus['id'], UID);
//              return $this->success('新增成功', url('index'));
//          } else {
//              return $this->error('新增失败');
//          }
//      }
//      return ZBuilder::make('form')
//          ->setPageTitle('新增')
//          ->addFormItems([
//              ['text', 'p_name', '焦点图名称', '必填项'],
//              ['image','p_pic','上传图片'],
//              ['text','jump_url', '第三方跳转url'],
//              ['radio','status','状态','',['1'=>'显示','0'=>'隐藏'],'1'],
//              ['number','sort','排序值']
//          ])
//          ->fetch();

    $list_tab = [
        'tab1' => ['title' => '首页分类', 'url' => url('index', ['group' => 'tab1'])],
        'tab2' => ['title' => '贷款分类', 'url' => url('index', ['group' => 'tab2'])],
        'tab3' => ['title' => '贷款分类', 'url' => url('index', ['group' => 'tab3'])],
        'tab4' => ['title' => '贷款分类', 'url' => url('index', ['group' => 'tab4'])]
    ];
    
    switch ($group) {
    	case 'tab1':
            return ZBuilder::make('form')
                ->setTabNav($list_tab,  $group)				
				->addFormItems([
		                ['text', 'p_name', '焦点图名称', '必填项'],
		                ['image','p_pic','上传图片'],
		                ['text','jump_url', '第三方跳转url'],
		                ['radio','status','状态','',['1'=>'显示','0'=>'隐藏'],'1'],
		                ['number','sort','排序值']
		            ])
                ->fetch();
        	break;
        case 'tab2':
        	return ZBuilder::make('form')
                ->setTabNav($list_tab,  $group)
                ->addTextarea('summary', '摘要')
                ->fetch();
        	break;
    }
    }
   

    /**
     * 删除
     */
    public function delete($record = [])
    {
        return $this->setStatus('delete');
    }

}