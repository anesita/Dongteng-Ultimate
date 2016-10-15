<?php
namespace Home\Controller;
use Think\Controller;
class ShipingController extends HomeController {
    public function index($theme=''){
      set_theme($theme);
      cookie('theme',$theme);
      $cook = cookie(theme);
      set_theme($cook);

        $typemodel = M('videoType');
        $model = M('Video');
        $type = $typemodel->where(array('parent'=>0))->select();
        $i=0;
        //中文
        foreach ($type as $v){
            $video_list[$v['name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($video_list[$v['name']])){
                unset($video_list[$v['name']]);
            }
            $i++;
        }

        //英文
        foreach ($type as $v){
            $video_list2[$v['en_name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($video_list2[$v['en_name']])){
                unset($video_list2[$v['en_name']]);
            }
            $i++;
        }
        //俄文
        foreach ($type as $v){
            $video_list3[$v['rus_name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($video_list3[$v['rus_name']])){
                unset($video_list2[$v['rus_name']]);
            }
            $i++;
        }
        //中文
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

        //英文
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

        //俄文
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
        $model = M('Video');
        $info = $model->select();
        $info2 = $model->select();
        $info3 = $model->select();
        $this->assign('list',$video_list);
        $this->assign('list2',$video_list2);
        $this->assign('list3',$video_list3);
        $this->display();
    }
    public function about($theme=''){
      set_theme($theme);
      cookie('theme',$theme);
      $cook = cookie(theme);
      set_theme($cook);
        if (IS_POST) {

            redirect('/video');
        }
        $id = I('get.id');
        if($id==''){
            $id=1;
        }
        $typemodel = M('videoType');
        $model = M('video');
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
            $video_list2[$v['en_name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($video_list2[$v['en_name']])){
                unset($video_list2[$v['en_name']]);
            }
            $i++;
        }
        //俄文分类
        foreach ($type as $v){
            $video_list3[$v['rus_name']] = $model->where(array('type'=>$v['id']))->select();
            if(empty($video_list3[$v['rus_name']])){
                unset($video_list3[$v['rus_name']]);
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
  }
