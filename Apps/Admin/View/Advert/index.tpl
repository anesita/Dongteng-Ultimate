<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 广告管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="__MODULE__/Advert/index/">广告管理</a></li>
                    <li><a href="index.html">广告列表</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-table red"></i><span class="break"></span><strong>广告列表</strong></h2>
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
                                <th>广告标题</th>
                                <th>广告位置</th>
                                <th>广告小图</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <volist name="list" id="list">
                                <tr>
                                    <td>{$list.id}</td>
                                    <td>{$list.title}</td>
                                    <td>{$list.where}</td>
                                    <td>{$list.type}</td>
                                    <td><a href="__MODULE__/advert/edit/?id={$list.id}" class="btn btn-danger">编辑</a></td>
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