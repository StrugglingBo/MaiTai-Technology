<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" type=\"text/css\" rel=\"stylesheet\" charset=\"utf-8\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" type=\"text/css\" rel=\"stylesheet\" charset=\"utf-8\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/download.css\" type=\"text/css\" rel=\"stylesheet\" charset=\"utf-8\" />\r\n    <title>麦买购APP下载</title>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        function browserRedirect() {\r\n            var sUserAgent = navigator.userAgent.toLowerCase();\r\n            var bIsIpad = sUserAgent.match(/ipad/i) == \"ipad\";\r\n            var bIsIphoneOs = sUserAgent.match(/iphone os/i) == \"iphone os\";\r\n            if (bIsIpad || bIsIphoneOs) {\r\n                window.location.href = \"http://itunes.apple.com/cn/app/mai-mai-gou/id1180061485?mt=8\";\r\n            }\r\n        }\r\n        function isWeiXin() {\r\n            var ua = window.navigator.userAgent.toLowerCase();\r\n            if (ua.match(/MicroMessenger/i) == 'micromessenger') {\r\n                return true;\r\n            } else {\r\n                return false;\r\n            }\r\n        }     \r\n    </");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(window).resize(function () {\r\n            var $w = $(window).width();\r\n            var $h = $(window).height();\r\n\r\n            $(\"#pageContainer\").css(\"height\", $h); //设置内容高度\r\n        });\r\n        $(function () {\r\n            $(window).resize();\r\n            browserRedirect();\r\n            if (isWeiXin) {\r\n                _system._guide(true);\r\n            }\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <ul class=\"down\">\r\n            <li class=\"bg\"></li>\r\n            <li class=\"tag\"><a href=\"http://itunes.apple.com/cn/app/mai-mai-gou/id1180061485?mt=8\"\r\n                target=\"_blank\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/down02.png\" /></a></li>\r\n            <li class=\"btn\"><a href=\"http://downloadpkg.apicloud.com/app/download?path=http://7y4a7t.com1.z0.glb.clouddn.com/2c4390dfd5dcb3968089bf6b144fb3a2_d\"\r\n                target=\"_blank\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/down03.png\" /></a></li>\r\n        </ul>\r\n    </div>\r\n    <!---分享提示层-//-->\r\n    <div id=\"cover\">\r\n    </div>\r\n    <div id=\"guide\">\r\n        <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/guide1.png\"></div>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/sharetip.js\">\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
