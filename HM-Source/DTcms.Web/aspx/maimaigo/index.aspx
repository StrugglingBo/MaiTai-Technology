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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/home.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.event.drag-1.5.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.touchSlider.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/goodsfresh.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(document).ready(function () {\r\n\r\n            $(\".main_visual\").hover(function () {\r\n                $(\"#btn_prev,#btn_next\").fadeIn()\r\n            }, function () {\r\n                $(\"#btn_prev,#btn_next\").fadeOut()\r\n            });\r\n\r\n            $dragBln = false;\r\n\r\n            $(\".main_image\").touchSlider({\r\n                flexible: true,\r\n                speed: 200,\r\n                btn_prev: $(\"#btn_prev\"),\r\n                btn_next: $(\"#btn_next\"),\r\n                paging: $(\".flicking_con a\"),\r\n                counter: function (e) {\r\n                    $(\".flicking_con a\").removeClass(\"on\").eq(e.current - 1).addClass(\"on\");\r\n                }\r\n            });\r\n\r\n            $(\".main_image\").bind(\"mousedown\", function () {\r\n                $dragBln = false;\r\n            });\r\n\r\n            $(\".main_image\").bind(\"dragstart\", function () {\r\n                $dragBln = true;\r\n            });\r\n\r\n            $(\".main_image a\").click(function () {\r\n                if ($dragBln) {\r\n                    return false;\r\n                }\r\n            });\r\n\r\n            timer = setInterval(function () {\r\n                $(\"#btn_next\").click();\r\n            }, 5000);\r\n\r\n            $(\".main_visual\").hover(function () {\r\n                clearInterval(timer);\r\n            }, function () {\r\n                timer = setInterval(function () {\r\n                    $(\"#btn_next\").click();\r\n                }, 5000);\r\n            });\r\n\r\n            $(\".main_image\").bind(\"touchstart\", function () {\r\n                clearInterval(timer);\r\n            }).bind(\"touchend\", function () {\r\n                timer = setInterval(function () {\r\n                    $(\"#btn_next\").click();\r\n                }, 5000);\r\n            });\r\n\r\n\r\n            /***装运**/\r\n\r\n            $(\"#pop-mask,#btn-close,#btn-ok\").click(function () {\r\n                $(\"#pop-mask\").hide();\r\n                $(\"#pop-tip\").hide();\r\n            });\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"home\">\r\n            <div class=\"top-front\">\r\n                <div class=\"logo\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/logo-top.png\"></a></div>\r\n                <div class=\"slogan\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/slogan.png\"></div>\r\n                <div class=\"login\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"></a>\r\n                </div>\r\n            </div>\r\n            <!--效果html开始-->\r\n            ");
	DataTable AdvertList = get_plugin_method("DTcms.Web.Plugin.Advert", "Advert", "get_Advert_list", 6, "aid=5");

	templateBuilder.Append("\r\n            <div class=\"main_visual\">\r\n                <div class=\"flicking_con\">\r\n                    ");
	int advdrcar__loop__id=0;
	foreach(DataRow advdrcar in AdvertList.Rows)
	{
		advdrcar__loop__id++;


	templateBuilder.Append("\r\n                    <a href=\"javascript:;\">");
	templateBuilder.Append(Utils.ObjectToStr(advdrcar__loop__id-1));
	templateBuilder.Append("</a>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"main_image\">\r\n                    <ul>\r\n                        ");
	int advdr__loop__id=0;
	foreach(DataRow advdr in AdvertList.Rows)
	{
		advdr__loop__id++;


	templateBuilder.Append("\r\n                        <a href=\"" + Utils.ObjectToStr(advdr["link_url"]) + "\" style=\"display:block; width:100%; height:100%;\">\r\n                        <li><span style=\"background: url('" + Utils.ObjectToStr(advdr["file_path"]) + "') top center no-repeat; background-size: cover;\">\r\n                        </span></li>\r\n                        </a>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                    <a href=\"javascript:;\" id=\"btn_prev\"></a><a href=\"javascript:;\" id=\"btn_next\"></a>\r\n                </div>\r\n            </div>\r\n            <!--效果html结束-->\r\n            <!--分类//-->\r\n            <nav class=\"quick-entry\">\r\n            ");
	DataTable categoryList = get_category_list("goods",0,3);

	foreach(DataRow cdr in categoryList.Rows)
	{

	if (Utils.ObjectToStr(cdr["img_url"])!="")
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\"><img src=\"" + Utils.ObjectToStr(cdr["img_url"]) + "\"><span>" + Utils.ObjectToStr(cdr["title"]) + "</span></a>\r\n            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("goods_list","0"));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/ticon-4.png\"><span>全部</span></a>\r\n        </nav>\r\n            <!--推荐商品//-->\r\n            <div class=\"section feature\">\r\n                <div class=\"section-hd\">\r\n                    <span>推荐商品</span></div>\r\n                <div class=\"section-bd\">\r\n                    <ul>\r\n                        ");
	DataTable redGoods = get_article_list("goods", 0, 3, "status=0 and is_red=1 and isnull(img_url,'')>''");

	foreach(DataRow dr in redGoods.Rows)
	{

	templateBuilder.Append("\r\n                        <li><span class=\"thumb\"><a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\"></a></span><span class=\"title\"><a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></span><span\r\n                                class=\"price\">" + Utils.ObjectToStr(dr["sell_price"]) + "</span></li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <!--商品列表//-->\r\n            <div class=\"section goods\">\r\n                <div class=\"section-hd\">\r\n                    <span>商品列表</span></div>\r\n                <div class=\"section-bd\">\r\n                    <ul id=\"thelist\">\r\n                    </ul>\r\n                </div>\r\n                <div id=\"pullUp\">\r\n                    <span class=\"pullUpLabel\"></span>\r\n                </div>\r\n<div class='copyright'>&copy; 麦太科技 浙ICP备16046396号-1</div>\r\n                <input type=\"hidden\" id=\"cid\" value=\"0\" />\r\n            </div>\r\n            <!--导航//-->\r\n            <div class=\"bottom-bar\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"cat1 active\"><i></i><span>首页</span></a><a href=\"");
	templateBuilder.Append(linkurl("integral_list",0));

	templateBuilder.Append("\"\r\n                    class=\"cat5\"><i></i><span>麦币换购</span></a><a\r\n                    href=\"");
	templateBuilder.Append(linkurl("shop"));

	templateBuilder.Append("\" class=\"cat2\"><i></i><span>本地生活</span></a><a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" class=\"cat3\"><i></i><span>我的订单</span></a><a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"\r\n                            class=\"cat4\"><i></i><span>会员中心</span></a></div>\r\n        </div>\r\n    </div>\r\n     ");
	DataTable newsinfo = get_article_list("content", 66, 1, "status=0","add_time desc");

	foreach(DataRow dr in newsinfo.Rows)
	{

	if (getcanshow(Utils.ObjectToStr(dr["id"]))==true)
	{

	templateBuilder.Append("\r\n    <div id=\"pop-mask\" class=\"pop-mask\">\r\n    </div>\r\n    <div id=\"pop-tip\" class=\"pop-tip\">\r\n        <ul>\r\n            <li id=\"btn-close\" class=\"close\">x</li>\r\n            <li class=\"topbg\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/news-pic.png\">\r\n            </li>\r\n            <li class=\"title\">" + Utils.ObjectToStr(dr["title"]) + "</li>\r\n            <li class=\"content\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(dr["zhaiyao"]),80));

	templateBuilder.Append("</li>\r\n            <li class=\"btns\"><a href=\"");
	templateBuilder.Append(linkurl("article_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" id=\"btn-ok\">查看详情</a></li>\r\n        </ul>\r\n    </div>\r\n     ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
