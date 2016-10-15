<?php
namespace Admin\Controller;
use Think\Controller;
class AdvertController extends BaseController {
    public function index(){
        $model = M('Advert');
        $info = $model->select();
        $this->assign('list',$info);
        $this->display();
    }

    public function edit(){
        $model = M('Advert');
        $id = I('get.id');
        $info = $model->where(array('id'=>$id))->find();
        $this->assign('list',$info);
        $this->display();
    }
    public function doedit(){
        $model = M('advert');
        $data = I('post.');
        if($_FILES['image']['name']==''){

        }else{
            $info = $this->uppic();
            $data['image']=$info['savepath'].$info['savename'];
        }
        $id = $data['info_id'];
        unset($data['info_id']);
        if($model->where(array('id'=>$id))->save($data)){
            $this->success('修改成功',U('Admin/advert/index'));
        }else{
            $this->error('请确认内容是否修改');
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


