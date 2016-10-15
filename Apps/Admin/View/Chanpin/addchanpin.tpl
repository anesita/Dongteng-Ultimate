<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 产品管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="__MODULE__/chanpin/index/">产品管理</a></li>
                    <li><a href="index.html">产品添加</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-indent red"></i><strong>产品添加</strong></h2>
                    </div>
                    <form action="__MODULE__/chanpin/doadd/" method="post" enctype="multipart/form-data" class="form-horizontal ">
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-md-1" for="text-input">商品名称</label>
                                <div class="col-md-9">
                                    <input type="text" id="text-input" name="title" class="form-control" placeholder="请输入商品名称">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="text-input">商品英文名称</label>
                                <div class="col-md-9">
                                    <input type="text" id="text-input" name="en_title" class="form-control" placeholder="请输入商品名称">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="text-input">商品图片</label>
                                <div class="col-md-9">
                                    <input type="file" id="text-input" name="image" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">商品分类</label>
                                <div class="col-md-9">
                                    <select id="select" name="type" class="form-control" size="1">
                                        <option value="0">请选择商品分类</option>
                                        <volist name="list" id="tour">
                                            <option value="{$tour.id}>">&nbsp;&nbsp;{$tour.html}{$tour.name}</option>
                                        </volist>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">商品详情</label>
                                <div class="col-md-9">
                                    <script id="myEditor" name="content" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">商品英文详情</label>
                                <div class="col-md-9">
                                    <script id="en_content" name="en_content" type="text/plain" style="height:500px;width:100%;">{$info.en_content}</script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">产品优势</label>
                                <div class="col-md-9">
                                    <script id="youshi" name="youshi" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>

                            <div class="form-group">
                                    <label class="col-md-1" for="select">产品英文优势</label>
                                    <div class="col-md-9">
                                        <script id="en_youshi" name="en_youshi" type="text/plain" style="height:500px;width:100%;">{$info.en_youshi}</script>
                                    </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">机器参数</label>
                                <div class="col-md-9">
                                    <script id="canshu" name="canshu" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">机器英文参数</label>
                                <div class="col-md-9">
                                    <script id="en_canshu" name="en_canshu" type="text/plain" style="height:500px;width:100%;">{$info.en_canshu}</script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1" for="select">机器视频</label>
                                <div class="col-md-9">
                                    <script id="shiping" name="shiping" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>
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
