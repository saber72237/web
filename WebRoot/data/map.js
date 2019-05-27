var map = new BMap.Map("locate");
// 创建地图实例
var point = new BMap.Point(113.274063, 35.193959);
// 创建点坐标
map.centerAndZoom(point, 18);
// 初始化地图，设置中心点坐标和地图级别
map.enableScrollWheelZoom(true);    //添加鼠标滚轮控制
map.addControl(new BMap.ScaleControl({offset: new BMap.Size(10,60)}));     //添加比例尺
map.addControl(new BMap.MapTypeControl({offset: new BMap.Size(30,100)}));   //添加地图类型控件
// map.addControl(new BMap.GeolocationControl({offset: new BMap.Size(10,100)}));//添加定位控件
map.addControl(new BMap.NavigationControl({type: BMAP_NAVIGATION_CONTROL_ZOOM,
        offset: new BMap.Size(30,100)}));//添加小型缩放控件
window.setTimeout(function(){       //2000ms后跳转地图
    map.panTo(new BMap.Point(113.268546, 35.191018));
}, 2000);
