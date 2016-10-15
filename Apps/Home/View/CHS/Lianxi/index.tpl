<extend name="Base/common" />
<block name="main">
  <include file="Public/yuying" />
  <style>
    body{
        padding: 0px;
        margin: 0px;
        font-family:Verdana,微软雅黑; *font-family:微软雅黑,Verdana;

    }
    #space {
      height: 96px;
    }
    img{
        border:0px;
        padding:0px;
        margin: 0px;
    }
    ul{
        list-style-type: none;
        margin: 0px;
        padding:0px;
    }
    #nav ul li{
        float: left;
        list-style: none;
        color: #fff;
        font-size: 16px;
        padding: 0px 15px 0px;
        line-height: 66px;
    }
    #nav ul li a{
        color: #fff;
    }
    a{
        text-decoration:none;
    }
    a:link{
        text-decoration:none;
    }
    a:visited{
        text-decoration:none;
    }
    a:hover{
        text-decoration:none;
    }
    a:active{
        text-decoration:none;
    }
    .color {
        height: 20px !important;
    }
</style>
  <div class="visible-lg">
    <div class="container">
      <div class="col-sm-12" style="padding: 0px;margin: 0px;">
        <div class="col-sm-9" style="padding: 0px;margin: 0px;padding-right: 36px;">
          <div style="padding-top: 42px;">
            <h1 style="margin: 0px;font-size: 32px;line-height: 52px;">联系我们</h1>
            <p style="font-size: 16px;line-height: 26px;">
              吴泰集团东腾机械有限公司地处风景秀丽的海滨城市-瑞安，交通便利，气候宜人，人杰地灵，是以温州经济发展模式而崛起的“中国包装机械城”，它以其精良的工业基础，加工设施，先进的专业制造工艺，迅捷准确的机械信息，稳步全面地抢占了国内市场，在全球机械制造中享有一定的美誉。
            </p>
            <h1 style="margin: 0px;font-size: 32px;line-height: 52px;padding-top: 55px;">我要留言</h1>
            <hr style="margin-top: 0px;">
            <form action="" class="form-horizontal" method="post" enctype="multipart/form-data">
              <div class="col-sm-12" style="padding-left: 0px;padding-right: 0px;">
                <input type="hidden" value="a1069281336@163.com" name="email">
                <div class="col-sm-3" style="height: 62px;padding-left: 0px;margin-right: 10px;">
                  姓名*
                  <br />
                  <input type="text" name="title" style="height: 30px;"></div>
                <div class="col-sm-3" style="height: 62px;padding-left: 0px;margin-right: 10px;">
                  电子邮件
                  <input type="text" name="email" style="height: 30px;"></div>
                <div class="col-sm-3" style="height: 62px;padding-left: 0px;margin-right: 10px;">
                  手机号码*
                  <input type="phone" name="phone" style="height: 30px;"></div>
                <div class="col-sm-3" style="height: 62px;padding-left: 0px;margin-right: 10px;">
                  国家
                  <br />
                  <input type="text" name="country"></div>
                <div class="col-sm-3" style="height: 62px;padding-left: 0px;margin-right: 10px;">
                  省/直辖市
                  <br />
                  <input type="text" name="province"></div>
                <div class="col-sm-3" style="height: 62px;padding-left: 0px;margin-right: 10px;">
                  意向机型*
                  <br />
                  <input type="text" name="Model"></div>

                <div class="col-sm-12" style="padding: 0px;">
                  <h5>设备要求</h5>
                  <input type="text" name="content" style="width: 100%;height:130px;padding-bottom: 105px;"></div>
                <div style="height: 38px;width: 100%;clear: both;"></div>
                <div class="col-sm-12" style="padding: 0px;">
                  <button type="submit" style="width: 285px;height:38px;background: #b9c2cd;border: 0px;color: #fff;color: #ff0033;float: left;">提交</button>
                  <p style="float: left;padding-left: 27px;font-size: 14px;">
                    感谢您关注东腾公司,
                    <br />我们将尽快与您联系!</p>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="col-sm-3" style="padding: 0px;margin: 0px;padding-top: 100px;">
          <div style="width: 100%;height: 6px;background-color:#005bac;"></div>
          <div>
            <h1 style="font-size: 22px;margin: 0px;color: #595757;line-height: 44px;">瑞安市东腾机械有限公司</h1>
            <ul style="padding-top: 4px;">
              <li style="font-size: 16px;line-height: 30px;">地址：浙江温州瑞安巾子山路6号</li>
              <li style="font-size: 16px;line-height: 30px;">手机：013074681888</li>
              <li style="font-size: 16px;line-height: 30px;">电话：0577-65888482、65888481</li>
              <li style="font-size: 16px;line-height: 30px;">传真：0577-65888480</li>
              <li style="font-size: 16px;line-height: 30px;">邮编：325200</li>
              <li style="font-size: 16px;padding-top: 20px;">
              <div style="width:100%;height:220px;border:#ccc solid 1px;font-size:12px" id="map"></div>
              <script type="text/javascript">
                //创建和初始化地图函数：
                function initMap(){
                  createMap();//创建地图
                  setMapEvent();//设置地图事件
                  addMapControl();//向地图添加控件
                  addMapOverlay();//向地图添加覆盖物
                }
                function createMap(){
                  map = new BMap.Map("map");
                  map.centerAndZoom(new BMap.Point(120.645221,27.772954),16);
                }
                function setMapEvent(){
                  map.enableScrollWheelZoom();
                  map.enableKeyboard();
                  map.enableDragging();
                  map.enableDoubleClickZoom()
                }
                function addClickHandler(target,window){
                  target.addEventListener("click",function(){
                    target.openInfoWindow(window);
                  });
                }
                function addMapOverlay(){
                  var markers = [
                    {content:"",title:"东腾",imageOffset: {width:0,height:3},position:{lat:27.773178,lng:120.644466}}
                  ];
                  for(var index = 0; index < markers.length; index++ ){
                    var point = new BMap.Point(markers[index].position.lng,markers[index].position.lat);
                    var marker = new BMap.Marker(point,{icon:new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png",new BMap.Size(20,25),{
                      imageOffset: new BMap.Size(markers[index].imageOffset.width,markers[index].imageOffset.height)
                    })});
                    var label = new BMap.Label(markers[index].title,{offset: new BMap.Size(25,5)});
                    var opts = {
                      width: 200,
                      title: markers[index].title,
                      enableMessage: false
                    };
                    var infoWindow = new BMap.InfoWindow(markers[index].content,opts);
                    marker.setLabel(label);
                    addClickHandler(marker,infoWindow);
                    map.addOverlay(marker);
                  };
                }
                //向地图添加控件
                function addMapControl(){
                  var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
                  map.addControl(navControl);
                }
                var map;
                  initMap();
              </script>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--./main -->
  <!--main_small-->
  <div class="hidden-lg">
    <div class="container" style="width: 96%;padding-top: 25px;">
      <div style="padding-top: 18px;">
      <form action="" class="form-horizontal" method="post" enctype="multipart/form-data">
          <div style="padding-left: 0px;padding-right: 0px;">
            <input type="hidden" value="a1069281336@163.com" name="email">
            <div class="col-sm-3" style="height: 62px;padding-left: 0px;margin-right: 10px;">
              姓名*
              <br />
              <input type="text" name="title" style="height: 30px;"></div><br />
            <div class="col-sm-3" style="height: 62px;padding-left: 0px;margin-right: 10px;">
              电子邮件<br />
              <input type="text" name="email" style="height: 30px;"></div><br />
            <div style="height: 62px;padding-left: 0px;margin-right: 10px;">
              手机号码*<br />
              <input type="phone" name="phone" style="height: 30px;"></div><br />
            <div style="height: 62px;padding-left: 0px;margin-right: 10px;">
              国家
              <br />
              <input type="text" name="country"></div><br />
            <div style="height: 62px;padding-left: 0px;margin-right: 10px;">
              省/直辖市
              <br />
              <input type="text" name="province"></div><br />
            <div style="height: 62px;padding-left: 0px;margin-right: 10px;">
              意向机型*
              <br />
              <input type="text" name="Model"></div><br />

            <div style="padding: 0px;">
              <h5>设备要求</h5>
              <input type="text" name="content" style="width: 100%;height:130px;padding-bottom: 105px;">
            </div>

            <div style="height: 38px;width: 100%;clear: both;"></div>
            <div style="padding: 0px;">
              <button type="submit" style="width: 285px;height:38px;background: #b9c2cd;border: 0px;color: #fff;color: #ff0033;float: left;">提交</button>
              <p style="float: left;padding-left: 27px;font-size: 14px;">
                感谢您关注东腾公司,
                <br />我们将尽快与您联系!</p>
            </div>
          </div>
        </form><br />
        <h1 style="font-size: 2.4rem;line-height: 6rem;">联系我们</h1>
        <p style="font-size: 1.4rem;line-height: 1.8rem;">
          吴泰集团东腾机械有限公司地处风景秀丽的海滨城市-瑞安，交通便利，气候宜人，人杰地灵，是以温州经济发展模式而崛起的“中国包装机械城”，它以其精良的工业基础，加工设施，先进的专业制造工艺，迅捷准确的机械信息，稳步全面地抢占了国内市场，在全球机械制造中享有一定的美誉。
        </p>
      </div>
      <div style="width:100%;height:300px;border:#ccc solid 1px;font-size:12px;padding-top: 50px;" id="map1"></div>
        <script type="text/javascript">
          //创建和初始化地图函数：
          function initMap(){
            createMap();//创建地图
            setMapEvent();//设置地图事件
            addMapControl();//向地图添加控件
            addMapOverlay();//向地图添加覆盖物
          }
          function createMap(){
            map = new BMap.Map("map");
            map.centerAndZoom(new BMap.Point(120.645221,27.772954),16);
          }
          function setMapEvent(){
            map.enableScrollWheelZoom();
            map.enableKeyboard();
            map.enableDragging();
            map.enableDoubleClickZoom()
          }
          function addClickHandler(target,window){
            target.addEventListener("click",function(){
              target.openInfoWindow(window);
            });
          }
          function addMapOverlay(){
            var markers = [
              {content:"",title:"东腾",imageOffset: {width:0,height:3},position:{lat:27.773178,lng:120.644466}}
            ];
            for(var index = 0; index < markers.length; index++ ){
              var point = new BMap.Point(markers[index].position.lng,markers[index].position.lat);
              var marker = new BMap.Marker(point,{icon:new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png",new BMap.Size(20,25),{
                imageOffset: new BMap.Size(markers[index].imageOffset.width,markers[index].imageOffset.height)
              })});
              var label = new BMap.Label(markers[index].title,{offset: new BMap.Size(25,5)});
              var opts = {
                width: 200,
                title: markers[index].title,
                enableMessage: false
              };
              var infoWindow = new BMap.InfoWindow(markers[index].content,opts);
              marker.setLabel(label);
              addClickHandler(marker,infoWindow);
              map.addOverlay(marker);
            };
          }
          //向地图添加控件
          function addMapControl(){
            var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
            map.addControl(navControl);
          }
          var map;
            initMap();
        </script>
      <div>
        <h1 style="margin: 0px;font-size: 1.6rem;line-height: 3.4rem;padding-top: 16px;">瑞安市东腾机械有限公司</h1>
        <ul>
          <li style="font-size: 1.4rem;line-height: 1.8rem;">地址：瑞安市东山工业区瑞光大道941号</li>
          <li style="font-size: 1.4rem;line-height: 1.8rem;">手机：013074681888</li>
          <li style="font-size: 1.4rem;line-height: 1.8rem;">电话：0577-65888482、65888481</li>
          <li style="font-size: 1.4rem;line-height: 1.8rem;">传真：0577-65888480</li>
          <li style="font-size: 1.4rem;line-height: 1.8rem;">邮编：325200</li>
        </ul>
      </div>
    </div>
  </div>
</block>