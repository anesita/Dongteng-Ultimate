<extend name="Base/common" />
<block name="main">
<include file="Public/yuying" />
<style>
    body{
        padding: 0px;
        margin: 0px;
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
    .pro_top {
        width: 100%;
        height: 200px;
        margin-top: 20px;
    }
    .color {
         height: 90px !important;
         background-color: #005bac;
    }
    #space {
        height: 135px;
    }
    .ptitle a:nth-child(3) p{
        font-size: 12px !important;
    }
    .ptitle:nth-child(5) a:nth-child(1) p{
        font-size: 12px !important;
    }
    @media (max-width: 1200px) {
        .pro_title {
            height: 265px !important;
        }
        #space {
            height: 0 !important;
        }
        .pro_index {
            padding-top: 30px !important;
        }
    }
</style>
<!--main-->
<div class="pro_index" style="padding-top: 90px;">
    <div class="container" style="position: relative;">
        <!-- <div style="padding-top: 40px;padding-bottom: 16px;"></div> -->
        <volist id="rows" name="list3" key="name">
            <h4>{$key}</h4>
            <div class="col-sm-12 ptitle" style="padding: 0px;">
                <volist name="rows" id="rows2">
                    <a href="/con/a/?id={$rows2.id}" style="color: #000;">
                        <div class="col-sm-3" style="float: left;padding: 0px;padding-right: 20px;height: 216px;">
                            <div class="pro_title" style="border: 1px solid #d2d0d1;height: 220px;">
                                <img src="__ROOT__/Public/{$rows2.title_img}" style="width: 100%;padding: 14px;height:150px;">
                                <p style="font-size: 16px;padding-left: 14px;padding-bottom: 10px;">{$rows2.rus_title}</p>
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
