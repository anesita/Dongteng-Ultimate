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
    a{
        text-decoration:none;
        color: blue;
    }
    a:link{
        text-decoration:none;
        color: red;
    }
    a:visited{
        text-decoration:none;
    }
    a:hover{
        text-decoration:none;
        color: red;
    }
    a:active{
        text-decoration:none;
    }
    .footer {
    	position: absolute;
    	bottom: 0
    }
	body {
		background: url("/Public/img/sea_bcc.jpg");
	}
    .sea {
		padding-left: 20%;
		padding-top: 10%;
		
    }
    .sea ul {
    	padding-left: 3%;
    }
    h3 {
    	padding-left: 2%;
    }
    h2 {
		color: yellow;
    }
    .sea_sf a{
    	color: #000
    }
    .sea_f ul li {
    	color: #000;
    }
    .color {
        height: 20px !important;
    }
</style>

<div class="space"></div>
<div class="sea">
<h2>搜索结果：</h2>
<h3>产品</h3>
<volist name="data" id="vo" empty="没有相关分类">
	<ul>
		<li><a href="__MODULE__/Chanpin/about1/?id={$vo.id}">{$vo.title}</a></li>
	</ul>
</volist>
<h3>新闻</h3>
<volist name="res" id="vo" empty="没有相关分类">
	<ul>
		<li><a href="__MODULE__/Xinwen/about/?id={$vo.id}">{$vo.title}</a></li>
	</ul>
</volist>
</div>
</block>
