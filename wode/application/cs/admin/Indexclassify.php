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
//use app\cs\model\Prolist as ProlistModel;
use app\cs\model\Proimg as ProImg;

/**
 * 仪表盘控制器
 * @package app\cs\admin
 */
class Indexclassify extends Admin
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
          $map['b_type']=6;
        $map['p_type']=5;
        $map['classify']=3;
        // 排序
        $order = $this->getOrder('sort');
        // 数据列表
        $data_list = ProImg::where($map)->order($order)->paginate();
//0:贷款分类。1:理财。2：推荐理财产品  3：贷款  

        return ZBuilder::make('table')  
			->addFilter('p_type',['0'=>'贷款分类','1'=>'理财','2'=>'推荐理财产品','3'=>'贷款']) // 添加筛选      
            ->addColumn('id', 'ID')
            ->addColumn('class_type', '类别','status','',['贷款分类','理财','推荐理财产品','贷款'])
            ->addColumn('p_name', '分类','text')
            ->addColumn('p_pic', '图片','picture')            
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
     *p_type值为0：普通    1： 最热    2：最新
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
             	['radio','class_type','类别','',['0'=>'贷款分类','1'=>'理财','2'=>'推荐理财产品','3'=>'贷款'],'0',['0'=>'贷款分类','2'=>'推荐理财产品']],   
                ['text', 'p_name', '分类名称(区分极速贷 、大额贷、小额贷  等贷款平台logo)', '必填项'],
                ['image','p_pic','上传平台LOGO'],
                ['text','jump_url', '第三方跳转url'],
                ['hidden','status','1'],                            
                ['hidden','sort','1'],
                ['hidden','b_type',6],
                ['hidden','p_type',5],
                ['hidden','classify',3]
            ])
            ->setTrigger('class_type', '0', 'p_name')
    		->setTrigger('class_type', '2', 'jump_url')
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
//          ProImg::update($data);
//          print_r(ProImg::getLastSql());die();
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
             	['radio','class_type','类别','',['0'=>'贷款分类','1'=>'理财','2'=>'推荐理财产品','3'=>'贷款'],'0',['0'=>'贷款分类','2'=>'推荐理财产品']],   
                ['text', 'p_name', '分类名称(区分极速贷 、大额贷、小额贷  等贷款平台logo)', '必填项'],
                ['image','p_pic','上传平台LOGO'],
                ['text','jump_url', '第三方跳转url'],
                ['hidden','status','1'],                            
                ['hidden','sort','1'],
                ['hidden','b_type',6],
                ['hidden','p_type',5],
                ['hidden','classify',3]
            ])
            ->setTrigger('class_type', '0', 'p_name')
    		->setTrigger('class_type', '2', 'jump_url')
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