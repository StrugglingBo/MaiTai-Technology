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
	const string channel = "goods";

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
	templateBuilder.Append("/css/detail.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <script src=\"");
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
	templateBuilder.Append("script>\r\n    <!--主图滚动//-->\r\n    \r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"product-detail\">\r\n            <div class=\"top-bar\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("goods_list",""+model.category_id));

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
	templateBuilder.Append("</div>\r\n                <div class=\"price\">\r\n                    <span class=\"label\">单价</span><span class=\"value\">￥" + Utils.ObjectToStr(model.fields["sell_price"]) + "<i>库存：" + Utils.ObjectToStr(model.fields["stock_quantity"]) + "件</i></span></div>\r\n                <div class=\"tb\" id=\"selectTb\">\r\n                    <span class=\"label\">数量</span><span class=\"value\"><i class=\"amount\"><b class=\"reduce\">-</b><input\r\n                        id=\"commoditySelectNum\" maxlength=\"9\" value=\"1\" maxvalue=\"" + Utils.ObjectToStr(model.fields["stock_quantity"]) + "\"\r\n                        onkeydown=\"return checkNumber(event);\" type=\"text\" class=\"number\" /><b class=\"increase\">+</b></i></span>\r\n                </div>\r\n                ");
	List<DTcms.Model.article_goods_spec> specList = get_article_goods_spec(model.id, "parent_id=0");

	templateBuilder.Append("\r\n                <ul id=\"goodsSpecBox\" class=\"gift-list\">\r\n                    ");
	foreach(DTcms.Model.article_goods_spec modelt1 in specList)
	{

	templateBuilder.Append("\r\n                    <li class=\"item oilcard\">\r\n                        <div class=\"option\">\r\n                            <span class=\"label\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt1.title));
	templateBuilder.Append("</span></div>\r\n                        <div class=\"sub-option\">\r\n                            ");
	List<DTcms.Model.article_goods_spec> itemList = get_article_goods_spec(model.id, "parent_id="+modelt1.spec_id);

	if (itemList!=null)
	{

	foreach(DTcms.Model.article_goods_spec modelt2 in itemList)
	{

	templateBuilder.Append("\r\n                            <a specid=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt2.spec_id));
	templateBuilder.Append("\" href=\"javascript:;\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt2.title));
	templateBuilder.Append("</a>\r\n                            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                        </div>\r\n                    </li>\r\n                    ");
	}	//end for if

	if (model.id==113 || model.id==103)
	{

	templateBuilder.Append("\r\n                    <li class=\"item\">\r\n                        ");
	}
	else if ((model.id==117))
	{

	templateBuilder.Append("\r\n                    <li class=\"item\">\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li class=\"item\" style=\"display: none;\">\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        <div class=\"option address\">\r\n                            ");
	if (addrmodel!=null)
	{

	templateBuilder.Append("\r\n                            <span class=\"label\">持卡人姓名</span><span class=\"value\"><input id=\"carduname\" name=\"carduname\"\r\n                                type=\"text\" placeholder=\"请填写持卡人姓名\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(addrmodel.accept_name));
	templateBuilder.Append("\"></span>\r\n                            ");
	}
	else
	{

	templateBuilder.Append("\r\n                            <span class=\"label\">持卡人姓名</span><span class=\"value\"><input id=\"carduname\" name=\"carduname\"\r\n                                type=\"text\" placeholder=\"请填写持卡人姓名\"></span>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </div>\r\n                    </li>\r\n                    ");
	if (model.id==103 || model.id==117)
	{

	templateBuilder.Append("\r\n                    <li class=\"item\">\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li class=\"item\" style=\"display: none;\">\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        <div class=\"option receiver\">\r\n                            <span class=\"label\">油卡卡号</span><span class=\"value\"><input id=\"cardnumber\" name=\"cardnumber\"\r\n                                type=\"text\" placeholder=\"请输入卡号，如不填则默认邮寄。\" value=\"\"></span>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n                <input type=\"hidden\" id=\"commodityGoodsNo\" name=\"commodityGoodsNo\" value=\"\" />\r\n            </div>\r\n            <div class=\"infocontent\">\r\n                <div class=\"content\">\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n                </div>\r\n            </div>\r\n            <input id=\"commodityArticleId\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" />\r\n            <input id=\"commodityGoodsId\" type=\"hidden\" value=\"0\" />\r\n            <!--底部按钮//-->\r\n            <div class=\"bottom-bar\">\r\n                <a href=\"javascript:;\" onclick=\"gobuy()\" class=\"buy-btn\">立即购买</a></div>\r\n        </div>\r\n    </div>\r\n    <input type=\"hidden\" id=\"buyurl\" value=\"");
	templateBuilder.Append(linkurl("confirm","?gid="+model.id));

	templateBuilder.Append("\" />\r\n    <input type=\"hidden\" id=\"pid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" />\r\n\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            initGoodsSpec('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=get_article_goods_info');\r\n            var $actionType = \"\"; //cart,order\r\n            //购买数量\r\n            $(\".tb .amount .reduce\").click(function () {\r\n                if ($(\".tb .amount .number\").val() - 1 <= 0) {\r\n                    $(\".tb .amount .number\").val(1);\r\n                } else {\r\n                    $(\".tb .amount .number\").val($(\".tb .amount .number\").val() - 1);\r\n                }\r\n            });\r\n\r\n            $(\".tb .amount .increase\").click(function () {\r\n                var maxnum = $(\"#commoditySelectNum\").attr(\"maxvalue\");\r\n                if ((parseInt($(\".tb .amount .number\").val()) + 1) > parseInt(maxnum)) {\r\n                    return false;\r\n                }\r\n                else {\r\n                    $(\".tb .amount .number\").val(parseInt($(\".tb .amount .number\").val()) + 1);\r\n                }\r\n            });\r\n            $(\".main_visual\").hover(function () {\r\n                $(\"#btn_prev,#btn_next\").fadeIn()\r\n            }, function () {\r\n                $(\"#btn_prev,#btn_next\").fadeOut()\r\n            });\r\n\r\n            $dragBln = false;\r\n\r\n            $(\".main_image\").touchSlider({\r\n                flexible: true,\r\n                speed: 200,\r\n                btn_prev: $(\"#btn_prev\"),\r\n                btn_next: $(\"#btn_next\"),\r\n                paging: $(\".flicking_con a\"),\r\n                counter: function (e) {\r\n                    $(\".flicking_con a\").removeClass(\"on\").eq(e.current - 1).addClass(\"on\");\r\n                }\r\n            });\r\n\r\n            $(\".main_image\").bind(\"mousedown\", function () {\r\n                $dragBln = false;\r\n            });\r\n\r\n            $(\".main_image\").bind(\"dragstart\", function () {\r\n                $dragBln = true;\r\n            });\r\n\r\n            $(\".main_image a\").click(function () {\r\n                if ($dragBln) {\r\n                    return false;\r\n                }\r\n            });\r\n\r\n            timer = setInterval(function () {\r\n                $(\"#btn_next\").click();\r\n            }, 5000);\r\n\r\n            $(\".main_visual\").hover(function () {\r\n                clearInterval(timer);\r\n            }, function () {\r\n                timer = setInterval(function () {\r\n                    $(\"#btn_next\").click();\r\n                }, 5000);\r\n            });\r\n            $(\".main_image\").bind(\"touchstart\", function () {\r\n                clearInterval(timer);\r\n            }).bind(\"touchend\", function () {\r\n                timer = setInterval(function () {\r\n                    $(\"#btn_next\").click();\r\n                }, 5000);\r\n            });\r\n\r\n        });\r\n        //只允许输入数字\r\n        function checkNumber(e) {\r\n            var keynum = window.event ? e.keyCode : e.which;\r\n            if ((48 <= keynum && keynum <= 57) || keynum == 8) {\r\n                return true;\r\n            } else {\r\n                return false;\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n\r\n    <script type=\"text/javascript\">\r\n        function gobuy() {\r\n            var buynum = $(\"#commoditySelectNum\").val();\r\n            var carduname = $(\"#carduname\").val();\r\n            var cardnumber = $(\"#cardnumber\").val();\r\n            var goodno = $(\"#commodityGoodsNo\").val();\r\n            var proid = $(\"#pid\").val();\r\n            if (proid == \"103\" || proid == \"117\") {\r\n                var sublength = $(\".sub-option a\");\r\n                if (sublength.length > 0 && goodno == \"\") {\r\n                    layer.open({\r\n                        content: \"请选择产品分类后购买\",\r\n                        time: 2000\r\n                    });\r\n                }\r\n                else {\r\n                    if (carduname != \"\") {\r\n                        if (cardnumber == \"\") {\r\n//                            layer.open({\r\n//                                content: \"请填写代充油卡卡号<br/>点击确认，默认邮寄充值卡。\",\r\n//                                btn: ['确认', '取消'],\r\n//                                yes: function (index) {\r\n//                                    var sublength = $(\".sub-option a\");\r\n//                                    if (sublength.length > 0 && goodno == \"\") {\r\n//                                        layer.open({\r\n//                                            content: \"请选择产品分类后购买\",\r\n//                                            time: 2000\r\n//                                        });\r\n//                                    }\r\n//                                    else {\r\n//                                        if (buynum > 0) {\r\n//                                            location.href = $(\"#buyurl\").val() + \"&num=\" + buynum + \"&carduname=\" + carduname + \"&cardnumber=\" + cardnumber + \"&goodno=\" + goodno;\r\n//                                        }\r\n//                                    }\r\n//                                },\r\n//                                no: function (index) {\r\n//                                    return false;\r\n//                                }\r\n                            //                            });\r\n                            layer.open({\r\n                                content: \"请填写代充油卡卡号<br/>若无油卡,请选择中石化面值卡套餐.\",\r\n                                time: 4000\r\n                            });\r\n                        }\r\n                        else {\r\n                            var sublength = $(\".sub-option a\");\r\n                            if (sublength.length > 0 && goodno == \"\") {\r\n                                layer.open({\r\n                                    content: \"请选择产品分类后购买\",\r\n                                    time: 2000\r\n                                });\r\n                            }\r\n                            else {\r\n                                if (buynum > 0) {\r\n                                    location.href = $(\"#buyurl\").val() + \"&num=\" + buynum + \"&carduname=\" + carduname + \"&cardnumber=\" + cardnumber + \"&goodno=\" + goodno;\r\n                                }\r\n                            }\r\n                        }\r\n                    }\r\n                    else {\r\n                        layer.open({\r\n                            content: \"请输入油卡持有人姓名!\",\r\n                            time: 2000\r\n                        });\r\n                    }\r\n                }\r\n            }\r\n            else {\r\n                var sublength = $(\".sub-option a\");\r\n                if (sublength.length > 0 && goodno == \"\") {\r\n                    layer.open({\r\n                        content: \"请选择产品分类后购买\",\r\n                        time: 2000\r\n                    });\r\n                }\r\n                else {\r\n                    if (buynum > 0) {\r\n                        location.href = $(\"#buyurl\").val() + \"&num=\" + buynum + \"&carduname=\" + carduname + \"&cardnumber=\" + cardnumber + \"&goodno=\" + goodno;\r\n                    }\r\n                }\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
