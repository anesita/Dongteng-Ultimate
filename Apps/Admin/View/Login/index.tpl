
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>东腾网站后台管理系统 -- 登陆</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="__ROOT__/Public/assets/css/reset.css">
        <link rel="stylesheet" href="__ROOT__/Public/assets/css/supersized.css">
        <link rel="stylesheet" href="__ROOT__/Public/assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>东腾网站后台管理系统登陆页面</h1>
            <form action="__MODULE__/login/dologin/" method="post">
                <input type="text" name="username" class="username" placeholder="请输入用户名">
                <input type="password" name="password" class="password" placeholder="请输入密码">
                <button type="submit">登陆</button>
                <div class="error"><span>+</span></div>
            </form>
        </div>


        <!-- Javascript -->
        <script src="__ROOT__/Public/assets/js/jquery-1.8.2.min.js"></script>
        <script src="__ROOT__/Public/assets/js/supersized.3.2.7.min.js"></script>
        <script src="__ROOT__/Public/assets/js/supersized-init.js"></script>
        <script src="__ROOT__/Public/assets/js/scripts.js"></script>

    </body>

</html>

