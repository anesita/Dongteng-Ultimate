<?php
return array(
//***********************************模板主题配置**********************************
'DEFAULT_THEME'     => 'ENL',
'TMPL_DETECT_THEME' => true,     // 自动侦测模板主题
//'THEME_LIST'        => 'CHS,ENL',
//**********************************路由配置***********************************   
    'URL_ROUTER_ON'     => true,        //启用路由   
    'URL_ROUTE_RULES'   => array(       //配置路由

    ),    
    'URL_MAP_RULES'=>array(             //静态路由
         '东腾机械' => 'Index/index',
         'company' => 'Gongsi/index',
         'product' => 'Chanpin/index',
         'video' => 'Shiping/index',
         'service' => 'Fuwu/index',
         'news' => 'Xinwen/index',
         'connect' => 'Lianxi/index',
         'con/a' => 'Chanpin/about1',
         'vid/a' => 'shiping/about',
         'news/a' => 'xinwen/about',
    ),

);
