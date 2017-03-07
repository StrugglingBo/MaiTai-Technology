<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.usercenter" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 50px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>我的二维码</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/order.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.qrcode.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/qrcode.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $(\"#qcode\").qrcode(utf16to8(\"http://");
	templateBuilder.Append(Utils.ObjectToStr(site.domain));
	templateBuilder.Append("/register.html?username=");
	templateBuilder.Append(Utils.ObjectToStr(userModel.mobile));
	templateBuilder.Append("\"));\r\n        })\r\n        function utf16to8(str) { //转码 \r\n            var out, i, len, c;\r\n            out = \"\";\r\n            len = str.length;\r\n            for (i = 0; i < len; i++) {\r\n                c = str.charCodeAt(i);\r\n                if ((c >= 0x0001) && (c <= 0x007F)) {\r\n                    out += str.charAt(i);\r\n                } else if (c > 0x07FF) {\r\n                    out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));\r\n                    out += String.fromCharCode(0x80 | ((c >> 6) & 0x3F));\r\n                    out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));\r\n                } else {\r\n                    out += String.fromCharCode(0xC0 | ((c >> 6) & 0x1F));\r\n                    out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));\r\n                }\r\n            }\r\n            return out;\r\n        } \r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"order-list\">\r\n            <!--<div class=\"top-front\">\r\n                <div class=\"logo\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/logo-top.png\"></a></div>\r\n                <div class=\"slogan\">\r\n                    我的二维码</div>\r\n                <div class=\"login\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"></a>\r\n                </div>\r\n            </div>-->\r\n            <div class=\"top-bar\">\r\n        <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a>\r\n        <span class=\"title\">我的二维码</span>\r\n        <div class=\"refresh\">\r\n                    <a href=\"javascript:window.location.reload();\"></a>\r\n                </div>\r\n    </div>\r\n            ");
	if (userModel.group_id!=3)
	{

	templateBuilder.Append("\r\n            <div class=\"qrcode\">\r\n                <ul>\r\n                    <li class=\"line1\">面对面扫码，或把二维码发给朋友</li>\r\n                    <li class=\"line2\">\r\n                        <div id=\"qcode\">\r\n                        </div>\r\n                        <span>长按此图识别二维码</span></li>\r\n                    ");
	if (userModel.avatar!="")
	{

	templateBuilder.Append("\r\n                    <li class=\"line3\">\r\n                        <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.avatar));
	templateBuilder.Append("\" /><span>由该会员推荐</span></li>\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li class=\"line3\"><span>由该会员");
	templateBuilder.Append(secretphone(userModel.user_name).ToString());

	templateBuilder.Append("推荐</span></li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n            </div>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n               \r\n                    <div class=\"qrcode\">\r\n                    <ul>\r\n                        <li class=\"line1\">该账号为代理商账号,请使用会员账号登录!</li>\r\n                    </ul>\r\n                </div>\r\n              \r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n        <!--导航//-->\r\n        <!--<div class=\"bottom-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"cat1\"><i></i><span>首页</span></a><a href=\"");
	templateBuilder.Append(linkurl("integral_list",0));

	templateBuilder.Append("\"\r\n                    class=\"cat5\"><i></i><span>麦币换购</span></a><a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" class=\"cat3\"><i></i><span>我的订单</span></a><a\r\n                    href=\"");
	templateBuilder.Append(linkurl("qrcode"));

	templateBuilder.Append("\" class=\"cat2 active\"><i></i><span>我的二维码</span></a><a\r\n                        href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"cat4\"><i></i><span>会员中心</span></a></div>-->\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
