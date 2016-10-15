<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 反馈意见管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="__MODULE__/Lianxi/index/">反馈意见管理</a></li>
                    <li><a href="index.html">反馈意见列表</a></li>
                </ol>
            </div>
        </div>
        <div  style="padding-bottom: 13px;"><a href="__MODULE__/Lianxi/addnews/" type="button" id="btn-quick-event" class="btn btn-primary"><i class="fa fa-plus-square"></i> 添加文章</a></div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-table red"></i><span class="break"></span><strong>反馈意见列表</strong></h2>
                        <div class="panel-actions">
                            <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>

                    <div class="panel-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>id</th>
                                <th>姓名</th>
                                <th>电子邮件</th>
                                <th>手机号码</th>
                                <th>国家</th>
                                <th>省/直辖市</th>
                                <th>意向机型</th>
                                <th>反馈意见</th>
                                <th>反馈时间</th>
                               
                            </tr>
                            </thead>
                            <tbody>
                            <volist name="list" id="vo">
                                <tr>
                                    <td>{$vo.id}</td>
                                    <td>{$vo.family}{$vo.username}</td>
                                    <td>{$vo.email}</td>
                                    <td>{$vo.phone}</td>
                                    <td>{$vo.country}</td>
                                    <td>{$vo.province}</td>
                                    <td>{$vo.model}</td>
                                    <td>{$vo.requirement}</td>
                                    <td>{$vo.add_time}</td>
                                   <td>
                                      <!--  <a href="__MODULE__/Lianxi/showlist/?id={$vo.id}" class="btn btn-danger">查看</a>  -->
                                       <a href="__MODULE__/Lianxi/delete/?id={$vo.id}" class="btn btn-success">删除</a>
                                   </td>
                                </tr>
                            </volist>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!--/col-->
        </div><!--/row-->
    </div>
    <!-- end: Content -->
</block>