<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 新闻管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="__MODULE__/chanpin/index/">新闻管理</a></li>
                    <li><a href="index.html">新闻添加</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-indent red"></i><strong>新闻添加</strong></h2>
                    </div>
                    <form action="__MODULE__/news/doaddnews/" method="post" enctype="multipart/form-data" class="form-horizontal ">
                    <div class="panel-body">
                            <div class="form-group">
                                <label class="col-md-1">文章标题</label>
                                <div class="col-md-9">
                                    <input type="text"  name="title" class="form-control" placeholder="请输入文章标题">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章英文标题</label>
                                <div class="col-md-9">
                                    <input type="text"  name="en_title" class="form-control" placeholder="请输入文章标题">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章英文标题</label>
                                <div class="col-md-9">
                                    <input type="text"  name="rus_title" class="form-control" placeholder="请输入文章标题">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">标题图片</label>
                                <div class="col-md-9">
                                    <input type="file" name="image"  placeholder="请输入文章标题">
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-md-1">文章作者</label>
                                <div class="col-md-9">
                                    <input type="text" name="author"  class="form-control" placeholder="" value="<?=$_SESSION['admin']['username']?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章简述</label>
                                <div class="col-md-9">
                                    <textarea class="form-control" name="small_content"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章英文简述</label>
                                <div class="col-md-9">
                                    <textarea class="form-control" name="en_small_content"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章英文简述</label>
                                <div class="col-md-9">
                                    <textarea class="form-control" name="rus_small_content"></textarea>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-md-1">文章正文</label>
                                <div class="col-md-9">
                                    <script id="myEditor" name="content" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章英文正文</label>
                                <div class="col-md-9">
                                    <script id="en_content" name="en_content" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章英文正文</label>
                                <div class="col-md-9">
                                    <script id="rus_content" name="rus_content" type="text/plain" style="height:500px;width:100%;"></script>
                                </div>
                            </div>

                            <br>
                    </div>
                    <div class="panel-footer">
                        <button type="submit" class="btn btn-success">添加</button>
                        <a href="__MODULE__/News/index/" class="btn btn-danger">返回</a>
                    </div>
                    </form>
                </div>
            </div>
        </div><!--/row-->
    </div>
    <!-- end: Content -->
</block>