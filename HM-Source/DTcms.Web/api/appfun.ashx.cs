using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LitJson;
using System.Web.SessionState;
using System.Text;
using System.Data;
using System.Net;
using System.IO;
using DTcms.DBUtility;
using DTcms.Web.UI;
using DTcms.Common;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;
using Pingpp;
using Pingpp.Models;

namespace DTcms.Web.api
{
    /// <summary>
    /// appfun 的摘要说明
    /// </summary>
    public class appfun : IHttpHandler, IRequiresSessionState
    {
        Model.siteconfig siteConfig = new BLL.siteconfig().loadConfig();
        Model.userconfig userConfig = new BLL.userconfig().loadConfig();
        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request.Params["action"]; //外部请求
            //操作判断
            switch (action)
            {
                case "getgoodslist": //获取产品列表
                    getgoodslist(context);
                    break;
                case "getshoplist"://获取店铺列表
                    getshoplist(context);
                    break;
                case "getorderlist"://获取订单列表
                    getorderlist(context);
                    break;
                case "sureorder"://确认收货
                    sureorder(context);
                    break;
                case "cardno_save"://绑定银行卡
                    cardno_save(context);
                    break;
                case "identy_save"://身份证认证
                    identy_save(context);
                    break;
                case "aliinfo_save"://支付宝信息绑定
                    aliinfo_save(context);
                    break;
                case "getGrouplist"://获取团队信息
                    getGrouplist(context);
                    break;
                case "address_save"://寄送地址保存
                    address_save(context);
                    break;
                case "getrecordlist"://获取提现记录
                    getrecordlist(context);
                    break;
                case "outmoney_save"://提交提现申请
                    outmoney_save(context);
                    break;
                case "changeapplorsta"://修改提现申请状态
                    changeapplorsta(context);
                    break;
                case "getsorecelist"://获取麦豆获得列表
                    getsorecelist(context);
                    break;
                case "changerorder"://账单状态变更
                    changerorder(context);
                    break;
                case "buy_vip"://Vip账户购买
                    buy_vip(context);
                    break;
                case "cancleorder"://取消订单
                    cancleorder(context);
                    break;
                case "backoilcard"://油卡回收
                    backoilcard(context);
                    break;
                case "creatcharge"://创建支付通道
                    creatcharge(context);
                    break;
                case "changeordersta"://
                    changeordersta(context);
                    break;
                case "saveimg"://图片保存
                    saveimg(context);
                    break;
                case "activepublish"://工单提交
                    activepublish(context);
                    break;
                case "outmoney_cancel"://删除提现申请
                    outmoney_cancel(context);
                    break;
                case "getmypre"://获取我的业绩指数
                    getmypre(context);
                    break;
                case "gettotalpre"://获取总业绩指数
                    gettotalpre(context);
                    break;
                case "savelrze"://保存总指数及下调比例
                    savelrze(context);
                    break;
            }
        }
        private void activepublish(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            try
            {
                string username = context.Request.Form["txtuname"].ToString();
                string txttypename = context.Request.Form["txttypename"].ToString();
                string txtorderno = context.Request.Form["txtorderno"].ToString();
                string img1 = context.Request.Form["fdemo1"].ToString();
                string img2 = context.Request.Form["fdemo2"].ToString();
                string img3 = context.Request.Form["fdemo3"].ToString();
                //工单内容

                string content = context.Request.Form["txtcontent"].ToString();

                bool b = false;
                if (txtorderno != "")
                {
                    b = new BLL.workflow().Exists(txtorderno);
                }

                if (!b)
                {

                    Model.workflow wmodel = new Model.workflow();
                    Model.users umodel = new BLL.users().GetModel(username);
                    if (umodel != null)
                    {
                        wmodel.content = txtorderno.Trim() == "" ? Utils.DropHTML(content) : "订单号[" + txtorderno + "]:" + Utils.DropHTML(content);
                        wmodel.img1 = img1;
                        wmodel.img2 = img2;
                        wmodel.img3 = img3;
                        wmodel.sta = 1;
                        wmodel.typename = txttypename;
                        wmodel.userid = umodel.id;
                        wmodel.userName = umodel.user_name;
                    }
                    else
                    {
                        revstr.Append("\"status\":\"0\",\"msg\":\"当前账户异常\"");
                    }
                    int _id = new BLL.workflow().Add(wmodel);

                    if (_id > 0)
                    {
                        //提示成功并页面跳转
                        revstr.Append("\"status\":\"1\",\"msg\":\"工单提交成功!\",\"url\":\"" + new Web.UI.BasePage().linkurl("usercenter") + "\"");
                    }
                }
                else
                {
                    revstr.Append("\"status\":\"1\",\"msg\":\"您以提交过相同订单问题处理</br>订单正在人工处理中,请耐心等待!\",\"url\":\"" + new Web.UI.BasePage().linkurl("usercenter") + "\"");
                }
            }
            catch (Exception ex)
            {
                revstr.Append("\"status\":\"0\",\"msg\":\"" + ex.Message + "\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        /// <summary>
        /// 图片上传接口
        /// </summary>
        /// <param name="context"></param>
        private void saveimg(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            try
            {
                //context.Response.ContentType = "image/jpeg";
                HttpFileCollection files = context.Request.Files;
                //保存files值
                string[] imglist = new string[files.Count];
                for (int m = 0; m < files.Count; m++)
                {
                    HttpPostedFile _upfile = files.Get(m);
                    string fileName = _upfile.FileName;
                    if (fileName != "")
                    {
                        string filetype = fileName.Split('.')[1].ToString();
                        string datimestr = DateTime.Now.ToString("yyyyMMddHHmmss") + m.ToString();
                        string path = "/upload/workflow/" + (datimestr + "." + filetype);
                        _upfile.SaveAs(HttpContext.Current.Server.MapPath(path));
                        revstr.Append("\"status\":\"1\",\"fileName\":\"" + path + "\"");
                    }
                    else
                    {
                        revstr.Append("\"status\":\"0\",\"msg\":\"系统繁忙，请稍后重试！\"");
                    }
                }
            }
            catch
            {
                revstr.Append("\"status\":\"0\",\"msg\":\"图片上传发生错误!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        #region 支付管理
        private void changeordersta(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            string revinput = "";
            using (StreamReader sr = new StreamReader(context.Request.InputStream))
            {
                revinput = revinput + sr.ReadLine();
            }
            JsonData jd = JsonMapper.ToObject(revinput);
            if (jd.Count > 0)
            {
                if (jd["type"].ToString() == "charge.succeeded")
                {
                    string orderno = jd["data"]["object"]["order_no"].ToString();
                    string channel = jd["data"]["object"]["channel"].ToString();
                    string trade_no = jd["data"]["object"]["transaction_no"].ToString();
                    if (channel == "wx_pub" || channel == "upacp_wap")
                    {
                        Model.orders orderModel = new BLL.orders().GetModel(orderno);
                        if (orderModel != null)
                        {
                            Model.users userModel = new BLL.users().GetModel(orderModel.user_id);
                            if (userModel != null)
                            {
                                if (orderno.StartsWith("T"))
                                {
                                    orderModel.payment_status = 2;
                                    orderModel.status = 3;
                                    orderModel.express_status = 2;
                                    orderModel.trade_no = trade_no;
                                    orderModel.confirm_time = DateTime.Now;
                                    orderModel.payment_time = DateTime.Now;
                                    //本地生活订单处理
                                }
                                else
                                {
                                    orderModel.payment_status = 2;

                                    Model.siteconfig siteConfig = new BLL.siteconfig().loadConfig();
                                    int isneedcheck = siteConfig.commentstatus;
                                    if (isneedcheck == 1)
                                    {
                                        orderModel.status = 2;
                                    }
                                    else
                                    {
                                        orderModel.status = 1;
                                    }

                                    orderModel.payment_time = DateTime.Now;
                                    orderModel.trade_no = trade_no;
                                }
                                if (new BLL.orders().Update(orderModel))
                                {
                                    revstr.Append("\"success\":\"true\",\"msg\":\"[" + orderno + "]支付成功,订单已处理!\"");
                                }
                                else
                                {
                                    revstr.Append("\"success\":\"false\",\"msg\":\"订单状态更新失败!\"");
                                }
                            }
                            else
                            {
                                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
                            }
                        }
                        else
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"不存在该订单!\"");
                        }
                    }
                    else
                    {
                        revstr.Append("\"success\":\"false\",\"msg\":\"该支付订单方式无需webhooks处理!\"");
                    }

                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"支付失败,订单未处理!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        private void creatcharge(HttpContext context)
        {
            string revinput = "";
            using (StreamReader sr = new StreamReader(context.Request.InputStream))
            {
                revinput = revinput + sr.ReadLine();
            }
            JsonData jd = JsonMapper.ToObject(revinput);
            string order_no = context.Request["onum"].ToString();
            Model.orders orderModel = new BLL.orders().GetModel(order_no);
            if (orderModel != null)
            {
                DataSet ds = new BLL.payment().GetList("api_path='" + jd["channel"].ToString() + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    int payid = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                    orderModel.payment_id = payid;
                    new BLL.orders().Update(orderModel);
                }
                //创建charge对象
                string title = "";
                if (orderModel.order_goods != null && orderModel.order_goods.Count > 0)
                {
                    title = orderModel.order_goods[0].goods_title;
                }
                else
                {
                    title = orderModel.accept_name;
                }
                Charge cg = chargeset(orderModel.order_no, orderModel.order_amount, title, jd);
                context.Response.Write(cg);
            }
            return;
        }
        /// <summary>
        /// 支付宝支付
        /// </summary>
        /// <param name="ordernum"></param>
        /// <param name="amount"></param>
        /// <param name="goodstitle"></param>
        /// <returns></returns>
        private Charge chargeset(string ordernum, decimal amount, string goodstitle, JsonData jd)
        {
            Charge ch = new Charge();
            Pingpp.Pingpp.SetApiKey("sk_live_eH0uTGmfv1qDubPWz9iDqv9K");
            string path = System.Web.HttpContext.Current.Request.MapPath("/key/rsa_private_key.pem");
            Pingpp.Pingpp.SetPrivateKeyPath(path);
            Dictionary<String, Object> app = new Dictionary<String, Object>();
            app.Add("id", "app_vvbDiHvPGaH4vz1a");
            Dictionary<String, Object> extra = new Dictionary<String, Object>();
            string paytype = jd["channel"].ToString();
            switch (paytype)
            {
                case "alipay_wap":
                    extra.Add("success_url", "http://www.51maimaigo.com/payment.html");
                    extra.Add("cancel_url", "http://www.51maimaigo.com/payment.html");
                    break;
                case "wx_pub":
                    extra.Add("open_id", jd["open_id"].ToString());
                    break;
                case "bfb_wap":
                    extra.Add("result_url", "http://www.51maimaigo.com/payment.html");
                    extra.Add("bfb_login", false);
                    break;
                case "upacp_wap":
                    extra.Add("result_url", "http://www.51maimaigo.com/order_list.html");
                    break;
                case "jdpay_wap":
                    extra.Add("success_url", "http://www.51maimaigo.com/payment.html");
                    extra.Add("fail_url", "http://www.51maimaigo.com/payment.html");
                    break;
            }
            Dictionary<String, Object> listparams = new Dictionary<String, Object>();
            listparams.Add("order_no", ordernum);
            listparams.Add("amount", amount * 100);
            listparams.Add("channel", paytype);
            listparams.Add("currency", "cny");
            if (paytype == "upacp_wap")
            {
                listparams.Add("subject", "购买产品:" + goodstitle);
            }
            else
            {
                goodstitle = Common.Utils.CutString(goodstitle, 18);
                listparams.Add("subject", "购买产品:" + goodstitle);
            }
            listparams.Add("body", goodstitle);
            string ip = DTRequest.GetIP();
            listparams.Add("client_ip", ip);
            listparams.Add("app", app);
            listparams.Add("extra", extra);
            try
            {
                //发起交易请求
                ch = Charge.Create(listparams);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message.ToString());
            }
            return ch;

        }
        #region 变更订单状态================================
        private void backoilcard(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int orderid = int.Parse(context.Request["orderid"].ToString());
            string card = context.Request["card"].ToString();
            string remark = context.Request["remark"].ToString();
            Model.orders ordermodel = new BLL.orders().GetModel(orderid);
            if (ordermodel != null)
            {
                if (ordermodel.payment_status > 0)
                {
                    ordermodel.status = 2;
                    ordermodel.post_code = card;
                    ordermodel.remark = "回收至银行卡:" + remark;
                    if (new BLL.orders().Update(ordermodel))
                    {
                        revstr.Append("\"success\":\"true\",\"msg\":\"油卡回收成功,请等待后续处理!\"");
                    }
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"该订单未支付成功,无法进行后续操作!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"订单记录不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        private void buy_vip(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            string area = context.Request["area"].ToString().Replace('/', ',');
            Model.users usermodel = new BLL.users().GetModel(uid);
            if (usermodel != null)
            {
                if (usermodel.group_id == 1)
                {
                    Model.user_info infomodel = new BLL.user_info().GetModel(usermodel.id);
                    if (infomodel != null)
                    {
                        if (infomodel.identyno != "")
                        {
                            if (usermodel.qq != "1")
                            {
                                //下订单
                                //获取商品信息==================================
                                Model.article artproinfo = new BLL.article().GetModel(102);
                                decimal tprice = decimal.Parse(artproinfo.fields["sell_price"].ToString());
                                if (artproinfo != null)
                                {
                                    if (area != "")
                                    {
                                        usermodel.area = area;
                                        new BLL.users().Update(usermodel);
                                    }
                                    //保存订单=======================================
                                    Model.orders model = new Model.orders();
                                    model.order_no = "T" + Utils.GetOrderNumber(); //订单号B开头为商品订单
                                    model.user_id = usermodel.id;
                                    model.user_name = usermodel.user_name;
                                    model.payment_id = 3;
                                    model.payment_status = 1;
                                    model.express_id = 1;
                                    model.accept_name = "系统自动配发";
                                    model.area = area; //省市区以逗号相隔
                                    model.address = "";
                                    model.telphone = "";
                                    model.mobile = "";
                                    model.message = "";
                                    model.email = "";
                                    model.post_code = "";
                                    model.is_invoice = 0;
                                    model.payable_amount = tprice;
                                    model.real_amount = tprice;
                                    model.express_status = 1;
                                    model.express_fee = 0; //物流费用

                                    //订单总金额=实付商品金额+运费+支付手续费+税金
                                    model.order_amount = tprice;
                                    //购物麦豆,可为负数
                                    model.point = 0;
                                    model.add_time = DateTime.Now;
                                    //商品详细列表
                                    List<Model.order_goods> gls = new List<Model.order_goods>();
                                    gls.Add(new Model.order_goods
                                    {
                                        article_id = artproinfo.id,
                                        goods_id = artproinfo.id,
                                        goods_no = artproinfo.fields["goods_no"],
                                        goods_title = artproinfo.title,
                                        img_url = artproinfo.img_url,
                                        spec_text = "",
                                        goods_price = decimal.Parse(artproinfo.fields["sell_price"].ToString()),
                                        real_price = tprice,
                                        quantity = 1,
                                        point = int.Parse(artproinfo.fields["point"].ToString())
                                    });
                                    model.order_goods = gls;
                                    int result = new BLL.orders().Add(model);
                                    if (result < 1)
                                    {
                                        context.Response.Write("{\"success\":\"false\", \"msg\":\"订单保存发生错误，请联系管理员！\"}");
                                        return;
                                    }
                                    //提交成功，返回URL
                                    context.Response.Write("{\"success\":\"true\", \"url\":\""
                                        + new Web.UI.BasePage().getlink("maimaigo", new Web.UI.BasePage().linkurl("payment", "?action=confirm&order_no=" + model.order_no)) + "\", \"msg\":\"恭喜您，订单已成功提交！\"}");
                                    return;
                                }
                                else
                                {
                                    context.Response.Write("{\"success\":\"false\", \"msg\":\"对不起，您购买的产品不存在或已下架！\"}");
                                    return;
                                }

                            }
                            else
                            {
                                revstr.Append("\"success\":\"false\",\"msg\":\"用户已经购买了Vip,无需重复购买!\"");
                            }
                        }
                        else
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"购买VIP前请进行身份证认证!\"");
                        }
                    }
                    else
                    {
                        revstr.Append("\"success\":\"false\",\"msg\":\"购买VIP前请进行身份证认证!\"");
                    }
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"用户已经是Vip用户了!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
            //生成订单T
            //页面跳转
        }
        private void changerorder(HttpContext context)
        {
            StringBuilder strTxt = new StringBuilder();
            string orderno = context.Request["name"].ToString();
            string money = context.Request["money"].ToString();
            string trad_no = context.Request["ddh"].ToString();

            if (orderno != "")
            {
                Model.orders orderModel = new BLL.orders().GetModel(orderno);
                if (orderModel != null)
                {
                    Model.users userModel = new BLL.users().GetModel(orderModel.user_id);
                    if (userModel != null)
                    {
                        if (decimal.Parse(money) == orderModel.real_amount)
                        {
                            orderModel.payment_status = 2;
                            Model.siteconfig siteConfig = new BLL.siteconfig().loadConfig();
                            int isneedcheck = siteConfig.commentstatus;
                            if (isneedcheck == 1)
                            {
                                orderModel.status = 2;
                            }
                            else
                            {
                                orderModel.status = 1;
                            }
                            orderModel.trade_no = trad_no;
                            orderModel.payment_time = DateTime.Now;
                            if (new BLL.orders().Update(orderModel))
                            {
                                if (orderno.StartsWith("B"))
                                {
                                    //if (userModel.group_id == 1)
                                    //{
                                    //if (userModel.qq == "1")
                                    //{
                                    //    if (decimal.Parse(money) >= 3000)
                                    //    {
                                    //        userModel.msn = "1";
                                    //    }
                                    //}
                                    //else
                                    //{
                                    //    if (decimal.Parse(money) >= 3000)
                                    //    {
                                    //        userModel.msn = "1";
                                    //    }
                                    //}
                                    //if (new BLL.users().Update(userModel))
                                    //{
                                    context.Response.Write("ok");
                                    //    }
                                    //}
                                }
                                else if (orderno.StartsWith("T"))
                                {
                                    context.Response.Write("ok");
                                }
                            }
                            else
                            {
                                context.Response.Write("订单状态更新失败");
                            }
                        }
                        else
                        {
                            context.Response.Write("待支付金额与实际需支付金额不一致");
                        }
                    }
                    else
                    {
                        context.Response.Write("用户不存在");
                    }
                }
                else
                {
                    context.Response.Write("不存在该订单");
                }
            }
            return;
        }
        #endregion
        #endregion

        #region 团队管理
        public void getsorecelist(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            Model.users userModel = new BLL.users().GetModel(uid);
            if (userModel != null)
            {
                int page_size = int.Parse(context.Request["page_size"]);
                int page_index = int.Parse(context.Request["page_index"]);
                int totalcount = 0;
                DataSet ds = new BLL.user_point_log().GetList(page_size, page_index, "user_id=" + uid, " add_time desc", out totalcount);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    revstr.Append("\"success\":\"true\",\"list\":[");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        string id = ds.Tables[0].Rows[i]["id"].ToString();
                        string user_id = ds.Tables[0].Rows[i]["user_id"].ToString();
                        string user_name = ds.Tables[0].Rows[i]["user_name"].ToString();
                        string value = ds.Tables[0].Rows[i]["value"].ToString();
                        string remark = ds.Tables[0].Rows[i]["remark"].ToString();
                        string add_time = DateTime.Parse(ds.Tables[0].Rows[i]["add_time"].ToString()).ToShortDateString();

                        if (i > 0)
                        {
                            revstr.Append(",");
                        }
                        revstr.Append("{\"id\":\"" + id + "\",\"user_id\":\"" + user_id + "\",\"user_name\":\"" + user_name + "\",\"value\":\"" + value + "\",\"remark\":\"" + remark + "\",\"add_time\":\"" + add_time + "\",\"totalcount\":\"" + totalcount + "\"}");
                    }
                    revstr.Append("]");
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"暂无任何信息!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void changeapplorsta(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int id = int.Parse(context.Request["id"].ToString());
            Model.user_recharge rechargemodel = new BLL.user_recharge().GetModel(id);

            if (rechargemodel != null)
            {
                Model.users userModel = new BLL.users().GetModel(rechargemodel.user_id);
                if (userModel != null)
                {
                    int sta = int.Parse(context.Request["sta"].ToString());
                    if (sta == 1)
                    {
                        //添加
                        rechargemodel.status = 1;
                        rechargemodel.complete_time = DateTime.Now;
                        if (new BLL.user_recharge().Update(rechargemodel))
                        {
                            userModel.exp = userModel.exp + decimal.ToInt32(rechargemodel.amount);
                            if (new BLL.users().Update(userModel))
                            {
                                revstr.Append("\"success\":\"true\"");
                            }
                            else
                            {
                                revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,请稍后重试!\"");
                            }
                        }
                        else
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,请稍后重试!\"");
                        }
                    }
                    else
                    {
                        rechargemodel.status = 2;
                        if (new BLL.user_recharge().Update(rechargemodel))
                        {
                            userModel.point = userModel.point + decimal.ToInt32(rechargemodel.amount);
                            if (new BLL.users().Update(userModel))
                            {
                                revstr.Append("\"success\":\"true\"");
                            }
                            else
                            {
                                revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,请稍后重试!\"");
                            }
                        }
                        else
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,请稍后重试!\"");
                        }
                    }
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"申请记录不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        #region 校检手机验证码===============================
        private string verify_sms_code(HttpContext context, string strcode)
        {
            if (string.IsNullOrEmpty(strcode))
            {
                return "{\"status\":0, \"msg\":\"对不起，请输入验证码！\"}";
            }
            if (context.Session[DTKeys.SESSION_SMS_CODE] == null)
            {
                return "{\"status\":0, \"msg\":\"对不起，验证码超时或已过期！\"}";
            }
            if (strcode.ToLower() != (context.Session[DTKeys.SESSION_SMS_CODE].ToString()).ToLower())
            {
                return "{\"status\":0, \"msg\":\"您输入的验证码与系统的不一致！\"}";
            }
            context.Session[DTKeys.SESSION_SMS_CODE] = null;
            return "success";
        }
        #endregion
        public void outmoney_save(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            Model.users userModel = new BLL.users().GetModel(uid);
            DataSet ds = new DataSet();
            ds = new BLL.user_recharge().GetList(1, "convert(char(10),add_time,120)=convert(char(10),getdate(),120) and status<>2 and user_id=" + uid, "add_time desc");
            double doit = 7;
            if (ds.Tables[0].Rows.Count > 0)
            {
                doit = 1;
            }
            if (doit == 7)
            {
                if (userModel != null)
                {
                    string amount = context.Request["amount"].ToString();
                    string mypre = context.Request["mypre"].ToString();
                    string pre = context.Request["pre"].ToString();
                    string rechargeno = context.Request["rechargeno"].ToString();
                    string code = context.Request["code"].ToString();
                    string result2 = verify_sms_code(context, code);
                    if (result2 != "success")
                    {
                        context.Response.Write(result2);
                        return;
                    }
                    if (decimal.Parse(amount) <= userModel.point)
                    {
                        //添加
                        Model.user_recharge rechargemodel = new Model.user_recharge();
                        rechargemodel.add_time = DateTime.Now;
                        rechargemodel.amount = decimal.Parse(amount);
                        rechargemodel.payment_id = 0;
                        rechargemodel.recharge_no = rechargeno;
                        rechargemodel.status = 0;
                        rechargemodel.user_id = userModel.id;
                        rechargemodel.user_name = userModel.user_name;
                        rechargemodel.mypre = decimal.Parse(mypre);
                        if (new BLL.user_recharge().Add(rechargemodel) > 0)
                        {
                            userModel.point = userModel.point - int.Parse(amount);
                            if (new BLL.users().Update(userModel))
                            {
                                revstr.Append("\"success\":\"true\",\"msg\":\"提现申请提交成功,请等待审核!\"");
                            }
                        }
                        else
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,请稍后重试!\"");
                        }
                    }
                    else
                    {
                        revstr.Append("\"success\":\"false\",\"msg\":\"提现麦豆超出可提现麦豆!\"");
                    }
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"今日已提交提现申请,如需重复,请取消后重新申请!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void gettotalpre(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            double totalpre = new BLL.user_pre().updateandgettotalpre();
            DataSet ds = new BLL.user_pre().GetList("convert(char(10),add_time,120)=convert(char(10),getdate(),120)");
            string lrze = "0";
            string uppre = "1";
            if (ds.Tables[0].Rows.Count > 0)
            {
                lrze = ds.Tables[0].Rows[0]["totallr"].ToString();
                uppre = ds.Tables[0].Rows[0]["uppre"].ToString();
            }
            revstr.Append("\"success\":\"true\",\"totalpre\":\"" + (totalpre).ToString("F2") + "\",\"tlrze\":\"" + lrze + "\",\"tuppre\":\"" + uppre + "\"");
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void savelrze(HttpContext context)
        {
            double lrze = double.Parse(context.Request["lrze"].ToString());
            double uppre = double.Parse(context.Request["uppre"].ToString());
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            double totalpre = new BLL.user_pre().updatelrze(lrze, uppre);
            revstr.Append("\"success\":\"true\",\"totalpre\":\"" + (totalpre).ToString("F2") + "\"");
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void getmypre(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            Model.users umodel = new BLL.users().GetModel(uid);
            if (umodel != null)
            {
                double avatar = 0;
                if (umodel.avatar != "")
                {
                    avatar = double.Parse(umodel.avatar);
                }
                double avgpre = new BLL.users().getavgpre();

                double uppre = 1;
                if (new BLL.user_pre().Exists(0))
                {
                    DataSet ds = new BLL.user_pre().GetList("convert(char(10),add_time,120)=convert(char(10),getdate(),120)");
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        uppre = double.Parse(ds.Tables[0].Rows[0]["uppre"].ToString() == "" ? "1" : ds.Tables[0].Rows[0]["uppre"].ToString());
                    }
                }
                double mypre = 0;
                if (avgpre > 0)
                {
                    mypre = (avatar / avgpre) * uppre;
                }
                //if (mypre > 1)
                //{
                //    mypre = (mypre - 1) * 0.05 + 1;
                //}
                //else
                //{
                //    mypre = (mypre - 1) * 0.5 + 1;
                //}
                if (mypre > 1.58)
                {
                    mypre = 1.58;
                }
                //判断是否为上周新进会员
                DataSet dslist = new BLL.user_point_log().GetList(0, "CONVERT(char(12),add_time,120) between convert(char(10),DATEADD(DAY,-13,GETDATE()),120) and convert(char(10),DATEADD(DAY,-7,GETDATE()),120) and user_id=" + umodel.id, "add_time desc");
                if (dslist.Tables[0].Rows.Count == 0)
                {
                    mypre = 1.0;
                }
                revstr.Append("\"success\":\"true\",\"mypre\":\"" + (mypre).ToString("F2") + "\"");
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"系统更新中,无法获取\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void outmoney_cancel(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int id = int.Parse(context.Request["id"].ToString());
            Model.user_recharge model = new BLL.user_recharge().GetModel(id);
            if (model != null)
            {
                Model.users umodel = new BLL.users().GetModel(model.user_id);
                if (umodel != null)
                {
                    umodel.point = umodel.point + int.Parse(model.amount.ToString("F0"));
                }
                new BLL.users().Update(umodel);
                if (new BLL.user_recharge().Delete(id))
                {

                    revstr.Append("\"success\":\"true\",\"msg\":\"该申请删除成功!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"该申请不存在或已删除\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void getrecordlist(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            Model.users userModel = new BLL.users().GetModel(uid);
            if (userModel != null)
            {
                int page_size = int.Parse(context.Request["page_size"]);
                int page_index = int.Parse(context.Request["page_index"]);
                int totalcount = 0;
                DataSet ds = new BLL.user_recharge().GetList(page_size, page_index, "user_id=" + uid, " add_time desc,complete_time desc", out totalcount);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    revstr.Append("\"success\":\"true\",\"list\":[");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        string id = ds.Tables[0].Rows[i]["id"].ToString();
                        string user_id = ds.Tables[0].Rows[i]["user_id"].ToString();
                        string user_name = ds.Tables[0].Rows[i]["user_name"].ToString();
                        string recharge_no = ds.Tables[0].Rows[i]["recharge_no"].ToString();
                        string payment_id = ds.Tables[0].Rows[i]["payment_id"].ToString();
                        string amount = ds.Tables[0].Rows[i]["amount"].ToString();
                        string tamount = ds.Tables[0].Rows[i]["trueamount"].ToString();
                        if (tamount == "")
                        {
                            tamount = "待计算";
                        }
                        string status = ds.Tables[0].Rows[i]["status"].ToString();
                        string statusname = "";
                        if (status == "0")
                        {
                            statusname = "等待提现";
                        }
                        else if (status == "1")
                        {
                            statusname = "提现完成";
                        }
                        else
                        {
                            statusname = "审核不通过";
                        }
                        string add_time = DateTime.Parse(ds.Tables[0].Rows[i]["add_time"].ToString()).ToShortDateString();
                        string complete_time = ds.Tables[0].Rows[i]["complete_time"].ToString();

                        if (complete_time != "")
                        {
                            complete_time = DateTime.Parse(complete_time).ToShortDateString();
                        }
                        if (i > 0)
                        {
                            revstr.Append(",");
                        }
                        revstr.Append("{\"id\":\"" + id + "\",\"user_id\":\"" + user_id + "\",\"user_name\":\"" + user_name + "\",\"recharge_no\":\"" + recharge_no + "\",\"payment_id\":\"" + payment_id + "\",\"amount\":\"" + amount + "\",\"tamount\":\"" + tamount + "\",\"status\":\"" + status + "\",\"add_time\":\"" + add_time + "\",\"complete_time\":\"" + complete_time + "\",\"totalcount\":\"" + totalcount + "\",\"statusname\":\"" + statusname + "\"}");
                    }
                    revstr.Append("]");
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"暂无任何信息!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void address_save(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            Model.users userModel = new BLL.users().GetModel(uid);
            if (userModel != null)
            {
                string acceptname = context.Request["acceptname"].ToString();
                string province = context.Request["province"].ToString();
                string city = context.Request["city"].ToString();
                string area = context.Request["area"].ToString();
                string address = context.Request["address"].ToString();
                string mobile = context.Request["mobile"].ToString();

                //Model.user_addr_book addrModel = new BLL.user_addr_book().GetDefault(userModel.user_name);
                //if (addrModel != null)
                //{
                //    //更新
                //    addrModel.accept_name = acceptname;
                //    addrModel.area = province + "," + city + "," + area;
                //    addrModel.address = address;
                //    addrModel.mobile = mobile;
                //    addrModel.is_default = 1;
                //    if (new BLL.user_addr_book().Update(addrModel))
                //    {
                //        revstr.Append("\"success\":\"true\",\"msg\":\"收货地址保存成功!\"");
                //    }
                //    else
                //    {
                //        revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,请稍后重试!\"");
                //    }
                //}
                //else
                //{
                //添加
                Model.user_addr_book newaddrmodel = new Model.user_addr_book();
                newaddrmodel.accept_name = acceptname;
                newaddrmodel.add_time = DateTime.Now;
                newaddrmodel.address = address;
                newaddrmodel.area = province + "," + city + "," + area;
                newaddrmodel.is_default = 0;
                newaddrmodel.mobile = mobile;
                newaddrmodel.user_id = userModel.id;
                newaddrmodel.user_name = userModel.user_name;
                if (new BLL.user_addr_book().Add(newaddrmodel) > 0)
                {
                    revstr.Append("\"success\":\"true\",\"msg\":\"收货地址保存成功!\"");
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,请稍后重试!\"");
                }
                //}
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void getGrouplist(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            int level = int.Parse(context.Request["level"].ToString());
            int page_size = int.Parse(context.Request["page_size"]);
            int page_index = int.Parse(context.Request["page_index"]);
            Model.users userModel = new BLL.users().GetModel(uid);
            if (userModel != null)
            {
                StringBuilder strSql = new StringBuilder();
                string strwhere = "";
                int totalcount = 0;

                if (level == 1)
                {
                    strwhere = "  nick_name='" + userModel.mobile + "' and isnull(nick_name,'')>''";
                }
                else if (level == 3)
                {
                    strwhere = "  area='" + userModel.area + "' and isnull(area,'')>''";
                }
                else
                {
                    strwhere = "  nick_name in (select mobile from dt_users where nick_name='" + userModel.mobile + "' and isnull(nick_name,'')>'')";
                }

                DataSet ds = new BLL.users().GetList(page_size, page_index, strwhere, "reg_time desc,id asc", out totalcount);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    revstr.Append("\"success\":\"true\",\"list\":[");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        string group_id = ds.Tables[0].Rows[i]["group_id"].ToString();
                        string id = ds.Tables[0].Rows[i]["id"].ToString();
                        string mobile = ds.Tables[0].Rows[i]["mobile"].ToString();
                        string nick_name = ds.Tables[0].Rows[i]["nick_name"].ToString();
                        string reg_time = ds.Tables[0].Rows[i]["reg_time"].ToString();
                        string status = ds.Tables[0].Rows[i]["status"].ToString();
                        string exp = ds.Tables[0].Rows[i]["exp"].ToString();
                        string point = ds.Tables[0].Rows[i]["point"].ToString();
                        string amount = ds.Tables[0].Rows[i]["amount"].ToString();
                        string avatar = ds.Tables[0].Rows[i]["avatar"].ToString();
                        string msn = ds.Tables[0].Rows[i]["msn"].ToString();
                        string qq = ds.Tables[0].Rows[i]["qq"].ToString();

                        if (avatar == "")
                        {
                            avatar = "/upload/avatar.png";
                        }
                        if (i > 0)
                        {
                            revstr.Append(",");
                        }
                        revstr.Append("{\"id\":\"" + id + "\",\"group_id\":\"" + group_id + "\",\"mobile\":\"" + mobile + "\",\"nick_name\":\"" + nick_name + "\",\"reg_time\":\"" + reg_time + "\",\"status\":\"" + status + "\",\"exp\":\"" + exp + "\",\"point\":\"" + point + "\",\"amount\":\"" + amount + "\",\"avatar\":\"" + avatar + "\",\"msn\":\"" + msn + "\",\"qq\":\"" + qq + "\",\"totalcount\":\"" + totalcount + "\"}");
                    }
                    revstr.Append("]");
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"暂无任何信息!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        #endregion

        #region 内容格式=====================================
        public void aliinfo_save(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            string alicount = context.Request["alicount"].ToString();
            string alinick = context.Request["alinick"].ToString();
            Model.users userModel = new BLL.users().GetModel(uid);
            if (userModel != null)
            {
                if (alicount != "" && alinick != "")
                {

                    Model.user_info uinfo = new BLL.user_info().GetModel(userModel.id);
                    if (uinfo == null)
                    {
                        Model.user_info userinfo = new Model.user_info();
                        userinfo.userid = userModel.id;
                        userinfo.alipayaccount = alicount;
                        userinfo.alipaynickname = alinick;
                        if (new BLL.user_info().Add(userinfo) > 0)
                        {
                            revstr.Append("\"success\":\"true\",\"msg\":\"支付宝信息绑定成功!\"");
                        }
                    }
                    else
                    {
                        uinfo.alipayaccount = alicount;
                        uinfo.alipaynickname = alinick;
                        if (new BLL.user_info().Update(uinfo))
                        {
                            revstr.Append("\"success\":\"true\",\"msg\":\"支付宝信息绑定成功!\"");
                        }
                    }

                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"输入的支付宝账号及昵称不能为空!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void identy_save(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            string inum = context.Request["inum"].ToString();
            string tname = context.Request["tname"].ToString();
            Model.users userModel = new BLL.users().GetModel(uid);
            if (userModel != null)
            {
                String host = "http://aliyun.id98.cn";
                String querys = "cardno=" + inum + "&name=" + Common.Utils.UrlDecode(tname);
                String path = "/idcard";
                String method = "GET";
                String appcode = "e7edb75ec5634a498684494e1901d0a0";
                String bodys = "";
                string rev = checkapi(host, querys, path, method, appcode, bodys);
                if (rev != "")
                {
                    JsonData jd = JsonMapper.ToObject(rev);
                    int isok = int.Parse(jd[0].ToString());
                    int code = int.Parse(jd[1].ToString());
                    if (isok == 1)
                    {
                        if (code == 1)
                        {
                            Model.user_info uinfo = new BLL.user_info().GetModel(userModel.id);
                            if (uinfo == null)
                            {
                                DataSet ds = new BLL.user_info().GetList("identyno='" + inum + "'");
                                if (ds.Tables[0].Rows.Count == 0)
                                {
                                    Model.user_info userinfo = new Model.user_info();
                                    userinfo.identyno = inum;
                                    userinfo.userid = userModel.id;
                                    userinfo.truename = tname;
                                    if (new BLL.user_info().Add(userinfo) > 0)
                                    {

                                        revstr.Append("\"success\":\"true\",\"msg\":\"身份证认证成功!\"");
                                    }
                                }
                                else
                                {
                                    revstr.Append("\"success\":\"false\",\"msg\":\"已存在相同的身份证绑定,请重新输入!\"");
                                }
                            }
                            else
                            {
                                DataSet ds = new BLL.user_info().GetList("identyno='" + inum + "'");
                                if (ds.Tables[0].Rows.Count == 0)
                                {
                                    uinfo.identyno = inum;
                                    uinfo.truename = tname;
                                    if (new BLL.user_info().Update(uinfo))
                                    {
                                        revstr.Append("\"success\":\"true\",\"msg\":\"身份证认证成功!\"");
                                    }
                                }
                                else
                                {
                                    revstr.Append("\"success\":\"false\",\"msg\":\"已存在相同的身份证绑定,请重新输入!\"");
                                }
                            }
                            string address = jd[2]["address"].ToString();
                            userModel.email = address;
                            new BLL.users().Update(userModel);
                        }
                        else if (code == 2)
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"身份证号码与真实姓名不一致!\"");
                        }
                        else
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"无此身份证号码!\"");
                        }
                    }
                    else
                    {
                        if (code == 11)
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"参数不正确!\"");
                        }
                        if (code == 20)
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"身份证中心维护中!\"");
                        }
                    }
                }
                else
                {
                    Model.user_info uinfo = new BLL.user_info().GetModel(userModel.id);
                    DataSet ds = new BLL.user_info().GetList("identyno='" + inum + "'");
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        if (uinfo == null)
                        {
                            Model.user_info userinfo = new Model.user_info();
                            userinfo.identyno = inum;
                            userinfo.userid = userModel.id;
                            userinfo.truename = tname;
                            if (new BLL.user_info().Add(userinfo) > 0)
                            {
                                //revstr.Append("\"success\":\"true\",\"msg\":\"身份证认证成功!\"");
                                revstr.Append("\"success\":\"true\",\"msg\":\"认证信息已保存,我们将会及时为您认证!\"");
                            }
                        }
                        else
                        {
                            uinfo.identyno = inum;
                            uinfo.truename = tname;
                            if (new BLL.user_info().Update(uinfo))
                            {
                                revstr.Append("\"success\":\"true\",\"msg\":\"认证信息已保存,我们将会及时为您认证!\"");
                            }
                        }
                    }
                    else
                    {
                        revstr.Append("\"success\":\"false\",\"msg\":\"已存在相同的身份证绑定,请重新输入!\"");
                    }
                }

            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void cardno_save(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int uid = int.Parse(context.Request["uid"].ToString());
            string bnum = context.Request["bnum"].ToString();
            string inum = context.Request["inum"].ToString();
            string tname = context.Request["tname"].ToString();
            string bname = context.Request["bname"].ToString();
            string aliname = context.Request["aliname"].ToString();

            Model.users userModel = new BLL.users().GetModel(uid);
            if (userModel != null)
            {
                String host = "http://aliyun.id98.cn";
                String querys = "cardno=" + inum + "&name=" + Common.Utils.UrlDecode(tname);
                String path = "/idcard";
                String method = "GET";
                String appcode = "e7edb75ec5634a498684494e1901d0a0";
                String bodys = "";
                string rev = checkapi(host, querys, path, method, appcode, bodys);
                if (rev != "")
                {
                    JsonData jd = JsonMapper.ToObject(rev);
                    int isok = int.Parse(jd[0].ToString());
                    int code = int.Parse(jd[1].ToString());
                    if (isok == 1)
                    {
                        if (code == 1)
                        {
                            Model.user_info uinfo = new BLL.user_info().GetModel(userModel.id);
                            if (uinfo == null)
                            {
                                DataSet ds = new BLL.user_info().GetList("(cardno='" + bnum + "' or identyno='" + inum + "') and isnull(alipaynickname,'')>''");
                                if (ds.Tables[0].Rows.Count == 0)
                                {
                                    Model.user_info userinfo = new Model.user_info();
                                    userinfo.cardno = bnum;
                                    userinfo.identyno = inum;
                                    userinfo.userid = userModel.id;
                                    userinfo.truename = tname;
                                    userinfo.bankname = bname;
                                    userinfo.alipaynickname = aliname;
                                    if (new BLL.user_info().Add(userinfo) > 0)
                                    {
                                        revstr.Append("\"success\":\"true\",\"msg\":\"银行卡绑定成功!\"");
                                    }
                                }
                                else
                                {
                                    revstr.Append("\"success\":\"false\",\"msg\":\"已存在相同的银行卡或身份证绑定,请重新输入!\"");
                                }
                            }
                            else
                            {
                                DataSet ds = new BLL.user_info().GetList("cardno='" + bnum + "' and isnull(alipaynickname,'')>''");
                                if (ds.Tables[0].Rows.Count == 0)
                                {
                                    uinfo.cardno = bnum;
                                    uinfo.identyno = inum;
                                    uinfo.truename = tname;
                                    uinfo.bankname = bname;
                                    uinfo.alipaynickname = aliname;
                                    if (new BLL.user_info().Update(uinfo))
                                    {
                                        revstr.Append("\"success\":\"true\",\"msg\":\"银行卡绑定成功!\"");
                                    }
                                }
                                else
                                {
                                    revstr.Append("\"success\":\"false\",\"msg\":\"该银行卡已绑定其他账号,请确认后重新输入!\"");
                                }
                            }
                        }
                        else if (code == 2)
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"身份证号码与真实姓名不一致!\"");
                        }
                        else
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"无此身份证号码!\"");
                        }

                    }
                    else
                    {
                        if (code == 11)
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"参数不正确!\"");
                        }
                        if (code == 20)
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"身份证中心维护中!\"");
                        }
                    }
                }
                else
                {
                    Model.user_info uinfo = new BLL.user_info().GetModel(userModel.id);
                    DataSet ds = new BLL.user_info().GetList("identyno='" + inum + "'");
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        if (uinfo == null)
                        {
                            Model.user_info userinfo = new Model.user_info();
                            userinfo.identyno = inum;
                            userinfo.userid = userModel.id;
                            userinfo.truename = tname;
                            if (new BLL.user_info().Add(userinfo) > 0)
                            {
                                //revstr.Append("\"success\":\"true\",\"msg\":\"身份证认证成功!\"");
                                revstr.Append("\"success\":\"true\",\"msg\":\"认证信息已保存,我们将会及时为您认证!\"");
                            }
                        }
                        else
                        {
                            uinfo.identyno = inum;
                            uinfo.truename = tname;
                            if (new BLL.user_info().Update(uinfo))
                            {
                                revstr.Append("\"success\":\"true\",\"msg\":\"认证信息已保存,我们将会及时为您认证!\"");
                            }
                        }
                    }
                    else
                    {
                        revstr.Append("\"success\":\"false\",\"msg\":\"已存在相同的身份证绑定,请重新输入!\"");
                    }
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"用户不存在!\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public static string checkapi(string host, string querys, string path, string method, string appcode, string bodys)
        {
            String url = host + path;
            HttpWebRequest httpRequest = null;
            HttpWebResponse httpResponse = null;

            if (0 < querys.Length)
            {
                url = url + "?" + querys;
            }

            if (host.Contains("https://"))
            {
                ServicePointManager.ServerCertificateValidationCallback = new RemoteCertificateValidationCallback(CheckValidationResult);
                httpRequest = (HttpWebRequest)WebRequest.CreateDefault(new Uri(url));
            }
            else
            {
                httpRequest = (HttpWebRequest)WebRequest.Create(url);
            }
            httpRequest.Method = method;
            httpRequest.Headers.Add("Authorization", "APPCODE " + appcode);
            if (0 < bodys.Length)
            {
                byte[] data = Encoding.UTF8.GetBytes(bodys);
                using (Stream stream = httpRequest.GetRequestStream())
                {
                    stream.Write(data, 0, data.Length);
                }
            }
            try
            {
                httpResponse = (HttpWebResponse)httpRequest.GetResponse();
            }
            catch (WebException ex)
            {
                httpResponse = (HttpWebResponse)ex.Response;
            }
            Stream st = httpResponse.GetResponseStream();
            StreamReader reader = new StreamReader(st, Encoding.GetEncoding("utf-8"));
            string rev = reader.ReadToEnd();
            return rev;
        }
        public static bool CheckValidationResult(object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors errors)
        {
            return true;
        }
        public void cancleorder(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int orderid = int.Parse(context.Request["orderid"].ToString());
            Model.orders orderModel = new BLL.orders().GetModel(orderid);
            if (orderModel != null)
            {
                orderModel.status = 4;
                if (new BLL.orders().Update(orderModel))
                {
                    Model.users userModel = new BLL.users().GetModel(orderModel.user_id);
                    if (orderModel.point > 0)
                    {
                        userModel.point = userModel.point + orderModel.point;
                        if (new BLL.users().Update(userModel))
                        {
                            new BLL.user_point_log().Add(orderModel.user_id, orderModel.user_name, orderModel.point, "麦豆换购取消，订单号：" + orderModel.order_no, false);
                        }
                    }
                    revstr.Append("\"success\":\"true\",\"msg\":\"订单取消成功!\"");
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,暂时无法取消订单!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"订单不存在\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void sureorder(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int orderid = int.Parse(context.Request["orderid"].ToString());
            Model.orders orderModel = new BLL.orders().GetModel(orderid);
            if (orderModel != null)
            {
                Model.user_info uinfomodel = new BLL.user_info().GetModel(orderModel.user_id);
                if (uinfomodel != null)
                {
                    if (uinfomodel.cardno != "")
                    {
                        orderModel.status = 3;
                        orderModel.complete_time = DateTime.Now;
                        if (new BLL.orders().Update(orderModel))
                        {
                            //更新用户所在组
                            Model.users userModel = new BLL.users().GetModel(orderModel.user_id);
                            if (userModel.group_id == 1)
                            {
                                if (orderModel.order_amount >= 3057)
                                {
                                    userModel.msn = "1";
                                    userModel.qq = "1";
                                    userModel.group_id = 2;
                                    userModel.birthday = DateTime.Now.AddYears(1);
                                    new BLL.users().Update(userModel);
                                }
                                else
                                {
                                    if (userModel.qq == "1" && orderModel.order_amount >= 2997)
                                    {
                                        userModel.msn = "1";
                                        userModel.group_id = 2;
                                        new BLL.users().Update(userModel);
                                    }
                                }

                            }
                            if (orderModel.order_no.StartsWith("B"))
                            {
                                DataSet ds = new BLL.users().GetList(1, "group_id=3 and area='" + userModel.area + "'", "");
                                if (ds.Tables[0].Rows.Count > 0)
                                {
                                    int pid = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                                    Model.users puserModel = new BLL.users().GetModel(pid);
                                    int addpoint = int.Parse((double.Parse(orderModel.order_amount.ToString()) * 0.02).ToString("F0"));
                                    puserModel.amount = puserModel.amount + addpoint;
                                    puserModel.point = puserModel.point + addpoint;
                                    if (new BLL.users().Update(puserModel))
                                    {
                                        Model.user_point_log pupmodel = new Model.user_point_log();
                                        pupmodel.add_time = DateTime.Now;
                                        pupmodel.remark = "区域中会员[" + userModel.user_name + "]购买商品";
                                        pupmodel.user_id = puserModel.id;
                                        pupmodel.user_name = puserModel.user_name;
                                        pupmodel.value = addpoint;
                                        new BLL.user_point_log().Add(pupmodel.user_id, pupmodel.user_name, pupmodel.value, pupmodel.remark, false);
                                    }
                                }
                            }
                            revstr.Append("\"success\":\"true\",\"msg\":\"确认收货成功!\"");
                        }
                        else
                        {
                            revstr.Append("\"success\":\"false\",\"msg\":\"系统维护中,暂时无法确认收货!\"");
                        }
                    }
                    else
                    {
                        revstr.Append("\"success\":\"false\",\"msg\":\"未绑定银行卡信息!\"");
                    }
                }
                else
                {
                    revstr.Append("\"success\":\"false\",\"msg\":\"请绑定银行卡后操作!\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\",\"msg\":\"订单不存在\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void getorderlist(HttpContext context)
        {
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            int userid = int.Parse(context.Request["userid"].ToString());
            int page_size = int.Parse(context.Request["page_size"]);
            int page_index = int.Parse(context.Request["page_index"]);
            string orderby = context.Request["orderby"];
            if (orderby == "")
            {
                orderby = "add_time desc";
            }
            DateTime dt = DateTime.Now.AddMinutes(-15);
            string strwhere = "user_id=" + userid + " and status<4";
            Model.users userModel = new BLL.users().GetModel(userid);
            if (userModel != null)
            {
                int totalcount = 0;
                DataSet ds = new BLL.orders().GetList(page_size, page_index, strwhere, orderby, out totalcount);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    revstr.Append("\"success\":\"true\",\"list\":[");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        string id = ds.Tables[0].Rows[i]["id"].ToString();
                        string accept_name = ds.Tables[0].Rows[i]["accept_name"].ToString();
                        string address = ds.Tables[0].Rows[i]["address"].ToString();
                        string totalfee = ds.Tables[0].Rows[i]["real_amount"].ToString();
                        string add_time = ds.Tables[0].Rows[i]["confirm_time"].ToString();
                        if (add_time == "")
                        {
                            add_time = ds.Tables[0].Rows[i]["add_time"].ToString();
                        }
                        string complete_time = ds.Tables[0].Rows[i]["complete_time"].ToString();
                        string order_no = ds.Tables[0].Rows[i]["order_no"].ToString();

                        string ordersta = ds.Tables[0].Rows[i]["status"].ToString();
                        string paysta = ds.Tables[0].Rows[i]["payment_status"].ToString();
                        string expreddsta = ds.Tables[0].Rows[i]["express_status"].ToString();
                        string payurl = new Web.UI.BasePage().getlink("maimaigo", new Web.UI.BasePage().linkurl("payment", "?action=confirm&order_no=" + order_no));
                        string point = ds.Tables[0].Rows[i]["point"].ToString();

                        Model.orders ordermodel = new BLL.orders().GetModel(order_no);
                        List<Model.order_goods> gls = ordermodel.order_goods;

                        string detailurl = "/user/order/show-" + id + ".html";

                        int quantity = 1;
                        int goodid = 0;
                        string goodtitle = "";
                        string img_url = "";
                        string spectext = "";
                        for (int m = 0; m < gls.Count; m++)
                        {
                            goodid = gls[m].goods_id;
                            quantity = gls[m].quantity;
                            goodtitle = gls[m].goods_title;
                            img_url = gls[m].img_url;
                            spectext = gls[m].spec_text;
                        }
                        bool b = true;
                        Model.orders checkorder = new BLL.orders().GetModel(order_no);
                        DateTime dtt = checkorder.add_time;
                        if (checkorder.payment_status < 2)
                        {
                            //通过订单号进行核账处理

                            TimeSpan span = DateTime.Now - dtt;
                            if (span.Minutes >= 15)
                            {
                                checkorder.status = 4;
                                if (new BLL.orders().Update(checkorder))
                                {
                                    if (checkorder.point > 0)
                                    {
                                        userModel.point = userModel.point + checkorder.point;
                                        if (new BLL.users().Update(userModel))
                                        {
                                            new BLL.user_point_log().Add(checkorder.user_id, checkorder.user_name, checkorder.point, "麦豆换购取消，订单号：" + checkorder.order_no, false);
                                        }
                                    }

                                    b = false;
                                }
                            }
                        }
                        if (b)
                        {
                            if (i > 0)
                            {
                                revstr.Append(",");
                            }
                            revstr.Append("{\"id\":\"" + id + "\",\"point\":\"" + point + "\",\"accept_name\":\"" + accept_name + "\",\"address\":\"" + address + "\",\"totalfee\":\"" + totalfee + "\",\"add_time\":\"" + add_time + "\",\"add_time\":\"" + add_time + "\",\"order_no\":\"" + order_no + "\",\"goodtitle\":\"" + goodtitle + "\",\"quantity\":\"" + quantity + "\",\"goodid\":\"" + goodid + "\",\"img_url\":\"" + img_url + "\",\"totalcount\":\"" + totalcount + "\",\"ordersta\":\"" + ordersta + "\",\"paysta\":\"" + paysta + "\",\"expreddsta\":\"" + expreddsta + "\",\"payurl\":\"" + payurl + "\",\"detailurl\":\"" + detailurl + "\",\"spectext\":\"" + spectext + "\"}");
                        }
                    }
                    revstr.Append("]");
                }
                else
                {
                    revstr.Append("\"success\":\"false\"");
                }
            }
            else
            {
                revstr.Append("\"success\":\"false\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void getshoplist(HttpContext context)
        {
            //获取参数接口
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            string channel_name = context.Request["channel_name"];
            int incategory_id = int.Parse(context.Request["category_id"]);
            int page_size = int.Parse(context.Request["page_size"]);
            int page_index = int.Parse(context.Request["page_index"]);
            string strwhere = context.Request["strwhere"];
            string orderby = context.Request["orderby"];

            if (orderby == "")
            {
                orderby = "add_time desc,sort_id asc";
            }
            string cityname = Common.Utils.GetCookie("cityname");
            if (strwhere == "")
            {
                if (cityname != "")
                {
                    strwhere = "status=0 and positonAddr like '%" + cityname + "%'";
                }
                else
                {
                    strwhere = "status=0";
                }
            }
            else
            {
                if (cityname != "")
                {
                    strwhere = "status=0 and title like '%" + strwhere + "%' and positonAddr like '%" + cityname + "%'";
                }
                else
                {
                    strwhere = "status=0 and title like '%" + strwhere + "%'";
                }
            }
            int totalcount = 0;
            StringBuilder strSql = new StringBuilder();
            BLL.article ba = new BLL.article();
            DataSet ds = ba.GetList(channel_name, incategory_id, page_size, page_index, strwhere, orderby, out totalcount);
            string id = "";
            string channel_id = "";
            string category_id = "";
            string call_index = "";
            string title = "";
            string link_url = "";
            string img_url = "";
            string tags = "";
            string zhaiyao = "";
            string content = "";
            string sort_id = "";
            string click = "";
            string status = "";
            string is_msg = "";
            string is_top = "";
            string is_red = "";
            string is_hot = "";
            string is_slide = "";
            string is_sys = "";
            string user_name = "";
            string add_time = "";
            string update_time = "";
            string sub_title = "";
            string author = "";
            if (ds.Tables[0].Rows.Count > 0)
            {
                revstr.Append("\"success\":\"true\",\"list\":[");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    id = ds.Tables[0].Rows[i]["id"].ToString();
                    channel_id = ds.Tables[0].Rows[i]["channel_id"].ToString();
                    category_id = ds.Tables[0].Rows[i]["category_id"].ToString();
                    title = ds.Tables[0].Rows[i]["title"].ToString().Replace("\"", "\'");
                    if (title.Length > 25)
                    {
                        title = Common.Utils.CutString(title, 25);
                    }
                    img_url = ds.Tables[0].Rows[i]["img_url"].ToString();
                    zhaiyao = ds.Tables[0].Rows[i]["zhaiyao"].ToString();
                    click = ds.Tables[0].Rows[i]["click"].ToString();
                    status = ds.Tables[0].Rows[i]["status"].ToString();
                    is_red = ds.Tables[0].Rows[i]["is_red"].ToString();
                    user_name = ds.Tables[0].Rows[i]["user_name"].ToString().Replace("\"", "\'");
                    add_time = ds.Tables[0].Rows[i]["add_time"].ToString();

                    string latnum = ds.Tables[0].Rows[i]["latnum"].ToString().Replace("\"", "\'");
                    string longnum = ds.Tables[0].Rows[i]["longnum"].ToString().Replace("\"", "\'");
                    string prevalue = ds.Tables[0].Rows[i]["prevalue"].ToString().Replace("\"", "\'");
                    sub_title = ds.Tables[0].Rows[i]["sub_title"].ToString().Replace("\"", "\'");

                    string aurl = "/shop/show-" + id + ".html";
                    //视频
                    string catetitle = new BLL.article_category().GetTitle(int.Parse(category_id));

                    if (i > 0)
                    {
                        revstr.Append(",");
                    }
                    revstr.Append("{\"id\":\"" + id + "\",\"channel_id\":\"" + channel_id + "\",\"category_id\":\"" + category_id + "\",\"call_index\":\"" + call_index + "\",\"title\":\"" + title + "\",\"link_url\":\"" + link_url + "\",\"img_url\":\"" + img_url + "\",\"tags\":\"" + tags + "\",\"zhaiyao\":\"" + zhaiyao + "\",\"content\":\"" + content + "\",\"sort_id\":\"" + sort_id + "\",\"click\":\"" + click + "\",\"status\":\"" + status + "\",\"is_msg\":\"" + is_msg + "\",\"is_top\":\"" + is_top + "\",\"is_red\":\"" + is_red + "\",\"is_hot\":\"" + is_hot + "\",\"is_slide\":\"" + is_slide + "\",\"is_sys\":\"" + is_sys + "\",\"user_name\":\"" + user_name + "\",\"add_time\":\"" + add_time + "\",\"update_time\":\"" + update_time + "\",\"sub_title\":\"" + sub_title + "\",\"author\":\"" + author + "\",\"totalcount\":\"" + totalcount + "\",\"aurl\":\"" + aurl + "\",\"catetitle\":\"" + catetitle + "\",\"latnum\":\"" + latnum + "\",\"longnum\":\"" + longnum + "\",\"prevalue\":\"" + prevalue + "\"}");
                }
                revstr.Append("]");
            }
            else
            {
                revstr.Append("\"success\":\"false\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        public void getgoodslist(HttpContext context)
        {
            //获取参数接口
            StringBuilder revstr = new StringBuilder();
            revstr.Append("{");
            string channel_name = context.Request["channel_name"];
            int incategory_id = int.Parse(context.Request["category_id"]);
            int page_size = int.Parse(context.Request["page_size"]);
            int page_index = int.Parse(context.Request["page_index"]);
            string strwhere = context.Request["strwhere"];
            string orderby = context.Request["orderby"];

            if (orderby == "")
            {
                orderby = "add_time desc,sort_id asc";
            }
            if (strwhere == "")
            {
                strwhere = "status=0";
            }
            int totalcount = 0;
            StringBuilder strSql = new StringBuilder();
            BLL.article ba = new BLL.article();
            DataSet ds = ba.GetList(channel_name, incategory_id, page_size, page_index, strwhere, orderby, out totalcount);
            string id = "";
            string channel_id = "";
            string category_id = "";
            string call_index = "";
            string title = "";
            string link_url = "";
            string img_url = "";
            string tags = "";
            string zhaiyao = "";
            string content = "";
            string sort_id = "";
            string click = "";
            string status = "";
            string is_msg = "";
            string is_top = "";
            string is_red = "";
            string is_hot = "";
            string is_slide = "";
            string is_sys = "";
            string user_name = "";
            string add_time = "";
            string update_time = "";
            string sub_title = "";
            string author = "";
            if (ds.Tables[0].Rows.Count > 0)
            {
                revstr.Append("\"success\":\"true\",\"list\":[");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    id = ds.Tables[0].Rows[i]["id"].ToString();
                    channel_id = ds.Tables[0].Rows[i]["channel_id"].ToString();
                    category_id = ds.Tables[0].Rows[i]["category_id"].ToString();
                    title = ds.Tables[0].Rows[i]["title"].ToString().Replace("\"", "\'");
                    if (title.Length > 25)
                    {
                        title = Common.Utils.CutString(title, 25);
                    }
                    img_url = ds.Tables[0].Rows[i]["img_url"].ToString();
                    zhaiyao = ds.Tables[0].Rows[i]["zhaiyao"].ToString();
                    click = ds.Tables[0].Rows[i]["click"].ToString();
                    status = ds.Tables[0].Rows[i]["status"].ToString();
                    is_red = ds.Tables[0].Rows[i]["is_red"].ToString();
                    user_name = ds.Tables[0].Rows[i]["user_name"].ToString().Replace("\"", "\'");
                    add_time = ds.Tables[0].Rows[i]["add_time"].ToString();

                    string sell_price = ds.Tables[0].Rows[i]["sell_price"].ToString().Replace("\"", "\'");
                    string sell_point = ds.Tables[0].Rows[i]["point"].ToString().Replace("\"", "\'");

                    string aurl = "/" + channel_name + "/show-" + id + ".html";
                    //视频
                    string catetitle = new BLL.article_category().GetTitle(int.Parse(category_id));

                    if (i > 0)
                    {
                        revstr.Append(",");
                    }
                    revstr.Append("{\"id\":\"" + id + "\",\"channel_id\":\"" + channel_id + "\",\"category_id\":\"" + category_id + "\",\"call_index\":\"" + call_index + "\",\"title\":\"" + title + "\",\"link_url\":\"" + link_url + "\",\"img_url\":\"" + img_url + "\",\"tags\":\"" + tags + "\",\"zhaiyao\":\"" + zhaiyao + "\",\"content\":\"" + content + "\",\"sort_id\":\"" + sort_id + "\",\"click\":\"" + click + "\",\"status\":\"" + status + "\",\"is_msg\":\"" + is_msg + "\",\"is_top\":\"" + is_top + "\",\"is_red\":\"" + is_red + "\",\"is_hot\":\"" + is_hot + "\",\"is_slide\":\"" + is_slide + "\",\"is_sys\":\"" + is_sys + "\",\"user_name\":\"" + user_name + "\",\"add_time\":\"" + add_time + "\",\"update_time\":\"" + update_time + "\",\"sub_title\":\"" + sub_title + "\",\"author\":\"" + author + "\",\"totalcount\":\"" + totalcount + "\",\"aurl\":\"" + aurl + "\",\"catetitle\":\"" + catetitle + "\",\"sell_price\":\"" + sell_price + "\",\"sell_point\":\"" + sell_point + "\"}");
                }
                revstr.Append("]");
            }
            else
            {
                revstr.Append("\"success\":\"false\"");
            }
            revstr.Append("}");
            context.Response.Write(revstr.ToString());
            return;
        }
        #endregion

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}