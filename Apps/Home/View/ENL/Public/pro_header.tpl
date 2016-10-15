<style>
    * {
        font-family: Arial !important;
    }
    #submit {
        background:url("/Public/img/shousuo_01.png") no-repeat;
    }
    .color {
         height: 18px;
         background-color: #005bac;

    }
    .color ul li ul li.l22 {
        line-height: 10px !important;
        float: left;
        /*padding-left: 5%;*/
        padding-top: 1.8%;
        /*line-height: 50px;*/
        width: 540px;
        text-align: left;
    }
    .color ul li ul li.l22 a span{
        font-size: 16px;
        color: #005bac;
    }
    .color ul {
        position: fixed;

    }
    .color ul li.l1,.color ul li.ttt {
        float: left;
        padding-top: 15px;
        padding-bottom: 50px;
        color: #fff;
        font-size: 14px;
        line-height: 25px;
        /*margin-left: 26px;*/
        width:11.5%;
        padding-right: 5px;
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
    .sec_ul {
        display:none;
        height:95px;
        background-color:#ebebeb;
        position: fixed;
        width: 67.6%;
        left: 20%;
        top: 156px;

    }
    .color {
         height: 50px !important;
         background-color: #005bac;
    }
    #space {
        height: 230px;
    }

    #menu {
        width: 100%;
        margin-left: 19.3%;
        margin-right: 15%;
    }
    #nav ul li a{
        color: #fff;
    }
    #nav ul li{
        float: left;
        list-style: none;
        color: #fff;
        font-size: 16px;
        padding-right: 3%;
        line-height: 66px;
    }
    .prohead {
        background-color: #000;
        padding-left: 19.3%
    }
    .color ul li.l1:nth-child(6) ul li {
        width: auto;
        padding-right: 35px;
    }
    @media (min-width: 1600px) and (max-width: 1700px) {
        #menu {
            margin-left: 14.4%;
        }
        .sec_ul {
            left: 15.3%;
            width: 75.1%;
        }
    }
    @media (min-width: 1380px) and (max-width: 1599px) {
        #menu {
            margin-left: 10.25%;
        }
        .color ul li.l1, .color ul li.ttt {
            margin-left: 10px;
        }
        .sec_ul {
            left: 11.9%;
            width: 82%;
        }
        .prohead {
            padding-left: 12%
        }
/*        #nav ul li {
          padding-right: 2%;
          font-size: 14px;
        }*/
        .l1 {
            width: 14.6% !important;
        }
        .color li.l1:nth-child(2) {
            width: 13.2% !important;
        }
        .color li.l1:nth-child(3) {
            width: 11.5% !important;
        }
        .color li.l1:nth-child(4), .color li.l1:nth-child(5) {
            width: 13% !important;
        }
    }
    @media (min-width: 1200px) and (max-width: 1379px) {
        #menu {
            margin-left: 5.5%;
        }
        .sec_ul {
            left: 7%;
            width: 92%;
        }
        .color ul li.l1, .color ul li.ttt {
            margin-left: 5px;
        }
        .prohead {
            padding-left: 10%
        }
        .l1 {
            width: 16.5% !important;
        }
        .color li.l1:nth-child(2) {
            width: 15% !important;
        }
        .color li.l1:nth-child(3) {
            width: 13.5% !important;
        }
        .color li.l1:nth-child(4), .color li.l1:nth-child(5) {
            width: 15% !important;
        }
/*        #nav ul li {
          padding-right: 1%;
          font-size: 14px;
        }*/
    }
    @media (max-width: 1200px) {
        #space {
            height: 0 !important;
        }
    }

</style>
<div style="width: 100%;background-color: #000;position:fixed;z-index:1;top:0;height:84px;" class="visible-lg">
    <div style="padding: 0px;">
        <div class="col-sm-12 prohead">
            <div class="col-sm-2">
                <a href="/"><img src="__ROOT__/Public/img/logo_02.png" alt=""></a>
            </div>
            <div class="col-sm-7.5" id="nav">
                <ul>
                    <li><a href="/company" style="line-height: 66px;"><img src="__ROOT__/Public/img/shouye_logo1.ico" alt=""  style="padding-right: 4px;">Company</a></li>
                    <li><a href="/product" style="line-height: 66px;"><img src="__ROOT__/Public/img/chanping_logo1.ico" alt=""  style="padding-right: 4px;">Product</a></li>
                    <li><a href="/video" style="line-height: 66px;"><img src="__ROOT__/Public/img/shp_logo1.ico" alt=""  style="padding-right: 4px;">Video</a></li>
                    <li><a href="/news" style="line-height: 66px;"><img src="__ROOT__/Public/img/xinwen_logo1.ico" alt=""  style="padding-right: 4px;">News</a></li>
                    <li><a href="/service" style="line-height: 66px;"><img src="__ROOT__/Public/img/fuwu_logo1.ico" alt=""  style="padding-right: 4px;">Service</a></li>
                    <li><a href="/connect" style="line-height: 66px;"><img src="__ROOT__/Public/img/dianhua_logo1.ico" alt=""  style="padding-right: 4px;">Contact</a></li>
                </ul>
            </div>
            <!-- <div class="col-sm-1" style="padding-top: 22px;"></div> -->
                <div class="col-sm-3" style="padding-top: 22px;">
                    <form action="/Index/search" class="form-horizontal" method="post" enctype="multipart/form-data">
                        <input type="text" name="title" style="display:block;float:left" >
                        <!-- <a href="#" id="ddd"  style="padding-left:10px;"><img src="__ROOT__/Public/img/shousuo_01.png" alt=""  data-toggle="modal" data-target="#myModal"></a> -->
                        <input type="submit" name="submit" value="  " id="submit" >
                    </form>
                </div>

        </div>
    </div>
    <div class="color col-sm-12">
        <!-- OA树开始-->
        <ul id="menu">
            <volist name="type" id="rows">
                <li class="l1" id="me_li" style="border: 0">
                    <a href="javascript:c(m{$rows.id});" id="m{$rows.id}" style="color: #000;">
                        <span class="span_fir">{$rows.en_name}</span>
                    </a>
                    <ul id="m{$rows.id}d" style="" class="U1 sec_ul col-sm-12">
                        <volist name="rows['info2']" id="f">
                            <li class="l22">
                                <a href="/con/a/?id={$f.id}" style="color: #005bac;">
                                    <span> {$f.en_title}</span>
                                </a>
                            </li>
                        </volist>
                    </ul>
                </li>

            </volist>
        </ul>

    </div> <!-- color -->

</div>
<div id="space"></div>
<script>
    function clicksmallmenu() {
        $('#small_menu').hide(800);
        $('#big_menu').show(800);
    }
    function clickbigmenu() {
        $('#small_menu').show(800);
        $('#big_menu').hide(800);
    }
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.l1').hover(function() {
            $(this).find('.sec_ul').css('display', 'block');
        },
        function() {
            $(this).find('.sec_ul').css('display', 'none');
        });
    });
</script>
