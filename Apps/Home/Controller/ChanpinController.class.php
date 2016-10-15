<?php
namespace Home\Controller;
use Think\Controller;
class ChanpinController extends HomeController {
    public function index($theme=''){
        set_theme($theme);
        cookie('theme',$theme);
        $cook = cookie(theme);
        set_theme($cook);

        $typemodel = M('ChanpinType');
        $model = M('Chanpin');
        $type = $typemodel->where(array('parent'=>0))->select();
        $i=0;
        //中文分类
        foreach ($type as $v){
            $chanpin_list[$v['name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($chanpin_list[$v['name']])){
                unset($chanpin_list[$v['name']]);
            }
            $i++;
        }
        //英文分类
        foreach ($type as $v){
            $chanpin_list2[$v['en_name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($chanpin_list2[$v['en_name']])){
                unset($chanpin_list2[$v['en_name']]);
            }
            $i++;
        }
        //俄文分类
        foreach ($type as $v){
            $chanpin_list3[$v['rus_name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($chanpin_list3[$v['rus_name']])){
                unset($chanpin_list3[$v['rus_name']]);
            }
            $i++;
        }
        //中文产品名称
        $data = $model->select();
        $i=0;
        foreach ($type as $v){
            $p=0;
            foreach ($data as $value){
                if($v['id'] == $value['type']){
                    $type[$i]['info'][$p]['title'] = $value['title'];
                    $type[$i]['info'][$p]['id'] = $value['id'];
                    $p++;
                }

            }
            $i++;
        }
        //英文产品名称
        $data = $model->select();
        $i=0;
        foreach ($type as $v){
            $p=0;
            foreach ($data as $value){
                if($v['id'] == $value['type']){
                    $type[$i]['info2'][$p]['en_title'] = $value['en_title'];
                    $type[$i]['info2'][$p]['id'] = $value['id'];
                    $p++;
                }

            }
            $i++;
        }
        //俄文产品名称
        $data = $model->select();
        $i=0;
        foreach ($type as $v){
            $p=0;
            foreach ($data as $value){
                if($v['id'] == $value['type']){
                    $type[$i]['info3'][$p]['rus_title'] = $value['rus_title'];
                    $type[$i]['info3'][$p]['id'] = $value['id'];
                    $p++;
                }

            }
            $i++;
        }
        $this->assign('type',$type);
        $info = $model->select();
        $info2 = $model->select();
        $info3 = $model->select();
        $this->assign('list',$chanpin_list);
        $this->assign('list2',$chanpin_list2);
        $this->assign('list3',$chanpin_list3);

        $this->display();
    }
    public function about1($theme=''){
        set_theme($theme);  
        cookie('theme',$theme);
        $cook = cookie(theme);
        set_theme($cook);
      
        
        $id = I('get.id');
        if($id==''){
            $id=1;
        }
        if (IS_POST) {

            redirect('/product');
        }
        $typemodel = M('ChanpinType');
        $model = M('Chanpin');
        $type = $typemodel->where(array('parent'=>0))->select();
        $data = $model->select();
        $i=0;

        foreach ($type as $v){
            $p=0;
                foreach ($data as $value){
                    if($v['id'] == $value['type']){
                        $type[$i]['info'][$p]['title'] = $value['title'];
                        $type[$i]['info'][$p]['id'] = $value['id'];
                        $p++;
                    }

                }
            $i++;
        }
        //英文分类
        foreach ($type as $v){
            $chanpin_list2[$v['en_name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($chanpin_list2[$v['en_name']])){
                unset($chanpin_list2[$v['en_name']]);
            }
            $i++;
        }
        //俄文分类
        foreach ($type as $v){
            $chanpin_list3[$v['rus_name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($chanpin_list3[$v['rus_name']])){
                unset($chanpin_list3[$v['rus_name']]);
            }
            $i++;
        }        
        //英文产品名称
        $i=0;
        foreach ($type as $v){
            $p=0;
            foreach ($data as $value){
                if($v['id'] == $value['type']){
                    $type[$i]['info2'][$p]['en_title'] = $value['en_title'];
                    $type[$i]['info2'][$p]['id'] = $value['id'];
                    $p++;
                }

            }
            $i++;
        }
        //俄文产品名称
        $i=0;
        foreach ($type as $v){
            $p=0;
            foreach ($data as $value){
                if($v['id'] == $value['type']){
                    $type[$i]['info3'][$p]['rus_title'] = $value['rus_title'];
                    $type[$i]['info3'][$p]['id'] = $value['id'];
                    $p++;
                }

            }
            $i++;
        }
        $data1 = $model->select();
        $info = $model->where(array('id'=>$id))->find();
        $info2 = $model->where(array('id'=>$id))->find();
        $info3 = $model->where(array('id'=>$id))->find();
        $this->assign('type',$type);
        $this->assign('info',$info);
        $this->assign('shiping',htmlspecialchars_decode($info['shiping']));
        $this->assign('data1',$data1);
        $this->display();
    }





    public function about(){
        $cook = cookie('theme');
        set_theme($cook);

        $id = I('get.id');
        if($id==''){
            $id=1;
        }
        $typemodel = M('ChanpinType');
        $model = M('Chanpin');
        $type = $typemodel->where(array('parent'=>0))->select();
        $data = $model->select();
        $i=0;
        foreach ($type as $v){
            $p=0;
            foreach ($data as $value){
                if($v['id'] == $value['type']){
                    $type[$i]['info'][$p]['title'] = $value['title'];
                    $type[$i]['info'][$p]['id'] = $value['id'];
                    $p++;
                }

            }
            $i++;
        }
        $info = $model->where(array('id'=>$id))->find();
        $this->assign('type',$type);
        $this->assign('info',htmlspecialchars_decode($info['content']));
        $this->assign('youshi',htmlspecialchars_decode($info['youshi']));
        $this->assign('canshu',htmlspecialchars_decode($info['canshu']));
        $this->assign('shiping',htmlspecialchars_decode($info['shiping']));
        $this->display();
    }
}
