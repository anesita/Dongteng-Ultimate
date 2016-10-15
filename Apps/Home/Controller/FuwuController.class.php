<?php
namespace Home\Controller;
use Think\Controller;
class FuwuController extends HomeController {
    public function index($theme=''){
      set_theme($theme);
      cookie('theme',$theme);
      $cook = cookie(theme);
      set_theme($cook);

        $this->display();
    }
}
