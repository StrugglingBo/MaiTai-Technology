<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
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
	const string channel = "localserver";

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" type=\"text/css\" rel=\"stylesheet\" charset=\"utf-8\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/detail2.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.event.drag-1.5.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.touchSlider.js\"></");
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <!--主图滚动//-->\r\n    <script>\r\n        function gotourl(objurl) {\r\n            if (objurl != \"\") {\r\n                window.location.href = objurl;\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"product-detail\">\r\n            <div class=\"top-bar\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("shop_list",""+model.category_id));

	templateBuilder.Append("\" class=\"back\"></a>\r\n                <div class=\"login\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"></a>\r\n                </div>\r\n            </div>\r\n            <!--产品简介//-->\r\n            <div class=\"top-board\">\r\n                <!--效果html开始-->\r\n                <div class=\"main_visual\">\r\n                    <div class=\"flicking_con\">\r\n                        ");
	if (model.albums!=null)
	{

	int i = 0;

	foreach(DTcms.Model.article_albums modelt in model.albums)
	{

	 i = i+1;

	templateBuilder.Append("\r\n                        <a href=\"javascript:;\">");
	templateBuilder.Append(Utils.ObjectToStr(i));
	templateBuilder.Append("</a>\r\n                        ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                    <div class=\"main_image\">\r\n                        <ul>\r\n                            ");
	foreach(DTcms.Model.article_albums modeltimg in model.albums)
	{

	templateBuilder.Append("\r\n                            <li><span style=\"background: url('");
	templateBuilder.Append(Utils.ObjectToStr(modeltimg.original_path));
	templateBuilder.Append("') center center no-repeat;\r\n                                background-size: contain;\"></span></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                        <a href=\"javascript:;\" id=\"btn_prev\"></a><a href=\"javascript:;\" id=\"btn_next\"></a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"info\">\r\n                <div class=\"title\">\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</div>\r\n                <div class=\"price\">\r\n                    <span class=\"label\">折扣率:</span><span class=\"value\">" + Utils.ObjectToStr(model.fields["prevalue"]) + "%</span></div>\r\n                <div class=\"address\" style=\"padding: 0px 15px;\" onclick=\"gotourl('");
	templateBuilder.Append(linkurl("shop_map",model.id));

	templateBuilder.Append("')\">\r\n                    <span class=\"label\"></span><span class=\"value\">" + Utils.ObjectToStr(model.fields["sub_title"]) + "</span></div>\r\n            </div>\r\n            <div class=\"infocontent\">\r\n                <div class=\"content\">\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n                </div>\r\n            </div>\r\n            <input id=\"commodityArticleId\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" />\r\n            <input id=\"commodityGoodsId\" type=\"hidden\" value=\"0\" />\r\n            <!--底部按钮//-->\r\n            <div class=\"bottom-bar\">\r\n                <div class=\"price-box\">\r\n                    <input id=\"payamount\" type=\"text\" placeholder=\"请输入支付金额\" onkeydown=\"checkNumber()\">\r\n                </div>\r\n                <a href=\"javascript:;\" onclick=\"gobuy()\" class=\"buy-btn\">立即支付</a></div>\r\n        </div>\r\n    </div>\r\n    <input type=\"hidden\" id=\"pid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" />\r\n    <input type=\"hidden\" id=\"turl\" value=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" />\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n\r\n            var $actionType = \"\"; //cart,order\r\n\r\n            $(\".main_visual\").hover(function () {\r\n                $(\"#btn_prev,#btn_next\").fadeIn()\r\n            }, function () {\r\n                $(\"#btn_prev,#btn_next\").fadeOut()\r\n            });\r\n\r\n            $dragBln = false;\r\n\r\n            $(\".main_image\").touchSlider({\r\n                flexible: true,\r\n                speed: 200,\r\n                btn_prev: $(\"#btn_prev\"),\r\n                btn_next: $(\"#btn_next\"),\r\n                paging: $(\".flicking_con a\"),\r\n                counter: function (e) {\r\n                    $(\".flicking_con a\").removeClass(\"on\").eq(e.current - 1).addClass(\"on\");\r\n                }\r\n            });\r\n\r\n            $(\".main_image\").bind(\"mousedown\", function () {\r\n                $dragBln = false;\r\n            });\r\n\r\n            $(\".main_image\").bind(\"dragstart\", function () {\r\n                $dragBln = true;\r\n            });\r\n\r\n            $(\".main_image a\").click(function () {\r\n                if ($dragBln) {\r\n                    return false;\r\n                }\r\n            });\r\n\r\n            timer = setInterval(function () {\r\n                $(\"#btn_next\").click();\r\n            }, 5000);\r\n\r\n            $(\".main_visual\").hover(function () {\r\n                clearInterval(timer);\r\n            }, function () {\r\n                timer = setInterval(function () {\r\n                    $(\"#btn_next\").click();\r\n                }, 5000);\r\n            });\r\n            $(\".main_image\").bind(\"touchstart\", function () {\r\n                clearInterval(timer);\r\n            }).bind(\"touchend\", function () {\r\n                timer = setInterval(function () {\r\n                    $(\"#btn_next\").click();\r\n                }, 5000);\r\n            });\r\n\r\n        });\r\n        //只允许输入数字\r\n        function checkNumber(e) {\r\n            var keynum = window.event ? e.keyCode : e.which;\r\n            if ((48 <= keynum && keynum <= 57) || keynum == 8) {\r\n                return true;\r\n            } else {\r\n                return false;\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        function gobuy() {\r\n            var proid = $(\"#pid\").val();\r\n            var pamount = $(\"#payamount\").val();\r\n            if (pamount != \"\") {\r\n                var baseurl = '/tools/submit_ajax.ashx?action=shoporder_save&site=maimaigo&pid=' + proid + '&amount=' + pamount;\r\n                layer.open({\r\n                    content: \"确认下单后,麦币将扣除,是否确定?\",\r\n                    btn: ['确认', '取消'],\r\n                    yes: function (index) {\r\n                        dobase(baseurl);\r\n                    },\r\n                    no: function (index) {\r\n                        b = 1;\r\n                    }\r\n                });\r\n            }\r\n            else {\r\n                layer.open({\r\n                    content: \"请输入支付金额后下单支付!\",\r\n                    time: 2000\r\n                });\r\n            }\r\n        }\r\n        function dobase(burl) {\r\n            $.ajax({\r\n                url: burl,\r\n                type: 'GET',\r\n                dataType: 'json',\r\n                timeout: '1000',\r\n                cache: 'false',\r\n                success: function (data) {\r\n                    if (data.status == \"1\") {\r\n                        var turl = data.url;\r\n                        if (turl != \"\") {\r\n                            if (typeof (data.url) == \"undefined\") {\r\n                                location.href = $(\"#turl\").val();\r\n                            } else {\r\n                                location.href = data.url;\r\n                            }\r\n                        }\r\n                    } else {\r\n                        layer.open({\r\n                            content: data.msg,\r\n                            time: 2000\r\n                        });\r\n                    }\r\n                }\r\n            });\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
