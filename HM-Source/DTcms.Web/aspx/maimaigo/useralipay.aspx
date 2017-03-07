<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.userbankcard" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>我的支付宝-麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/usercenter.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
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
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        function saveuserinfo(objuid) {\r\n            var alicount = $(\"#alicount\").val();\r\n            var alinick = $(\"#alinick\").val();\r\n            if (alicount != \"\" && alinick != \"\") {\r\n                if (objuid * 1 > 0) {\r\n                    var baseurl = '/api/appfun.ashx?action=aliinfo_save&uid=' + objuid + '&alicount=' + alicount + '&alinick=' + alinick;\r\n                    $.ajax({\r\n                        url: baseurl,\r\n                        type: 'GET',\r\n                        dataType: 'json',\r\n                        timeout: '1000',\r\n                        cache: 'false',\r\n                        success: function (data) {\r\n                            if (data.success == \"true\") {\r\n                                layer.open({\r\n                                    content: data.msg,\r\n                                    time: 2000\r\n                                });\r\n                                setTimeout(function () {\r\n                                    var turl = data.url;\r\n                                    if (turl != \"\") {\r\n                                        if (typeof (data.url) == \"undefined\") {\r\n                                            location.href = $(\"#turl\").val();\r\n                                        } else {\r\n                                            location.href = data.url;\r\n                                        }\r\n                                    }\r\n                                }, 2500);\r\n                            } else {\r\n                                layer.open({\r\n                                    content: data.msg,\r\n                                    time: 2000\r\n                                });\r\n                            }\r\n                        }\r\n                    });\r\n                }\r\n                else {\r\n                    return false;\r\n                }\r\n            }\r\n            else {\r\n                layer.open({\r\n                    content: \"信息填写完整后提交!\",\r\n                    time: 2000\r\n                });\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">我的支付宝</span>\r\n        </div>\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"uc-form\">\r\n                <form class=\"form-inline\">\r\n                <div class=\"item item-tips\">\r\n                    请如实填写支付宝信息，提交后无法修改！！</div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        账 号：</label>\r\n                    ");
	if (uinfo!=null)
	{

	if (uinfo.alipayaccount!="")
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alicount\" type=\"num\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uinfo.alipayaccount));
	templateBuilder.Append("\" readonly=\"readonly\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alicount\" type=\"num\" placeholder=\"请输入支付宝账号\" value=\"\">\r\n                    ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alicount\" type=\"num\" placeholder=\"请输入支付宝账号\" value=\"\">\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        昵 称：</label>\r\n                    ");
	if (uinfo!=null)
	{

	if (uinfo.alipaynickname!="")
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alinick\" type=\"num\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uinfo.alipaynickname));
	templateBuilder.Append("\" readonly=\"readonly\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alinick\" type=\"num\" placeholder=\"请输入支付宝账号\" value=\"\">\r\n                    ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alinick\" type=\"num\" placeholder=\"请输入支付宝账号\" value=\"\">\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                ");
	if (uinfo==null || uinfo.alipayaccount=="")
	{

	templateBuilder.Append("\r\n                <div class=\"item item-btns\">\r\n                    <a class=\"btn-confirm\" href=\"javascript:;\" onclick=\"saveuserinfo(");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append(")\">确认绑定</a>\r\n                </div>\r\n                <div class=\"item item-warning\">\r\n                    <i class=\"warning\">!</i>支付宝账号可用于提现使用，请确认填写无误！</div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </form>\r\n                <input type=\"hidden\" id=\"turl\" value=\"");
	templateBuilder.Append(linkurl("useralipay"));

	templateBuilder.Append("\" />\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
