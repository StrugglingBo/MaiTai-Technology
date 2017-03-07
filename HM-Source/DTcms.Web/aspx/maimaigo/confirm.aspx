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

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>商品详情--");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" type=\"text/css\" rel=\"stylesheet\" charset=\"utf-8\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" type=\"text/css\" rel=\"stylesheet\" charset=\"utf-8\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/confirm.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/city-picker.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/city-picker.data.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/city-picker.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.dropkick-min.js\"></");
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        $(function () {\r\n            var $citypicker3 = $('#city-picker3');\r\n            var pp=\"\";\r\n            var ct=\"\";\r\n            var dt=\"\";\r\n            ");
	if (addrmodel!=null)
	{

	templateBuilder.Append("\r\n            var addr=\"");
	templateBuilder.Append(Utils.ObjectToStr(addrmodel.area));
	templateBuilder.Append("\";\r\n            var arr = addr.split(',');\r\n                pp=arr[0];\r\n                ct=arr[1];\r\n                dt=arr[2];\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            $citypicker3.citypicker({\r\n                level:\"district\",\r\n                province: pp,\r\n                city: ct,\r\n                district: dt\r\n            });\r\n\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n    <script>\r\n        $(function () {\r\n            initGoodsSpec('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=get_article_goods_info');\r\n            var $actionType = \"\"; //cart,order\r\n            //购买数量\r\n            $(\".tb .amount .reduce\").click(function () {\r\n                if ($(\".tb .amount .number\").val() - 1 <= 0) {\r\n                    $(\".tb .amount .number\").val(1);\r\n                } else {\r\n                    $(\".tb .amount .number\").val($(\".tb .amount .number\").val() - 1);\r\n                }\r\n                var pricesingle = $(\"#sprice\").val();\r\n                var nowcount = $(\"#commoditySelectNum\").val();\r\n                var npoint=$(\"#hfnpoint\").val();\r\n                if(parseFloat(npoint)>0){\r\n                    $(\"#showmoeny\").html(\"应付金额：￥\" + (parseFloat(pricesingle) * nowcount).toFixed(2)+\"+\"+(parseFloat(npoint) * nowcount).toFixed(2)+\"麦币\");\r\n                }\r\n                else\r\n                {\r\n                    $(\"#showmoeny\").html(\"应付金额：￥\" + (parseFloat(pricesingle) * nowcount).toFixed(2));\r\n                }\r\n            });\r\n\r\n            $(\".tb .amount .increase\").click(function () {\r\n                var maxnum = $(\"#commoditySelectNum\").attr(\"maxvalue\");\r\n                if ((parseInt($(\".tb .amount .number\").val()) + 1) > parseInt(maxnum)) {\r\n                    return false;\r\n                }\r\n                else {\r\n                    $(\".tb .amount .number\").val(parseInt($(\".tb .amount .number\").val()) + 1);\r\n                }\r\n                var pricesingle = $(\"#sprice\").val();\r\n                var nowcount = $(\"#commoditySelectNum\").val();\r\n                 var npoint=$(\"#hfnpoint\").val();\r\n                if(parseFloat(npoint)>0){\r\n                    $(\"#showmoeny\").html(\"应付金额：￥\" + (parseFloat(pricesingle) * nowcount).toFixed(2)+\"+\"+(parseFloat(npoint) * nowcount).toFixed(2)+\"麦币\");\r\n                }\r\n                else\r\n                {\r\n                    $(\"#showmoeny\").html(\"应付金额：￥\" + (parseFloat(pricesingle) * nowcount).toFixed(2));\r\n                }\r\n            });\r\n            //购买按钮\r\n            $(\".buy-btn\").click(function () {\r\n                $(\"#payTips\").show();\r\n            });\r\n\r\n            //关闭按钮\r\n            $(\".close\").click(function () {\r\n                $(\"#payTips\").hide();\r\n            });\r\n\r\n            //关闭按钮\r\n            $(\".item .need-bill\").click(function () {\r\n                if ($(this).is(':checked')) {\r\n                    $(\".item.bill .sub-option\").show();\r\n                    $(\".item.bill .value\").text(\"邮寄需支付快递费10元！\");\r\n                } else {\r\n                    $(\".item.bill .sub-option\").hide();\r\n                    $(\".item.bill .value\").text(\"需要发票可自行到公司领取！\");\r\n                }\r\n            });\r\n            \r\n        });\r\n        function save_order_topay() {\r\n            var pid = ");
	templateBuilder.Append(Utils.ObjectToStr(proid));
	templateBuilder.Append(";\r\n            var bnum=$(\"#commoditySelectNum\").val();\r\n\r\n            var accept_name=$(\"#accept_name\").val();\r\n\r\n            var pca=$(\"#city-picker3\").val();\r\n            var province=\"\";\r\n            var city=\"\";\r\n            var area=\"\";\r\n            if(pca!=\"\"){\r\n                var arr = pca.split('/');\r\n                if (arr.length > 1) {\r\n                province=arr[0];\r\n                city=arr[1];\r\n                area=arr[2];\r\n                 }\r\n                    else {\r\n                        layer.open({\r\n                            content: \"请选择寄送地址所在区域！\",\r\n                            time: 2000\r\n                        });\r\n                        return false;\r\n                    }\r\n            }\r\n            var address=$(\"#address\").val();\r\n            var mobile=$(\"#mobile\").val();\r\n\r\n            var goodno=$(\"#commodityGoodsNo\").val();\r\n            var post_card=\"\";\r\n            var carduname=\"\";\r\n            if(goodno!=\"\"){\r\n                 post_card=$(\"#cardnumber\").val();\r\n                 carduname=$(\"#carduname\").val();\r\n            }\r\n            var postid=$(\"#post_id\").val();\r\n            var baseurl = '/tools/submit_ajax.ashx?action=order_save&pid='+pid+'&bnum=' + bnum + '&site=maimaigo&accept_name='+accept_name+'&province='+province+'&city='+city+'&area='+area+'&address='+address+'&mobile='+mobile+\"&goodno=\"+goodno+\"&post_card=\"+post_card+\"&carduname=\"+carduname+\"&postid=\"+postid;\r\n            var b=1;\r\n            var vpoint=$(\"#hfnpoint\").val();\r\n            if(vpoint*1>0){\r\n                layer.open({\r\n                            content: \"确认下单后,麦币将扣除,是否确定?\",\r\n                            btn: ['确认', '取消'],\r\n                            yes: function (index) {\r\n                                dobase(baseurl);\r\n                            },\r\n                            no: function (index) {\r\n                                b=1;\r\n                            }\r\n                        });\r\n            }\r\n            else\r\n            {\r\n                b=0;\r\n            }\r\n            if(b==0){\r\n                dobase(baseurl);\r\n            }\r\n        }\r\n        function dobase(burl){\r\n            $.ajax({\r\n                    url: burl,\r\n                    type: 'GET',\r\n                    dataType: 'json',\r\n                    timeout: '1000',\r\n                    cache: 'false',\r\n                    success: function (data) {\r\n                        if (data.status == \"1\") {\r\n                            var turl = data.url;\r\n                            if (turl != \"\") {\r\n                                if (typeof (data.url) == \"undefined\") {\r\n                                    location.href = $(\"#turl\").val();\r\n                                } else {\r\n                                    location.href = data.url;\r\n                                }\r\n                            }\r\n                        } else {\r\n                            layer.open({\r\n                                content: data.msg,\r\n                                time: 2000\r\n                            });\r\n                        }\r\n                    }\r\n                });\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <input type=\"hidden\" id=\"sprice\" value=\"" + Utils.ObjectToStr(gmodel.fields["sell_price"]) + "\" />\r\n    <div id=\"pageContainer\">\r\n        <div class=\"confirm-list\">\r\n            <div class=\"top-front\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("goods_show",proid));

	templateBuilder.Append("\" class=\"back\"></a>\r\n                <div class=\"slogan\">\r\n                    订单支付</div>\r\n                <div class=\"login\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"></a>\r\n                </div>\r\n            </div>\r\n            <ul>\r\n                ");
	List<DTcms.Model.article_goods_spec> specList = get_article_goods_spec(gmodel.id, "parent_id=0");

	templateBuilder.Append("\r\n                <li class=\"item\">\r\n                    <div class=\"option receiver\">\r\n                        ");
	if (addrmodel!=null)
	{

	templateBuilder.Append("\r\n                        <span class=\"label\">收货人</span><span class=\"value\"><input id=\"accept_name\" name=\"accept_name\"\r\n                            type=\"text\" placeholder=\"请填写收货人\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(addrmodel.accept_name));
	templateBuilder.Append("\"></span><span class=\"add\">+</span>\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <span class=\"label\">收货人</span><span class=\"value\"><input id=\"accept_name\" name=\"accept_name\"\r\n                            type=\"text\" placeholder=\"请填写收货人\"></span><span class=\"add\">+</span>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                </li>\r\n                <li class=\"item\">\r\n                    <div class=\"option receiver\">\r\n                        <span class=\"label\">省/市/区</span><span class=\"value\" style=\"padding-left: 75px;\"><div\r\n                            id=\"distpicker\">\r\n                            <div style=\"position: relative;\">\r\n                                <input id=\"city-picker3\" class=\"form-control\" readonly type=\"text\" data-toggle=\"city-picker3\">\r\n                            </div>\r\n                        </div>\r\n                        </span>\r\n                    </div>\r\n                </li>\r\n                <li class=\"item\">\r\n                    <div class=\"option address\">\r\n                        ");
	if (addrmodel!=null)
	{

	templateBuilder.Append("\r\n                        <span class=\"label\">收货地址</span><span class=\"value\"><input id=\"address\" name=\"address\"\r\n                            type=\"text\" placeholder=\"请填写收货地址\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(addrmodel.address));
	templateBuilder.Append("\"></span>\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <span class=\"label\">收货地址</span><span class=\"value\"><input id=\"address\" name=\"address\"\r\n                            type=\"text\" placeholder=\"请填写收货地址\"></span>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                </li>\r\n                <li class=\"item\">\r\n                    <div class=\"option receiver\">\r\n                        ");
	if (addrmodel!=null)
	{

	templateBuilder.Append("\r\n                        <span class=\"label\">联系电话</span><span class=\"value\"><input id=\"mobile\" name=\"mobile\"\r\n                            type=\"text\" placeholder=\"请输入联系电话\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(addrmodel.mobile));
	templateBuilder.Append("\"></span>\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <span class=\"label\">联系电话</span><span class=\"value\"><input id=\"mobile\" name=\"mobile\"\r\n                            type=\"text\" placeholder=\"请输入联系电话\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.mobile));
	templateBuilder.Append("\"></span>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                </li>\r\n                <li class=\"item\">\r\n                    <div class=\"option\">\r\n                        <span class=\"label\">货品清单</span></div>\r\n                    <div class=\"sub-option product\">\r\n                        <div class=\"thumb\">\r\n                            <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(gmodel.img_url));
	templateBuilder.Append("\" />\r\n                        </div>\r\n                        <div class=\"title\">\r\n                            ");
	templateBuilder.Append(Utils.ObjectToStr(gmodel.title));
	templateBuilder.Append("</div>\r\n                        <div class=\"price\">\r\n                            <i>\r\n                                ");
	if (double.Parse(Utils.ObjectToStr(gmodel.fields["point"]))>0)
	{

	templateBuilder.Append("\r\n                                ￥" + Utils.ObjectToStr(gmodel.fields["sell_price"]) + "+" + Utils.ObjectToStr(gmodel.fields["point"]) + "麦币\r\n                                ");
	}
	else
	{

	templateBuilder.Append("\r\n                                ￥" + Utils.ObjectToStr(gmodel.fields["sell_price"]) + "\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                            </i><b id=\"commodityStockNum\">库存:" + Utils.ObjectToStr(gmodel.fields["stock_quantity"]) + "</b></div>\r\n                        <div class=\"title\">\r\n                            ");
	templateBuilder.Append(Utils.ObjectToStr(spec_text));
	templateBuilder.Append("</div>\r\n                    </div>\r\n                </li>\r\n            </ul>\r\n            <!--油卡选择结束//-->\r\n            <ul>\r\n                <li class=\"item\">\r\n                    <div class=\"option receiver\">\r\n                        <span class=\"label\">购买数量</span>\r\n                        <div class=\"tb\" id=\"selectTb\">\r\n                            <span class=\"value\"><i class=\"amount\"><b class=\"reduce\">-</b><input id=\"commoditySelectNum\"\r\n                                maxlength=\"9\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(buynum));
	templateBuilder.Append("\" maxvalue=\"" + Utils.ObjectToStr(gmodel.fields["stock_quantity"]) + "\" onkeydown=\"return checkNumber(event);\"\r\n                                type=\"text\" class=\"number\" readonly=\"readonly\" /><b class=\"increase\">+</b></i></span>\r\n                        </div>\r\n                    </div>\r\n                </li>\r\n                <li class=\"item\">\r\n                    <div class=\"sub-option payment\">\r\n                        <i>支付宝支付</i><b></b></div>\r\n                </li>\r\n            </ul>\r\n        </div>\r\n        <!--底部按钮//-->\r\n        <div class=\"button-bar\">\r\n            ");
	double tpaymoney = double.Parse(Utils.ObjectToStr(gmodel.fields["sell_price"]))*buynum;

	double tpaypoint = double.Parse(Utils.ObjectToStr(gmodel.fields["point"]))*buynum;

	templateBuilder.Append("\r\n            <span id=\"showmoeny\">应付金额：\r\n                ");
	if (tpaypoint>0)
	{

	templateBuilder.Append("\r\n                ￥");
	templateBuilder.Append(Utils.ObjectToStr(tpaymoney));
	templateBuilder.Append("+");
	templateBuilder.Append(Utils.ObjectToStr(tpaypoint));
	templateBuilder.Append("麦币\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                ￥");
	templateBuilder.Append(Utils.ObjectToStr(tpaymoney));
	templateBuilder.Append("\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </span><a id=\"buyButton\" href=\"javascript:;\" onclick=\"save_order_topay()\" class=\"buy-btn\">\r\n                确认下单</a></div>\r\n        <input type=\"hidden\" id=\"turl\" value=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" />\r\n        <input type=\"hidden\" id=\"commodityArticleId\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(gmodel.id));
	templateBuilder.Append("\" />\r\n        <input type=\"hidden\" id=\"post_id\" name=\"post_id\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(postid));
	templateBuilder.Append("\" />\r\n        <input type=\"hidden\" id=\"hfnpoint\" name=\"hfnpoint\" value=\"" + Utils.ObjectToStr(gmodel.fields["point"]) + "\" />\r\n        <input type=\"hidden\" id=\"nowurl\" value=\"");
	templateBuilder.Append(linkurl("confirm"));

	templateBuilder.Append("\" />\r\n        <input type=\"hidden\" id=\"commodityGoodsNo\" name=\"commodityGoodsNo\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(goodno));
	templateBuilder.Append("\" />\r\n        <input type=\"hidden\" id=\"cardnumber\" name=\"cardnumber\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(cardno));
	templateBuilder.Append("\" />\r\n        <input type=\"hidden\" id=\"carduname\" name=\"carduname\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(carduname));
	templateBuilder.Append("\" />\r\n    </div>\r\n    <div id=\"address-list\">\r\n        <div class=\"address-list\">\r\n            ");
	DataTable list = get_user_addr_book_list(15, 1, "user_id="+userModel.id, out totalcount);

	templateBuilder.Append("<!--取得一个DataTable-->\r\n            ");
	string pagelist = get_page_link(15, 1, totalcount, "useraddress", "__id__");

	templateBuilder.Append("\r\n            <!--取得分页页码列表-->\r\n            ");
	foreach(DataRow dr in list.Rows)
	{

	templateBuilder.Append("\r\n            <div class=\"item\" onclick=\"setAddr(" + Utils.ObjectToStr(dr["id"]) + ")\">\r\n                <div class=\"item-hd\">\r\n                    <span class=\"name\">" + Utils.ObjectToStr(dr["accept_name"]) + "</span><span class=\"tel\">\r\n                        ");
	if (Utils.ObjectToStr(dr["telphone"])!="")
	{

	templateBuilder.Append("\r\n                        " + Utils.ObjectToStr(dr["telphone"]) + "");
	}
	else
	{

	templateBuilder.Append("\r\n                        " + Utils.ObjectToStr(dr["mobile"]) + "");
	}	//end for if

	templateBuilder.Append("</span></div>\r\n                <div class=\"item-bd\">\r\n                    ");
	if (Utils.ObjectToStr(dr["is_default"])=="1")
	{

	templateBuilder.Append("<b>[默认地址]</b>");
	}	//end for if

	templateBuilder.Append("" + Utils.ObjectToStr(dr["area"]) + " " + Utils.ObjectToStr(dr["address"]) + "</div>\r\n            </div>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n    </div>\r\n    <script>\r\n        $(function () {\r\n            //弹窗\r\n            $(\".add\").click(function () {\r\n                layer.open({\r\n                    type: 1,\r\n                    area: ['80%', 'auto'],\r\n                    closeBtn: 1, //不显示关闭按钮\r\n                    shift: 2,\r\n                    title: '请选择寄送地址',\r\n                    shadeClose: true, //开启遮罩关闭\r\n                    content: $(\"#address-list\").html()\r\n                });\r\n            });\r\n        });\r\n        function setAddr(id) {\r\n            window.location.href = $(\"#nowurl\").val() + \"?gid=\" + $(\"#commodityArticleId\").val() + \"&num=\" + $(\"#commoditySelectNum\").val() + \"&postid=\" + id + \"&carduname=\" + $(\"#carduname\").val() + \"&cardnumber=\" + $(\"#cardnumber\").val() + \"&goodno=\" + $(\"#commodityGoodsNo\").val();\r\n        }\r\n\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
