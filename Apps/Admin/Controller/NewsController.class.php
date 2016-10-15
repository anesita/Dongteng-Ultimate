<?php
namespace Admin\Controller;
use Think\Controller;
class NewsController extends BaseController {
    public function index(){
        $model = M('News');
        $info = $model->order('id desc')->select();
        $i = 0;
        foreach ($info as $v){
            $info[$i]['create_time'] = date('Y-m-d H:i:s',$v['create_time']);
            $i++;
        }
        $this->assign('list',$info);
        $this->display();
    }

    public function doaddnews(){
        $model = M('News');
        $data = I('post.');
        $info = $this->uppic();
        $data['title_img']=$info['savepath'].$info['savename'];
        $data['create_time'] = time();
        $data['click'] = 0;
        $addinfo = $model->create($data);
        if($model->add($addinfo)){
            $this->success('添加成功',U('Admin/news/index'));
        }else{
            $this->error('程序出现错误,请联系管理员');
        }
    }
    public function editnews(){
        $id = I('get.id');
        $model = M('News');
        $info = $model->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $this->display();
    }
    
    public function doedit(){
        $model = M('News');
        $data = I('post.');

        if($_FILES['image']['name']==''){

        }else{
            $info = $this->uppic();
            $data['title_img']=$info['savepath'].$info['savename'];
        }
        $id = $data['info_id'];
        unset($data['info_id']);
        if($model->where(array('id'=>$id))->save($data)){
            $this->success('修改成功',U('Admin/news/index'));
        }else{
            $this->error('请确认内容是否修改');
        }
    }
    public function del(){
        $model = M('News');
        $id = I('get.id');
        if($model->where(array('id'=>$id))->delete()){
            $this->success('删除成功');
        }
    }






    private function uppic(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize = 3145728 ;// 设置附件上传大小
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath = 'Public/'; // 设置附件上传根目录
        $upload->savePath = 'upload/'; // 设置附件上传(子)目录
// 上传文件
        return $upload -> uploadOne($_FILES['image']);
    }
}


