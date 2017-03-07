<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.useraddress" ValidateRequest="false" %>
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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>我的收货地址-麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
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
	templateBuilder.Append("/js/city-picker.data.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/city-picker.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.dropkick-min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        $(function () {\r\n            var $citypicker3 = $('#city-picker3');\r\n            var pp=\"浙江省\";\r\n            var ct=\"杭州市\";\r\n            var dt=\"滨江区\";\r\n           ");
	if (addrmodel!=null)
	{

	templateBuilder.Append("\r\n            var addr=\"");
	templateBuilder.Append(Utils.ObjectToStr(addrmodel.area));
	templateBuilder.Append("\";\r\n            var arr = addr.split(',');\r\n                pp=arr[0];\r\n                ct=arr[1];\r\n                dt=arr[2];\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            $citypicker3.citypicker({\r\n                level:\"district\",\r\n                province: pp,\r\n                city: ct,\r\n                district: dt\r\n            });\r\n        });\r\n        function save_address(){\r\n            var acceptname=$(\"#txtAcceptName\").val();\r\n            var mobile=$(\"#txtMobile\").val();\r\n            var pca=$(\"#city-picker3\").val();\r\n            var province=\"\";\r\n            var city=\"\";\r\n            var area=\"\";\r\n            if(pca!=\"\"){\r\n                var arr = pca.split('/');\r\n                 if (arr.length > 1) {\r\n                province=arr[0];\r\n                city=arr[1];\r\n                area=arr[2];\r\n                }\r\n                    else {\r\n                        layer.open({\r\n                            content: \"请选择寄送地址所在区域！\",\r\n                            time: 2000\r\n                        });\r\n                        return false;\r\n                    }\r\n            }\r\n            var address=$(\"#txtAddress\").val();\r\n            var userid=$(\"#uid\").val();\r\n            var baseurl = '/api/appfun.ashx?action=address_save&uid='+userid+'&acceptname='+encodeURI(acceptname)+'&province='+encodeURI(province)+'&city='+encodeURI(city)+'&area='+encodeURI(area)+'&address='+encodeURI(address)+'&mobile='+mobile;\r\n            $(\".btn-confirm\").html(\"新地址添加中...\");\r\n            $(\".btn-confirm\").attr(\"disabled\",\"disabled\");\r\n            if(acceptname!=\"\" && mobile!=\"\"){\r\n            $.ajax({\r\n                url: baseurl,\r\n                type: 'GET',\r\n                dataType: 'json',\r\n                timeout: '5000',\r\n                cache: 'false',\r\n                success: function (data) {\r\n                    if (data.success == \"true\") {\r\n                        layer.open({\r\n                                    content: data.msg,\r\n                                    time: 2000\r\n                                });\r\n                                setTimeout(function () {\r\n                                    var turl = data.url;\r\n                                    if (turl != \"\") {\r\n                                        if (typeof (data.url) == \"undefined\") {\r\n                                            location.href = $(\"#turl\").val();\r\n                                        } else {\r\n                                            location.href = data.url;\r\n                                        }\r\n                                    }\r\n                                }, 2500);\r\n                    } else {\r\n                        layer.open({\r\n                            content: data.msg,\r\n                            time: 2000\r\n                        });\r\n                        location.href = $(\"#turl\").val();\r\n                    }\r\n                }\r\n            });\r\n            }\r\n            else\r\n            {\r\n                 layer.open({\r\n                            content: '请填写完整后再添加',\r\n                            time: 2000\r\n                        });\r\n                        window.location.reload();\r\n            }\r\n        }\r\n        function ExecPostBack(checkValue) {\r\n            ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_address_delete', checkValue, '#turl');\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <input type=\"hidden\" id=\"turl\" value=\"");
	templateBuilder.Append(linkurl("useraddress"));

	templateBuilder.Append("\" />\r\n    <input type=\"hidden\" id=\"uid\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.id));
	templateBuilder.Append("\" />\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">我的收货地址</span>\r\n        </div>\r\n        <form id=\"editForm\" name=\"editForm\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_address_edit\">\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"uc-form\">\r\n                <form class=\"form-inline\">\r\n                <div class=\"item item-tips\">\r\n                    为确保及时送货，请如实填写收货地址！！</div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        收货人：</label><input name=\"txtAcceptName\" id=\"txtAcceptName\" class=\"txt-input\" type=\"text\"\r\n                            placeholder=\"请输入收货人\">\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        联系电话：</label><input name=\"txtMobile\" id=\"txtMobile\" class=\"txt-input\" type=\"text\"\r\n                            placeholder=\"请输入收货人手机号\">\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        省/市/区：</label><div id=\"distpicker\" style=\"padding-left: 95px;\">\r\n                            <div style=\"position: relative;\">\r\n                                <input id=\"city-picker3\" name=\"city-picker3\" class=\"form-control\" readonly type=\"text\"\r\n                                    data-toggle=\"city-picker3\">\r\n                            </div>\r\n                        </div>\r\n                </div>\r\n                <div class=\"item  item-input\">\r\n                    <label>\r\n                        详细地址：</label><input name=\"txtAddress\" id=\"txtAddress\" class=\"txt-input\" type=\"text\"\r\n                            placeholder=\"请输入详细地址\">\r\n                </div>\r\n                <div class=\"item item-btns\">\r\n                    <a href=\"javascript:;\" onclick=\"save_address()\" class=\"btn-confirm\">添加新地址</a>\r\n                </div>\r\n                </form>\r\n            </div>\r\n            <div class=\"address-list\">\r\n                ");
	DataTable list = get_user_addr_book_list(15, page, "user_id="+userModel.id, out totalcount);

	templateBuilder.Append("<!--取得一个DataTable-->\r\n                ");
	string pagelist = get_page_link(15, page, totalcount, "useraddress", "__id__");

	templateBuilder.Append("\r\n                <!--取得分页页码列表-->\r\n                ");
	foreach(DataRow dr in list.Rows)
	{

	templateBuilder.Append("\r\n                <div class=\"items\">\r\n                    <div class=\"item-lcol\">\r\n                        <div class=\"item\">\r\n                            <div class=\"fl\">\r\n                                " + Utils.ObjectToStr(dr["accept_name"]) + "\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"item\">\r\n                            <div class=\"fl\">\r\n                                ");
	if (Utils.ObjectToStr(dr["telphone"])!="")
	{

	templateBuilder.Append("\r\n                                " + Utils.ObjectToStr(dr["telphone"]) + "");
	}
	else
	{

	templateBuilder.Append("\r\n                                " + Utils.ObjectToStr(dr["mobile"]) + "");
	}	//end for if

	templateBuilder.Append("\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"item\">\r\n                            <div class=\"fl\">\r\n                                " + Utils.ObjectToStr(dr["area"]) + "\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"item\">\r\n                            <div class=\"fl\">\r\n                                " + Utils.ObjectToStr(dr["address"]) + "\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"item-rcol\">\r\n                        <div class=\"extra\">\r\n                            ");
	if (Utils.ObjectToStr(dr["is_default"])=="0")
	{

	templateBuilder.Append("<a onclick=\"clickSubmit('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_address_default&id=" + Utils.ObjectToStr(dr["id"]) + "')\"\r\n                                href=\"javascript:;\">设为默认</a>");
	}
	else
	{

	templateBuilder.Append("\r\n                            已默认\r\n                            ");
	}	//end for if

	templateBuilder.Append("<a href=\"javascript:;\" onclick=\"ExecPostBack(" + Utils.ObjectToStr(dr["id"]) + ");\">删除</a></div>\r\n                    </div>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
