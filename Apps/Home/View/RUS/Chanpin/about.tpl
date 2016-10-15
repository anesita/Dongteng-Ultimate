<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <title>东腾机械</title>

    <!-- Bootstrap core CSS -->
    <!--<link href="css/bootstrap.min.css" rel="stylesheet">-->
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
    <script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!--[if lte IE 6]>
<!-- bsie css patch -->

    <!-- bsie additional css patch -->
    <!--[endif]-->



</head>
<style>
    body{
        padding: 0px;
        margin: 0px;
        font-family:Verdana,微软雅黑; *font-family:微软雅黑,Verdana;

    }
    img{
        border:0px;
        padding:0px;
        margin: 0px;
    }
    ul{
        list-style-type: none;
        margin: 0px;
        padding:0px;
    }
    #nav ul li{
        float: left;
        list-style: none;
        color: #fff;
        font-size: 16px;
        padding: 0px 15px 0px;
        line-height: 66px;
    }
    #nav ul li a{
        color: #fff;
    }

</style>
<body>

<!--header-->
<include file="Index/yuying" />
<include file="Index/pro_header" />
<!--header -->
<!--header_small-->
<include file="Index/smallheader" />
<!--./header——samll -->
<!--color-->
<!--./color -->
<!--main_small-->
<div class="hidden-lg">
    <div class="container" style="width: 96%;">
        {$info}
    </div>
</div>
<!--./main_small -->
<!--footer-->
<include file="Index/footer" />
<!--./footer -->
<!--footer_small-->
<div class="col-xs-12"  style="background-color: #2f2725;">
    <div class="col-xs-12">
        <div id="body">
            <!-- OA树开始-->
            <ul id="menu">
                <volist name="type" id="rows">
                    <li class="l1" style="padding-top: 10px;color: #595757;font-size: 16px;"><a href="javascript:c(m{$rows.id});" id="m{$rows.id}" style="color: #fff;"><span><img src="__ROOT__/Public/img/gy_nav03_03.png" style="float: left;">{$rows.name}</span></a></li>
                    <ul id="m{$rows.id}d" style="display:none;padding-left: 20px;font-size: 16px;" class="U1">
                        <volist name="rows['info']" id="f">
                            <li class="l22" style="line-height: 17px;padding: 5px 0px;"><a href="__MODULE__/chanpin/about/?id={$f.id}" style="color: #fff;"><span><img src="__ROOT__/Public/img/gy_nav03_03.png" style="float: left;"> {$f.title}</span></a></li>
                        </volist>
                    </ul>
                </volist>
            </ul>
        </div>


        <script language="JavaScript">
            var cur_id="";
            var flag=0,sflag=0;

            //-------- 菜单点击事件 -------
            function c(srcelement)
            {
                var targetid,srcelement,targetelement;
                var strbuf;

                //-------- 如果点击了展开或收缩按钮---------
                targetid=srcelement.id+"d";
                targetelement=document.getElementById(targetid);

                if (targetelement.style.display=="none")
                {
                    srcelement.className="active";
                    targetelement.style.display='';

                    menu_flag=0;
                    expand_text.innerHTML="收缩";
                }
                else
                {
                    srcelement.className="";
                    targetelement.style.display="none";

                    menu_flag=1;
                    expand_text.innerHTML="展开";
                    var links=document.getElementsByTagName("A");
                    for (i=0; i<links.length; i++)
                    {
                        srcelement=links[i];
                        if(srcelement.parentNode.className.toUpperCase()=="l1" && srcelement.className=="active" && srcelement.id.substr(0,1)=="m")
                        {
                            menu_flag=0;
                            expand_text.innerHTML="收缩";
                            break;
                        }
                    }
                }
            }
            function set_current(id)
            {
                cur_link=document.getElementById("f"+cur_id)
                if(cur_link)
                    cur_link.className="";
                cur_link=document.getElementById("f"+id);
                if(cur_link)
                    cur_link.className="active";
                cur_id=id;
            }
            //-------- 打开网址 -------
            function a(URL,id)
            {
                set_current(id);
                if(URL.substr(0,7)!="http://" && URL.substr(0,6)!="ftp://")
                    URL = "/general/"+URL;
                parent.openURL(URL,0);
            }
            function b(URL,id)
            {
                set_current(id);
                URL = "/app/"+URL;
                parent.openURL(URL,0);
            }
            //add by YZQ 2008-03-05 begin
            function bindFunc() {
                var args = [];
                for (var i = 0, cnt = arguments.length; i < cnt; i++) {
                    args[i] = arguments[i];
                }
                var __method = args.shift();
                var object = args.shift();
                return (
                        function(){
                            var argsInner = [];
                            for (var i = 0, cnt = arguments.length; i < cnt; i++) {
                                argsInner[i] = arguments[i];
                            }
                            return __method.apply(object, args.concat(argsInner));
                        });
            }
            var timerId = null;
            var firstTime = true;
            //add by YZQ 2008-03-05 end
            function d(URL,id)
            {
                //add by YZQ 2008-03-05 begin
                var winMgr = parent.parent.table_index.main.winManager;
                if (!winMgr) {
                    if (firstTime) {
                        parent.openURL("/fis/common/frame.jsp",0);
                        firstTime = false;
                    }
                    timerId = setTimeout(bindFunc(d, window, URL, id), 100);
                    return;
                }
                firstTime = true;
                if (timerId) {
                    clearTimeout(timerId);
                }
                if (winMgr) {
                    winMgr.openActionPort("/fis/"+URL, document.getElementById("f" + id).innerText);
                    return;
                }
                //add by YZQ 2008-03-05 end

                set_current(id);
                URL = "/fis/"+URL;
                parent.openURL(URL,0);
            }
            //-------- 菜单全部展开/收缩 -------
            var menu_flag=1;
            function menu_expand()
            {
                if(menu_flag==1)
                    expand_text.innerHTML="收缩";
                else
                    expand_text.innerHTML="展开";

                menu_flag=1-menu_flag;

                var links=document.getElementsByTagName("A");
                for (i=0; i<links.length; i++)
                {
                    srcelement=links[i];
                    if(srcelement.parentNode.className.toUpperCase()=="l1" || srcelement.parentNode.className.toUpperCase()=="l21")
                    {
                        targetelement=document.getElementById(srcelement.id+"d");
                        if(menu_flag==0)
                        {
                            targetelement.style.display='';
                            srcelement.className="active";
                        }
                        else
                        {
                            targetelement.style.display="none";
                            srcelement.className="";
                        }
                    }
                }
            }
            //-------- 打开windows程序 -------
            function winexe(NAME,PROG)
            {
                URL="/general/winexe?PROG="+PROG+"&NAME="+NAME;
                window.open(URL,"winexe","height=100,width=350,status=0,toolbar=no,menubar=no,location=no,scrollbars=yes,top=0,left=0,resizable=no");
            }
        </script>

    </div>
    <div class="col-xs-8" style="padding-top: 24px;">
        <ul>
            <li style="color: #fff;font-size: 16px;">销售热线</li>
            <li style="color: #fff;font-family: Arial;font-style: italic;font-size: 26px;">(86)577-65888480</li>
        </ul>
    </div>
    <div class="col-xs-2" style="float: right;padding-top: 28px;">
        <a style="font-size: 16px;color: #fff;">Top
            <img src="__ROOT__/Public/img/top_31.png" style="padding-left: 4px;width: 30%;">
        </a>
    </div>
</div>
<div style="clear:both"></div>
<div style="background-color: #2f2725;padding-top:30px;padding-bottom: 14px;">
    <ul>
        <li style="text-align: center;color: #fff;font-size: 10px;">瑞安市东腾机械有限公司  版权所有　浙ICP备08102083号</li>
        <li style="text-align: center;color: #fff;font-size: 10px;">Copyright © 2007-2014 ALl rights reserved</li>
    </ul>
</div>

<!--./footer_small-->
</body>
</html>
