<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.userbankcard" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>我的银行卡-麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/animate.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/usercenter.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/city-picker.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/easydropdown.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
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
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        $(function () {\r\n            var $citypicker3 = $('#city-picker3');\r\n            if ($citypicker3 != undefined) {\r\n                var pp = \"\";\r\n                var ct = \"\";\r\n                $citypicker3.citypicker({\r\n                    level: \"city\",\r\n                    province: pp,\r\n                    city: ct\r\n                });\r\n            }\r\n        });\r\n        function saveuserinfo(objuid) {\r\n            var bnum = $(\"#bnum\").val();\r\n            var inum = $(\"#inum\").val();\r\n            var tname = $(\"#tname\").val();\r\n            var bname = $(\"#bname\").val();\r\n            var aliname = $(\"#alinickname\").val();\r\n            var pca = $(\"#city-picker3\").val();\r\n            if (pca != null) {\r\n                var province = \"\";\r\n                var city = \"\";\r\n                if (pca != \"\") {\r\n                    var arr = pca.split('/');\r\n                    if (arr.length > 1) {\r\n                        province = arr[0];\r\n                        city = arr[1];\r\n                    }\r\n                    else {\r\n                        layer.open({\r\n                            content: \"请选择开户行所在区域！\",\r\n                            time: 2000\r\n                        });\r\n                        return false;\r\n                    }\r\n                }\r\n                aliname = province + city + aliname;\r\n            }\r\n            if (bnum != \"\" && inum != \"\" && tname != \"\" && bname != \"\" && aliname!=\"\") {\r\n                if (objuid * 1 > 0) {\r\n                    var baseurl = '/api/appfun.ashx?action=cardno_save&uid=' + objuid + '&bnum=' + bnum + '&inum=' + inum + '&tname=' + tname + \"&bname=\" + bname + \"&aliname=\" + aliname;\r\n                    $.ajax({\r\n                        url: baseurl,\r\n                        type: 'GET',\r\n                        dataType: 'json',\r\n                        timeout: '1000',\r\n                        cache: 'false',\r\n                        success: function (data) {\r\n                            if (data.success == \"true\") {\r\n                                layer.open({\r\n                                    content: data.msg,\r\n                                    time: 2000\r\n                                });\r\n                                setTimeout(function () {\r\n                                    var turl = data.url;\r\n                                    if (turl != \"\") {\r\n                                        if (typeof (data.url) == \"undefined\") {\r\n                                            location.href = $(\"#turl\").val();\r\n                                        } else {\r\n                                            location.href = data.url;\r\n                                        }\r\n                                    }\r\n                                }, 2500);\r\n                            } else {\r\n                                layer.open({\r\n                                    content: data.msg,\r\n                                    time: 2000\r\n                                });\r\n                            }\r\n                        }\r\n                    });\r\n                }\r\n                else {\r\n                    return false;\r\n                }\r\n            }\r\n            else {\r\n                layer.open({\r\n                    content: \"信息填写完整后提交!\",\r\n                    time: 2000\r\n                });\r\n            }\r\n        }\r\n        function showbankname() {\r\n            var cardno = $(\"#bnum\").val();\r\n            if (cardno != \"\") {\r\n                var b = 0;\r\n                var flag = cardno.substr(0, 6);\r\n                if (flag == \"436742\" || flag == \"436745\" || flag == \"436742\" || flag == \"622280\") {\r\n                    $(\"#bname\").val(\"中国建设银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"458123\" || flag == \"521899\" || flag == \"622260\") {\r\n                    $(\"#bname\").val(\"交通银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"622188\") {\r\n                    $(\"#bname\").val(\"中国邮政储蓄\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"622760\" || flag == \"409666\" || flag == \"438088\" || flag == \"622752\") {\r\n                    $(\"#bname\").val(\"中国银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"427020\" || flag == \"427030\" || flag == \"530990\" || flag == \"622230\" || flag == \"622235\" || flag == \"622210\" || flag == \"622215\" || flag == \"622200\" || flag == \"955880\" || flag == \"621226\" || flag == \"622208\") {\r\n                    $(\"#bname\").val(\"中国工商银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"622568\" || flag == \"520152\" || flag == \"520382\" || flag == \"911121\" || flag == \"548844\") {\r\n                    $(\"#bname\").val(\"广东发展银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"512431\" || flag == \"520194\" || flag == \"622318\" || flag == \"622718\" || flag == \"622282\") {\r\n                    $(\"#bname\").val(\"宁波银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"407405\" || flag == \"517636\" || flag == \"512466\" || flag == \"415599\" || flag == \"421870\" || flag == \"622622\" || flag == \"528948\" || flag == \"552288\" || flag == \"556610\" || flag == \"622600\" || flag == \"622601\" || flag == \"622602\" || flag == \"622603\" || flag == \"421869\" || flag == \"421871\" || flag == \"628258\") {\r\n                    $(\"#bname\").val(\"中国民生银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"406254\" || flag == \"622655\" || flag == \"622650\" || flag == \"622658\" || flag == \"356839\" || flag == \"486497\" || flag == \"481699\" || flag == \"543159\" || flag == \"425862\" || flag == \"406252\" || flag == \"356837\" || flag == \"356838\" || flag == \"356840\" || flag == \"622161\" || flag == \"628201\" || flag == \"628202\") {\r\n                    $(\"#bname\").val(\"光大银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"498451\" || flag == \"622517\" || flag == \"622518\" || flag == \"515672\" || flag == \"517650\" || flag == \"525998\" || flag == \"356850\" || flag == \"356851\" || flag == \"356852\") {\r\n                    $(\"#bname\").val(\"浦东发展银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"622155\" || flag == \"622156\" || flag == \"528020\" || flag == \"526855\") {\r\n                    $(\"#bname\").val(\"平安银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"539867\" || flag == \"528709\" || flag == \"523959\" || flag == \"622637\" || flag == \"622636\" || flag == \"528708\" || flag == \"539868\") {\r\n                    $(\"#bname\").val(\"华夏银行\");\r\n                    b = 1;\r\n                }\r\n                if (flag == \"552599\" || flag == \"404119\" || flag == \"404121\" || flag == \"519412\" || flag == \"403361\" || flag == \"558730\" || flag == \"520083\" || flag == \"520082\" || flag == \"519413\" || flag == \"404120\" || flag == \"404118\" || flag == \"404117\" || flag == \"622836\" || flag == \"622837\" || flag == \"622848\") {\r\n                    $(\"#bname\").val(\"农业银行\");\r\n                    b = 1;\r\n                }\r\n                var flag2 = cardno.substr(0, 5);\r\n                if (flag2 == \"49102\" || flag2 == \"53591\") {\r\n                    $(\"#bname\").val(\"农业银行\");\r\n                    b = 1;\r\n                }\r\n\r\n                if (flag == \"451289\" || flag == \"622902\" || flag == \"622901\" || flag == \"527414\" || flag == \"524070\" || flag == \"486494\" || flag == \"486493\" || flag == \"451290\" || flag == \"523036\" || flag == \"486861\" || flag == \"622922\") {\r\n                    $(\"#bname\").val(\"兴业银行\");\r\n                    b = 1;\r\n                }\r\n\r\n                if (flag == \"518710\" || flag == \"518718\" || flag == \"622588\" || flag == \"622575\" || flag == \"545947\" || flag == \"521302\" || flag == \"439229\" || flag == \"552534\" || flag == \"622577\" || flag == \"622579\" || flag == \"439227\" || flag == \"479229\" || flag == \"356890\" || flag == \"356889\" || flag == \"356885\" || flag == \"439188\" || flag == \"545948\" || flag == \"545623\" || flag == \"552580\" || flag == \"552581\" || flag == \"552582\" || flag == \"552583\" || flag == \"552584\" || flag == \"552585\" || flag == \"552586\" || flag == \"552588\" || flag == \"552589\" || flag == \"645621\" || flag == \"545619\" || flag == \"356886\" || flag == \"622578\" || flag == \"622576\" || flag == \"622581\" || flag == \"439228\" || flag == \"439225\" || flag == \"439226\" || flag == \"628262\" || flag == \"628362\") {\r\n                    $(\"#bname\").val(\"招商银行\");\r\n                    b = 1;\r\n                }\r\n\r\n                if (flag == \"376968\" || flag == \"376966\" || flag == \"622918\" || flag == \"622916\" || flag == \"518212\" || flag == \"622690\" || flag == \"520108\" || flag == \"376969\" || flag == \"622919\" || flag == \"556617\" || flag == \"622680\" || flag == \"403391\" || flag == \"558916\" || flag == \"514906\" || flag == \"400360\" || flag == \"433669\" || flag == \"433667\" || flag == \"433666\" || flag == \"404173\" || flag == \"404172\" || flag == \"404159\" || flag == \"404158\" || flag == \"403393\" || flag == \"403392\" || flag == \"622689\" || flag == \"622688\" || flag == \"433668\" || flag == \"404157\" || flag == \"404171\" || flag == \"404174\" || flag == \"628209\" || flag == \"628208\" || flag == \"628206\") {\r\n                    $(\"#bname\").val(\"中信银行\");\r\n                    b = 1;\r\n                }\r\n            } else {\r\n                layer.open({\r\n                    content: \"请先输入银行卡号!\",\r\n                    time: 2000\r\n                });\r\n            }\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">我的银行卡</span>\r\n        </div>\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"uc-form\">\r\n                <form class=\"form-inline\">\r\n                <div class=\"item item-tips\">\r\n                    请如实填写身份信息，提交后无法修改！</div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        银行卡号：</label>\r\n                    ");
	if (uinfo!=null)
	{

	if (uinfo.cardno!="")
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"bnum\" type=\"num\" placeholder=\"请输入银行卡号\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uinfo.cardno));
	templateBuilder.Append("\"\r\n                        readonly=\"readonly\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"bnum\" type=\"num\" placeholder=\"请输入银行卡号\" value=\"\">\r\n                    ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"bnum\" type=\"num\" placeholder=\"请输入银行卡号\" value=\"\">\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        所属银行：</label>\r\n                    ");
	if (uinfo!=null)
	{

	if (uinfo.bankname!="")
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"bname\" type=\"text\" placeholder=\"请输入银行卡所属银行\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uinfo.bankname));
	templateBuilder.Append("\"\r\n                        readonly=\"readonly\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"bname\" type=\"text\" placeholder=\"请输入银行卡所属银行\" value=\"\"\r\n                        onfocus=\"showbankname()\">\r\n                    ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"bname\" type=\"text\" placeholder=\"请输入银行卡所属银行\" onfocus=\"showbankname()\">\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                ");
	if (uinfo!=null)
	{

	if (uinfo.alipaynickname=="")
	{

	templateBuilder.Append("\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        开户区域：</label>\r\n                    <div id=\"distpicker\" style=\"padding-left: 95px;\">\r\n                        <div style=\"position: relative;\">\r\n                            <input id=\"city-picker3\" name=\"city-picker3\" class=\"txt-input form-control\" readonly\r\n                                type=\"text\" data-toggle=\"city-picker3\">\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        　开户行：</label>\r\n                    ");
	if (uinfo!=null)
	{

	if (uinfo.alipaynickname!="")
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alinickname\" type=\"text\" placeholder=\"请输入银行卡开户行名称\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uinfo.alipaynickname));
	templateBuilder.Append("\"\r\n                        readonly=\"readonly\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alinickname\" type=\"text\" placeholder=\"请输入银行卡开户行名称\" value=\"\">\r\n                    ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"alinickname\" type=\"text\" placeholder=\"请输入银行卡开户行名称\">\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        身份证号：</label>\r\n                    ");
	if (uinfo!=null)
	{

	if (uinfo.identyno!="")
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"inum\" type=\"text\" placeholder=\"请输入银行卡绑定身份证号码\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uinfo.identyno));
	templateBuilder.Append("\"\r\n                        readonly=\"readonly\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"inum\" type=\"text\" placeholder=\"请输入银行卡绑定身份证号码\" value=\"\">\r\n                    ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"inum\" type=\"text\" placeholder=\"请输入银行卡绑定身份证号码\">\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        手机号码：</label>\r\n                    <input class=\"txt-input\" type=\"num\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.mobile));
	templateBuilder.Append("\" readonly=\"readonly\">\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        真实姓名：</label>\r\n                    ");
	if (uinfo!=null)
	{

	if (uinfo.identyno!="")
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"tname\" type=\"text\" placeholder=\"请输入银行卡持有人真实姓名\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uinfo.truename));
	templateBuilder.Append("\"\r\n                        readonly=\"readonly\">\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"tname\" type=\"text\" placeholder=\"请输入银行卡持有人真实姓名\">\r\n                    ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n                    <input class=\"txt-input\" id=\"tname\" type=\"text\" placeholder=\"请输入银行卡持有人真实姓名\">\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"item item-input\" style=\"border: none\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("workflow"));

	templateBuilder.Append("\" class=\"btn-workorder\">提交工单</a>\r\n                    <span class=\"fr\">账号信息有误？请客服帮忙！</span>\r\n                </div>\r\n                ");
	if (uinfo==null)
	{

	templateBuilder.Append("\r\n                <div class=\"item item-btns\">\r\n                    <a class=\"btn-confirm\" href=\"javascript:;\" onclick=\"saveuserinfo(");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append(")\">立即绑定</a>\r\n                </div>\r\n                ");
	}
	else if (uinfo.cardno=="" || uinfo.alipaynickname=="")
	{

	templateBuilder.Append("\r\n                <div class=\"item item-btns\">\r\n                    <a class=\"btn-confirm\" href=\"javascript:;\" onclick=\"saveuserinfo(");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append(")\">立即绑定</a>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                </form>\r\n                <input type=\"hidden\" id=\"turl\" value=\"");
	templateBuilder.Append(linkurl("userbankcard"));

	templateBuilder.Append("\" />\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
