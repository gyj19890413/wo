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

use app\cs\model\Feedback as FeedBack;

/**
 * 仪表盘控制器
 * @package app\cs\admin
 */
class Feedbackquestion extends Admin
{
    /**
     * 首页
     * 
     * 
     */
    public function index()
    {
         // 查询
        $map = $this->getMap();
         
        // 排序
        $order = $this->getOrder('create_time desc');
        // 数据列表
        $data_list = FeedBack::where($map)->order($order)->paginate();

//CREATE TABLE `dp_dkcs_feedback` (
//`id` int(11) NOT NULL AUTO_INCREMENT,
//`phone` char(11) DEFAULT NULL COMMENT '手机号',
//`qq` varchar(20) DEFAULT NULL COMMENT 'qq号',
//`content` varchar(5000) DEFAULT NULL COMMENT '反馈内容',
//`create_time` int(11) DEFAULT '0' COMMENT '反馈时间',
//PRIMARY KEY (`id`)
//) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
//
        return ZBuilder::make('table')
        	->setTableName('dkcs_feedback') // 设置表名
            ->addColumn('id', 'ID')
            ->addColumn('qq', 'QQ','text')
            ->addColumn('phone', '电话','text')
            ->addColumn('content', '反馈内容','text')
            ->addColumn('create_time', '反馈时间','datetime','Y/m/d H:i:s')       
            ->addColumn('right_button', '操作', 'btn')     
            ->addTopButton('delete') // 添加顶部按钮            
            ->addRightButton('delete') //添加删除按钮
            ->setRowList($data_list) // 设置表格数据
            ->fetch();
    }
}