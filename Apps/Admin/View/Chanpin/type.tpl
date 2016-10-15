<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"> <i class="fa fa-laptop"></i>
                    产品管理
                </h3>
                <ol class="breadcrumb">
                    <li> <i class="fa fa-home"></i>
                        <a href="__MODULE__/chanpin/index/">产品管理</a>
                    </li>
                    <li>
                        <a href="index.html">产品列表</a>
                    </li>
                </ol>
            </div>
        </div>
        <div  style="padding-bottom: 13px;">
            <button type="button" id="btn-quick-event" class="btn btn-primary" data-toggle="modal" data-target="#myModal1">
                <i class="fa fa-plus-square"></i>
                添加分类
            </button>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">添加商品分类</h4>
                    </div>
                    <form action="__MODULE__/chanpin/addtype/" method="post">
                    <div class="modal-body">                                
                            <div>
                                <span style="display: inline-block;width: 80px;">方法名称:</span>
                                <input type="text" class="form-control" name="name">
                            </div>

                            <div>
                                <span style="display: inline-block;width: 80px;">所属父栏目:</span>
                                <select multiple class="form-control" style="height: 200px;" name="parent">
                                    <option value="0">根目录</option>
                                    <volist name="list" id="tour">
                                        <option value="{$tour.id}>">&nbsp;&nbsp;{$tour.html}{$tour.name}</option>
                                    </volist>
                                </select>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">添加</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
        <div class="row">

            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2>
                            <i class="fa fa-table red"></i>
                            <span class="break"></span> <strong>产品列表</strong>
                        </h2>
                        <div class="panel-actions">
                            <a href="table.html#" class="btn-minimize">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a href="table.html#" class="btn-close">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>

                    <div class="panel-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>分类名称</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <volist name="list" id="tour">
                                    <tr>
                                        <td>{$tour.id}</td>
                                        <td>{$tour.html}{$tour.name}</td>
                                        <td>
                                            <!-- <a href="" class="btn btn-danger">编辑</a> -->
                                            <a href="__MODULE__/chanpin/deltype/?id={$tour.id}" class="btn btn-success">删除</a>
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