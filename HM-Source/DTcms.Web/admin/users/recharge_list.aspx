<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recharge_list.aspx.cs"
    Inherits="DTcms.Web.admin.users.recharge_list" %>

<%@ Import Namespace="DTcms.Common" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>充值记录</title>
    <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
    <link href="../../css/pagination.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../scripts/datepicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
    <script>
        function setsta(objsta, objid) {
            var baseurl = '/api/appfun.ashx?action=changeapplorsta&sta=' + objsta + '&id=' + objid;
            $.ajax({
                url: baseurl,
                type: 'GET',
                dataType: 'json',
                timeout: '1000',
                cache: 'false',
                success: function (data) {
                    if (data.success == "true") {
                        window.location.reload();
                    }
                }
            });
        }
        var t = 0;
        $(function () {
            setInterval(function () {
                var tpre = $("#totalpre").val();
                var mydate = new Date();
                if (mydate.getDay() == 3 && mydate.getHours() <= 21) {
                    var baseurl = '/api/appfun.ashx?action=gettotalpre';
                    $.ajax({
                        url: baseurl,
                        type: 'GET',
                        dataType: 'json',
                        timeout: '1000',
                        cache: 'false',
                        success: function (data) {
                            if (data.success == "true") {
                                tpre = data.totalpre;
                                $("#totalpre").val(tpre);
                                if (t == 0) {
                                    $("#lrze").val(data.tlrze);
                                    $("#uppre").val(data.tuppre);
                                    t = 1;
                                }

                            }
                        }
                    });
                }
                //changetruemoney();
            }, 5000);
        });
        function savebak() {
            var lrze=$("#lrze").val();
            var uppre = $("#uppre").val();
            var mydate = new Date();
            if (mydate.getDay() == 3 && mydate.getHours() <= 21) {
                var baseurl = '/api/appfun.ashx?action=savelrze&lrze=' + lrze + '&uppre=' + uppre;
                $.ajax({
                    url: baseurl,
                    type: 'GET',
                    dataType: 'json',
                    timeout: '1000',
                    cache: 'false',
                    success: function (data) {
                        if (data.success == "true") {
                            tpre = data.totalpre;
                            $("#totalpre").val(tpre);
                            alert("数据调整成功");
                        }
                    }
                });
            }
            else {
                alert("只允许周三调整数据!");
            }
        }
    </script>
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <!--导航栏-->
    <div class="location">
        <a href="javascript:history.back(-1);" class="back"><i></i><span>返回上一页</span></a>
        <a href="../center.aspx" class="home"><i></i><span>首页</span></a> <i class="arrow">
        </i><a href="user_list.aspx"><span>会员管理</span></a> <i class="arrow"></i><span>提现记录</span>
    </div>
    <!--/导航栏-->
    <!--工具栏-->
    <div id="floatHead" class="toolbar-wrap">
        <div class="toolbar">
            <div class="box-wrap">
                <a class="menu-btn"></a>
                <div class="l-list">
                    <ul class="icon-list">
                        <li><a class="all" href="javascript:;" onclick="checkAll(this);"><i></i><span>全选</span></a></li>
                        <li>
                            <asp:LinkButton ID="btnDelete" runat="server" CssClass="del" OnClientClick="return ExePostBack2('btnDelete');"
                                OnClick="btnDelete_Click"><i></i><span>批量打款</span></asp:LinkButton></li>
                        <li>
                            <asp:LinkButton ID="btnexport" runat="server" CssClass="save" OnClick="btnexport_Click"><i></i><span>导出</span></asp:LinkButton></li>
                    </ul>
                    <div class="rule-single-select">
                        <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                            <asp:ListItem Value="" Selected="True">待处理</asp:ListItem>
                            <asp:ListItem Value="1">已完成</asp:ListItem>
                            <asp:ListItem Value="2">申请退回</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:TextBox ID="txtstarttime" runat="server" CssClass="input rule-date-input" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"
                        datatype="/^\s*$|^\d{4}\-\d{1,2}\-\d{1,2}\s{1}(\d{1,2}:){2}\d{1,2}$/" errormsg="请选择正确的日期"
                        sucmsg=" " placeholder="请选择开始时间" />
                    <asp:TextBox ID="txtendtime" runat="server" CssClass="input rule-date-input" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"
                        datatype="/^\s*$|^\d{4}\-\d{1,2}\-\d{1,2}\s{1}(\d{1,2}:){2}\d{1,2}$/" errormsg="请选择正确的日期"
                        sucmsg=" " placeholder="请选择结束时间" />
                        <span style="display: <%=getloginuser()==0? "":"none;"%>">
                    上周利润总额：<input type="text" id="lrze" value="" class="input" style="width: 70px;" />
                    总业绩指数：<input type="text" id="totalpre" value="" class="input" readonly="readonly"
                        style="width: 70px;" />
                    下调比例：<input type="text" id="uppre" value="" class="input" style="width: 70px;" />
                    <a href="javascript:;" onclick="savebak()" style="display: inline-block; height: 30px;
                        line-height: 30px; padding: 0px 13px 0px 13px; border: 1px solid #eee; color: #333;
                        font-size: 12px; text-decoration: none; background: #fafafa;">保存</a>
                       </span>
                </div>
                <div class="r-list">
                    <asp:TextBox ID="txtKeywords" runat="server" CssClass="keyword" />
                    <asp:LinkButton ID="lbtnSearch" runat="server" CssClass="btn-search" OnClick="btnSearch_Click">查询</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <!--/工具栏-->
    <!--列表-->
    <div class="table-container">
        <asp:Repeater ID="rptList" runat="server">
            <HeaderTemplate>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ltable">
                    <tr>
                        <th width="8%">
                            选择
                        </th>
                        <th align="left" width="12%">
                            用户名
                        </th>
                        <th align="left" width="8%">
                            提现积分
                        </th>
                        <th align="left" width="120px">
                            实际金额
                        </th>
                        <th align="left" width="120px">
                            业绩指数
                        </th>
                        <th align="left" width="90px">
                            手续费
                        </th>
                        <th align="left">
                            提现账号
                        </th>
                        <th align="left" width="8%">
                            行别代码
                        </th>
                        <th align="left" width="14%">
                            状态
                        </th>
                        <th align="left" width="12%">
                            申请时间
                        </th>
                        <th width="8%">
                            操作
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td align="center">
                        <asp:CheckBox ID="chkId" CssClass="checkall" runat="server" Style="vertical-align: middle;" />
                        <asp:HiddenField ID="hidId" Value='<%#Eval("id")%>' runat="server" />
                    </td>
                    <td>
                        <%#Eval("user_name")%><br />
                        <%#Eval("truename")%>
                    </td>
                    <td>
                        <%# Convert.ToDecimal(Eval("amount")) > 0 ? "-" + Eval("amount").ToString() : Eval("amount").ToString()%>
                    </td>
                    <td>
                        <%#Eval("trueamount")%>
                    </td>
                    <td>
                        <%#Eval("mypre")%>
                    </td>
                    <td>
                        <%#Eval("payment_id")%>
                    </td>
                    <td>
                        <%#Eval("cardno")%><br />
                        <%#Eval("bankname")%><br />
                        <%#Eval("alipaynickname")%>
                    </td>
                    <td>
                        <%#getcode(Eval("bankname").ToString())%>
                    </td>
                    <td>
                        <%#Convert.ToInt32(Eval("status")) == 1 ? "已完成(" + string.Format("{0:g}", Eval("complete_time")) + ")" :Convert.ToInt32(Eval("status")) == 2 ?  "申请退回":"待处理"%>
                    </td>
                    <td>
                        <%#string.Format("{0:g}", Eval("add_time"))%>
                    </td>
                    <td align="center">
                        <div style='display: <%#Convert.ToInt32(Eval("status"))==0? "":"none;"%>'>
                            <a href="javascript:;" onclick="setsta(2,<%#Eval("id")%>)">不通过</a>
                        </div>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                <%#rptList.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"8\">暂无记录</td></tr>" : ""%>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <!--/列表-->
    <!--内容底部-->
    <div class="line20">
    </div>
    <div class="pagelist">
        <div class="l-btns">
            <span>显示</span><asp:TextBox ID="txtPageNum" runat="server" CssClass="pagenum" onkeydown="return checkNumber(event);"
                OnTextChanged="txtPageNum_TextChanged" AutoPostBack="True"></asp:TextBox><span>条/页</span>
        </div>
        <div id="PageContent" runat="server" class="default">
        </div>
    </div>
    <!--/内容底部-->
    </form>
</body>
</html>
