<?php
namespace Admin\Controller;
use Think\Controller;
class BaseController extends Controller {
    public function _initialize(){
        if($_SESSION['admin']['username']=='' or $_SESSION['admin']['id']=='' ){
            $this->redirect('login/index');
        }
    }
}