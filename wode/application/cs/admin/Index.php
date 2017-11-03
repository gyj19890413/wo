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
use app\cs\model\Proimg as ProImg;
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
        $map['classify']=0;
        // 排序
        $order = $this->getOrder('sort');
     
        // 数据列表
        $data_list = ProImg::where($map)->order($order)->paginate();


        return ZBuilder::make('table')
    		->addFilter('b_type',['0'=>'急速贷','1'=>'新口子','2'=>'小额贷','3'=>'大额贷','4'=>'理财','5'=>'首页']) // 添加筛选    	
    		->addFilterMap('b_type', ['classify' => '0'])		    		
            ->addColumn('id', 'ID')
            ->addColumn('p_name', '平台名称','text.edit')
            ->addColumn('p_pic', '图片','picture')
			->addColumn('b_type', '标识','status','',['急速贷','新口子','小额贷','大额贷','理财','首页'])
            ->addColumn('status', '状态(是否显示)','switch')
            ->addColumn('sort', '排序值','text.edit')
            ->addColumn('right_button', '操作', 'btn')
            ->addTopButton('add') // 添加顶部按钮
            ->addTopButton('delete') // 添加顶部按钮
            ->addRightButton('edit') // 添加编辑按钮
            ->addRightButton('delete') //添加删除按钮
            ->setRowList($data_list) // 设置表格数据
            ->setTableName('dkcs_proimg')
            ->fetch();
    }
     /**
     *	新增
     */
    public function add()
    {

        if ($this->request->isPost())
        {
            $data = $this->request->post();
            // $result = $this->validate($data, 'Focus');
            // if(true !== $result) return $this->error($result);
            // $product_info = ProductModel::getInfo($data['product_id'],'name,type');
            // $data['product_name'] = $product_info['name']."(".$product_info['type'].")";
            // $data['create_time'] = time();
            // $data['update_time'] = time();
            if($banner = ProImg::create($data)) {
                // 记录行为
                // action_log('foucs_add', 'focus', $focus['id'], UID);
                return $this->success('新增成功', url('index'));
            } else {
                return $this->error('新增失败');
            }
        }
        return ZBuilder::make('form')
            ->setPageTitle('新增')
            ->addFormItems([
                ['text', 'p_name', '焦点图名称', '必填项'],
                ['image','p_pic','上传图片'],
                ['text','jump_url', '第三方跳转url'],
                ['radio','status','状态(是否显示)','',['1'=>'显示','0'=>'隐藏'],'1'],
                ['radio','b_type','标识','',['0'=>'急速贷','1'=>'新口子','2'=>'小额贷','3'=>'大额贷','4'=>'理财','5'=>'首页'],'0'],
                ['number','sort','排序值'],
                ['hidden','classify',0]
            ])
            ->fetch();
    }

    /**
     *	编辑
     */
    public function edit($id=null)
    {
        if ($id === null) return $this->error('缺少参数');

        if ($this->request->isPost())
        {
            $data = $this->request->post();
            // $result = $this->validate($data, 'Focus');
            // if(true !== $result) return $this->error($result);
            // $product_info = ProductModel::getInfo($data['product_id'],'name,type');
            // $data['product_name'] = $product_info['name']."(".$product_info['type'].")";
            // $data['update_time'] = time();
            // print_r($id);die();
               $data['id']=$id;
            if($banner = ProImg::update($data)) {
                // 记录行为
                // action_log('focus_edit', 'focus', $focus['id'], UID);
                return $this->success('编辑成功', url('index'));
            } else {
                return $this->error('编辑失败');
            }
        }

        $info = ProImg::where(array('id'=>$id))->find();
        // $prod = ProdModel::column('prodname','id');
        return ZBuilder::make('form')
            ->setPageTitle('编辑')
            ->addFormItems([
                ['text', 'p_name', '焦点图名称', '必填项'],
                ['image','p_pic','上传图片'],
                ['text','jump_url', '第三方跳转url'],
                ['radio','status','状态(是否显示)','',['1'=>'显示','0'=>'隐藏'],'1'],
                 ['radio','b_type','标识','',['0'=>'急速贷','1'=>'新口子','2'=>'小额贷','3'=>'大额贷','4'=>'理财','5'=>'首页'],'0'],
                ['number','sort','排序值'],
                ['hidden','id',$id],
                ['hidden','classify',0]
            ])   
            ->setFormData($info)
            ->fetch();
    }


    /**
     * 删除
     */
    public function delete($record = [])
    {
        return $this->setStatus('delete');
    }

}