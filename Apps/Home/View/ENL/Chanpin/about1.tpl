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
         height: 90px !important;
         background-color: #005bac;
    }
    #space {
        height: 210px;
    }
    p {
        line-height:1.6em;
        font-family:微软雅黑;
    }
    .c_top p{
          line-height:20px;
          /*padding-bottom: -115px;*/
    }
    .c_top1 p {
    	line-height: 1.2em;
    }
    span {
    	/*line-height:12px;*/
    }
</style>
<div class="visible-lg">
    <div class="container" style="position: relative;">
        <div class="col-sm-12">

       {$info.en_content|htmlspecialchars_decode}

            <div style="clear: both;"></div>
            <div style="padding-top: 10px;">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"><strong>Highlight Spot</strong></a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><strong>Technical Parameters</strong></a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><strong>video</strong></a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" style="padding-top: 20px">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        {$info.en_youshi|htmlspecialchars_decode}
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        {$info.en_canshu|htmlspecialchars_decode}
                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">
                        {$info.shiping|htmlspecialchars_decode}
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
<!--./main -->
<!--main_small-->
<div class="hidden-lg">
    <div class="container" style="position: relative;">
        <div class="col-sm-12">

       {$info.en_content|htmlspecialchars_decode}

            <div style="clear: both;"></div>
            <div style="padding-top: 10px;">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"><strong>Highlight Spot</strong></a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><strong>Technical Parameters</strong></a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><strong>video</strong></a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content" style="padding-top: 20px">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        {$info.en_youshi|htmlspecialchars_decode}
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        {$info.en_canshu|htmlspecialchars_decode}
                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">
                        {$info.shiping|htmlspecialchars_decode}
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
</block>
