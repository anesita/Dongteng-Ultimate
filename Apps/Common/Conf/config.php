<?php
return array(
    
//**********************************网站常规配置***********************************
    'URL_MODEL'         => 2,                           //URL模式配置
    'URL_DENY_SUFFIX'   => 'pdf|ico|png|gif|jpg',       //禁止访问后缀
    'URL_HTML_SUFFIX'   => 'html|shtml|xml',            //设置伪静态后缀，默认为html
    'TAGLIB_PRE_LOAD'   => 'html',                      //标签预加载
    'LOAD_EXT_CONFIG'   => 'db',                        //加载网站设置文件
    'MODULE_DENY_LIST'  => array('Common','Runtime'),   //禁止目录模块访问 
    'MODULE_ALLOW_LIST' => array('Home','u'),           //允许模块访问
    'URL_MODULE_MAP'    => array('u'=>'admin'),         //绑定后台路由
    'DEFAULT_MODULE'    => 'Home',                      //默认访问模块       
    'TMPL_TEMPLATE_SUFFIX'=>'.tpl',                     //修改模板文件后缀
//***********************************语言包配置**********************************
     'LANG_SWITCH_ON'   => true,            // 开启语言包功能
     'LANG_AUTO_DETECT' => true,            // 自动侦测语言 开启多语言功能后有效
     'DEFAULT_LANG'     => 'zh-cn',         // 默认语言
     'LANG_LIST'        => 'zh-cn,en-us',   // 允许切换的语言列表 用逗号分隔
     'VAR_LANGUAGE'     => 'l',             // 默认语言切换变量
//***********************************邮件服务器配置***********************************
    'EMAIL_FROM_NAME'   => 'Saire',                 // 发件人
    'EMAIL_SMTP'        => 'smtp.163.com',          // smtp
    'EMAIL_USERNAME'    => '1069281336@163.com',    // 账号
    'EMAIL_PASSWORD'    => 'a123456',               // 密码
);
