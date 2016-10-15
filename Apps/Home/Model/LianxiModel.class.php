<?php
namespace Home\Model;
use Think\Model;

class LianxiModel extends Model { 
	protected $_validate = array(  

		//默认情况下用正则进行验证     
		// array('username','require','名字不得为空！'), 				
		// array('family','require','姓氏不得为空！'), 
		// array('email','require','邮件地址不得为空！'), 
		// array('phone','require','手机号码不得为空！'), 		
		// array('country','require','国家不得为空！'), 
		// array('province','require','省市不得为空！'), 
		// array('Model','require','意向机型不得为空！'), 
	);

	protected $_auto = array (
		// array('add_time', date, self::MODEL_INSERT, 'fucntion', array('Y-m-d H:i:s')),
		array('add_time','time',2,'function'),
	);
	

}