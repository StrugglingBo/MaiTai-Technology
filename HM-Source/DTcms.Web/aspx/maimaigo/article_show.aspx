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
	const string channel = "content";

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>麦买购最新公告</title>\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/article-detail.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery-1.8.2.min.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"detail-wrap\">\r\n            <div class=\"title\">\r\n                <p class=\"txt\">\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</p>\r\n                <p class=\"date\">\r\n                    发布时间：");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("<i class=\"view\">阅读数：<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("&click=1\"></");
	templateBuilder.Append("script></i></p>\r\n            </div>\r\n            <div class=\"sub-title\">\r\n                <b>导语：</b><span>");
	templateBuilder.Append(Utils.ObjectToStr(model.zhaiyao));
	templateBuilder.Append("</span>\r\n            </div>\r\n            <div class=\"content\">\r\n                <div class=\"article\">\r\n                   ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"back-line\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">返回</a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
