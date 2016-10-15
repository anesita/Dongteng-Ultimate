<extend name="Base/common" />
<block name="main">
    <!-- start: Content -->
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 广告管理</h3>
                <ol class="breadcumb">
                    <li><i class="fa fa-home"></i><a href="__MODULE__/chanpin/index/">广告管理</a></li>
                    <li><a href="index.html">广告添加</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-indent red"></i><strong>广告添加</strong></h2>
                    </div>
                    <form action="__MODULE__/advert/doedit/" method="post" enctype="multipart/form-data" class="form-horizontal ">
                        <div class="panel-body">                           
                                <div class="form-group">
                                    <label class="col-md-1">广告标题</label>
                                    <div class="col-md-9">
                                        <input type="text"  name="title" class="form-control" placeholder="请输入文章标题" value="{$list.title}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1">资源图片</label>
                                    <div class="col-md-9">
                                        <input type="file" name="image"  placeholder="请输入文章标题"> <br>
                                        <div style="width: 200px"><img src="__ROOT__/Public/{$list.image}" style="width: 100%;"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1">广告位置</label>
                                    <div class="col-md-9">
                                        <input type="text" name="where"  class="form-control" placeholder="" value="{$list.where}" disabled>
                                    </div>
                                </div>
                                <br>
                                <input type="hidden" value="<?=$_GET['id']?>" name="info_id">
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-success">修改</button>
                            <a href="__MODULE__/advert/index/" class="btn btn-danger">返回</a>
                        </div>
                    </form>
                </div>
            </div>
        </div><!--/row-->
    </div>
    <!-- end: Content -->
</block>