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

	templateBuilder.Append("<html style=\"font-size: 50px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <meta name=\"applicable-device\" content=\"mobile\">\r\n    <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, user-scalable=no\">\r\n    <meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\r\n    <meta name=\"apple-touch-fullscreen\" content=\"yes\">\r\n    <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\r\n    <meta name=\"format-detection\" content=\"telephone=no\">\r\n    <meta name=\"format-detection\" content=\"address=no\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/eve.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/iconfont.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/shop.css\" rel=\"stylesheet\">\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.cookie.js\"></");
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/shopfresh.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"http://api.map.baidu.com/api?v=2.0&ak=wj8X01lY9KBl1rbBiwAGFG5GQS0m1dlS\"></");
	templateBuilder.Append("script>  \r\n    <script type=\"text/javascript\" src=\"http://developer.baidu.com/map/jsdemo/demo/convertor.js\"></");
	templateBuilder.Append("script>\r\n\r\n    <style>\r\n        @font-face\r\n        {\r\n            font-family: 'base_icon';\r\n            src: url(");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/fonts/base14.woff) format(\"woff\"), url(");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/fonts/base14.otf);\r\n        }\r\n    </style>\r\n    <script>\r\n        function GetQueryString(name) {\r\n            var url = window.location.search; //获取url中\"?\"符后的字串   \r\n            var theRequest = \"\";\r\n            if (url.indexOf(\"?\") != -1) {\r\n                var str = url.substr(1);\r\n                strs = str.split(\"&\");\r\n                for (var i = 0; i < strs.length; i++) {\r\n                    if (strs[i].split(\"=\")[0] == name) {\r\n                        theRequest = decodeURI(strs[i].split(\"=\")[1]);\r\n                    }\r\n                }\r\n            }\r\n            return theRequest;\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"index\" class=\"automove\">\r\n        <div id=\"pagecontainer\">\r\n            <header id=\"header\" class=\"navbar\">\r\n            <div class=\"nav-wrap-left\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("citypicker"));

	templateBuilder.Append("\" class=\"react\">\r\n                    <span class=\"nav-city\"><font id=\"spancityname\">获取中</font><space></space><i class=\"text-icon icon-downarrow\"></i></span>\r\n                </a>\r\n            </div>\r\n\r\n            <div class=\"box-search\">\r\n                <a class=\"react\" href=\"");
	templateBuilder.Append(linkurl("shop_list",0));

	templateBuilder.Append("\">\r\n                    <i class=\"icon-search text-icon\">⌕</i>\r\n	                    <span class=\"single-line\">\r\n	                    			输入商家/品类/商圈\r\n	                    	</span>\r\n                </a>\r\n            </div>\r\n            <div class=\"nav-wrap-right\">\r\n                <a class=\"react\" rel=\"nofollow\" href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\">\r\n                    <span class=\"nav-btn\">\r\n                        <i class=\"text-icon\">⍥</i>我的\r\n                    </span>\r\n                </a>\r\n            </div>\r\n        </header>\r\n            <dl id=\"list\" class=\"list list-in\">\r\n                <dd class=\"icon-wrapper h_gesture_\" style=\"height: 3.3rem;\">\r\n                    <ul class=\"icon-list page current\">\r\n                        ");
	DataTable categoryList = get_category_list("localserver",0,7);

	foreach(DataRow cdr in categoryList.Rows)
	{

	templateBuilder.Append("\r\n                        <li class=\"icon\"><a style=\"display: block\" href=\" ");
	templateBuilder.Append(linkurl("shop_list",Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\">\r\n                            " + Utils.ObjectToStr(cdr["seo_description"]) + "<span class=\"icon-desc\">" + Utils.ObjectToStr(cdr["title"]) + "</span></a> </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        <li class=\"icon\"><a style=\"display: block\" href=\"");
	templateBuilder.Append(linkurl("shop_list","0"));

	templateBuilder.Append("\"><span\r\n                            class=\"new-icon-circle iconfont quanbu\" style=\"background: #00d3be\"></span><span\r\n                                class=\"icon-desc\">全部分类</span></a> </li>\r\n                    </ul>\r\n                    <ul class=\"list-ico list\">\r\n                    </ul>\r\n                </dd>\r\n            </dl>\r\n            <div id=\"guessLike\" class=\"guess-like\">\r\n                <dl class=\"list\" style=\"opacity: 1;\">\r\n                    <dd>\r\n                        <dl id=\"thelist\" class=\"list\" style=\"opacity: 1;\">\r\n                        </dl>\r\n                        <div id=\"pullUp\">\r\n                            <span class=\"pullUpLabel\"></span>\r\n                        </div>\r\n                        <input type=\"hidden\" id=\"cid\" value=\"0\" />\r\n                    </dd>\r\n                </dl>\r\n            </div>\r\n            <div class=\"bottom-bar\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"cat1\"><i></i><span>首页</span></a><a href=\"");
	templateBuilder.Append(linkurl("integral_list",0));

	templateBuilder.Append("\"\r\n                    class=\"cat5\"><i></i><span>积分商城</span></a><a href=\"");
	templateBuilder.Append(linkurl("shop"));

	templateBuilder.Append("\" class=\"cat2 active\"><i></i><span>本地生活</span></a><a\r\n                        href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" class=\"cat3\"><i></i><span>我的订单</span></a><a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"\r\n                            class=\"cat4\"><i></i><span>会员中心</span></a>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
