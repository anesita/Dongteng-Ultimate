<?php
namespace Admin\Controller;
use Think\Controller;

class LianxiController extends Controller {

    public function index(){

        //输出列表
        $Lianxi = D('Lianxi'); 
        
        //分页显示输出 
        // 查询满足要求的总记录数
        $count = $Lianxi->count();
        // 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page = new \Think\Page($count,25);
        $show = $Page->show();
               
        $list = $Lianxi->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);
        $this->assign('page',$show);

        $this->display();
    }

    // 显示完整的页面，暂时不做
    public function showlist(){

        //输出列表
        $Lianxi = D('Lianxi'); 
        
        //分页显示输出 
        // 查询满足要求的总记录数
        $count = $Lianxi->count();
        // 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page = new \Think\Page($count,25);
        $show = $Page->show();
               
        $list = $Lianxi->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);
        $this->assign('page',$show);

        $this->display();
    }   


    public function delete() {
        $Lianxiid = I('id');
        $Lianxi = D('Lianxi');
        if ($Lianxi->delete($Lianxiid)) {
            $this->success('删除成功',U('Admin/Lianxi/index'),2);
        } else {
            $this->error('删除失败');
        }
    }





   
}


