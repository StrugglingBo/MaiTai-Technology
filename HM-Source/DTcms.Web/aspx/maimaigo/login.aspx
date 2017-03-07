<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.login" ValidateRequest="false" %>
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
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/login.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.touchSwipe.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/login-validate.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">登录中心</span>\r\n        </div>\r\n        <form id=\"loginform\" name=\"loginform\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_login&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.build_path));
	templateBuilder.Append("\">\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"main\">\r\n                <div class=\"logo\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/logo2.png\"></div>\r\n                <div class=\"item item-username\">\r\n                    <input id=\"txtUserName\" name=\"txtUserName\" class=\"txt-input txt-tel\" type=\"text\"\r\n                        placeholder=\"请输入手机号\">\r\n                </div>\r\n                <div class=\"item item-password\">\r\n                    <input id=\"txtPassword\" name=\"txtPassword\" class=\"txt-input txt-password\" type=\"password\"\r\n                        autocomplete=\"off\" placeholder=\"请输入密码\">\r\n                </div>\r\n                <div class=\"item item-btns\">\r\n                    <input id=\"btnSubmit\" name=\"btnSubmit\" class=\"btn-login\" type=\"submit\" value=\"登 录\">\r\n                </div>\r\n                <div class=\"item item-btns\">\r\n                    <a class=\"btn-login2\" href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">注册</a>\r\n                </div>\r\n                <div class=\"item item-login-option\">\r\n                    <span class=\"retrieve-password\"><a class=\"findPwd\" href=\"");
	templateBuilder.Append(linkurl("findpwd"));

	templateBuilder.Append("\">忘记密码?</a> </span>\r\n                </div>\r\n                <div class=\"item item-tips\">\r\n                    <div id=\"msgtips\" class=\"err-msg\">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <input id=\"turl\" name=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(turl));
	templateBuilder.Append("\" />\r\n        </form>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
