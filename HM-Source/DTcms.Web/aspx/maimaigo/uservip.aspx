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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>购买VIP-麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/usercenter.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/city-picker.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/city-picker.data.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/city-picker.js\"></");
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        $(function () {\r\n            var $citypicker3 = $('#city-picker3');\r\n            $citypicker3.citypicker({\r\n                level: \"district\",\r\n                province: '',\r\n                city: '',\r\n                district: ''\r\n            });\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n    <script>\r\n        function buyvip() {\r\n            var area = $(\"#uarea\").val();\r\n            if (area == \"\") {\r\n                area = $(\"#city-picker3\").val();\r\n            }\r\n            var uid = $(\"#uid\").val();\r\n            if (uid > 0 && area != \"\") {\r\n                var pre = $(\"#txtpre\").val();\r\n                var rechargeno = $(\"#payment\").val();\r\n                var baseurl = '/api/appfun.ashx?action=buy_vip&uid=' + uid + '&area=' + area;\r\n                $.ajax({\r\n                    url: baseurl,\r\n                    type: 'GET',\r\n                    dataType: 'json',\r\n                    timeout: '1000',\r\n                    cache: 'false',\r\n                    success: function (data) {\r\n                        if (data.success == \"true\") {\r\n                            var turl = data.url;\r\n                            if (turl != \"\") {\r\n                                if (typeof (data.url) == \"undefined\") {\r\n                                    location.href = $(\"#turl\").val();\r\n                                } else {\r\n                                    location.href = data.url;\r\n                                }\r\n                            }\r\n                        } else {\r\n                            layer.open({\r\n                                content: data.msg,\r\n                                time: 2000\r\n                            });\r\n                        }\r\n                    }\r\n                });\r\n            }\r\n            else {\r\n                layer.open({\r\n                    content: \"请选择您所在区域!\",\r\n                    time: 2000\r\n                });\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">购买VIP</span>\r\n        </div>\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"uc-form\">\r\n                <form class=\"form-inline\">\r\n                ");
	if (userModel.area=="")
	{

	templateBuilder.Append("\r\n                <div class=\"item item-input\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <div class=\"item item-input\" style=\"display: none;\">\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        <label>\r\n                            归属区域：</label><div id=\"distpicker\">\r\n                                <div style=\"position: relative;\">\r\n                                    <input id=\"city-picker3\" class=\"form-control\" readonly type=\"text\" placeholder=\"请选择归属中心\"\r\n                                        data-toggle=\"city-picker3\">\r\n                                </div>\r\n                            </div>\r\n                    </div>\r\n                <div class=\"item item-label\">\r\n                    <label>\r\n                        支付金额：</label><span><i>" + Utils.ObjectToStr(goodModel.fields["sell_price"]) + "</i>元</span>\r\n                </div>\r\n                <div class=\"item item-label\">\r\n                    <label>\r\n                        支付方式：</label><span><i>支付宝转账支付</i></span>\r\n                </div>\r\n                <div class=\"item item-btns\">\r\n                    <a class=\"btn-confirm\" href=\"javascript:;\" onclick=\"buyvip()\">购买VIP</a>\r\n                </div>\r\n                <input type=\"hidden\" id=\"uid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append("\" />\r\n                <input type=\"hidden\" id=\"uarea\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.area));
	templateBuilder.Append("\" />\r\n                </form>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
