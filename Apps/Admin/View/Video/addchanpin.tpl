<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 视频管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="__MODULE__/chanpin/index/">视频管理</a></li>
                    <li><a href="index.html">视频添加</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-indent red"></i><strong>视频添加</strong></h2>
                    </div>
                    <form action="__MODULE__/video/doadd/" method="post" enctype="multipart/form-data" class="form-horizontal ">
                    <div class="panel-body">
                            <div class="form-group">
                                <label class="col-md-1" for="text-input">视频名称</label>
                                <div class="col-md-9">
                                    <input type="text" id="text-input" name="title" class="form-control" placeholder="请输入商品名称">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="text-input">视频英文名称</label>
                                <div class="col-md-9">
                                    <input type="text" id="text-input" name="en_title" class="form-control" placeholder="请输入商品名称">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="text-input">标题图片</label>
                                <div class="col-md-9">
                                    <input type="file" name="title_img" class="form-control" placeholder="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">视频分类</label>
                                <div class="col-md-9">
                                    <select id="select" name="type" class="form-control" size="1">
                                        <option value="0">请选择视频分类</option>
                                        <volist name="list" id="tour">
                                            <option value="{$tour.id}>">&nbsp;&nbsp;{$tour.html}{$tour.name}</option>
                                        </volist>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">视频详情</label>
                                <div class="col-md-9">
                                    <script id="myEditor" name="content" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">视频详情</label>
                                <div class="col-md-9">
                                    <script id="en_content" name="en_content" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>

                            <br>

                    </div>
                    <div class="panel-footer">
                        <button type="submit" class="btn btn-success">添加</button>
                        <a href="__MODULE__/chanpin/index/" class="btn btn-danger">返回</a>
                    </div>
                    </form>
                </div>
            </div>
        </div><!--/row-->
    </div>
    <!-- end: Content -->
</block>
