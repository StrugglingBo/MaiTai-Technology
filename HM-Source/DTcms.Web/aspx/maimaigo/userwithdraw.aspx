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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>我要提现-麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
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
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/echarts.min.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        $(function () {\r\n            //获取我的业绩指数\r\n            var baseurl = '/api/appfun.ashx?action=getmypre&uid=' + $(\"#uid\").val();\r\n            $.ajax({\r\n                url: baseurl,\r\n                type: 'GET',\r\n                dataType: 'json',\r\n                timeout: '1000',\r\n                cache: 'false',\r\n                success: function (data) {\r\n                    if (data.success == \"true\") {\r\n                        $(\"#mypre\").val(data.mypre);\r\n                        $(\"#pre\").val(data.mypre);\r\n                        $(\"#txtmpre\").html(\"我的业绩指数:\" + data.mypre);\r\n                    }\r\n                }\r\n            });\r\n\r\n            //发送短信\r\n            $(\"#btnSendcode\").click(function () {\r\n                //检查是否输入手机号码\r\n                if ($(\"#txtMobile\").val() == \"\") {\r\n                    $.dialog.alert(\"对不起，请先输入手机号码！\");\r\n                    return false;\r\n                }\r\n                //设置按钮状态\r\n                $(\"#txtCode\").prop(\"disabled\", false);\r\n                $(\"#btnSendcode\").prop(\"disabled\", true);\r\n                $.ajax({\r\n                    type: \"POST\",\r\n                    url: $(\"#btnSendcode\").attr(\"url\"),\r\n                    dataType: \"json\",\r\n                    data: {\r\n                        \"mobile\": $(\"#txtMobile\").val()\r\n                    },\r\n                    timeout: 20000,\r\n                    success: function (data, textStatus) {\r\n                        if (data.status == 1) {\r\n                            layer.open({\r\n                                content: data.msg,\r\n                                time: 2000\r\n                            });\r\n                        } else {\r\n                            $(\"#btnSendcode\").prop(\"disabled\", false);\r\n                            layer.open({\r\n                                content: data.msg,\r\n                                time: 2000\r\n                            });\r\n                        }\r\n                    },\r\n                    error: function (XMLHttpRequest, textStatus, errorThrown) {\r\n                        $(\"#btnSendcode\").prop(\"disabled\", false);\r\n                        layer.open({\r\n                            content: \"状态：\" + textStatus + \"；出错提示：\" + errorThrown,\r\n                            time: 2000\r\n                        });\r\n                    }\r\n                });\r\n            });\r\n            var myChart = echarts.init(document.getElementById('main'));\r\n            option = {\r\n                toolbox: {\r\n                    feature: {\r\n                        restore: {},\r\n                        saveAsImage: {}\r\n                    }\r\n                },\r\n                series: [\r\n                    {\r\n                        name: '总业绩指数',\r\n                        type: 'gauge',\r\n                        min: 0.0,\r\n                        max: 1.5,\r\n                        data: [{ value: 1.2, name: ''}]\r\n                    }\r\n                ]\r\n            };\r\n            // 为echarts对象加载数据 \r\n            myChart.setOption(option);\r\n            setInterval(function () {\r\n                var tpre = $(\"#totalpre\").val();\r\n                var mydate = new Date();\r\n                if (mydate.getDay() == 3 && mydate.getHours() >= 6 && mydate.getHours() <= 21) {\r\n                    var baseurl = '/api/appfun.ashx?action=gettotalpre';\r\n                    $.ajax({\r\n                        url: baseurl,\r\n                        type: 'GET',\r\n                        dataType: 'json',\r\n                        timeout: '1000',\r\n                        cache: 'false',\r\n                        success: function (data) {\r\n                            if (data.success == \"true\") {\r\n                                tpre = data.totalpre;\r\n                                $(\"#totalpre\").val(tpre);\r\n                                option.series[0].data[0].value = tpre;\r\n                                myChart.setOption(option, true);\r\n                            }\r\n                        }\r\n                    });\r\n                }\r\n                //changetruemoney();\r\n            }, 5000);\r\n\r\n        });\r\n        function changetruemoney() {\r\n            var tmoney = $(\"#txtamount\").val();\r\n            if (tmoney != \"\") {\r\n                var mpre = $(\"#mypre\").val();\r\n                var tpre = $(\"#totalpre\").val();\r\n                var p = $(\"#pre\").val();\r\n                $(\"#trueamount\").val(parseInt(tmoney * 1 * mpre * tpre * (1 - p)) + \"=\" + tmoney + \"*\" + mpre + \"*\" + tpre + \"*\" + (1 - p));\r\n                $(\"#hftamount\").val(parseInt(tmoney * 1 * mpre * tpre * (1 - p)));\r\n            }\r\n        }\r\n        function save_applor() {\r\n            var mydate = new Date();\r\n            var gid = $(\"#gid\").val();\r\n            var t = 0;\r\n            if (gid == 3) {\r\n                var d = mydate.getDate();\r\n                if (d * 1 == 15) {\r\n                    t = 1;\r\n                }\r\n            }\r\n            else {\r\n                if (mydate.getDay() == 3 && mydate.getHours() >= 6 && mydate.getHours() <= 21) {\r\n                    t = 1;\r\n                }\r\n            }\r\n            if (t == 1) {\r\n                var cp = $(\"#cpoint\").val();\r\n                var uid = $(\"#uid\").val();\r\n                var amount = $(\"#txtamount\").val();\r\n                var code = $(\"#txtCode\").val();\r\n                if (amount * 1 <= cp * 1 && isNumberBy100(amount)) {\r\n                    var pre = $(\"#txtpre\").val();\r\n                    var rechargeno = $(\"#payment\").val();\r\n                    if (rechargeno != \"\" && code != \"\") {\r\n                        var baseurl = '/api/appfun.ashx?action=outmoney_save&uid=' + uid + '&amount=' + amount + '&pre=' + pre + '&rechargeno=' + rechargeno + \"&code=\" + code + \"&mypre=\" + $(\"#mypre\").val();\r\n                        $.ajax({\r\n                            url: baseurl,\r\n                            type: 'GET',\r\n                            dataType: 'json',\r\n                            timeout: '1000',\r\n                            cache: 'false',\r\n                            success: function (data) {\r\n                                if (data.success == \"true\") {\r\n                                    var turl = data.url;\r\n                                    if (turl != \"\") {\r\n                                        if (typeof (data.url) == \"undefined\") {\r\n                                            location.href = $(\"#turl\").val();\r\n                                        } else {\r\n                                            location.href = data.url;\r\n                                        }\r\n                                    }\r\n                                } else {\r\n                                    layer.open({\r\n                                        content: data.msg,\r\n                                        time: 2000\r\n                                    });\r\n                                }\r\n                            }\r\n                        });\r\n                    }\r\n                    if (rechargeno == \"\") {\r\n                        layer.open({\r\n                            content: \"未绑定银行卡，请绑定后操作！\",\r\n                            time: 2000\r\n                        });\r\n                    }\r\n                    else {\r\n                        if (code == \"\") {\r\n                            layer.open({\r\n                                content: \"未输入手机验证码！\",\r\n                                time: 2000\r\n                            });\r\n                        }\r\n                    }\r\n                }\r\n                else {\r\n                    layer.open({\r\n                        content: \"提现积分必须小于等于可提现积分,且为100的整数倍!\",\r\n                        time: 2000\r\n                    });\r\n                }\r\n            }\r\n            else {\r\n                var tips = \"会员每周三 6:00-21:00 <br/> 可以提交提现申请!\"\r\n                if (gid == 3) {\r\n                    tips = \"代理商每月15好可提交提现申请!\";\r\n                }\r\n                layer.open({\r\n                    content: tips,\r\n                    time: 2000\r\n                });\r\n            }\r\n        }\r\n        function isNumberBy100(ssn) {\r\n            var re = /^[0-9]*[0-9]$/i;\r\n            if (re.test(ssn) && ssn % 100 === 0) {\r\n                return true;\r\n            }\r\n            else {\r\n                return false;\r\n            }\r\n        }\r\n        function checkNumber(e) {\r\n            var keynum = window.event ? e.keyCode : e.which;\r\n            if ((48 <= keynum && keynum <= 57) || (96 <= keynum && keynum <= 105) || keynum == 8) {\r\n                return true;\r\n            } else {\r\n                return false;\r\n            }\r\n        }\r\n        function setpre() {\r\n            var t = $(\"#txtamount\").val();\r\n            var p = $(\"#pre\").val();\r\n            $(\"#txtpre\").val(t * p);\r\n            //changetruemoney();\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n<input id=\"totalpre\" type=\"hidden\" value=\"1.2\" />\r\n<input id=\"mypre\" type=\"hidden\" value=\"0\" />\r\n<input id=\"hftamount\" type=\"hidden\" value=\"0\" />\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">我要提现</span>\r\n        </div>\r\n        <div class=\"common-wrapper\">\r\n            <div id=\"main\" style=\"height:270px;\">\r\n            </div>\r\n            <div style=\"width:100%;text-align:center;margin-top:-70px;\"><font>总业绩指数</font></div>\r\n            <div id=\"\" style=\"width:100%;text-align:center;\"><font id=\"txtmpre\" color=\"red\" style=\"font-weight:bold; font-size:20px;border:2px dotted red;\">我的业绩指数:0.0</font></div>\r\n            <div class=\"uc-form\">\r\n                ");
	if (userinfo!=null)
	{

	templateBuilder.Append("\r\n                <div class=\"item item-score\">\r\n                    <span class=\"s1\">可提麦币：<i style=\"padding-left: 20px;\">");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append("</i></span></div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        提现麦币：</label><input id=\"txtamount\" class=\"txt-input\" type=\"num\" placeholder=\"请输入需要提现的麦币\"\r\n                            onkeydown=\"return checkNumber(event);\" onchange=\"setpre()\">\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        提现金额：</label><input id=\"trueamount\" class=\"txt-input\" type=\"text\" value=\"提现麦币*我的业绩指数*总业绩指数\" readonly=\"readonly\">\r\n                </div>\r\n                <div class=\"item item-input\" style=\"display:none;\">\r\n                    <label>\r\n                        手续费：</label><input id=\"txtpre\" class=\"txt-input\" type=\"text\" value=\"0\" readonly=\"readonly\">\r\n                </div>\r\n                <!-------付款方式选择开始//------>\r\n                <div class=\"item item-payment\" style=\"display:none;\">\r\n                    <ul>\r\n                        ");
	if (userinfo.cardno!="")
	{

	templateBuilder.Append("\r\n                        <li class=\"selected\">银行卡：");
	templateBuilder.Append(Utils.ObjectToStr(userinfo.cardno));
	templateBuilder.Append("</li>\r\n                        <input id=\"payment\" name=\"payment\" type=\"hidden\" value=\"银行卡：");
	templateBuilder.Append(Utils.ObjectToStr(userinfo.cardno));
	templateBuilder.Append("\" />\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <input id=\"payment\" name=\"payment\" type=\"hidden\" value=\"\" />\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <input type=\"hidden\" id=\"txtMobile\" name=\"txtMobile\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.mobile));
	templateBuilder.Append("\" />\r\n                    <label>\r\n                        验证码：</label><input id=\"txtCode\" name=\"txtCode\" class=\"txt-code\" type=\"text\" placeholder=\"输入手机验证码\"><a\r\n                            id=\"btnSendcode\" href=\"javascript:;\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_verify_smscode&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.build_path));
	templateBuilder.Append("\"\r\n                            class=\"btn-getcode\">获取验证码</a>\r\n                </div>\r\n                <script>\r\n                    $(\"#payment\").val($(\".item-payment li.selected\").text());\r\n\r\n                    $(\".item-payment li\").click(function () {\r\n                        $(\".item-payment li\").removeClass(\"selected\");\r\n                        $(this).addClass(\"selected\");\r\n                        $(\"#payment\").val($(this).text());\r\n                    });\r\n                </");
	templateBuilder.Append("script>\r\n                <!-----付款方式结束 //----->\r\n                <div class=\"item item-btns\">\r\n                    <a class=\"btn-confirm\" href=\"javascript:;\" onclick=\"save_applor()\">确定申请</a>\r\n                </div>\r\n                <div class=\"item item-label\">\r\n                    <b>提示：</b>提现T+3工作日到账，如遇节假日延后到账。会员只允许每周三提交提现申请,代理商允许每月15号提交提现申请,<font color=\"red\">总业绩指数以晚上9点为准!</font></div>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <div class=\"item item-label\">\r\n                    <b>提示：</b><br />\r\n                    需提前绑定支付宝账号或银行卡号</div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <input type=\"hidden\" id=\"uid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append("\" />\r\n                <input type=\"hidden\" id=\"cpoint\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append("\" />\r\n                <input type=\"hidden\" id=\"turl\" value=\"");
	templateBuilder.Append(linkurl("userrecord"));

	templateBuilder.Append("\" />\r\n                <input type=\"hidden\" id=\"pre\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(pay.poundage_amount));
	templateBuilder.Append("\" />\r\n                <input type=\"hidden\" id=\"gid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.group_id));
	templateBuilder.Append("\" />\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
