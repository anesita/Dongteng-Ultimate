<?php
// +----------------------------------------------------------------------
// | LogoWE [ Get WEB Easy ! ]
// +----------------------------------------------------------------------
// | Copyright (c) 2003-2014 http://logowe.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Tian <zero_lzt@163.com>
// +----------------------------------------------------------------------

namespace Home\Controller;
use Think\Controller;

/**
 * 前台公共控制器
 * 为防止多分组Controller名称冲突，公共Controller名称统一使用分组名称
 */
class HomeController extends Controller {

	/* 空操作，用于输出404页面 */
	public function _empty(){
		$this->redirect('Index/index');
	}


    protected function _initialize(){
        // 设置主题
		set_theme();	
	}


}
