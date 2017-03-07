<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017/2/15 15:04:54.
		本页面代码由DTcms模板引擎生成于 2017/2/15 15:04:54. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "localserver";

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"initial-scale=1.0, user-scalable=no, width=device-width\">\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</title>\r\n    <link rel=\"stylesheet\" href=\"http://cache.amap.com/lbs/static/main1119.css\" />\r\n    <style type=\"text/css\">\r\n        #panel\r\n        {\r\n            position: fixed;\r\n            background-color: white;\r\n            max-height: 90%;\r\n            overflow-y: auto;\r\n            bottom: 20px;\r\n            width: 100%;\r\n        }\r\n        #back\r\n        {\r\n            position: fixed;\r\n            top: 10px;\r\n            width: 30px;\r\n            line-height: 30px;\r\n            height: 30px;\r\n            left: 10px;\r\n            background: url(/templates/maimaigo/images/and_img.png) -360px -266px no-repeat;\r\n            background-color: white;\r\n            border-radius: 50%;\r\n        }\r\n    </style>\r\n    <script type=\"text/javascript\" src=\"http://webapi.amap.com/maps?v=1.3&key=294df802b5f28dfd44814f948553e9db&plugin=AMap.Driving\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"http://cache.amap.com/lbs/static/addToolbar.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"container\">\r\n    </div>\r\n    <div id=\"panel\">\r\n    </div>\r\n    <div id=\"back\" onclick=\"window.history.go(-1);\">\r\n    </div>\r\n    <script type=\"text/javascript\">\r\n        var marker,geolocation;\r\n        //基本地图加载\r\n        var map = new AMap.Map(\"container\", {\r\n            resizeEnable: true,\r\n            center: [" + Utils.ObjectToStr(model.fields["latnum"]) + ", " + Utils.ObjectToStr(model.fields["longnum"]) + "], //地图中心点\r\n            zoom: 17 //地图显示的缩放级别\r\n        });\r\n         //加载地图，调用浏览器定位服务\r\n        map.plugin('AMap.Geolocation', function() {\r\n            geolocation = new AMap.Geolocation({\r\n                enableHighAccuracy: true,//是否使用高精度定位，默认:true\r\n                timeout: 10000,          //超过10秒后停止定位，默认：无穷大\r\n                buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)\r\n                zoomToAccuracy: true,      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false\r\n                buttonPosition:'RB'\r\n            });\r\n            map.addControl(geolocation);\r\n            geolocation.getCurrentPosition();\r\n            AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息\r\n            AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息\r\n        });\r\n        //构造路线导航类\r\n        var driving = new AMap.Driving({\r\n            map: map,\r\n            panel: \"panel\"\r\n        });\r\n        //解析定位结果\r\n        function onComplete(data) {\r\n            // 根据起终点经纬度规划驾车导航路线\r\n            driving.search(new AMap.LngLat(data.position.getLng(), data.position.getLat()), new AMap.LngLat(" + Utils.ObjectToStr(model.fields["latnum"]) + ", " + Utils.ObjectToStr(model.fields["longnum"]) + "));\r\n        }\r\n        //解析定位错误信息\r\n        function onError(data) {\r\n            addMarker();\r\n        }\r\n        function addMarker() {\r\n        if (marker) {\r\n            return;\r\n        }\r\n        marker = new AMap.Marker({\r\n            icon: \"http://webapi.amap.com/theme/v1.3/markers/n/mark_b.png\",\r\n            position: [" + Utils.ObjectToStr(model.fields["latnum"]) + ", " + Utils.ObjectToStr(model.fields["longnum"]) + "]\r\n        });\r\n        marker.setMap(map);\r\n    }\r\n        \r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
