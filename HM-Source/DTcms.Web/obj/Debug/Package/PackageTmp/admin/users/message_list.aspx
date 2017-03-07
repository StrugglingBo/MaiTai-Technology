<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="message_list.aspx.cs" Inherits="DTcms.Web.admin.users.message_list" %>

<%@ Import Namespace="DTcms.Common" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>会员管理</title>
    <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
    <link href="../../css/pagination.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/layer.js"></script>
    <script>
        $(document).ready(function () {
            layer.photos({
                photos: '.photo',
                anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
            });
        });        
    </script>
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <!--导航栏-->
    <div class="location">
        <a href="javascript:history.back(-1);" class="back"><i></i><span>返回上一页</span></a>
        <a href="../center.aspx" class="home"><i></i><span>首页</span></a> <i class="arrow">
        </i><a href="user_list.aspx"><span>会员管理</span></a> <i class="arrow"></i><span>工单处理</span>
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
                            <asp:LinkButton ID="btnDelete" runat="server" CssClass="del" OnClientClick="return ExePostBack('btnDelete','处理记录后不可恢复，您确定吗？');"
                                OnClick="btnDelete_Click"><i></i><span>工单处理</span></asp:LinkButton></li>
                        <li>
                            <asp:LinkButton ID="btnDelete2" runat="server" CssClass="del" OnClientClick="return ExePostBack('btnDelete2');"
                                OnClick="btnDelete2_Click"><i></i><span>删除</span></asp:LinkButton></li>
                    </ul>
                    <div class="menu-list">
                        <div class="rule-single-select">
                            <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                                <asp:ListItem Selected="True" Value="0">全部类型...</asp:ListItem>
                                <asp:ListItem Value="账号相关">账号相关</asp:ListItem>
                                <asp:ListItem Value="订单相关">订单相关</asp:ListItem>
                                <asp:ListItem Value="其他问题">其他问题</asp:ListItem>
                                <asp:ListItem Value="资金退款">资金退款</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="menu-list">
                        <div class="rule-single-select">
                            <asp:DropDownList ID="ddlstatus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlstatus_SelectedIndexChanged">
                                <asp:ListItem Selected="True" Value="0">全部状态...</asp:ListItem>
                                <asp:ListItem Value="1">待处理</asp:ListItem>
                                <asp:ListItem Value="2">已处理</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
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
                        <th align="center" width="90px">
                            序号
                        </th>
                        <th align="left" width="140px">
                            类型
                        </th>
                        <th align="left" width="140px">
                            用户名
                        </th>
                        <th align="left">
                            内容
                        </th>
                        <th align="left" width="120px">
                            状态
                        </th>
                        <td width="140px" align="left">
                            提交时间
                        </td>
                        <th align="left" width="350px">
                            凭证信息
                        </th>
                        <th width="10%">
                            操作
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td align="center">
                        <asp:CheckBox ID="chkId" CssClass="checkall" runat="server" Enabled='<%#bool.Parse((Convert.ToInt32(Eval("sta")) <2 ).ToString())%>'
                            Style="vertical-align: middle;" />
                        <asp:HiddenField ID="hidId" Value='<%#Eval("id")%>' runat="server" />
                    </td>
                    <td>
                        <%#Eval("id")%>
                    </td>
                    <td>
                        <%#Eval("typename")%>
                    </td>
                    <td>
                        <%#Eval("userName")%>
                    </td>
                    <td>
                        <%#Eval("content")%>
                    </td>
                    <td>
                        <%#Convert.ToInt32(Eval("sta")) == 1 ? "待处理" : Eval("delluser") + ":</br>" + Eval("dellcontent")%>
                    </td>
                    <td>
                        <%#Eval("add_time")%>
                    </td>
                    <td class="photo">
                        <%#Eval("img1").ToString()==""? "":"<img src=\""+Eval("img1")+"\" width=\"100px\" height=\"100px\" style='padding-right:5px;'/>"%>
                        <%#Eval("img2").ToString() == "" ? "" : "<img src=\"" + Eval("img2") + "\" width=\"100px\" height=\"100px\" style='padding-right:5px;'/>"%>
                        <%#Eval("img3").ToString()==""? "":"<img src=\""+Eval("img3")+"\" width=\"100px\" height=\"100px\"/>"%>
                    </td>
                    <td align="center">
                        <%#Convert.ToInt32(Eval("sta")) == 2 ? "已处理" : "<a href=\"message_edit.aspx?action=view&id=" + Eval("id") + "\">处理</a>"%>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
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
