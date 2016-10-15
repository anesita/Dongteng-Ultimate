<extend name="Base/common" />
<block name="main">
<include file="Public/yuying" />
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
    a{
        color: #000;
        text-decoration: none ;
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
    #space {
        height: 96px;
    }
    .color {
        height: 20px !important;
    }
</style>

<div class="visible-lg">
    <div class="container"  style="padding-bottom: 390px;">
        <div style="padding-top: 50px;">
            <h1 style="margin: 0px;font-size: 32px;">博览会和事件</h1>
        </div>
        <div style="padding-top: 14px;">
            <span style="font-size: 16px;line-height: 26px;">您如果希望报道东腾相关信息，那么您可以在这里查看所有的新闻报导、数字新闻包、和最新图片。您也可以随时直接与我们联系，我们愿意为您提供您需要的信息，如专业文章、通讯报道以及新闻背景材料，也可以安排专人接受采访。</span>
        </div>
        <volist id="rows" name="list">
            <a href="/news/a/?id={$rows.id}">
        <div class="col-sm-12" style="margin: 0px;padding: 0px;padding-top: 38px;">
            <div class="col-sm-3" style="padding: 0px;margin: 0px;">
                <img src="__ROOT__/Public/{$rows.title_img}" style="width: 100%;">
            </div>
            <div class="col-sm-6" style="margin: 0px;padding: 0px;padding-left: 26px;">
                <div style="padding-top: 20px;">
                    <h1 style="font-size: 18px;margin: 0px;float: left">{$rows.title}</h1><br>
                    <div style="padding-top: 12px;"><span style="font-size: 12px;">{$rows.create_time} 点击量:{$rows.click} 作者:{$rows.author}</span></div>
                </div>
                <div style="padding-top: 20px;">
                    <span style="font-size: 14px;padding-top: 28px;">{$rows.small_content}</span>
                </div>

            </div>
        </div>
            </a>
        </volist>
    </div>
</div>
<!--./main -->
<!--main_small-->
<div class="hidden-lg">
    <div class="container" style="width: 96%;">
        <div style="padding-top: 24px;">
            <h1 style="font-size: 2.6rem;margin: 0px;line-height: 5.4rem;">博览会和事件</h1>
        </div>
        <div>
            <span style="font-size: 1.6rem;line-height: 2rem;">您如果希望报道东腾相关信息，那么您可以在这里查看所有的新闻报导、数字新闻包、和最新图片。您也可以随时直接与我们联系，我们愿意为您提供您需要的信息，如专业文章、通讯报道以及新闻背景材料，也可以安排专人接受采访。</span>
        </div>
        <volist id="rows" name="list">
            <a href="__MODULE__/xinwen/about/?id={$rows.id}">
        <div class="col-xs-12" style="padding: 0px;margin: 0px;">
            <div class="col-xs-6" style="padding: 0px;margin: 0px;">
                <img src="__ROOT__/Public/{$rows.title_img}" style="width: 100%;">
            </div>
            <div class="col-xs-6" style="padding: 0px;margin: 0px;padding-left: 16px;">
                <h1 style="margin: 0px;font-size: 16px;">{$rows.title}</h1>
                <span style="font-size: 12px;">{$rows.create_time} 点击量:{$rows.click}</span>
                <div><span style="font-size: 12px;">{$rows.small_content}</span></div>
            </div>
        </div>
        </a>
        </volist>
    </div>
</div>
</block>
