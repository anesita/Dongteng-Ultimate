<div class="navbar" role="navigation">

    <div class="container-fluid">

        <ul class="nav navbar-nav navbar-actions navbar-left">
            <li class="visible-md visible-lg"><a href="index.html#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
            <li class="visible-xs visible-sm"><a href="index.html#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>
        </ul>

        <!-- <form class="navbar-form navbar-left">
            <button type="submit" class="fa fa-search"></button>
            <input type="text" class="form-control" placeholder="Search..."></a>
        </form> -->
        <ul class="nav navbar-nav navbar-right">


            <li class="dropdown visible-md visible-lg">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">欢迎您: <?php echo $_SESSION['admin']['username'];?> </a>

                <ul class="dropdown-menu">
                    <li class="dropdown-menu-header">
                        <strong>操作</strong>
                    </li>

                    <li><a href="__MODULE__/login/logout/"><i class="fa fa-sign-out"></i> 退出登陆</a></li>
                </ul>
            </li>
            <li><a href="__MODULE__/login/logout/"><i class="fa fa-power-off"></i></a></li>
        </ul>

    </div>

</div>
