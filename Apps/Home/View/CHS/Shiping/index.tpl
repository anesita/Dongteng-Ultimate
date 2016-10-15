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
    .color {
        height: 20px !important;
    }
    #menu {
        display: none;
    }
    #space {
        height: 96px;
    }
</style>

<div>
    <div class="container" style="position: relative;">
        <div style="padding-top: 40px;padding-bottom: 16px;"></div>
        <volist id="rows" name="list" key="name">
            <h4>{$Think.lang.$key}</h4>
            <div class="col-sm-12" style="padding: 0px;">
                <volist name="rows" id="rows2">
                    <a href="/vid/a/?id={$rows2.id}" style="color: #000;">
                        <div class="col-sm-3" style="float: left;padding: 0px;padding-right: 20px;">
                            <div style="border: 1px solid #d2d0d1;">
                                <img src="__ROOT__/Public/{$rows2.title_img}" style="width: 100%;padding: 14px;">
                                <p style="font-size: 16px;padding-left: 14px;padding-bottom: 10px;">{$rows2.title}</p>
                            </div>

                        </div>
                    </a>
                </volist>
            </div>
            <div style="height: 14px;clear: both;padding-top: 60px;padding-bottom: 13px;">
                <div style="height: 1px; width: 100%;background: #cdc9c4;"></div>
            </div>
        </volist>
    </div>
</div>
</block>
