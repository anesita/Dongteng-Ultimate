<?php
namespace Admin\Model;

use \Think\Model;

class ChanpinTypeModel extends Model{

    /**
     * 获取 二维数组
     * @param  integer $id    分类ID
     * @param  boolean $field 查询字段
     * @return array          分类二维数组
     */
    public function getAdminCate($id=0,$field=true){ 
        //获取所有分类信息
        $list = $this->field($field)->where(array('parent'=>0))->select();
        //处理分类信息
        $list = $this->getHtmlCate($list,'&nbsp;&nbsp;&nbsp;&nbsp;',$id,0);
        return $list;
    }
    /**
     * 获取 二维数组
     * @param  type $cate  结果集
     * @param  string $html  分隔符
     * @param int $pid pid
     * @param int $level 级别
     * @param return
     */
    private function getHtmlCate($cate,$html='--',$pid=0,$level=0){
        $arr = array();
        foreach($cate as $v){
            if($v['parent'] == $pid){
                $v['html'] = str_repeat($html, $level);
                $v['level'] = $level;
                $arr[] = $v;
                $arr = array_merge($arr,$this->getHtmlCate($cate,$html,$v['id'],$level+1));
            }
        }
        return $arr;
    }
}