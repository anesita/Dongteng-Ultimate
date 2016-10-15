<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 新闻管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="__MODULE__/News/index/">新闻管理</a></li>
                    <li><a href="index.html">新闻列表</a></li>
                </ol>
            </div>
        </div>
        <div  style="padding-bottom: 13px;"><a href="__MODULE__/news/addnews/" type="button" id="btn-quick-event" class="btn btn-primary"><i class="fa fa-plus-square"></i> 添加文章</a></div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-table red"></i><span class="break"></span><strong>新闻列表</strong></h2>
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
                                <th>文章名称</th>
                                <th>英文名称</th>
                                <th>作者</th>
                                <th>发布时间</th>
                                <th>点击量</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <volist name="list" id="list">
                                <tr>
                                    <td>{$list.id}</td>
                                    <td>{$list.title}</td>
                                    <td>{$list.en_title}</td>
                                    <td>{$list.author}</td>
                                    <td>{$list.create_time}</td>
                                    <td>{$list.click}</td>
                                    <td><a href="__MODULE__/news/editnews/?id={$list.id}" class="btn btn-danger">编辑</a> <a href="__MODULE__/news/del/?id={$list.id}" class="btn btn-success">删除</a></td>
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