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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>用户中心-麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
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
	templateBuilder.Append("script>\r\n</head>\r\n<body class=\"uc-home\">\r\n    <div id=\"pageContainer\">\r\n        <div class=\"uc\">\r\n            <div class=\"account\">\r\n                <div class=\"account-info\">\r\n                    <div class=\"thumb\">\r\n                        <img src=\"/upload/avatar.png\" alt=\"求真像\" />\r\n                    </div>\r\n                    <div class=\"info\">\r\n                        <p class=\"name\">\r\n                            ");
	templateBuilder.Append(secretphone(userModel.user_name).ToString());

	templateBuilder.Append("<span class=\"title\">\r\n                                ");
	if (userModel.group_id==2)
	{

	templateBuilder.Append("\r\n                                <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/vip.png\" />\r\n                                ");
	}	//end for if

	if (userModel.group_id==3)
	{

	templateBuilder.Append("\r\n                                代理商\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                            </span>\r\n                        </p>\r\n                        <p class=\"time\">\r\n                            加入时间：");
	templateBuilder.Append(Utils.ObjectToStr(userModel.reg_time));
	templateBuilder.Append("</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"account_cash\">\r\n                    <span class=\"cash\">\r\n                        <p>\r\n                            今日麦币</p>\r\n                        <p>\r\n                            <label>\r\n                                ");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append("</label>\r\n                        </p>\r\n                    </span><span class=\"cash\"><a href=\"");
	templateBuilder.Append(linkurl("userscorerecord"));

	templateBuilder.Append("\">\r\n                        <p>\r\n                            可用麦币</p>\r\n                        <p>\r\n                            <label>\r\n                                ");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append("</label>\r\n                        </p>\r\n                        <i></i></a></span>\r\n                </div>\r\n            </div>\r\n            <div class=\"section\">\r\n                <ul>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("userbankcard"));

	templateBuilder.Append("\"><i class=\"ico-1\"></i><b>我的银行卡</b><em></em></a></li>\r\n                    ");
	if (userModel.group_id!=3)
	{

	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("usertruename"));

	templateBuilder.Append("\"><i class=\"ico-2\"></i><b>实名认证</b><em></em></a></li>\r\n                    <li style=\"display:none;\"><a href=\"");
	templateBuilder.Append(linkurl("useralipay"));

	templateBuilder.Append("\"><i class=\"ico-3\"></i><b>提现支付宝账号</b><em></em></a></li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n            </div>\r\n            <div class=\"section\">\r\n                <ul>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("qrcode"));

	templateBuilder.Append("\"><i class=\"ico-6\"></i><b>我的二维码</b><em></em></a></li>\r\n                    ");
	if (userModel.group_id!=3)
	{

	if (userModel.qq=="1")
	{

	templateBuilder.Append("\r\n                    <li><a href=\"javascript:;\" onclick=\"showsub()\"><i class=\"ico-4\"></i><b>我的VIP</b><em></em></a></li>\r\n                    <li id=\"vipsub\" class=\"sub\" style=\"display: none;\">\r\n                        <p>\r\n                            VIP到期时间：");
	templateBuilder.Append(Utils.ObjectToStr(userModel.birthday));
	templateBuilder.Append("</p>\r\n                        <p>\r\n                            归属中心：");
	templateBuilder.Append(Utils.ObjectToStr(userModel.area));
	templateBuilder.Append("</p>\r\n                    </li>\r\n                    ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                    <li>\r\n                        ");
	if (userModel.group_id==3)
	{

	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(linkurl("usergroup","3"));

	templateBuilder.Append("\"><i class=\"ico-5\"></i><b>区域内会员(");
	templateBuilder.Append(Utils.ObjectToStr(groupstr));
	templateBuilder.Append(")");
	}
	else
	{

	templateBuilder.Append("<a\r\n                            href=\"");
	templateBuilder.Append(linkurl("usergroup"));

	templateBuilder.Append("\"><i class=\"ico-5\"></i><b>我的团队");
	}	//end for if

	templateBuilder.Append("</b><em></em></a></li>\r\n                    ");
	if (userModel.group_id==3)
	{

	templateBuilder.Append("\r\n                    <li id=\"Li1\" class=\"sub\">\r\n                        <p>\r\n                            代理区域：");
	templateBuilder.Append(Utils.ObjectToStr(userModel.area));
	templateBuilder.Append("</p>\r\n                    </li>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n            </div>\r\n            <div class=\"section\">\r\n                <ul>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("userrecord"));

	templateBuilder.Append("\"><i class=\"ico-6\"></i><b>提现记录</b><em></em></a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("useraddress"));

	templateBuilder.Append("\"><i class=\"ico-7\"></i><b>我的收货地址</b><em></em></a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("userpassword"));

	templateBuilder.Append("\"><i class=\"ico-8\"></i><b>修改密码</b><em></em></a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("workflow"));

	templateBuilder.Append("\"><i class=\"ico-9\"></i><b>提交工单</b><em></em></a></li>\r\n                </ul>\r\n            </div>\r\n            <div class=\"withdraw\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("userwithdraw"));

	templateBuilder.Append("\">我要提现</a></div>\r\n            <div class=\"logout\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usercenter","?action=exit"));

	templateBuilder.Append("\">退出登录</a></div>\r\n        </div>\r\n        <!--导航//-->\r\n        <div class=\"bottom-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"cat1\"><i></i><span>首页</span></a><a href=\"");
	templateBuilder.Append(linkurl("integral_list",0));

	templateBuilder.Append("\"\r\n                    class=\"cat5\"><i></i><span>麦币换购</span></a><a\r\n                    href=\"");
	templateBuilder.Append(linkurl("shop"));

	templateBuilder.Append("\" class=\"cat2\"><i></i><span>本地生活</span></a><a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" class=\"cat3\"><i></i><span>我的订单</span></a><a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"\r\n                        class=\"cat4 active\"><i></i><span>会员中心</span></a></div>\r\n    </div>\r\n    <script>\r\n        function showsub() {\r\n            var s = $(\"#vipsub\").attr(\"style\");\r\n            if (s == \"\") {\r\n                $(\"#vipsub\").hide();\r\n            }\r\n            else {\r\n                $(\"#vipsub\").show();\r\n                $(\"#vipsub\").attr(\"style\", \"\");\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
