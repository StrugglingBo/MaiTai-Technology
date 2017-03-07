<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="message_edit.aspx.cs" Inherits="DTcms.Web.admin.users.message_edit" ValidateRequest="false" %>
<%@ Import namespace="DTcms.Common" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>批量工单处理通知</title>
<link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
<link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
</head>

<body class="mainbody">
<form id="form1" runat="server">
<!--导航栏-->
<div class="location">
  <a href="message_list.aspx" class="back"><i></i><span>返回列表页</span></a>
  <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
  <i class="arrow"></i>
  <a href="message_list.aspx"><span>工单处理通知</span></a>
  <i class="arrow"></i>
  <span>编辑短消息</span>
</div>
<div class="line10"></div>
<!--/导航栏-->

<!--内容-->
<div id="floatHead" class="content-tab-wrap">
  <div class="content-tab">
    <div class="content-tab-ul-wrap">
      <ul>
        <li><a class="selected" href="javascript:;">编辑处理内容</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="tab-content">
  <div id="div_add" runat="server">
      <dl>
        <dt>通知人</dt>
        <dd>
          <asp:TextBox ID="txtUserName" runat="server" CssClass="input normal" datatype="*" sucmsg=" " ReadOnly=true></asp:TextBox>
          <span class="Validform_checktip">*多个手机号码以英文“,”逗号分隔开</span>
        </dd>
      </dl>
      <dl>
        <dt>处理结果</dt>
        <dd>
          <textarea id="txtContent" runat="server" style="height:150px;width:300px;"></textarea>
        </dd>
      </dl>
  </div>
</div>
<!--/内容-->

<!--工具栏-->
<div class="page-footer">
  <div class="btn-wrap">
    <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btn" onclick="btnSubmit_Click" />
    <input name="btnReturn" type="button" value="返回上一页" class="btn yellow" onclick="javascript:history.back(-1);" />
  </div>
</div>
<!--/工具栏-->

</form>
</body>
</html>
