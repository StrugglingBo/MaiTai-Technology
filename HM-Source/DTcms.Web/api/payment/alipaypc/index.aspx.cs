using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTcms.Common;
using DTcms.API.Payment.alipaypc;
using Aop;
using Aop.Api;
using Aop.Api.Request;
using Aop.Api.Response;

namespace DTcms.Web.api.payment.alipaypc
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //读取站点配置信息
            Model.siteconfig siteConfig = new BLL.siteconfig().loadConfig();

            //=============================获得订单信息================================
            string order_no = DTRequest.GetFormString("pay_order_no").ToUpper();
            decimal order_amount = DTRequest.GetFormDecimal("pay_order_amount", 0);
            string user_name = DTRequest.GetFormString("pay_user_name");
            string subject = DTRequest.GetFormString("pay_subject");
            //以下收货人信息
            string receive_name = string.Empty; //收货人姓名
            string receive_address = string.Empty; //收货人地址
            string receive_zip = string.Empty; //收货人邮编
            string receive_phone = string.Empty; //收货人电话
            string receive_mobile = string.Empty; //收货人手机
            //检查参数是否正确
            if (string.IsNullOrEmpty(order_no) || order_amount == 0)
            {
                Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，功能正在开发中，预计17：00前完成！")));
                return;
            }
            if (order_no.StartsWith("R")) //R开头为在线充值订单
            {
                Model.user_recharge model = new BLL.user_recharge().GetModel(order_no);
                if (model == null)
                {
                    Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，您充值的订单号不存在或已删除！")));
                    return;
                }
                if (model.amount != order_amount)
                {
                    Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，您充值的订单金额与实际金额不一致！")));
                    return;
                }
                //取得用户信息
                Model.users userModel = new BLL.users().GetModel(model.user_id);
                if (userModel == null)
                {
                    Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，用户账户不存在或已删除！")));
                    return;
                }
                receive_name = userModel.nick_name;
                receive_address = userModel.address;
                receive_phone = userModel.telphone;
                receive_mobile = userModel.mobile;
            }
            else //B开头为商品订单
            {
                Model.orders model = new BLL.orders().GetModel(order_no);
                if (model == null)
                {
                    Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，您支付的订单号不存在或已删除！")));
                    return;
                }
                if (model.order_amount != order_amount)
                {
                    Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，您支付的订单金额与实际金额不一致！")));
                    return;
                }
                receive_name = model.accept_name;
                receive_address = model.address;
                receive_zip = model.post_code;
                receive_phone = model.telphone;
                receive_mobile = model.mobile;
            }
            if (user_name != "")
            {
                user_name = "支付会员：" + user_name;
            }
            else
            {
                user_name = "匿名用户";
            }

            //===============================请求参数==================================

            //判断担保或是即时到帐接口
            if (Config.Type == "1") //即时到帐
            {
                ////把请求参数打包成数组
                //SortedDictionary<string, string> sParaTemp = new SortedDictionary<string, string>();
                //sParaTemp.Add("payment_type", "1"); //收款类型1商品购买
                //sParaTemp.Add("show_url", siteConfig.weburl); //商品展示地址
                //sParaTemp.Add("out_trade_no", order_no); //网站订单号
                //sParaTemp.Add("subject", siteConfig.webname + "-" + subject); //订单名称
                //sParaTemp.Add("body", user_name); //订单描述
                //sParaTemp.Add("total_fee", order_amount.ToString()); //订单总金额
                //sParaTemp.Add("paymethod", ""); //默认支付方式
                //sParaTemp.Add("defaultbank", ""); //默认网银代号
                //sParaTemp.Add("anti_phishing_key", ""); //防钓鱼时间戳
                //sParaTemp.Add("exter_invoke_ip", DTRequest.GetIP()); ////获取客户端的IP地址
                //sParaTemp.Add("buyer_email", ""); //默认买家支付宝账号
                //sParaTemp.Add("royalty_type", "");
                //sParaTemp.Add("royalty_parameters", "");
                ////构造即时到帐接口表单提交HTML数据，无需修改
                //Service ali = new Service();
                //string sHtmlText = ali.Create_direct_pay_by_user(sParaTemp);
                //Response.Write(sHtmlText);

                IAopClient client = new DefaultAopClient("https://openapi.alipay.com/gateway.do", "2016121104154814", "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB", "json", "1.0", "RSA", "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDI6d306Q8fIfCOaTXyiUeJHkrIvYISRcc73s3vF1ZT7XN8RNPwJxo8pWaJMmvyTn9N4HQ632qJBVHf8sxHi/fEsraprwCtzvzQETrNRwVxLO5jVmRGi60j8Ue1efIlzPXV9je9mkjzOmdssymZkh2QhUrCmZYI/FCEa3/cNMW0QIDAQAB", "GBK");
                AlipayTradeWapPayRequest request = new AlipayTradeWapPayRequest();
                request.BizContent = "{" +
                "    \"body\":\"对一笔交易的具体描述信息。如果是多种商品，请将商品描述字符串累加传给body。\"," +
                "    \"subject\":\"大乐透\"," +
                "    \"out_trade_no\":\"70501111111S001111119\"," +
                "    \"timeout_express\":\"90m\"," +
                "    \"total_amount\":9.00," +
                "    \"product_code\":\"QUICK_WAP_PAY\"" +
                "  }";
                AlipayTradeWapPayResponse response = client.pageExecute(request);
                string form = response.Body;
                Response.Write(form);

            }
            else //担保交易
            {
                //把请求参数打包成数组
                SortedDictionary<string, string> sParaTemp = new SortedDictionary<string, string>();
                sParaTemp.Add("payment_type", "1"); //收款类型1商品购买
                sParaTemp.Add("out_trade_no", order_no); //网站订单号变值，把一次交易看成是一次下订单而非购买一件商品
                sParaTemp.Add("logistics_fee", "0.00"); //物流费用
                sParaTemp.Add("logistics_type", "EXPRESS"); //物流类型，EXPRESS（快递）、POST（平邮）、EMS（EMS）
                sParaTemp.Add("logistics_payment", "SELLER_PAY"); //物流支付方式，SELLER_PAY(卖家承担运费)、BUYER_PAY(买家承担运费)
                sParaTemp.Add("body", user_name); //订单描述
                sParaTemp.Add("show_url", siteConfig.weburl); //商品展示地址
                sParaTemp.Add("receive_name", receive_name); //收货人姓名
                sParaTemp.Add("receive_address", receive_address); //收货人地址
                sParaTemp.Add("receive_zip", receive_zip); //收货人邮编
                sParaTemp.Add("receive_phone", receive_phone); //收货人电话号码
                sParaTemp.Add("receive_mobile", receive_mobile); //收货人手机号码
                //构造即时到帐接口表单提交HTML数据，无需修改
                Service ali = new Service();
                string sHtmlText = ali.Create_partner_trade_by_buyer(sParaTemp);
                Response.Write(sHtmlText);
            }
        }
    }
}