<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.error" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/charge.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"charge\">\r\n            <div class=\"charge-bd\">\r\n                <div class=\"order\">\r\n                    <div class=\"main-tit\">\r\n                        <h2>\r\n                            出错咯</h2>\r\n                    </div>\r\n                    <div class=\"inner-box\">\r\n                        <div class=\"dl-list\">\r\n                            <dl>\r\n                                <dt></dt>\r\n                                <dd>\r\n                                    ");
	templateBuilder.Append(Utils.ObjectToStr(msg));
	templateBuilder.Append("</dd>\r\n                            </dl>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"order-btn\">\r\n                        <a href=\"javascript:history.back(-1);\" class=\"btn btn-confirm\">返回上一页</a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
