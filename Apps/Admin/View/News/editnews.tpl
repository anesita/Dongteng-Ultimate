<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 新闻管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="__MODULE__/news/index/">新闻管理</a></li>
                    <li><a href="__MODULE__/news/addnews/">新闻添加</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-indent red"></i><strong>新闻添加</strong></h2>
                    </div>
                    <form action="__MODULE__/news/doedit/" method="post" enctype="multipart/form-data" class="form-horizontal ">
                    <div class="panel-body">
                            <div class="form-group">
                                <label class="col-md-1">文章标题</label>
                                <div class="col-md-9">
                                    <input type="text"  name="title" class="form-control" placeholder="请输入文章标题" value="{$info.title}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">英文标题</label>
                                <div class="col-md-9">
                                    <input type="text"  name="en_title" class="form-control" placeholder="请输入文章标题" value="{$info.en_title}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">俄文标题</label>
                                <div class="col-md-9">
                                    <input type="text"  name="rus_title" class="form-control" placeholder="请输入文章标题" value="{$info.rus_title}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">标题图片</label>
                                <div class="col-md-9">
                                    <input type="file" name="image"  placeholder="请输入文章标题" value="{$info.title_img}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章作者</label>
                                <div class="col-md-9">
                                    <input type="text" name="author"  class="form-control" placeholder="" value="{$info.author}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章简述</label>
                                <div class="col-md-9">
                                    <textarea class="form-control" name="small_content">{$info.small_content}</textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章英文简述</label>
                                <div class="col-md-9">
                                    <textarea class="form-control" name="en_small_content">{$info.en_small_content}</textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章俄文简述</label>
                                <div class="col-md-9">
                                    <textarea class="form-control" name="rus_small_content">{$info.rus_small_content}</textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章正文</label>
                                <div class="col-md-9">
                                    <script id="myEditor" name="content" type="text/plain" style="height:500px;width:100%;">{$info.content|html_entity_decode}</script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章英文正文</label>
                                <div class="col-md-9">
                                    <script id="en_content" name="en_content" type="text/plain" style="height:500px;width:100%;">{$info.en_content|html_entity_decode}</script>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1">文章俄文正文</label>
                                <div class="col-md-9">
                                    <script id="rus_content" name="rus_content" type="text/plain" style="height:500px;width:100%;">{$info.rus_content|html_entity_decode}</script>
                                </div>
                            </div>

                            <input type="hidden" value="<?=$_GET['id']?>" name="info_id">
                            <br>

                    </div>
                    <div class="panel-footer">
                        <button type="submit" class="btn btn-success">修改</button>
                        <a href="__MODULE__/News/index/" class="btn btn-danger">返回</a>
                    </div>
                    </form>
                </div>
            </div>

        </div><!--/row-->
    </div>
    <!-- end: Content -->
</block>