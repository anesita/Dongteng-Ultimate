<div class="visible-lg" style="position: fixed;right: 0px;top: 200px;z-index:9999999999999999;float: right;">
<form action="{:U()}" class="form-horizontal" method="post" enctype="multipart/form-data">
    <div id="cn" style="position:absolute;right:10px;top:0px;"><img src="__ROOT__/Public/img/guoqi1.png" style="width:30px;"></div>
    <input type="submit" name="theme" value="CHS" id="cn_big" style="display: none;position:absolute;right:10px;width: 60px;background-image: url(/Public/img/guoqi1-1.png);background-size: 65px;background-position: -1px -4px;text-indent:-9999px;">

    <div id="two" style="position:absolute;right:10px;top:29px;"><img src="__ROOT__/Public/img/guoqi2.png" style="width:30px;"></div>
    <input type="submit" name="theme" value="ENL" id="two_big" style="display: none;position:absolute;right:10px;top:29px;width: 60px;background-image: url(/Public/img/guoqi2-1.png);background-size: 65px;background-position: -1px -4px;text-indent:-9999px;">

<!--     <div id="three" style="position:absolute;right:10px;top:58px;"><img src="__ROOT__/Public/img/guoqi3.png" style="width:30px;"> </div>
    <input type="submit" name="theme" value="RUS" id="three_big" style="display: none;position:absolute;right:10px;top:58px;width: 60px;background-image: url(/Public/img/guoqi3-1.png);background-size: 65px;background-position: -1px -4px;text-indent:-9999px;">

    <div id="four" style="position:absolute;right:10px;top:87px;"><img src="__ROOT__/Public/img/guoqi4.png" style="width:30px;"> </div>
    <input type="submit" name="lang" value="" id="four_big" style="display: none;position:absolute;right:10px;top:87px;width: 60px;background-image: url(/Public/img/guoqi4-1.png);background-size: 65px;background-position: -1px -4px;text-indent:-9999px;">

    <div id="five" style="position:absolute;right:10px;top:116px;"><img src="__ROOT__/Public/img/guoqi5.png" style="width:30px;"> </div>
    <input type="submit" name="lang" value="" id="five_big" style="display: none;position:absolute;right:10px;top:116px;width: 60px;background-image: url(/Public/img/guoqi5-1.png);background-size: 65px;background-position: -1px -4px;text-indent:-9999px;">

    <div id="six" style="position:absolute;right:10px;top:145px;"><img src="__ROOT__/Public/img/guoqi6.png" style="width:30px;"> </div>
    <input type="submit" name="lang" value="" id="six_big" style="display: none;position:absolute;right:10px;top:145px;width: 60px;background-image: url(/Public/img/guoqi5-1.png);background-size: 65px;background-position: -1px -4px;text-indent:-9999px;"> -->
</form>
</div>
<script>
    $('#cn').mouseover(function () {
        $('#cn').hide(300);
        $('#cn_big').show(300);
    })
    $('#cn_big').mouseout(function () {
        $('#cn').show(300);
        $('#cn_big').hide(300);

    })

    $('#two').mouseover(function () {
        $('#two').hide(300);
        $('#two_big').show(300);
    })
    $('#two_big').mouseout(function () {
        $('#two').show(300);
        $('#two_big').hide(300);

    })

    $('#three').mouseover(function () {
        $('#three').hide(300);
        $('#three_big').show(300);
    })
    $('#three_big').mouseout(function () {
        $('#three').show(300);
        $('#three_big').hide(300);

    })

    $('#four').mouseover(function () {
        $('#four').hide(300);
        $('#four_big').show(300);
    })
    $('#four_big').mouseout(function () {
        $('#four').show(300);
        $('#four_big').hide(300);

    })

    $('#five').mouseover(function () {
        $('#five').hide(300);
        $('#five_big').show(300);
    })
    $('#five_big').mouseout(function () {
        $('#five').show(300);
        $('#five_big').hide(300);

    })

    $('#six').mouseover(function () {
        $('#six').hide(300);
        $('#six_big').show(300);
    })
    $('#six_big').mouseout(function () {
        $('#six').show(300);
        $('#six_big').hide(300);

    })

</script>