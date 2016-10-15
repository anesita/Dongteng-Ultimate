<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        $this->display();
    }
    public function dologin(){
        $info = I('post.');
        $model = M('User');
        if($data = $model->where(array('username'=>$info['username']))->where(array('password'=>$info['password']))->find()){
            $_SESSION['admin']['username'] = $data['username'];
            $_SESSION['admin']['id'] = $data['id'];
            $this->success('登陆成功',U('Admin/index/index'));
        }else{
            $this->error('账号或者密码错误');
        }
    }
    public function logout(){
        unset($_SESSION['admin']['username']);
        unset($_SESSION['admin']['id']);
        echo "<script>alert('退出成功')</script>";
        if($_SESSION['admin']['username']==''){
            $this->redirect('login/index');
        }

    }
}