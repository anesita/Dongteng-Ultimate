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
    @media (max-width: 1200px) {
    	.edui-faked-video {
    		width: 100%
    	}
    }
</style>

<div class="visible-lg">
    <div class="container" style="position: relative;padding-top: 40px;">
        <div style="position: absolute;left: -250px;top: 40px;width: 20%;display: inline-block;">

        </div>
        <div class="col-sm-12" style="padding: 0px;">
            {$info.content|htmlspecialchars_decode}
        </div>

    </div>
</div>
<!--./main -->
<!--main_small-->
<div class="hidden-lg">
    <div class="container" style="position: relative;padding-top: 40px;">
        <div style="position: absolute;left: -250px;top: 40px;width: 20%;display: inline-block;">

        </div>
        <div class="col-sm-6" style="padding: 0px;">
            {$info.content|htmlspecialchars_decode}
        </div>

    </div>
</div>
</block>