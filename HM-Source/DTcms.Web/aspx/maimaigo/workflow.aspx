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

	templateBuilder.Append("<!doctype html>\r\n<html style=\"font-size: 60px;\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <!-- uc强制竖屏 -->\r\n    <meta name=\"screen-orientation\" content=\"portrait\">\r\n    <!-- QQ强制竖屏 -->\r\n    <meta name=\"x5-orientation\" content=\"portrait\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <title>工单提交-麦买购</title>\r\n    <!-- Bootstrap -->\r\n    <link href=\"");
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
	templateBuilder.Append("script>\r\n    <script src=\"/scripts/jquery/jquery.form.min.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/ajaxfileupload.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/layer.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        $(function () {\r\n            //var ue = UE.getEditor('editor');\r\n            $(\"input[type=file]\").change(function () {\r\n                saveimg(this.id);\r\n            });\r\n        });\r\n        function saveimg(obj) {\r\n            //利用ajax保存图片，并赋值给i+obj src 地址\r\n            $(\"#i\" + obj).attr(\"src\", \"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/uploading.gif\");\r\n            $.ajaxFileUpload({\r\n                url: '/api/appfun.ashx?action=saveimg&fname=' + obj, //用于文件上传的服务器端请求地址\r\n                secureuri: false, //一般设置为false\r\n                fileElementId: obj, //文件上传控件的id属性  <input type=\"file\" id=\"upload\" name=\"upload\" />\r\n                dataType: 'json', //返回值类型 一般设置为json\r\n                success: function (data, status)  //服务器成功响应处理函数\r\n                {\r\n                    if (data.status == \"1\") {\r\n                        var sw = screen.width;\r\n                        //alert(data.message);//从服务器返回的json中取出message中的数据,其中message为在struts2中action中定义的成员变量\r\n                        $(\"#i\" + obj).attr(\"src\", data.fileName);\r\n                        $(\"#i\" + obj).attr(\"style\", \"border:none;height:\" + (sw * 0.3 - 5) + \"px;\");\r\n                        $(\"#f\" + obj).val(data.fileName);\r\n                        $(\"#\" + obj).change(function () {\r\n                            saveimg(obj);\r\n                        });\r\n                    }\r\n                    else {\r\n                        $(\"#i\" + obj).attr(\"src\", \"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/icon-plus.png\");\r\n                        alert(data.msg);\r\n                    }\r\n                },\r\n                error: function (data, status, e)//服务器响应失败处理函数\r\n                {\r\n                    $(\"#i\" + obj).attr(\"src\", \"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/icon-plus.png\");\r\n                    alert(e);\r\n                }\r\n            });\r\n        }\r\n        function uploadimg(obj) {\r\n            $(\"#\" + obj).click();\r\n        }\r\n        function saveactive() {\r\n            //个人信息\r\n            var username = $(\"#txtuname\").val();\r\n            var content = $(\"#txtcontent\").val();\r\n            if (username != \"\" && content != \"\") {\r\n                $(\"#publish_form\").ajaxSubmit({\r\n                    beforeSubmit: formRequest,\r\n                    success: formResponse,\r\n                    error: formError,\r\n                    url: $(\"#publish_form\").attr(\"url\"),\r\n                    type: \"post\",\r\n                    dataType: \"json\",\r\n                    timeout: 60000\r\n                });\r\n            }\r\n            else {\r\n                layer.open({ content: \"请填写工单内容后提交\", time: 2 });\r\n            }\r\n        }\r\n        //表单提交前\r\n        function formRequest(formData, jqForm, options) {\r\n            layer.open({ content: \"工单提交中...\", time: 1 });\r\n        }\r\n        //表单提交后\r\n        function formResponse(data, textStatus) {\r\n            if (data.status == 1) {\r\n                //是否提示，默认不提示\r\n                if (data.url) {\r\n                    layer.open({ content: data.msg, time:2000 });\r\n                    setTimeout(function () {\r\n                        location.href = data.url;\r\n                    }, 2000);\r\n                }\r\n            } else {\r\n                layer.open({ content: data.msg, time: 2 });\r\n            }\r\n        }\r\n        //表单提交出错\r\n        function formError(XMLHttpRequest, textStatus, errorThrown) {\r\n            layer.open({ content: '状态：' + textStatus + '；出错提示：' + errorThrown, time: 2 });\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">工单提交</span>\r\n        </div>\r\n        <form id=\"publish_form\" name=\"publish_form\" method=\"post\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/appfun.ashx?action=activepublish\">\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"uc-form\">\r\n                <form class=\"form-inline\">\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        用户账号：</label>\r\n                    <input id=\"txtuname\" name=\"txtuname\" class=\"txt-input\" type=\"num\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("\"\r\n                        readonly=\"readonly\">\r\n                </div>\r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        工单分类：</label>\r\n                    <select id=\"txttypename\" name=\"txttypename\" class=\"txt-select\">\r\n                        ");
	if (orderno!="")
	{

	templateBuilder.Append("\r\n                        <option value=\"订单相关\" selected=\"selected\">订单相关</option>\r\n                          <option value=\"资金退款\">资金退款</option>\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <option value=\"账号相关\" selected=\"selected\">账号相关</option>\r\n                        <option value=\"其它问题\">其它问题</option>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </select>\r\n                </div>\r\n               \r\n                <div class=\"item item-input\">\r\n                    <label>\r\n                        订单编号：</label>\r\n                    <input id=\"txtorderno\" name=\"txtorderno\" class=\"txt-input\" type=\"num\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(orderno));
	templateBuilder.Append("\" readonly=readonly>\r\n                </div>\r\n               \r\n                <div class=\"title\">\r\n                    工单描述</div>\r\n                <div class=\"content\">\r\n                    <textarea id=\"txtcontent\" name=\"txtcontent\" cols=\"\" rows=\"\" placeholder=\"请尽量详细描述您的问题，便于我们为您处理！如是订单问题，请通过我的订单提交工单！\"></textarea></div>\r\n                <div class=\"title\">\r\n                    相关凭证</div>\r\n                <div class=\"content\">\r\n                    <div style=\"display: none;\">\r\n                        <input name=\"demo1\" type=\"file\" id=\"demo1\" />\r\n                        <input name=\"fdemo1\" type=\"hidden\" id=\"fdemo1\" />\r\n                        <input name=\"demo2\" type=\"file\" id=\"demo2\" />\r\n                        <input name=\"fdemo2\" type=\"hidden\" id=\"fdemo2\" />\r\n                        <input name=\"demo3\" type=\"file\" id=\"demo3\" />\r\n                        <input name=\"fdemo3\" type=\"hidden\" id=\"fdemo3\" />\r\n                    </div>\r\n                    <a href=\"javascript:;\" class=\"upload-btn\" onclick=\"uploadimg('demo1')\">\r\n                        <img id=\"idemo1\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/icon-plus.png\"></a> <a href=\"javascript:;\"\r\n                            class=\"upload-btn\" onclick=\"uploadimg('demo2')\">\r\n                            <img id=\"idemo2\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/icon-plus.png\"></a> <a href=\"javascript:;\"\r\n                                class=\"upload-btn\" onclick=\"uploadimg('demo3')\">\r\n                                <img id=\"idemo3\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/icon-plus.png\"></a>\r\n                </div>\r\n                <div class=\"item item-btns\">\r\n                    <a class=\"btn-confirm\" href=\"javascript:;\" onclick=\"saveactive()\">立即提交</a>\r\n                </div>\r\n                </form>\r\n                <input type=\"hidden\" id=\"turl\" value=\"");
	templateBuilder.Append(linkurl("usercenter"));

	templateBuilder.Append("\" />\r\n            </div>\r\n        </div>\r\n        </form>\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
