<style type="text/css">
    #small_menu {
        position: fixed;
        left:0px;
        top:106px;
        z-index: 9999999;
    }
</style>
<div style="" id="small_menu">
    <div style="height:375px;width: 50px;background:#005bac;padding: 110px 10px;color: #fff;" onclick="clicksmallmenu()">
         > <div style="width: 24px;writing-mode:tb-rl;font-size: 20px;color: #fff;">更多产品系列</div>
    </div>
</div>
<div style="position: fixed;left:0px;top:0px;display: none; background:#fff;z-index: 9999;border-right: 5px solid #005bac;" id="big_menu">
    <div style="height:1000px;width: 258px;">
        <div style="width: 400px;font-size: 20px;color: #fff;padding-top: 124px;">
            <div style="color: #000;font-size: 24px;width: 100%;padding-left:35px;">产品系列</div>
            <div style="height: 1px;width: 80px;padding: 0px 25px 25px;"><img src="__ROOT__/Public/img/left_menu_bg.gif"></div>
            <div id="body">
                <!-- OA树开始-->
                <ul id="menu">
                    <volist name="type" id="rows">
                        <li class="l1" style="padding-top: 10px;color: #005bac;font-size: 16px;padding-left: 30px;line-height: 25px;"><a href="javascript:c(m{$rows.id});" id="m{$rows.id}" style="color: #000;"><span>{$rows.name}</span></a></li>
                        <div style="height: 1px;width: 80px;padding: 0px 25px 25px;"><img src="__ROOT__/Public/img/left_menu_bg.gif"></div>
                        <ul id="m{$rows.id}d" style="display:none;padding-left: 30px;font-size: 16px;" class="U1">
                            <volist name="rows['info']" id="f">
                                <li class="l22" style="line-height: 50px;"><a href="__MODULE__/chanpin/about1/?id={$f.id}" style="color: #005bac;"><span> {$f.title}</span></a></li>
                                <div style="height: 1px;width: 60px;padding-bottom: 20px;padding-left: -20px;"><img src="__ROOT__/Public/img/left_menu_bg2.gif"></div>
                            </volist>
                        </ul>
                    </volist>
                </ul>
            </div>
            <div style="position: absolute;right:-50px;top:106px;" onclick="clickbigmenu()">
                    <div style="height:375px;width: 50px;background:#005bac;padding: 110px 10px;" onclick="clicksmallmenu()">
                        < <div style="width: 24px;writing-mode:tb-rl;font-size: 20px;color: #fff;"> 更多产品系列</div>
                    </div>
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
    </div>
</div>

<script>
    function clicksmallmenu() {
        $('#small_menu').hide(800);
        $('#big_menu').show(800);
    }
    function clickbigmenu() {
        $('#small_menu').show(800);
        $('#big_menu').hide(800);
    }
    // $(function(){
    //     //获取浏览器宽度
    //     var _width = $(window).width(); 
    //     if( _width < 1200 ){
           
    //         $("#small_menu").hide();
    // }
</script>