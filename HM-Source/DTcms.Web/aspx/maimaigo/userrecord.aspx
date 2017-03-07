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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size:60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>提现记录-麦买购</title>\r\n\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/usercenter.css\" rel=\"stylesheet\" type=\"text/css\">\r\n\r\n\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/recoderfresh.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        function cancel(objid) {\r\n            if (objid != \"\") {\r\n                var baseurl = '/api/appfun.ashx?action=outmoney_cancel&id=' + objid;\r\n                $.ajax({\r\n                    url: baseurl,\r\n                    type: 'GET',\r\n                    dataType: 'json',\r\n                    timeout: '1000',\r\n                    cache: 'false',\r\n                    success: function (data) {\r\n                        if (data.success == \"true\") {\r\n                            var turl = data.url;\r\n                            if (turl != \"\") {\r\n                                if (typeof (data.url) == \"undefined\") {\r\n                                    location.href = $(\"#turl\").val();\r\n                                } else {\r\n                                    location.href = data.url;\r\n                                }\r\n                            }\r\n                        } else {\r\n                            layer.open({\r\n                                content: data.msg,\r\n                                time: 2000\r\n                            });\r\n                        }\r\n                    }\r\n                });\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<div id=\"pageContainer\">\r\n    <div class=\"top-bar\">\r\n        <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a>\r\n        <span class=\"title\">提现记录</span>\r\n        <div class=\"refresh\">\r\n                    <a href=\"javascript:window.location.reload();\"></a>\r\n                </div>\r\n    </div>\r\n    <div class=\"common-wrapper\">\r\n        <div class=\"uc-wd-record\">\r\n            <div class=\"score\"><span>我的麦币：<i>");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append("</i></span><span>已提现麦币：<i>");
	templateBuilder.Append(Utils.ObjectToStr(userModel.exp));
	templateBuilder.Append("</i></span></div>\r\n            <ul class=\"th\">\r\n                <li>提现时间</li>\r\n                <li>提现麦币</li>\r\n                <li>实际金额</li>\r\n                <li>状态</li>\r\n            </ul>\r\n            <div id=\"thelist\"></div>\r\n             <div id=\"pullUp\">\r\n                <span class=\"pullUpLabel\"></span>\r\n            </div>\r\n            <input type=\"hidden\" id=\"uid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append("\" />\r\n        </div>\r\n    </div>\r\n    <input type=\"hidden\" id=\"turl\" value=\"");
	templateBuilder.Append(linkurl("userrecord"));

	templateBuilder.Append("\" />\r\n</div>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
