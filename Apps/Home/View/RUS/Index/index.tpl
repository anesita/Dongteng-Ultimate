<extend name="Base/common" />
<block name="main">
<include file="Public/yuying" />
<style>
    body{
        padding: 0px;
        margin: 0px;
        font-family:Verdana,微软雅黑; *font-family:微软雅黑,Verdana;background-color: #c9caca;
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
    a{
        text-decoration:none;
    }
    a:link{
        text-decoration:none;
    }
    a:visited{
        text-decoration:none;
    }
    a:hover{
        text-decoration:none;
    }
    a:active{
        text-decoration:none;
    }
     #ddr {
        display: none;
    }
    .cc:hover{
        background-color: #00488c !important;
        /*border: 1px solid #000ff0 !important;*/
    }
    #space {
            height: 66px;
    }
    .color {
        height: 20px !important;
    }
</style>
<script>
    function navinfo(id) {
        // $("#"+id).css("background","url(/dongteng1/Public/img/jianbian_06.png");
        $("#"+id).css("color","#fff");
        $("#"+id).css("position","relative");
        $("#"+id).css("top","-20px");
    }


    function outnav(id) {
        $("#"+id).css("background","#fff");
        $("#"+id).css("color","#000");
        $("#"+id).css("position","relative");
        $("#"+id).css("top","0px");
        $("#"+id).css("padding-top","0px");
        $("#"+id).children('span').css('display','inline-block');
        $("#"+id).children('span').css('padding-top','0px');
    }
</script>
<script type="text/javascript">

    function mOver(obj)
    {
    obj.style.animationPlayState="paused";
    }

    function mOut(obj)
    {
    obj.style.animationPlayState="running";
    }
</script>
<div id="animation" onmouseover="mOver(this)" onmouseout="mOut(this)" style="position: absolute">

</div>
<div class="visible-lg">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

            <div class="item active">
                <img src="__ROOT__/Public/{$list3.en_image}"  style="width: 100%;">
            </div>
            <volist id="rows2" name="list2">
            <div class="item">
                <img src="__ROOT__/Public/{$rows2.en_image}"  style="width: 100%;">
            </div>
            </volist>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <!-- <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <!-- <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container" id="imgtitle" style="margin: 0 auto;position: relative;top: -56px;left:0px;padding: 0px 15px 0px;">
        <volist name="list5" id="rows4">
            <div>
                <a href="/con/a/?id={$rows4.info_id}">
                    <div class="cc" style="width: 25%;background-color: #fff;line-height: 58px;height: 285px;padding-left: 16px; float: left;color: #0f0f0f;border-left: 1px solid #f0f0f0;" onmouseover="navinfo('a{$rows4.id}')" onmouseout="outnav('a{$rows4.id}')" id="a{$rows4.id}">
                        <span style="font-size: 16px;">{$rows4.title}</span>
                        <img src="__ROOT__/Public/{$rows4.image}" style="padding: 20px 13px 37px 13px;width: 100%;">
                    </div>
                </a>
            </div>
        </volist>
    </div>
    <div class="container" id="imgtitle2" >
    </div>
</div>
<!--./banner -->

<!--banner_small-->
<div class="hidden-lg">
    <div  class="carousel slide" data-ride="carousel" style="margin-bottom: 0px;">
        <!-- Indicators -->

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

            <div class="item active">
                <img src="__ROOT__/Public/{$list7.image}"  style="width: 100%;">
            </div>
            <volist id="rows6" name="list6">
                <div class="item">
                    <img src="__ROOT__/Public/{$rows6.image}"  style="width: 100%;">
                </div>
            </volist>
        </div>

    </div>
    <div>
        <volist name="list5" id="rows4">
            <div>
                <a href="/con/a/?id={$rows4.info_id}">
                    <div class="cc" style="width: 25%;background-color: #fff;line-height: 58px;height: 285px;padding-left: 16px; float: left;color: #0f0f0f;border-left: 1px solid #f0f0f0;" onmouseover="navinfo('a{$rows4.id}')" onmouseout="outnav('a{$rows4.id}')" id="a{$rows4.id}">
                        <span style="font-size: 16px;">{$rows4.title}</span>
                        <img src="__ROOT__/Public/{$rows4.image}" style="padding: 20px 13px 37px 13px;width: 100%;">
                    </div>
                </a>
            </div>
        </volist>
    </div>
</div>
<!--./banner_small -->

<!--main-->
<div class="visible-lg">
    <div class="container">
        <div class="col-sm-12" style="margin: 0px;padding: 0px;">
            <div class="col-sm-3" style="padding:0px;margin:0px;padding-right: 12px;padding-left: 0px;">
                <div style="padding-bottom: 15px;">
                    <a href="/news"><span style="color: #005bac;font-size: 16px;">Товар</span></a>
                </div>
                <a href="/news"><img src="__ROOT__/Public/{$data.title_img}" style="width: 100%;"></a>
                <div style="font-size: 14px;line-height: 34px;"><a href="/news/a/?id={$data.id}" style="color: #0f0f0f;">{$data.rus_title}</a></div>
                <div style="color: #5f6060;line-height: 20px;">{$data.create_time} | {$data.author} | {$data.click}</div>
                <a href="/news/a/?id={$data.id}"><p style="color: #323232;line-height: 18px;padding-top: 6px;font-size: 12px;">{$data.rus_small_content}</p></a>
                <a href="/news" style="color:#009cff; padding-top: 10px;">Больше</a>
            </div>
            <div class="col-sm-3" style="padding:0px;margin:0px;padding-right: 12px;padding-left: 0px;padding-top: 34px;">
                <ul class="col-sm-12" style="padding: 0px;margin: 0px;">
                    <volist id="rows" name="list">
                    <li style="float: left;width: 100%;line-height: 20px;">
                        <a href="/news/a/?id={$rows.id}" style="font-size: 12px;float: left;color: #323232;">{$rows.rus_title}</a>
                        <a href="#" style="font-size: 12px;float: right;color: #323232;;">{$rows.create_time}</a>
                    </li>
                    </volist>
                </ul>
                <a href="/news/" style="color:#009cff; padding-top: 10px;font-size: 12px;">Больше</a>
            </div>
            <div class="col-sm-3" style="padding:0px;margin:0px;padding-right: 12px;padding-left: 0px;">
                <div style="padding-bottom: 15px;">
                    <a href="/company"><span style="color: #005bac;font-size: 16px;">О нас</span></a>
                </div>
                <a href="/company"><img src="__ROOT__/Public/img/mianing_img02_28.png" style="width: 100%;"></a>
                <ul style="padding-left: 0px;padding-top: 14px;">
                    <li style="color: #323232;line-height: 18px;font-size: 12px;">Адрес: Китай, пров. Чжецзян г. Веньчжоу Жуйань ул. Цзиньцзышань 6</li>
                    <li style="color: #323232;line-height: 18px;font-size: 12px;">Мобильный телефон：+86-13818631306</li>
                    <li style="color: #323232;line-height: 18px;font-size: 12px;">Стационарный телефон：+86-577-65888482 65888481</li>
                    <li style="color: #323232;line-height: 18px;font-size: 12px;">Факс:+86-577-65888480</li>
                    <li style="color: #323232;line-height: 18px;font-size: 12px;">Эл. адрес: leo.chinamachinery@hotmail.com</li>
                </ul>
            </div>
            <div class="col-sm-3" style="padding:0px;margin: 0px;padding-right: 0px;padding-left: 0px;">
                <div style="padding-bottom: 15px;">
                    <a href="/connect"><span style="color: #005bac;font-size: 16px;">Видео</span></a>
                </div>
                <a href="/video/"><img id="callimg" src="__ROOT__/Public/img/maining_img03_30.png" style="width: 100%;"></a>
                <script>
                   $('#callimg').mouseover(
                           function getimg() {
                               $('#callimg').attr('src','__ROOT__/Public/img/maining_img03_31.png');
                           }
                   )

                   $('#callimg').mouseout(
                           function removeimg() {
                               $('#callimg').attr('src','__ROOT__/Public/img/maining_img03_30.png');
                           }
                   )

                </script>
            </div>
        </div>
    </div>
</div>
<!--./main -->

<!--main_small-->
<div style="clear:both" class="hidden-lg"></div>
<div class="hidden-lg">
    <div style="padding: 18px 38px 0px;">
        <span style="color: #005bac;font-size: 22px;line-height: 44px;">最新</span>
    </div>
    <div style="padding: 0px 38px;">
        <span style="color: #fff;font-size: 22px;line-height: 32px;">活动</span>
    </div>
    <div style="padding: 0px 38px;">
        <span style="color: #727171;font-size: 22px;line-height: 32px;">一种复印纸包装机专利</span>
        <div style="border-bottom: 2px dashed #fff;width: 100%;padding-top: 22px;">
        </div>
    </div>
    <div style="padding: 18px 38px 0px;">
        <span style="color: #fff;font-size: 22px;line-height: 32px;">展会</span>
    </div>
    <div style="padding: 18px 34px 48px;">
        <span style="color: #727171;font-size: 22px;line-height: 32px;">参加中国（广东）国际印刷技术展</span>
    </div>
</div>
<!--./main_small -->
<div style="clear:both" class="visible-lg"></div>
<div class="visible-lg">
    <div class="container" style="padding-top: 30px;">
        <div class="col-sm-12">
            <ul>
                <li style="font-size: 12px;color: #323232;float: left;">友情链接:</li>
                <li style="font-size: 12px;float: left;padding-right: 14px;"><a href="http://www.baidu.com" style="color: #323232;">百度</a></li>

            </ul>
        </div>
    </div>
</div>
</block>
