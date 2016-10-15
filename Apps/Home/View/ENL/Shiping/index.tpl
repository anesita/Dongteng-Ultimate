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
    .color {
        height: 20px !important;
    }
    #menu {
        display: none;
    }
    #space {
        height: 96px;
    }
    @media (max-width: 1200px) {
        .vid-index {
            padding-top: 30px;
        }
    }
</style>

<div>
    <div class="container vid-index" style="position: relative;">
        <div style="padding-bottom: 16px;"></div>
        <volist id="rows" name="list2" key="name">
            <h4>{$key}</h4>
            <div class="col-sm-12 ptitle" style="padding: 0px;">
                <volist name="rows" id="rows2">
                    <a href="/vid/a/?id={$rows2.id}" style="color: #000;">
                        <div class="col-sm-3" style="float: left;padding: 0px;padding-right: 20px;">
                            <div style="border: 1px solid #d2d0d1;">
                                <img src="__ROOT__/Public/{$rows2.title_img}" style="width: 100%;padding: 14px;">
                                <p style="font-size: 16px;padding-left: 14px;padding-bottom: 10px;">{$rows2.en_title}</p>
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
