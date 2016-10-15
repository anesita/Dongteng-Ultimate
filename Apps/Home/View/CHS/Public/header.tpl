<style>
    #submit {
        background:url("/Public/img/shousuo_01.png") no-repeat; 
    }
    .color {
         height: 18px;
         background-color: #005bac;

    }
    #space {
        height: 78px;
    }
    .color ul li ul li.l22 {
        line-height: 30px !important;
        float: left;
        padding-left: 8%;
        padding-top: 5%;
    }
    .color ul li ul li.l22:first-child {
        padding-top: 5%;
    }
    .color ul li ul li.l22 a span{
        font-size: 18px;
        color: #005bac;
        
    }
    .color ul {
        position: fixed;
        
    }
    .color ul li.l1,.color ul li.ttt {
        float: left;
        padding-top: 15px;
        padding-bottom: 15px;
        color: #fff;
        font-size: 16px;
        line-height: 25px;
        margin-left: 26px;  
        width: auto;  

    }
    .color ul li.l1:hover {
        background-color: #ebebeb;
        width: 190px;
        text-align: center;
    }
    .color ul li.l1 a:hover {
        text-decoration: none;
    }
    .color ul li.l1:hover  a span{
        
        color: #005bac;
    }
    .color ul li.l1 a span {
        color: #fff;
    }
    .color ul li.l1:first-child {
        margin-left: 13.35%;
    }
    .color ul li.l22:first-child {
        padding-top: 10px;
    }
    .sec_ul {
        display:none;
        font-size: 16px;
        height:135px;
        margin-top: 10px;
        background-color:#ebebeb;
        position: fixed;
        width: 59%;
        left: 20%;
        
    }
    #menu {
        width: 150%;
    }
    @media (max-width: 1200px) {
        #space {
            height: 0;
        }
    }
</style>
<div style="width: 100%;background-color: #000;position:fixed;z-index:1;top:0;height:84px;" class="visible-lg">
    <div class="container" style="padding: 0px;">
        <div class="col-sm-12"  style="background-color: #000;padding: 0px;">
            <div class="col-sm-2" style="padding: 0px;">
                <a href="/东腾机械"><img src="__ROOT__/Public/img/logo_02.png" alt=""></a>
            </div>
            <div class="col-sm-6" id="nav">
                <ul>
                    <li><a href="/company" style="padding-left: 4px;line-height: 66px;"><img src="__ROOT__/Public/img/shouye_logo.png" alt="" width="35%" style="padding-right: 4px;">公司</a></li>
                    <li><a href="/product" style="padding-left: 4px;line-height: 66px;"><img src="__ROOT__/Public/img/chanping_logo.png" alt="" width="35%" style="padding-right: 4px;">产品</a></li>
                    <li><a href="/video" style="padding-left: 4px;line-height: 66px;"><img src="__ROOT__/Public/img/shp_logo.png" alt="" width="35%" style="padding-right: 4px;">视频</a></li>
                    <li><a href="/news" style="padding-left: 4px;line-height: 66px;"><img src="__ROOT__/Public/img/xinwen_logo.png" alt="" width="35%" style="padding-right: 4px;">新闻</a></li>
                    <li><a href="/service" style="padding-left: 4px;line-height: 66px;"><img src="__ROOT__/Public/img/fuwu_logo.png" alt="" width="35%" style="padding-right: 4px;">服务</a></li>
                    <li><a href="/connect" style="padding-left: 4px;line-height: 66px;"><img src="__ROOT__/Public/img/dianhua_logo.png" alt="" width="35%" style="padding-right: 4px;">联系</a></li>
                </ul>
            </div>
            <div class="col-sm-1"  style="padding-top: 22px;">
            </div>
                <div class="col-sm-3" style="padding-top: 25px;padding-left:40px;">
                <form action="/Index/search" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <input type="text" name="title" style="display:block;float:left" >
                    <!-- <a href="#" id="ddd"  style="padding-left:10px;"><img src="__ROOT__/Public/img/shousuo_01.png" alt=""  data-toggle="modal" data-target="#myModal"></a> -->
                    <input type="submit" name="submit" value="  " id="submit" >
                </form>
                </div>

        </div>
    </div>
    <div class="color">
        <!-- OA树开始-->
<!--         <ul id="menu">
            <volist name="type" id="rows">
                <li class="l1" id="me_li" style="">
                    <a href="javascript:c(m{$rows.id});" id="m{$rows.id}" style="color: #000;">
                        <span class="span_fir">{$rows.name}</span>
                    </a>                    
                    <ul id="m{$rows.id}d" style="" class="U1 sec_ul">
                        <volist name="rows['info']" id="f">
                            <li class="l22" style="line-height: 50px;">
                                <a href="/con/a/?id={$f.id}" style="color: #005bac;">
                                    <span> {$f.title}</span>
                                </a>
                            </li>
                        </volist>
                    </ul>
                </li>
                
            </volist>
        </ul>
 -->
    </div> <!-- color -->

</div>
<div id="space"></div>
