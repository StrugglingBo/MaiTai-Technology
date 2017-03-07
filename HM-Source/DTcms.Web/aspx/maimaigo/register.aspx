<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.register" ValidateRequest="false" %>
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
	templateBuilder.Append("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/css/login.css\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n    <script src=\"//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"//cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></");
	templateBuilder.Append("script>\r\n    <![endif]-->\r\n    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/bootstrap.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div id=\"pageContainer\">\r\n        <div class=\"top-bar\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"back\"></a><span class=\"title\">用户注册</span>\r\n        </div>\r\n        ");
	if (action=="")
	{

	templateBuilder.Append("\r\n        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/js/register_validate.js\"></");
	templateBuilder.Append("script>\r\n        <form id=\"regform\" name=\"regform\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_register&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.build_path));
	templateBuilder.Append("\">\r\n        <div class=\"common-wrapper\">\r\n            <div class=\"main\">\r\n                <div class=\"logo\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/maimaigo");
	templateBuilder.Append("/images/logo2.png\"></div>\r\n                <div class=\"item item-tips\" style=\"display: none;\">\r\n                    <div class=\"err-msg\">\r\n                    </div>\r\n                </div>\r\n                <div class=\"item item-username\">\r\n                    <input id=\"txtMobile\" name=\"txtMobile\" type=\"tel\" class=\"txt-input txt-tel\" type=\"text\"\r\n                        autocomplete=\"off\" placeholder=\"手机号码\" ajaxurl=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=validate_username\">\r\n                </div>\r\n                <div class=\"item item-password\">\r\n                    <input id=\"txtPassword\" name=\"txtPassword\" class=\"txt-input txt-password\" type=\"password\"\r\n                        autocomplete=\"off\" placeholder=\"请设置6-20位登录密码\">\r\n                </div>\r\n                <div class=\"item item-password\">\r\n                    <input id=\"txtPassword1\" name=\"txtPassword1\" class=\"txt-input txt-password\" type=\"password\"\r\n                        autocomplete=\"off\" placeholder=\"请再次输入密码\">\r\n                </div>\r\n                ");
	if (uconfig.regstatus!=2)
	{

	templateBuilder.Append("\r\n                <div class=\"item item-captcha\" style=\"display: \">\r\n                    <div class=\"input-info\">\r\n                        <input id=\"txtCode\" name=\"txtCode\" class=\"txt-input txt-captcha\" type=\"text\" autocomplete=\"off\"\r\n                            placeholder=\"请输入图片验证码\">\r\n                        <span id=\"captcha-img\">\r\n                            <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"63\" height=\"25\" alt=\"\"></span>\r\n                    </div>\r\n                </div>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                <div class=\"item item-phone\">\r\n                    <input id=\"txtCode\" name=\"txtCode\" class=\"txt-input txt-phone\" type=\"tel\" placeholder=\"请输入短信验证码\">\r\n                    <a id=\"btnSendcode\" href=\"javascript:;\" onclick=\"sendSMS(this,'#txtMobile','");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_verify_smscode&site=");
	templateBuilder.Append(Utils.ObjectToStr(site.build_path));
	templateBuilder.Append("');\"\r\n                        class=\"btn-retransmit btn-retransmit-disabled\">获取短信验证码</a>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <div class=\"item item-username\">\r\n                    <input class=\"txt-input txt-password\" id=\"txtUserName\" name=\"txtUserName\" type=\"text\"\r\n                        value=\"");
	templateBuilder.Append(Utils.ObjectToStr(username));
	templateBuilder.Append("\" placeholder=\"请输入推荐人手机号(可不填)\" />\r\n                </div>\r\n                ");
	if (uconfig.regrules==1)
	{

	templateBuilder.Append("\r\n                <div class=\"item item-sms-captcha\">\r\n                    <div class=\"err-tips\">\r\n                        注册即视为同意<a href=\"javascript:;\" id=\"agreement\">《麦买购用户注册协议》</a></div>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <!--<div class=\"item item-btns\">\r\n                <a href=\"javascript:;\" class=\"btn-login btn-disabled\">注册</a>\r\n            </div>//-->\r\n                <div class=\"item item-btns\">\r\n                    <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"注册\" class=\"btn-login\" />\r\n                </div>\r\n                <div class=\"item item-btns\">\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\" class=\"btn-login2\">直接登录</a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        </form>\r\n        ");
	}	//end for if

	if (action=="close")
	{

	templateBuilder.Append("\r\n        <!--关闭会员注册-->\r\n        <div class=\"wrap-box\">\r\n            <h2>\r\n                系统暂停注册会员</h2>\r\n            <div class=\"tip\">\r\n                <span class=\"icon info\"></span>\r\n                <p>\r\n                    如对您造成不便，我们深感遗憾！</p>\r\n                <p>\r\n                    如需了解开放时间，请联系本站客服或管理员。</p>\r\n                <p>\r\n                    您可以点击这里返回 <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" data-ignore=\"true\">网站首页</a></p>\r\n            </div>\r\n        </div>\r\n        <!--/关闭会员注册-->\r\n        ");
	}	//end for if

	if (action=="succeed")
	{

	templateBuilder.Append("\r\n        <!--注册成功-->\r\n        <div class=\"wrap-box\">\r\n            <h2>\r\n                恭喜您，注册成功</h2>\r\n            <div class=\"tip\">\r\n                <span class=\"icon check\"></span>\r\n                <p>\r\n                    恭喜您");
	templateBuilder.Append(Utils.ObjectToStr(username));
	templateBuilder.Append("成为本站会员！</p>\r\n                <p>\r\n                    从现在起，你可以享受更多的会员服务。</p>\r\n                <p>\r\n                    点击这里返回 <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" data-ignore=\"true\">首页</a> 或 <a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\"\r\n                        data-ignore=\"true\">登录</a> 会员中心吧！</p>\r\n            </div>\r\n        </div>\r\n        <!--/注册成功-->\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(config.webcountcode));
	templateBuilder.Append("\r\n    </div>\r\n    <div class=\"mask\">\r\n    </div>\r\n    <div class=\"agreement\">\r\n        <div class=\"close\">\r\n            x</div>\r\n        <div class=\"content\">\r\n            <p>\r\n                <h3 style=\"text-align: center;\">\r\n                    麦买购用户注册协议</h3>\r\n            </p>\r\n            <p>\r\n                加入和使用麦买购网站表明您已经阅读并同意本协议使用条款，您的会员活动应会遵从本协议使用条款约定。本协议由您与浙江麦太科技有限公司双方签署共同缔结，本协议具有法律合同效力。本协议中协议双方合称协议方，浙江麦太科技有限公司在协议中亦称为“麦买购”,域名为\r\n                www.51maimaigo.com</p>\r\n            <h4>\r\n                一、协议内容及签署</h4>\r\n            1、本协议内容包括协议正文及所有麦买购已经发布的或将来可能发布的各类规则。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何麦买购及其关联公司提供的服务均受本协议约束。<br>\r\n            2、您应当在使用麦买购服务之前认真阅读全部协议内容，如您对协议有任何疑问的，应向麦买购咨询。但无论您事实上是否在使用麦买购服务之前认真阅读了本协议内容，只要您享受使用麦买购提供的服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得麦买购对您问询的解答等理由，主张本协议无效，或要求撤销本协议。<br>\r\n            3、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用麦买购服务。<br>\r\n            4、麦买购有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。如您不同意相关变更，应当立即停止使用麦买购服务并主张申请撤销申请麦买购会员帐号对应的权利。您继续使用麦买购服务的，即表示您接受经修订的协议和规则。<br>\r\n            <br>\r\n            <h4>\r\n                二、会员</h4>\r\n            <p>\r\n                1.申请资格</p>\r\n            <p>\r\n                本协议中所指的会成员是指拥有中华人民共和国公民资格，具有完全的民事行为能力，并能够独立承担法律责任的自然人。不符合上述条件的，麦买购有权拒绝为其提供服务并终止会员资格。</p>\r\n            <p>\r\n                2.会员注册</p>\r\n            <p>\r\n                在您按照注册页面提示填写信息、阅读且同意本协议，并完成全部注册程序后或者以其他麦买购允许的方式享受使用麦买购提供的服务，您即成为麦买购的会员。</p>\r\n            <p>\r\n                在注册时，您应当按照法律法规要求，和注册页面的提示语要求，将注册信息填写完整清楚。保证填写信息的真实性、有效性。会员以用户名或电子邮箱和密码登陆麦买购后在本网站的一切行为均视为会员的真实意思表示并由会员承担相应的法律后果。会员应妥善保管会员账户密码及其他相关信息，因保管不善导致经济损失的，由会员承担责任。\r\n                除非有法律规定或司法裁定，且征得麦买购的同意，否则，账户（会员名）和密码不得以任何方式转让、赠与或继承（与账户相关的财产权益除外）。如果发现任何人不当使用您的账户或有任何其他可能危及您的账户安全的情形时，您应当立即以有效方式通知麦买购，要求麦买购暂停相关服务。</p>\r\n            <p>\r\n                3.会员权利</p>\r\n            <p>\r\n                3.1用户注册成为麦买购的会员后，即刻可以享受麦买购的提供的服务；</p>\r\n            <p>\r\n                3.2您在麦买购的交易过程中与其他会员发生交易纠纷时，一旦您或其它会员任一方或双方共同提交麦买购要求调处，则麦买购有权根据单方判断做出调处决定，您了解并同意接受麦买购的判断和调处决定。该决定将对您具有法律约束力；</p>\r\n            <p>\r\n                3.3您了解并同意，麦买购有权应政府部门（包括司法及行政部门）的要求，向其提供您在麦买购填写的注册信息和交易记录等必要信息。如您涉嫌侵犯他人知识产权，则麦买购亦有权在初步判断涉嫌侵权行为存在的情况下，向权利人提供您必要的身份信息。</p>\r\n            <p>\r\n                4.会员的义务</p>\r\n            <p>\r\n                4.1会员必须保证注册信息的准确性；</p>\r\n            <p>\r\n                4.2如果会员填写的资料有变更，应及时通知麦买购做出相应的修改；</p>\r\n            <p>\r\n                4.3会员不得出现恶意注册恶意点击等行为；麦买购严禁通过购买产品恶意取消订单等非法手段来提高个人收入，一经发现，麦买购有权取消会员的资格，并追回已经支付的全部佣金，同时该会员必须赔偿承担由此给麦买购带来的所有损失。</p>\r\n            <p>\r\n                4.4 会员不得盗用或购买他人身份信息进行注册，否则麦买购有权取消其会员资格，追求已经支付的全部佣金，并保留追述其法律责任的权利。</p>\r\n            <p>\r\n                4.5会员在使用麦买购服务过程中实施的所有行为均遵守国家法律、法规等规范性文件及麦买购各项规则的规定和要求，不违背社会公共利益或公共道德，不损害他人的合法权益，不违反本协议及相关规则。您如果违反前述承诺，产生任何法律后果的，您应以自己的名义独立承担所有的法律责任，并确保麦买购免于因此产生任何损失。</p>\r\n            <p>\r\n                4.6麦买购严禁各种针对麦买购活动的作弊行为。对于查实的作弊行为，我们将收回该账号全部的邀请奖励、取消邀请资格，给予一定处罚，并列入麦买购黑名单账户。</p>\r\n            <p>\r\n                4.7不使用任何装置、软件或例行程序干预或试图干预麦买购平台的正常运作或正在麦买购上进行的任何交易、活动。您不得采取任何将导致不合理的庞大数据负载加诸麦买购网络设备的行动。</p>\r\n            <br>\r\n            <h4>\r\n                三、隐私权政策</h4>\r\n            <p>\r\n                1.麦买购对希望成为会员的用户没有任何限制，但16岁以下的用户使用麦买购服务必须取得监护人的同意；</p>\r\n            <p>\r\n                2.一个帐号仅限一个会员使用，会员必须向麦买购提供真实确实的信息，对于由于资料提供不正确导致货物及款项无法收到等后果，麦买购不承担责任；</p>\r\n            <p>\r\n                3.会员资料修改后必须及时通知麦买购做出相应变更；</p>\r\n            <p>\r\n                4.会员必须遵守麦买购的使用条款及隐私政策。</p>\r\n            <br>\r\n            <h4>\r\n                四、网站服务中断或故障</h4>\r\n            <p>\r\n                会员同意，基于互联网的特殊性，本网站不担保服务不会中断，也不担保服务的及时性。系统因相关状况无法正常运作，使会员无法使用任何本网站服务或使用任何本网站服务时受到任何影响时，麦买购对会员或第三方不负任何责任，前述状况包括但不限于：</p>\r\n            <p>\r\n                1.麦买购系统停机维护期间；</p>\r\n            <p>\r\n                2.电信设备出现故障不能进行数据传输的；</p>\r\n            <p>\r\n                3.由于黑客攻击、网络供应商技术调整或故障、网站升级、银行或第三方支付机构方面的问题等原因而造成的本网站服务中断或延迟；</p>\r\n            <p>\r\n                4.因台风、地震、海啸、洪水、停电、战争、恐怖袭击等不可抗力之因素，造成本网站系统障碍不能执行业务的。</p>\r\n            <br>\r\n            <h4>\r\n                五、 法律适用、条款有效性及管辖</h4>\r\n            <p>\r\n                1.因本协议发生纠纷的，适用中华人民共和国法律。</p>\r\n            <p>\r\n                2.若本协议的部分条款被认定为无效或者无法实施时，本协议中的其他条款仍然有效。</p>\r\n            <p>\r\n                3.因履行本协议产生纠纷的，协商解决。协商不成的，双方约定向杭州深圳仲裁委员会申请仲裁裁决。</p>\r\n            <br>\r\n            <br>\r\n            <p>\r\n                浙江麦太科技有限公司</p>\r\n            <p>\r\n                2016年12月1日</p>\r\n        </div>\r\n    </div>\r\n    <script>\r\n        $(function () {\r\n            $(\"#agreement\").click(function () {\r\n                $(\".mask\").show();\r\n                $(\".agreement\").show();\r\n            });\r\n            $(\".close\").click(function () {\r\n                $(\".mask\").hide();\r\n                $(\".agreement\").hide();\r\n            });\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
