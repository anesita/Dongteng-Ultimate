<?php
namespace Home\Controller;
use Think\Controller;
class XinwenController extends HomeController {
    public function index($theme=''){
      set_theme($theme);
      cookie('theme',$theme);
      $cook = cookie(theme);
      set_theme($cook);

        $model = M('News');
        $info = $model->order('id desc')->select();
        $i = 0;
        foreach ($info as $v){
            $info[$i]['create_time'] = date('Y-m-d',$v['create_time']);
            $i++;
        }
        $this->assign('list',$info);
        $this->display();
    }
    public function about(){
        $cook = cookie('theme');
        set_theme($cook);

        $id = I('get.id');
        if($id==''){
            $id = 6;
        }
        $model = M('News');
        $model ->where(array('id'=>$id))->setInc('click',1);
        $info = $model->where(array('id'=>$id))->find();
        $info['en_content'] = html_entity_decode($info['en_content']);
        $info['create_time'] = date('Y-m-d H:i:s',$info['create_time']);
        $this->assign('list',$info);
        $this->display();
    }
}
