<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.payment" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/charge.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
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
	templateBuilder.Append("/js/common.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        function gotourl(objurl) {\r\n            window.location.href = objurl;\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n    ");
	if (action=="confirm")
	{

	templateBuilder.Append("\r\n    <script>\r\n        function showinfo() {\r\n            layer.open({\r\n                content: \"<font style='text-align:center;'>订单下单成功<br/>请在15分钟内支付!</font>\",\r\n                time: 5000\r\n            });\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n</head>\r\n");
	if (action=="confirm")
	{

	templateBuilder.Append("\r\n<body onload=\"showinfo()\">\r\n    ");
	}
	else
	{

	templateBuilder.Append("\r\n    <body>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <div id=\"pageContainer\">\r\n            <div class=\"charge\">\r\n                <div class=\"top-front\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" class=\"back\"></a>\r\n                    <div class=\"slogan\">\r\n                        ");
	if (action=="confirm")
	{

	templateBuilder.Append("\r\n                        支付订单确认\r\n                        ");
	}	//end for if

	if (action=="succeed")
	{

	templateBuilder.Append("\r\n                        支付成功\r\n                        ");
	}	//end for if

	if (action=="error")
	{

	templateBuilder.Append("\r\n                        支付失败\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                    <div class=\"login\">\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\"></a>\r\n                    </div>\r\n                </div>\r\n                <div class=\"charge-bd\">\r\n                    <div class=\"order\">\r\n                        ");
	if (action=="confirm")
	{

	templateBuilder.Append("\r\n                        <!--确认订单-->\r\n                        <!-- <form id=\"payForm\" name=\"payForm\" method=\"post\" action=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/payment/");
	templateBuilder.Append(Utils.ObjectToStr(payModel.api_path));
	templateBuilder.Append("/index.aspx\"\r\n                    target=\"_blank\">-->\r\n                        <input id=\"pay_order_no\" name=\"pay_order_no\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.order_no));
	templateBuilder.Append("\" />\r\n                        <input id=\"pay_order_amount\" name=\"pay_order_amount\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.order_amount));
	templateBuilder.Append("\" />\r\n                        <input id=\"pay_user_name\" name=\"pay_user_name\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("\" />\r\n                        ");
	if (order_type=="buygoods")
	{

	templateBuilder.Append("\r\n                        <input id=\"pay_subject\" name=\"pay_subject\" type=\"hidden\" value=\"购买商品\" />\r\n                        <div class=\"inner-box\">\r\n                            <div class=\"dl-list\">\r\n                                <div class=\"logo\">\r\n                                    <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/logo-pay.png\">\r\n                                </div>\r\n                                <div class=\"pay-info\">\r\n                                    <span class=\"txt1\">提交订单完成，请尽快完成付款！</span> <span class=\"txt2\">订单为您保留15分钟，请及时付款。</span>\r\n                                </div>\r\n                                <dl>\r\n                                    <dt>待付金额：</dt>\r\n                                    <dd>\r\n                                        ");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.order_amount));
	templateBuilder.Append("</dd>\r\n                                </dl>\r\n                                ");
	if (Utils.StrToInt(orderModel.message, 0)>0)
	{

	templateBuilder.Append("\r\n                                <dl>\r\n                                    <dt>已付麦币：</dt>\r\n                                    <dd>\r\n                                        ");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.point));
	templateBuilder.Append("</dd>\r\n                                </dl>\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                            </div>\r\n                        </div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        <div class=\"paybottom\">\r\n                            <div class=\"order-txt\">\r\n                                订单号：");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.order_no));
	templateBuilder.Append("</div>\r\n                            ");
	if (orderModel.message!="")
	{

	templateBuilder.Append("\r\n                            <div class=\"free-txt\">\r\n                                ");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.message));
	templateBuilder.Append("</div>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                            <div class=\"order-btn\">\r\n                                <input id=\"pay\" name=\"pay\" type=\"button\" class=\"btn btn-confirm\" value=\"确认支付\" />\r\n                            </div>\r\n                        </div>\r\n                        <!--</form>-->\r\n                        <!--/确认订单-->\r\n                        ");
	}	//end for if

	if (action=="succeed" || action=="success")
	{

	templateBuilder.Append("\r\n                        <!--支付成功-->\r\n                        <div class=\"order\">\r\n                            <div class=\"info\">\r\n                                <div class=\"icon-success\">\r\n                                </div>\r\n                                <div class=\"tip\">\r\n                                    <p class=\"t1\">\r\n                                        恭喜您，您的支付已经成功！</p>\r\n                                    <p class=\"t2\">\r\n                                        进入<a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" class=\"link-center\">订单管理</a>查看订单状态！</p>\r\n                                </div>\r\n                                <div style=\"clear: both\">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <!--/支付成功-->\r\n                        ");
	}	//end for if

	if (action=="error" || action=="")
	{

	templateBuilder.Append("\r\n                        <!--支付出错-->\r\n                        <div class=\"order\">\r\n                            <div class=\"info\">\r\n                                <div class=\"icon-failed\">\r\n                                </div>\r\n                                <div class=\"tip\">\r\n                                    <p class=\"t1\">\r\n                                        您的支付发生意外错误！</p>\r\n                                    <p class=\"t2\">\r\n                                        进入<a href=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" class=\"link-center\">订单管理</a>查看订单状态,或联系官方客服审核确认订单状态！</p>\r\n                                </div>\r\n                                <div style=\"clear: both\">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <!--/支付出错-->\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </body>\r\n");
	if (action=="confirm")
	{

	templateBuilder.Append("\r\n<input type=\"hidden\" id=\"shoplisturl\" value=\"");
	templateBuilder.Append(linkurl("order_list"));

	templateBuilder.Append("\" />\r\n<input type=\"hidden\" id=\"chargeurl\" value=\"/api/appfun.ashx?action=creatcharge&onum=");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.order_no));
	templateBuilder.Append("\" />\r\n<input type=\"hidden\" id=\"wxopenid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(wxopenid));
	templateBuilder.Append("\" />\r\n<script type=\"text/javascript\" src=\"https://one.pingxx.com/lib/pingpp_one.js\"></");
	templateBuilder.Append("script>\r\n<script>\r\n    document.addEventListener('pingpp_one_ready', function () {\r\n        document.getElementById('pay').addEventListener('click', function () {\r\n            var paychannel=['alipay_wap','wx_pub','upacp_wap','jdpay_wap','bfb_wap'];\r\n\r\n            if($(\"#wxopenid\").val()!=\"\"){\r\n                paychannel=['wx_pub','upacp_wap','jdpay_wap','bfb_wap'];\r\n            }\r\n\r\n            pingpp_one.init({\r\n                app_id: 'app_vvbDiHvPGaH4vz1a',                     //该应用在 Ping++ 的应用 ID\r\n                order_no: $(\"#pay_order_no\").val(),                 //订单在商户系统中的订单号\r\n                amount: ");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.order_amount));
	templateBuilder.Append(",                  //订单价格，单位：人民币 分\r\n                // 壹收款页面上需要展示的渠道，数组，数组顺序即页面展示出的渠道的顺序\r\n                //upmp_wap 渠道在微信内部无法使用，若用户未安装银联手机支付控件，则无法调起支付\r\n                //channel: ['alipay_wap','wx_pub','upacp_wap','jdpay_wap','bfb_wap'],\r\n                channel: paychannel,\r\n                charge_url: $(\"#chargeurl\").val(),  //商户服务端创建订单的 url\r\n                charge_param: {},                   //(可选，用户自定义参数，若存在自定义参数则壹收款会通过 POST 方法透传给 charge_url)\r\n                open_id: $(\"#wxopenid\").val(),      //(可选，使用微信公众号支付时必须传入)\r\n                debug: false                        //(可选，debug 模式下会将 charge_url 的返回结果透传回来)\r\n            }, function (res) {\r\n                //debug 模式下获取 charge_url 的返回结果\r\n                if (res.debug && res.chargeUrlOutput) {\r\n                    console.log(res.chargeUrlOutput);\r\n                }\r\n                if (!res.status) {\r\n                    //处理错误\r\n                    alert(res.msg);\r\n                }\r\n                else {\r\n                    //debug 模式下调用 charge_url 后会暂停，可以调用 pingpp_one.resume 方法继续执行\r\n                    if (res.debug && !res.wxSuccess) {\r\n                        //if (confirm('当前为 debug 模式，是否继续支付？')) {\r\n                            pingpp_one.resume();\r\n                        //}\r\n                    }\r\n                    //若微信公众号渠道需要使用壹收款的支付成功页面，则在这里进行成功回调，\r\n                    //调用 pingpp_one.success 方法，你也可以自己定义回调函数\r\n                    //其他渠道的处理方法请见第 2 节\r\n                    else pingpp_one.success(function (res) {\r\n                        if (!res.status) {\r\n                            alert(res.msg);\r\n                        }\r\n                    }, function () {\r\n                        //这里处理支付成功页面点击“继续购物”按钮触发的方法，\r\n                        //例如：若你需要点击“继续购物”按钮跳转到你的购买页，\r\n                        //则在该方法内写入 window.location.href = \"你的购买页面 url\"\r\n                        //window.location.href = $(\"#shoplisturl\").val(); //示例\r\n                         window.location.href=$(\"#shoplisturl\").val();\r\n                    });\r\n                }\r\n            });\r\n        });\r\n    });\r\n</");
	templateBuilder.Append("script>\r\n");
	}	//end for if

	templateBuilder.Append("\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
