<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.userorder" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 50px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>订单列表</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/order_list.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/orderfresh.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        function sure_get(objid) {\r\n            var baseurl = '/api/appfun.ashx?action=sureorder&orderid=' + objid;\r\n            if (objid != \"\") {\r\n                $.ajax({\r\n                    url: baseurl,\r\n                    type: 'GET',\r\n                    dataType: 'json',\r\n                    timeout: '1000',\r\n                    cache: 'false',\r\n                    success: function (data) {\r\n                        if (data.success == \"true\") {\r\n                            layer.open({\r\n                                content: \"订单确认成功!\",\r\n                                time: 2000\r\n                            });\r\n                            window.location.reload();\r\n                        } else {\r\n                            layer.open({\r\n                                content: data.msg,\r\n                                time: 2000\r\n                            });\r\n                        }\r\n                    }\r\n                });\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"order-list\">\r\n            <div class=\"top-front\">\r\n                <div class=\"logo\">\r\n                    <a href=\"index.html\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/logo-top.png\"></a></div>\r\n                <div class=\"slogan\">\r\n                    我的订单</div>\r\n                <div class=\"refresh\">\r\n                    <a href=\"javascript:window.location.reload();\"></a>\r\n                </div>\r\n            </div>\r\n            <ul id=\"thelist\">\r\n            </ul>\r\n            <div id=\"pullUp\">\r\n                <span class=\"pullUpLabel\"></span>\r\n            </div>\r\n        </div>\r\n        <input type=\"hidden\" id=\"uid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append("\" />\r\n        <!--导航//-->\r\n        <div class=\"bottom-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"cat1\"><i></i><span>首页</span></a><a href=\"");
	templateBuilder.Append(linkurl("integral_list",0));

	templateBuilder.Append("\"\r\n                    class=\"cat5\"><i></i><span>麦币换购</span></a><a\r\n                    href=\"");
	templateBuilder.Append(linkurl("shop"));

	templateBuilder.Append("\" class=\"cat2\"><i></i><span>本地生活</span></a><a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\"\r\n                class=\"cat3 active\"><i></i><span>我的订单</span></a><a\r\n                    href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"cat4\"><i></i><span>会员中心</span></a></div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
