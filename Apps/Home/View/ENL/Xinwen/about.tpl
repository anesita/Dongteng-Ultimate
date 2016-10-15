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
    #space {
        height: 96px;
    }
    .color {
        height: 20px !important;
    }
</style>

<div class="visible-lg">
    <div class="container">
        <div>
            <h1 style="margin: 0px;font-size: 32px;">{$list.en_title}</h1>
            <div style="padding-top: 20px;"><span style="font-size: 12px;">{$list.create_time} Click rate:{$list.click} Author:{$list.author}</span></div>
            <p style="padding-top: 32px;">
                {$list.en_content}
            </p>
        </div>
    </div>
</div>
<!--./main -->
<!--main_small-->
<div class="hidden-lg">
    <div class="container" style="width: 96%;">
        <div style="padding-top: 68px;">
            <h1 style="font-size: 3.8rem;margin: 0px;">{$list.en_title}</h1>
            <div style="padding-top: 20px;"><span style="font-size: 1.8rem;line-height: 3rem;">{$list.create_time} Click rate:{$list.click} Author:{$list.author}</span></div>
            <p>
                <div style="font-size: 2.8rem;line-height: 3.6rem;"> {$list.en_content}</div>
            </p>
        </div>
    </div>
</div>
</block>
