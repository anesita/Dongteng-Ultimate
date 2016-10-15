<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends HomeController {
    public function index($theme=''){
        set_theme($theme);
        cookie('theme',$theme);
        $cook = cookie(theme);
        set_theme($cook);


        $model = M('News');
        $model2 = M('Advert');
        $info = $model->order('id desc')->select();
        $i = 0;
        foreach ($info as $v){
            $info[$i]['create_time'] = date('Y-m-d',$v['create_time']);
            if(strlen($v['title'])>10){

                $info[$i]['title'] = mb_substr($v['title'],0,11,'utf-8').'..';

            }
            $i++;
        }
        $data = $info[0];
        $info2 = $model2->where(array('type'=>1))->select();

        $info3 = $model2->where(array('id'=>1))->find();


        $info4 = $model2->where(array('type'=>2))->limit(0,5)->select();
        $info5 = $model2->where(array('type'=>2))->limit(8)->select();

        $info6 = $model2->where(array('type'=>3))->select();
        $info7 = $model2->where(array('id'=>11))->find();

        $this->assign('list',$info);
        $this->assign('list2',$info2);
        $this->assign('list3',$info3);
        $this->assign('list4',$info4);
        $this->assign('list5',$info5);
        $this->assign('list6',$info6);
        $this->assign('list7',$info7);
        $this->assign('data',$data);

        $this->display();
    }
    public function Chanpin(){
        $cook = cookie('theme');
        set_theme($theme);
        
        $this->display();
    }
    public function titleimg(){
        $model2 = M('Advert');
        $id = I('post.id');
        $info4 = $model2->where(array('type'=>2))->limit($id,1)->find();
        $this->ajaxReturn($info4);
    }
 
    public function search($theme='') {
        set_theme($theme);
        cookie('theme',$theme);
        $cook = cookie(theme);
        set_theme($cook);
        
        // 产品
        $t_id = I('title');
        // $data = D('Chanpin')->select();
        $where['title'] = array('like','%'.$t_id.'%');
        $data = D('Chanpin')->where($where)->select();
        // var_dump($data);
        $this->assign('data',$data);
   
        // 新闻
        $t_id = I('title');
        // $data = D('Chanpin')->select();
        $where['title'] = array('like','%'.$t_id.'%');
        $res = D('News')->where($where)->select();
        // var_dump($data);
        $this->assign('res',$res);
        $this->display();
    }
}