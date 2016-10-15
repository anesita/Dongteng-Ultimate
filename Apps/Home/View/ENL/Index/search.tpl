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
<h2>The resoult for Search</h2>
<h3>Product</h3>
<volist name="data" id="vo" empty="none">
	<ul>
		<li><a href="__MODULE__/Chanpin/about1/?id={$vo.id}">{$vo.en_title}</a></li>
	</ul>
</volist>
<h3>News</h3>
<volist name="res" id="vo" empty="none">
	<ul>
		<li><a href="__MODULE__/Xinwen/about/?id={$vo.id}">{$vo.en_title}</a></li>
	</ul>
</volist>
</div>
</block>
