<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.userorder_show" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>订单详情</title>\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/order-detail.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
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
	templateBuilder.Append("script>\r\n    <script>\r\n        function sure_get(objid) {\r\n            var baseurl = '/api/appfun.ashx?action=cancleorder&orderid=' + objid;\r\n            if (objid != \"\") {\r\n                $.ajax({\r\n                    url: baseurl,\r\n                    type: 'GET',\r\n                    dataType: 'json',\r\n                    timeout: '1000',\r\n                    cache: 'false',\r\n                    success: function (data) {\r\n                        if (data.success == \"true\") {\r\n                            layer.open({\r\n                                content: \"订单取消成功!\",\r\n                                time: 2000\r\n                            });\r\n                            setTimeout(function () {\r\n                                window.location.href = $(\"#backurl\").val();\r\n                            }, 2500);\r\n\r\n                        } else {\r\n                            layer.open({\r\n                                content: data.msg,\r\n                                time: 2000\r\n                            });\r\n                        }\r\n                    }\r\n                });\r\n            }\r\n        }\r\n        function save_alipay(objid) {\r\n            var objv = $(\"#\" + objid).html();\r\n            layer.open({\r\n                title: ['第三方服务', 'background-color:#00AAFF; color:#fff;'], anim: 'up', content: '本人愿意将本订单所购油卡<br/>充值入如下卡号：<br/>1000113200016818246<br/>(油卡回收服务由第三方<br/>温州天韵贸易有限公司提供)', btn: '确认', yes: function () {\r\n                    layer.open({\r\n                        title: ['请输入银行卡账号', 'background-color:#00AAFF; color:#fff;'], anim: 'up', content: objv, btn: '提交', yes: function () {\r\n                            var alic = $(\".layui-layer-content #aliaccount\").val();\r\n                            var aliname = $(\".layui-layer-content #aliname\").val();\r\n                            var alibankname = $(\".layui-layer-content #alibankname\").val();\r\n                            if (alic != \"\") {\r\n                                //修改订单备注\r\n                                var card = '1000113200016818246';\r\n                                var remark = aliname + \"/\" + alic + \"[\" + alibankname + \"]\";\r\n                                var orderid = $(\"#oid\").val();\r\n                                var baseurl = '/api/appfun.ashx?action=backoilcard&orderid=' + orderid + \"&card=\" + card + \"&remark=\" + remark;\r\n                                if (objid != \"\") {\r\n                                    $.ajax({\r\n                                        url: baseurl,\r\n                                        type: 'GET',\r\n                                        dataType: 'json',\r\n                                        timeout: '1000',\r\n                                        cache: 'false',\r\n                                        success: function (data) {\r\n                                            if (data.success == \"true\") {\r\n                                                layer.open({\r\n                                                    content: \"油卡回收成功,请等待后续处理!\",\r\n                                                    time: 2000\r\n                                                });\r\n                                                setTimeout(function () {\r\n                                                    window.location.reload();\r\n                                                }, 2500);\r\n\r\n                                            } else {\r\n                                                layer.open({\r\n                                                    content: data.msg,\r\n                                                    time: 2000\r\n                                                });\r\n                                            }\r\n                                        }\r\n                                    });\r\n                                }\r\n\r\n                            }\r\n                            else {\r\n                                layer.open({\r\n                                    content: '未输入收款支付宝账户,回收取消!', time: 2000\r\n                                });\r\n                            }\r\n                        }\r\n                    });\r\n                }\r\n            });\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body style=\"background-color: #fff;\">\r\n    <input type=\"hidden\" id=\"backurl\" value=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" />\r\n    <div id=\"wrapper\">\r\n        <div data-log=\"订单详情\" class=\"order-checkout\">\r\n            <div class=\"top-front\">\r\n                <a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" class=\"back\"></a>\r\n                <div class=\"slogan\">\r\n                    订单详情</div>\r\n                <div class=\"login\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"></a>\r\n                </div>\r\n            </div>\r\n            <div class=\"order-checkout-wrap\">\r\n                <div>\r\n                    <div class=\"b0\">\r\n                        <ul>\r\n                            <li class=\"b01\">订单编号：");
	templateBuilder.Append(Utils.ObjectToStr(model.order_no));
	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(linkurl("workflow","?on="+model.order_no));

	templateBuilder.Append("\" class=\"btn-workorder\">提交工单</a></li>\r\n                            <li class=\"b01\">订单状态：<label>\r\n                                ");
	templateBuilder.Append(get_order_status(model.id).ToString());

	templateBuilder.Append("</label></li>\r\n                        </ul>\r\n                    </div>\r\n                    <input id=\"oid\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" />\r\n                    <div class=\"b1\">\r\n                        <div class=\"b11\">\r\n                            <p>\r\n                                <span>");
	templateBuilder.Append(Utils.ObjectToStr(model.accept_name));
	templateBuilder.Append("</span><span>");
	templateBuilder.Append(secretphone(model.mobile).ToString());

	templateBuilder.Append("</span></p>\r\n                        </div>\r\n                        <div class=\"b13\">\r\n                            <p>\r\n                                ");
	templateBuilder.Append(Utils.ObjectToStr(model.area));
	templateBuilder.Append(" ");
	templateBuilder.Append(Utils.ObjectToStr(model.address));
	templateBuilder.Append("</p>\r\n                        </div>\r\n                    </div>\r\n                    ");
	if (model.post_code!="" && model.post_code!="undefined")
	{

	templateBuilder.Append("\r\n                    <div class=\"b3\">\r\n                        <div>\r\n                            <span>加油卡卡号：</span><span class=\"tip\">");
	templateBuilder.Append(Utils.ObjectToStr(model.post_code));
	templateBuilder.Append("</span></div>\r\n                    </div>\r\n                    <div class=\"b4\">\r\n                        <div>\r\n                            <span>持卡人姓名：</span><span class=\"tip\">");
	templateBuilder.Append(Utils.ObjectToStr(model.email));
	templateBuilder.Append("</span></div>\r\n                    </div>\r\n                    <div class=\"b4\">\r\n                        <div>\r\n                            <span>订单备注：</span><span class=\"tip\">");
	templateBuilder.Append(Utils.ObjectToStr(model.remark));
	templateBuilder.Append("</span></div>\r\n                    </div>\r\n                    ");
	}	//end for if

	if (model.express_status==2)
	{

	templateBuilder.Append("\r\n                    <div class=\"b3\">\r\n                        <div>\r\n                            <span>发货单号：</span><span class=\"tip\">\r\n                                ");
	templateBuilder.Append(get_express_title(model.express_id).ToString());

	templateBuilder.Append("\r\n                                ");
	templateBuilder.Append(Utils.ObjectToStr(model.express_no));
	templateBuilder.Append("</span></div>\r\n                    </div>\r\n                    <div class=\"b4\">\r\n                        <div>\r\n                            <span>物流信息：</span><span class=\"tip\">");
	templateBuilder.Append(Utils.ObjectToStr(expressdetail));
	templateBuilder.Append("</span></div>\r\n                    </div>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                    <div class=\"b5\">\r\n                        <ul class=\"b5-list\">\r\n                            ");
	int t = 0;

	if (model.order_goods!=null)
	{

	foreach(DTcms.Model.order_goods modelt in model.order_goods)
	{

	if (modelt.goods_id==103)
	{

	 t = 1;

	}	//end for if

	templateBuilder.Append("\r\n                            <li class=\"item\">\r\n                                <div class=\"thumb\">\r\n                                    <img src=\"");
	templateBuilder.Append(get_article_img_url(modelt.article_id).ToString());

	templateBuilder.Append("\"></div>\r\n                                <div class=\"title\">\r\n                                    ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.goods_title));
	templateBuilder.Append("\r\n                                </div>\r\n                                ");
	if (modelt.spec_text!="")
	{

	templateBuilder.Append("\r\n                                <div class=\"title\">\r\n                                    ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.spec_text));
	templateBuilder.Append("\r\n                                </div>\r\n                                ");
	}
	else
	{

	templateBuilder.Append("\r\n                                <div class=\"title\">\r\n                                    产品编号:");
	templateBuilder.Append(Utils.ObjectToStr(modelt.goods_no));
	templateBuilder.Append("\r\n                                </div>\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                                <div class=\"price\">\r\n                                    <i>\r\n                                    ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n                                ￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.real_price));
	templateBuilder.Append("+");
	templateBuilder.Append(Utils.ObjectToStr(modelt.point));
	templateBuilder.Append("麦币\r\n                                ");
	}
	else
	{

	templateBuilder.Append("\r\n                                ￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.real_price));
	templateBuilder.Append("\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                                </i> <b>x");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("</b></div>\r\n                            </li>\r\n                            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"bottom-submit ui-box\">\r\n                        <div class=\"price\">\r\n                            <ul>\r\n                                <li class=\"price-final\"><span>总金额:<strong>\r\n                                 ");
	if (model.point>0)
	{

	templateBuilder.Append("\r\n                                ￥");
	templateBuilder.Append(Utils.ObjectToStr(model.order_amount));
	templateBuilder.Append("+");
	templateBuilder.Append(Utils.ObjectToStr(model.point));
	templateBuilder.Append("麦币\r\n                                ");
	}
	else
	{

	templateBuilder.Append("\r\n                                ￥");
	templateBuilder.Append(Utils.ObjectToStr(model.order_amount));
	templateBuilder.Append("\r\n                                ");
	}	//end for if

	templateBuilder.Append("</strong></span><span>下单时间:");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</span>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                        ");
	if (model.payment_status!=2)
	{

	templateBuilder.Append("\r\n                        <div class=\"btn-list\">\r\n                            <div class=\"btn\">\r\n                                <a href=\"javascript:;\" onclick=\"sure_get(");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append(")\" class=\"ui-button ui-button-disable\">\r\n                                    <span>取消订单</span></a></div>\r\n                            <div class=\"btn\">\r\n                                <a href=\"");
	templateBuilder.Append(linkurl("payment","?action=confirm&order_no="+model.order_no));

	templateBuilder.Append("\" class=\"ui-button\">\r\n                                    <span>立即付款</span></a></div>\r\n                        </div>\r\n                        ");
	}	//end for if

	if (model.payment_status==2 && model.status<2)
	{

	if (t==1)
	{

	templateBuilder.Append("\r\n                        <!--<div class=\"btn-list\">\r\n                            <div class=\"btn\">\r\n                                <a href=\"javascript:;\" onclick=\"save_alipay('htmlalipay')\" class=\"ui-button\"><span>第三方服务</span></a></div>\r\n                        </div>-->\r\n                        ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div id=\"htmlalipay\" style=\"display: none;\">\r\n        <input type=\"text\" id=\"aliname\" name=\"aliname\" class=\"alitxt\" placeholder=\"请输入持卡人姓名\" /><input\r\n            type=\"text\" id=\"aliaccount\" name=\"aliaccount\" class=\"alitxt\" placeholder=\"请输入银行卡号\" /><input\r\n                type=\"text\" id=\"alibankname\" name=\"alibankname\" class=\"alitxt\" placeholder=\"请输入开户银行\" /></div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
