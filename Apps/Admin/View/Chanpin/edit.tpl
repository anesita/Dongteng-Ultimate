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
                    <form action="__MODULE__/chanpin/doedit/" method="post" enctype="multipart/form-data" class="form-horizontal ">
                        <div class="panel-body">
                                <div class="form-group">
                                    <label class="col-md-1" for="text-input">商品名称</label>
                                    <div class="col-md-9">
                                        <input type="text" id="text-input" name="title" class="form-control" placeholder="请输入商品名称" value="{$info.title}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="text-input">英文商品名称</label>
                                    <div class="col-md-9">
                                        <input type="text" id="text-input" name="en_title" class="form-control" placeholder="请输入英文商品名称" value="{$info.en_title}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="text-input">英文商品名称</label>
                                    <div class="col-md-9">
                                        <input type="text" id="text-input" name="rus_title" class="form-control" placeholder="请输入俄文商品名称" value="{$info.rus_title}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="text-input">标题图片</label>
                                    <div class="col-md-9">
                                        <input type="file" name="image" class="form-control" placeholder="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">商品分类</label>
                                    <div class="col-md-9">
                                        <select id="select" name="type" class="form-control" size="1">
                                            <option value="0">请选择商品分类</option>
                                            <volist name="list" id="tour">
                                                <option value="{$tour.id}>" <?php if($info['type']==$tour['id']){echo 'selected';}?>>&nbsp;&nbsp;{$tour.html}{$tour.name}</option>
                                            </volist>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">商品详情</label>
                                    <div class="col-md-9">
                                        <script id="myEditor" name="content" type="text/plain" style="height:500px;width:100%;">{$info.content}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">商品英文详情</label>
                                    <div class="col-md-9">
                                        <script id="en_content" name="en_content" type="text/plain" style="height:500px;width:100%;">{$info.en_content}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">商品俄文详情</label>
                                    <div class="col-md-9">
                                        <script id="rus_content" name="rus_content" type="text/plain" style="height:500px;width:100%;">{$info.rus_content}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">产品优势</label>
                                    <div class="col-md-9">
                                        <script id="youshi" name="youshi" type="text/plain" style="height:500px;width:100%;">{$info.youshi}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">产品英文优势</label>
                                    <div class="col-md-9">
                                        <script id="en_youshi" name="en_youshi" type="text/plain" style="height:500px;width:100%;">{$info.en_youshi}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">产品俄文优势</label>
                                    <div class="col-md-9">
                                        <script id="rus_youshi" name="rus_youshi" type="text/plain" style="height:500px;width:100%;">{$info.rus_youshi}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">机器参数</label>
                                    <div class="col-md-9">
                                        <script id="canshu" name="canshu" type="text/plain" style="height:500px;width:100%;">{$info.canshu}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">机器英文参数</label>
                                    <div class="col-md-9">
                                        <script id="en_canshu" name="en_canshu" type="text/plain" style="height:500px;width:100%;">{$info.en_canshu}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">机器俄文参数</label>
                                    <div class="col-md-9">
                                        <script id="rus_canshu" name="rus_canshu" type="text/plain" style="height:500px;width:100%;">{$info.rus_canshu}</script>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-1" for="select">机器视频</label>
                                    <div class="col-md-9">
                                        <script id="shiping" name="shiping" type="text/plain" style="height:500px;width:100%;">{$info.shiping}</script>
                                    </div>
                                </div>

                                <br>
                            <input type="hidden" name="info_id" value="<?php echo $_GET['id']?>">
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-dot-circle-o"></i>修改</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</block>
