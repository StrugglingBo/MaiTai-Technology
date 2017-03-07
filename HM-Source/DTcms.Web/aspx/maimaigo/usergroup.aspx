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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>\r\n        ");
	if (userModel.group_id==3)
	{

	templateBuilder.Append("\r\n        区域内会员-麦买购\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        我的团队-麦买购\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n    </title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/usercenter.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/groupfresh.js\"></");
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        function buy_vip() {\r\n            var cp = $(\"#cpoint\").val();\r\n            var uid = $(\"#uid\").val();\r\n            var amount = $(\"#txtamount\").val();\r\n            if (amount * 1 <= cp * 1 && isNumberBy100(amount)) {\r\n                var pre = $(\"#txtpre\").val();\r\n                var rechargeno = $(\"#payment\").val();\r\n                var baseurl = '/api/appfun.ashx?action=outmoney_save&uid=' + uid + '&amount=' + amount + '&pre=' + pre + '&rechargeno=' + rechargeno;\r\n                $.ajax({\r\n                    url: baseurl,\r\n                    type: 'GET',\r\n                    dataType: 'json',\r\n                    timeout: '1000',\r\n                    cache: 'false',\r\n                    success: function (data) {\r\n                        if (data.success == \"true\") {\r\n                            var turl = data.url;\r\n                            if (turl != \"\") {\r\n                                if (typeof (data.url) == \"undefined\") {\r\n                                    location.href = $(\"#turl\").val();\r\n                                } else {\r\n                                    location.href = data.url;\r\n                                }\r\n                            }\r\n                        } else {\r\n                            layer.open({\r\n                                content: data.msg,\r\n                                time: 2000\r\n                            });\r\n                        }\r\n                    }\r\n                });\r\n            }\r\n            else {\r\n                layer.open({\r\n                    content: \"提现积分必须小于等于可提现积分,且为100的整数倍!\",\r\n                    time: 2000\r\n                });\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">\r\n                ");
	if (userModel.group_id==3)
	{

	templateBuilder.Append("\r\n                区域内会员列表\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                我的团队\r\n                ");
	}	//end for if

	templateBuilder.Append("</span>\r\n            <div class=\"refresh\">\r\n                <a href=\"javascript:window.location.reload();\"></a>\r\n            </div>\r\n        </div>\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"uc-group\">\r\n                ");
	if (userModel.nick_name!="")
	{

	templateBuilder.Append("<div class=\"myintro\">\r\n                    我的推荐人：<i>");
	templateBuilder.Append(Utils.ObjectToStr(userModel.nick_name));
	templateBuilder.Append("</i></div>\r\n                ");
	}	//end for if

	if (dtype!=3)
	{

	templateBuilder.Append("\r\n                <ul class=\"tab\">\r\n                    ");
	if (dtype==1)
	{

	templateBuilder.Append("\r\n                    <li class=\"active\">一级团队(");
	templateBuilder.Append(Utils.ObjectToStr(g1));
	templateBuilder.Append(")</li>\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("usergroup","1"));

	templateBuilder.Append("\">一级团队(");
	templateBuilder.Append(Utils.ObjectToStr(g1));
	templateBuilder.Append(")</a></li>\r\n                    ");
	}	//end for if

	if (dtype==2)
	{

	templateBuilder.Append("\r\n                    <li class=\"active\">二级团队(");
	templateBuilder.Append(Utils.ObjectToStr(g2));
	templateBuilder.Append(")</li>\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("usergroup","2"));

	templateBuilder.Append("\">二级团队(");
	templateBuilder.Append(Utils.ObjectToStr(g2));
	templateBuilder.Append(")</a></li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <div id=\"thelist\">\r\n                </div>\r\n                <div id=\"pullUp\">\r\n                    <span class=\"pullUpLabel\">数据加载中,请稍后....</span>\r\n                </div>\r\n                <input type=\"hidden\" id=\"uid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append("\" />\r\n                <input type=\"hidden\" id=\"dotype\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(dtype));
	templateBuilder.Append("\" />\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
