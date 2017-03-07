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

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\"\r\n        name=\"viewport\">\r\n    <meta content=\"yes\" name=\"apple-mobile-web-app-capable\">\r\n    <meta content=\"black\" name=\"apple-mobile-web-app-status-bar-style\">\r\n    <meta content=\"telephone=no\" name=\"format-detection\">\r\n    <title>城市选择</title>\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/cityPicker.css\">\r\n</head>\r\n<body>\r\n    <input type=\"text\" class=\"city\" readonly=\"\" style=\"display:none;\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/cityPicker.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(\".city\").CityPicker();\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
