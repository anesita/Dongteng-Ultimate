<?php
namespace Home\Controller;
use Think\Controller;
class LianxiController extends HomeController {
    public function index($theme=''){
      set_theme($theme);
      cookie('theme',$theme);
      $cook = cookie(theme);
      set_theme($cook);

		// if (IS_POST) {


		// 	$data['username'] = I('username');
		// 	$data['phone'] = I('phone');
		// 	// $data['mail'] = I('mail');
		// 	$data['family'] = I('family');
		// 	$data['country'] = I('country');
		// 	$data['province'] = I('province');
		// 	$data['Model'] = I('Model');
		// 	$data['Requirement'] = I('Requirement');

		// 	$feedback = D('Lianxi');
		// 	$data['add_time'] = date('Y-m-d');


		// 	if ($feedback->create()) {
		// 		if ($feedback->add($data)) {
		// 			// $this->success('您的反馈消息已经提交，请耐心等待我们的回复',U('Home/Lianxi/index'),2);
		// 		} else {
		// 			$this->error('不好意思，提交失败了！您可以尝试联系客服解答您的疑问！',2);
		// 		}
		// 	} else {
		// 		$this->error($feedback->getError());
		// 	}
		// 	return;


		// }

		if (IS_POST) {
			$title=I('post.title');
			$email=I('post.email');
			$province=I('post.province');
			$Model=I('post.Model');
			$content=I('post.content');
	        $country=I('post.country');
	        $phone=I('post.phone',0,'intval');

	        // 拼接字符串方式
	        $str = '姓名：'.$title.'<br>'
	        	  .'手机号：'.$phone.'<br>'
	        	  .'邮箱: '.$email.'<br>'
	        	  .'省份: '.$province.'<br>'
	        	  .'机型: '.$Model.'<br>'
	        	  .'反馈内容: '.$content.'<br>'
	        	  .'国家: '.$country.'<br>'
	        	  .'反馈内容: '.$content.'<br>';

	        // 发送邮件
	        $result =  send_email('1069281336@163.com','邮件标题',$str);
	        if ($result['error']==1) {
	            p($result);die;
	        }
	        $this->success('发送完成',U('Home/Index/index'));
			return;

		}

		$this->display();

    }


}
