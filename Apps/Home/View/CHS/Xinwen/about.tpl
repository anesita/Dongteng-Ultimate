<extend name="Base/common" />
<block name="main">
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
    #space {
        height: 96px;
    }
    .color {
        height: 20px !important;
    }
</style>

<div class="visible-lg">
    <div class="container">
        <div style="padding-top: 48px;padding-bottom: 32px;">
            <h1 style="margin: 0px;font-size: 32px;">{$list.title|htmlspecialchars_decode}</h1>
            <div style="padding-top: 20px;"><span style="font-size: 12px;">{$list.create_time} 点击量:{$list.click} 作者:{$list.author}</span></div>
            <p style="padding-top: 32px;">
                {$list.content|htmlspecialchars_decode}
            </p>
        </div>

    </div>
</div>
<!--./main -->
<!--main_small-->
<div class="hidden-lg">
    <div class="container" style="width: 96%;">
        <div style="padding-top: 68px;">
            <h1 style="font-size: 3.8rem;margin: 0px;">{$list.title|htmlspecialchars_decode}</h1>
            <div style="padding-top: 20px;"><span style="font-size: 1.8rem;line-height: 3rem;">{$list.create_time} 点击量:{$list.click} 作者:{$list.author}</span></div>
            <p style="padding-bottom: 30px;">
                <div style="font-size: 2.8rem;line-height: 3.6rem;"> {$list.content|htmlspecialchars_decode}</div>
            </p>
        </div>
    </div>
</div>
</block>