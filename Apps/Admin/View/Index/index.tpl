<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 首页</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">首页</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box red-bg">
                    <i class="fa fa-thumbs-o-up"></i>
                    <div class="count"></div>
                    <div class="title"></div>
                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box green-bg">
                    <i class="fa fa-cubes"></i>
                    <div class="count"></div>
                    <div class="title"></div>
                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box blue-bg">
                    <i class="fa fa-cloud-download"></i>
                    <div class="count"></div>
                    <div class="title"></div>
                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box magenta-bg">
                    <i class="fa fa-shopping-cart"></i>
                    <div class="count"></div>
                    <div class="title"></div>
                </div><!--/.info-box-->
            </div><!--/.col-->
        </div><!--/.row-->
        <div class="row">
            <div class="col-lg-9 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-refresh red"></i><h2><strong>服务器实时资源占用比</strong></h2>
                        <div class="panel-actions">
                            <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>

                    <div class="panel-body">
                        </br/>
                        <div id="realtime-update" style="height:200px;color:#484848;"></div>
                    </div>
                </div>
            </div><!--/col-->
            <div class="col-lg-3 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body white-bg">
                        </br/>
                        <div class="graph-container text-center">
                            <div id="hero-donut" class="graph" style="height:236px;"></div>
                        </div>
                    </div>
                </div>
            </div><!--/.col-->
        </div><!--/.row-->
        <div class="row" style="display: none">
            <div class="col-lg-3 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body weather widget">
                        <div class="today text-center">
                            <h4 class="blue"><strong><i class="fa fa-map-marker fa-3x red"></i> Nevada</strong></h4>
                            <i class="climacon snow moon"></i>
                            <div class="row">
                                <div class="col-xs-5 text-right date">
                                    <div>Thursday</div>
                                    <small>July, 10</small>
                                </div><!--/.col-->

                                <div class="col-xs-7 text-left temp">
                                    15°C
                                </div><!--/.col-->
                            </div><!--/.row-->
                        </div>
                        <div class="forecast row text-center">
                            <div class="col-xs-4">
                                <i class="climacon lightning sun"></i>
                                <span class="label label-primary">MON</span>
                                <p>40°C</p>
                            </div><!--/.col-->

                            <div class="col-xs-4">
                                <i class="climacon snow moon"></i>
                                <span class="label label-primary">TUE</span>
                                <p>18°C</p>
                            </div><!--/.col-->

                            <div class="col-xs-4">
                                <i class="climacon hail sun"></i>
                                <span class="label label-primary">WED</span>
                                <p>25°C</p>
                            </div><!--/.col-->
                        </div>
                    </div>
                </div>
            </div><!--/.col-->

            <div class="col-lg-3 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body weather widget">
                        <div class="today text-center">
                            <h4 class="blue"><strong><i class="fa fa-map-marker fa-3x red"></i> California</strong></h4>
                            <i class="climacon rain"></i>
                            <div class="row">
                                <div class="col-xs-5 text-right date">
                                    <div>Thursday</div>
                                    <small>July, 10</small>
                                </div><!--/.col-->

                                <div class="col-xs-7 text-left temp">
                                    18°C
                                </div><!--/.col-->
                            </div><!--/.row-->
                        </div>

                        <div class="forecast row text-center">
                            <div class="col-xs-4">
                                <i class="climacon lightning sun"></i>
                                <span class="label label-primary">MON</span>
                                <p>35°C</p>
                            </div><!--/.col-->

                            <div class="col-xs-4">
                                <i class="climacon fog sun"></i>
                                <span class="label label-primary">TUE</span>
                                <p>28°C</p>
                            </div><!--/.col-->

                            <div class="col-xs-4">
                                <i class="climacon rain"></i>
                                <span class="label label-primary">WED</span>
                                <p>17°C</p>
                            </div><!--/.col-->
                        </div>
                    </div>
                </div>
            </div><!--/.col-->

            <div class="col-lg-3 col-md-6">
                <div class="panel panel-default">
                    <div class="panel-body text-center" style="height:230px">
                        <h2 class="lime">Sold Out</h2>
                        <div style="width:300px;left:50%;position:absolute;margin-left:-150px;">
                            <canvas id="gauge1"></canvas>
                        </div>
                        <span class="pull-left"><strong class="blue">$256.256,25</strong></span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-o-up text-success"></i> 52%</span>
                    </div>
                </div>
            </div><!--/.col-->

            <div class="col-lg-3 col-md-6">
                <div class="panel panel-default">
                    <div class="panel-body text-center" style="height:230px">
                        <h2 class="lime">Profit</h2>
                        <div style="width:300px;left:50%;position:absolute;margin-left:-150px;">
                            <canvas id="gauge2"></canvas>
                        </div>
                        <span class="pull-left"><strong class="blue">$125.365,56</strong></span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-o-up text-success"></i> 70%</span>
                    </div>

                </div>

            </div><!--/.col-->
        </div><!--/row-->

        <div class="row" style="display: none">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-bar-chart-o red"></i><strong>xCharts</strong></h2>
                        <div class="panel-actions">
                            <a href="charts-xcharts.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="charts-xcharts.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="charts-xcharts.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <figure class="demo" id="chart" style="height: 300px"></figure>
                    </div>
                </div>
            </div><!--/col-->
        </div><!--/row-->


        <div class="row" style="display: none">

            <div class="col-lg-6 col-md-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-spinner red"></i><strong>In Progress</strong></h2>
                        <div class="panel-actions">
                            <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                        <ul class="nav nav-tabs" id="recent">
                            <li class="active"><a href="index.html#tasks">Tasks</a></li>
                            <li><a href="index.html#tickets">Tickets</a></li>
                        </ul>
                    </div>
                    <div class="panel-body">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tasks">
                                <table class="table bootstrap-datatable datatable small-font">
                                    <thead>
                                    <tr>
                                        <th>Task</th>
                                        <th>Assigned to</th>
                                        <th>Progress</th>
                                        <th class="center">Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Package Usage</td>
                                        <td>Jenny Coe</td>
                                        <td>
                                            <div class="progress thin">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 73%">
                                                    <span class="sr-only">73% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-info">
                                            Active
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Payment Process</td>
                                        <td>Jack Key</td>
                                        <td>
                                            <div class="progress thin">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                                                    <span class="sr-only">95% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-success">
                                            Active
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Web Development</td>
                                        <td>Jossy</td>
                                        <td>
                                            <div class="progress thin">
                                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="27" aria-valuemin="0" aria-valuemax="100" style="width: 27%">
                                                    <span class="sr-only">27% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-warning">
                                            Pending
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Web Error</td>
                                        <td>Alex Bram</td>
                                        <td>
                                            <div class="progress thin">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                                    <span class="sr-only">50% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-primary">
                                            Active
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Storage Capacity</td>
                                        <td>Jimmy Doe</td>
                                        <td>
                                            <div class="progress thin">
                                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 73%">
                                                    <span class="sr-only">73% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-danger">
                                            Canceled
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Disk Performance</td>
                                        <td>Marcell</td>
                                        <td>
                                            <div class="progress thin">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                    <span class="sr-only">40% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-primary">
                                            Active
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Yearly Services</td>
                                        <td>Morgan</td>
                                        <td>
                                            <div class="progress thin">
                                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="27" aria-valuemin="0" aria-valuemax="100" style="width: 27%">
                                                    <span class="sr-only">27% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-warning">
                                            Pending
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane" id="tickets">
                                <table class="table bootstrap-datatable datatable small-font">
                                    <thead>
                                    <tr>
                                        <th>Status</th>
                                        <th>Date</th>
                                        <th>Description</th>
                                        <th>User</th>
                                        <th>Number</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><span class="label label-success">Complete</span></td>
                                        <td>May 10, 2014 18:05</td>
                                        <td>Disk problem</td>
                                        <td>Gerry</td>
                                        <td><b>[#26915]</b></td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-warning">Suspended</span></td>
                                        <td>May 10, 2014 18:05</td>
                                        <td>Hosting Update</td>
                                        <td>Sarah</td>
                                        <td><b>[#25986]</b></td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-danger">Rejected</span></td>
                                        <td>May 10, 2014 18:05</td>
                                        <td>Trouble Connection</td>
                                        <td>Smith</td>
                                        <td><b>[#23695]</b></td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-info">In progress</span></td>
                                        <td>May 10, 2014 18:05</td>
                                        <td>Domain Performance </td>
                                        <td>George</td>
                                        <td><b>[#24587]</b></td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-success">Complete</span></td>
                                        <td>May 10, 2014 18:05</td>
                                        <td>Paypal Registration</td>
                                        <td>Justin</td>
                                        <td><b>[#25698]</b></td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-success">Complete</span></td>
                                        <td>May 10, 2014 18:05</td>
                                        <td>Server Problem</td>
                                        <td>Elie</td>
                                        <td><b>[#25367]</b></td>
                                    </tr>
                                    <tr>
                                        <td><span class="label label-info">In progress</span></td>
                                        <td>May 10, 2014 18:05</td>
                                        <td>Design Error</td>
                                        <td>Reinald</td>
                                        <td><b>[#25639]</b></td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div><!--/col-->
            <div class="col-md-3">

                <div class="social-box facebook">
                    <i class="fa fa-facebook"></i>
                    <ul>
                        <li>
                            <strong>256k</strong>
                            <span>friends</span>
                        </li>
                        <li>
                            <strong>359</strong>
                            <span>feeds</span>
                        </li>
                    </ul>
                </div><!--/social-box-->

            </div><!--/col-->

            <div class="col-md-3">

                <div class="social-box twitter">
                    <i class="fa fa-twitter"></i>
                    <ul>
                        <li>
                            <strong>1562k</strong>
                            <span>followers</span>
                        </li>
                        <li>
                            <strong>2562</strong>
                            <span>tweets</span>
                        </li>
                    </ul>
                </div><!--/social-box-->

            </div><!--/col-->

            <div class="col-md-3">

                <div class="social-box linkedin">
                    <i class="fa fa-linkedin"></i>
                    <ul>
                        <li>
                            <strong>8926</strong>
                            <span>contacts</span>
                        </li>
                        <li>
                            <strong>6253</strong>
                            <span>feeds</span>
                        </li>
                    </ul>
                </div><!--/social-box-->

            </div><!--/col-->

            <div class="col-md-3">

                <div class="social-box google-plus">
                    <i class="fa fa-google-plus"></i>
                    <ul>
                        <li>
                            <strong>962</strong>
                            <span>followers</span>
                        </li>
                        <li>
                            <strong>256</strong>
                            <span>circles</span>
                        </li>
                    </ul>
                </div><!--/social-box-->

            </div><!--/col-->
        </div><!--/row-->

        <div class="row" style="display: none">
            <div class="col-lg-4 col-md-12">
                <div class="panel panel-default calendar">
                    <div class="calendar-small"></div>
                    <div class="list">
                        <ul>
                            <li>
                                <label class="custom-checkbox-item">
                                    <input class="custom-checkbox" type="checkbox"/>
                                    <span class="custom-checkbox-mark"></span>
                                    <span class="custom-checkbox-desc">Lunch With Clients</span>
                                    <i class="fa fa-thumbs-o-up"></i>
                                </label>
                            </li>
                            <li>
                                <label class="custom-checkbox-item">
                                    <input class="custom-checkbox" type="checkbox"/>
                                    <span class="custom-checkbox-mark"></span>
                                    <span class="custom-checkbox-desc">Meeting With All Staff</span>
                                    <i class="fa fa-space-shuttle"></i>
                                </label>
                            </li>
                            <li>
                                <label class="custom-checkbox-item">
                                    <input class="custom-checkbox" type="checkbox"/>
                                    <span class="custom-checkbox-mark"></span>
                                    <span class="custom-checkbox-desc">Factory Birthday</span>
                                    <i class="fa fa-star-half-o"></i>
                                </label>
                            </li>
                        </ul>
                        <div class="row">
                            <div class="col-xs-6">
                                <button type="button" class="btn btn-success btn-block">Accept</button>
                            </div><!--/col-->
                            <div class="col-xs-6">
                                <button type="button" class="btn btn-default btn-block">Discard</button>
                            </div><!--/col-->
                        </div><!--/row-->
                    </div>
                </div>
            </div><!--/col-->

            <div class="col-lg-8 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-check red"></i><strong>To Do</strong></h2>
                        <div class="panel-actions">
                            <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body no-padding">
                        <div class="todo-list">
                            <div class="header">Today</div>
                            <ul id="todo-2" class="todo-list-tasks">
                                <li>
                                    <label class="custom-checkbox-item pull-left">
                                        <input class="custom-checkbox" type="checkbox"/>
                                        <span class="custom-checkbox-mark"></span>
                                    </label>
                                    <span class="desc">Add slider home to creative template</span>
                                </li>
                                <li>
                                    <label class="custom-checkbox-item pull-left">
                                        <input class="custom-checkbox" type="checkbox"/>
                                        <span class="custom-checkbox-mark"></span>
                                    </label>
                                    <span class="desc">Change portfolio image with new animation</span>
                                </li>
                                <li>
                                    <label class="custom-checkbox-item pull-left">
                                        <input class="custom-checkbox" type="checkbox"/>
                                        <span class="custom-checkbox-mark"></span>
                                    </label>
                                    <span class="desc">Fixed JavaScript problem for index page</span>
                                </li>
                            </ul>
                            <div class="header">Tommorow</div>
                            <ul id="todo-3" class="todo-list-tasks">
                                <li>
                                    <label class="custom-checkbox-item pull-left">
                                        <input class="custom-checkbox" type="checkbox"/>
                                        <span class="custom-checkbox-mark"></span>
                                    </label>
                                    <span class="desc">Update sliding menu with newest</span>
                                </li>
                                <li>
                                    <label class="custom-checkbox-item pull-left">
                                        <input class="custom-checkbox" type="checkbox"/>
                                        <span class="custom-checkbox-mark"></span>
                                    </label>
                                    <span class="desc">Change navigation structure on header</span>
                                </li>
                            </ul>
                            <div class="header">Completed</div>
                            <ul class="completed"></ul>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Add new task">
                        </div>
                        <div class="btn-group">
                            <button type="button" class="btn btn-link"><i class="fa fa-wheelchair"></i></button>
                            <button type="button" class="btn btn-link"><i class="fa fa-file-text"></i></button>
                            <button type="button" class="btn btn-link"><i class="fa fa-heart"></i></button>
                        </div>

                        <div class="pull-right">
                            <button type="button" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </div>
            </div><!--/col-->
        </div><!--/row-->
    </div>
    <!-- end: Content -->
</block>