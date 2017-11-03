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

namespace app\member\admin;

use app\admin\controller\Admin;
// use think\Db;
use app\common\builder\ZBuilder;
use app\member\model\Index as Userinfor;
/**
 * 仪表盘控制器
 * @package app\cs\admin
 */
class Index extends Admin
{
    /**
     * 首页
     * @author 蔡伟明 <314013107@qq.com>
     * @return mixed
     */
    public function index()
    {
         // 查询
        $map = $this->getMap();
        // 排序
        $order = $this->getOrder('create_time desc');
     
        // 数据列表
        $data_list = Userinfor::where($map)->order($order)->paginate();


        return ZBuilder::make('table')
            ->addColumns([ // 批量添加列
			        ['id', 'ID'],
			        ['user_name', '用户名'],
			        ['mobile', '手机号'],
			        ['create_time', '创建时间']
			    ])
            ->setRowList($data_list) // 设置表格数据
            ->fetch();
    }
}