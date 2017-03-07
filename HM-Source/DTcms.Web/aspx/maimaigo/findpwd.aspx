<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.register" ValidateRequest="false" %>
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
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">用户注册</span>\r\n        </div>\r\n        ");
	if (action=="")
	{

	templateBuilder.Append("\r\n        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/register_validate.js\"></");
	templateBuilder.Append("script>\r\n        <form id=\"regform\" name=\"regform\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_repwdbymobile&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.build_path));
	templateBuilder.Append("\">\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"main\">\r\n                <div class=\"item item-tips\" style=\"display: none;\">\r\n                    <div class=\"err-msg\">\r\n                    </div>\r\n                </div>\r\n                <div class=\"item item-username\">\r\n                    <input id=\"txtMobile\" name=\"txtMobile\" type=\"tel\" class=\"txt-input txt-tel\" type=\"text\"\r\n                        autocomplete=\"off\" placeholder=\"手机号码\" ajaxurl=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=validate_username\">\r\n                </div>\r\n                ");
	if (uconfig.regstatus!=2)
	{

	templateBuilder.Append("\r\n                <div class=\"item item-captcha\" style=\"display: \">\r\n                    <div class=\"input-info\">\r\n                        <input id=\"txtCode\" name=\"txtCode\" class=\"txt-input txt-captcha\" type=\"text\" autocomplete=\"off\"\r\n                            placeholder=\"请输入图片验证码\">\r\n                        <span id=\"captcha-img\">\r\n                            <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"63\" height=\"25\" alt=\"\"></span>\r\n                    </div>\r\n                </div>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <div class=\"item item-phone\">\r\n                    <input id=\"txtCode\" name=\"txtCode\" class=\"txt-input txt-phone\" type=\"tel\" placeholder=\"请输入短信验证码\">\r\n                    <a id=\"btnSendcode\" href=\"javascript:;\" onclick=\"sendSMS(this,'#txtMobile','");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_verify_smscode&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.build_path));
	templateBuilder.Append("');\"\r\n                        class=\"btn-retransmit btn-retransmit-disabled\">获取短信验证码</a>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <div class=\"item item-btns\">\r\n                    <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"立即修改\" class=\"btn-login\" />\r\n                </div>\r\n                <div class=\"item item-btns\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"btn-login2\">返回首页</a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        </form>\r\n        ");
	}	//end for if

	if (action=="close")
	{

	templateBuilder.Append("\r\n        <!--关闭会员注册-->\r\n        <div class=\"wrap-box\">\r\n            <h2>\r\n                系统暂停注册会员</h2>\r\n            <div class=\"tip\">\r\n                <span class=\"icon info\"></span>\r\n                <p>\r\n                    如对您造成不便，我们深感遗憾！</p>\r\n                <p>\r\n                    如需了解开放时间，请联系本站客服或管理员。</p>\r\n                <p>\r\n                    您可以点击这里返回 <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" data-ignore=\"true\">网站首页</a></p>\r\n            </div>\r\n        </div>\r\n        <!--/关闭会员注册-->\r\n        ");
	}	//end for if

	if (action=="succeed")
	{

	templateBuilder.Append("\r\n        <!--注册成功-->\r\n        <div class=\"wrap-box\">\r\n            <h2>\r\n                恭喜您，注册成功</h2>\r\n            <div class=\"tip\">\r\n                <span class=\"icon check\"></span>\r\n                <p>\r\n                    恭喜您");
	templateBuilder.Append(Utils.ObjectToStr(username));
	templateBuilder.Append("成为本站会员！</p>\r\n                <p>\r\n                    从现在起，你可以享受更多的会员服务。</p>\r\n                <p>\r\n                    点击这里返回 <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" data-ignore=\"true\">首页</a> 或 <a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\"\r\n                        data-ignore=\"true\">登录</a> 会员中心吧！</p>\r\n            </div>\r\n        </div>\r\n        <!--/注册成功-->\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(config.webcountcode));
	templateBuilder.Append("\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
