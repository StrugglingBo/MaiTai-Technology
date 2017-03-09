﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
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
	const string channel = "goods";
	const int pagesize = 20;

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/list.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <!--demo展示所用css end-->\r\n    <!--组件依赖css begin-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/widget/navigator/navigator.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/widget/navigator/navigator.iscroll.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/widget/navigator/navigator.default.css\" />\r\n    <!--皮肤文件，若不使用该皮肤，可以不加载-->\r\n    <!--组件依赖css end-->\r\n    <!--组件依赖js begin-->\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/zepto.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/zepto.extend.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/zepto.ui.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/zepto.iscroll.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/widget/navigator.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/widget/navigator.iscroll.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/goodsfresh.js\"></");
	templateBuilder.Append("script>\r\n    <!--组件依赖js end-->\r\n    <script type=\"text/javascript\">\r\n        $(document).ready(function () {\r\n            $('#category').navigator();\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"list\">\r\n            <div class=\"top-front\">\r\n                <div class=\"logo\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/logo-top.png\"></a></div>\r\n                <div class=\"slogan\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/slogan.png\"></div>\r\n                <div class=\"refresh\">\r\n                    <a href=\"javascript:window.location.reload();\"></a>\r\n                </div>\r\n            </div>\r\n            <div id=\"category\">\r\n                <ul class=\"line\">\r\n                    ");
	if (category_id==0)
	{

	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("goods_list","0"));

	templateBuilder.Append("\" class=\"cur\">全部</a></li>\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("goods_list","0"));

	templateBuilder.Append("\">全部</a></li>\r\n                    ");
	}	//end for if

	DataTable categoryList = get_category_list("goods",0);

	foreach(DataRow cdr in categoryList.Rows)
	{

	if (Utils.StrToInt(Utils.ObjectToStr(cdr["id"]), 0)==category_id)
	{

	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\" class=\"cur\">" + Utils.ObjectToStr(cdr["title"]) + "</a></li>\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr["title"]) + "</a></li>\r\n                    ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                </ul>\r\n            </div>\r\n            <!--商品列表//-->\r\n            <div class=\"section goods\">\r\n                <div class=\"section-bd\">\r\n                    <ul id=\"thelist\">\r\n                    </ul>\r\n                </div>\r\n                <div id=\"pullUp\">\r\n                    <span class=\"pullUpLabel\"></span>\r\n                </div>\r\n                <input type=\"hidden\" id=\"cid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(category_id));
	templateBuilder.Append("\" />\r\n            </div>\r\n            <!--导航//-->\r\n            <div class=\"bottom-bar\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"cat1 active\"><i></i><span>首页</span></a><a href=\"");
	templateBuilder.Append(linkurl("integral_list",0));

	templateBuilder.Append("\"\r\n                    class=\"cat5\"><i></i><span>麦币换购</span></a><a\r\n                    href=\"");
	templateBuilder.Append(linkurl("shop"));

	templateBuilder.Append("\" class=\"cat2\"><i></i><span>本地生活</span></a><a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\"\r\n                    class=\"cat3\"><i></i><span>我的订单</span></a><a\r\n                        href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"cat4\"><i></i><span>会员中心</span></a></div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>