﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bar_edit.aspx.cs" Inherits="DTcms.Web.Plugin.Advert.admin.bar_edit" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>编辑广告内容</title>
   <link href="../../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="../../../<%=siteConfig.webmanagepath %>/skin/default/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="../../../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../../scripts/jquery/Validform_v5.3.2_min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../../scripts/datepicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../../scripts/webuploader/webuploader.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../../editor/kindeditor-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../../<%=siteConfig.webmanagepath %>/js/uploader.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../../<%=siteConfig.webmanagepath %>/js/laymain.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../../<%=siteConfig.webmanagepath %>/js/common.js"></script>
    <script type="text/javascript">
        $(function () {
            //初始化表单验证
            $("#form1").initValidform();
            //初始化上传控件
            $(".upload-img").InitUploader({ filesize: "<%=siteConfig.imgsize %>", sendurl: "../../../tools/upload_ajax.ashx", swf: "../../../scripts/webuploader/uploader.swf", filetypes: "<%=siteConfig.fileextension %>" });
            $(".upload-video").InitUploader({ filesize: "<%=siteConfig.videosize %>", sendurl: "../../../tools/upload_ajax.ashx", swf: "../../../scripts/webuploader/uploader.swf", filetypes: "<%=siteConfig.videoextension %>" });
            $(".upload-album").InitUploader({ btntext: "批量上传", multiple: true, water: true, thumbnail: true, filesize: "<%=siteConfig.imgsize %>", sendurl: "../../../tools/upload_ajax.ashx", swf: "../../../scripts/webuploader/uploader.swf" });

        });
    </script>
</head>

<body class="mainbody">
    <form id="form1" runat="server">
        <!--导航栏-->
        <div class="location">
            <a href="bar_edit.aspx?aid=<%=this.aid %>" class="back"><i></i><span>返回列表页</span></a>
            <a href="../../../<%=siteConfig.webmanagepath %>/center.aspx" class="home"><i></i><span>首页</span></a>
            <i class="arrow"></i>
            <span>插件管理</span>
            <i class="arrow"></i>
            <span>广告管理</span>
            <i class="arrow"></i>
            <span>编辑广告内容</span>
        </div>
        <div class="line10"></div>
        <!--/导航栏-->

        <!--内容-->
        <div class="content-tab-wrap">
            <div id="floatHead" class="content-tab">
                <div class="content-tab-ul-wrap">
                    <ul>
                        <li><a href="javascript:;" onclick="tabs(this);" class="selected">编辑广告内容</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="tab-content">
            <dl>
                <dt>所属广告位</dt>
                <dd>
                    <div class="rule-single-select">
                        <asp:DropDownList ID="ddlAdvertId" runat="server" datatype="*" sucmsg=" "></asp:DropDownList>
                    </div>
                </dd>
            </dl>
            <dl>
                <dt>活动状态</dt>
                <dd>
                    <div class="rule-multi-radio">
                        <asp:RadioButtonList ID="rblIsLock" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Selected="True" Value="0">正常</asp:ListItem>
                            <asp:ListItem Value="1">暂停</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </dd>
            </dl>
            <dl>
                <dt>排序数字</dt>
                <dd>
                    <asp:TextBox ID="txtSortId" runat="server" CssClass="input small" datatype="n" sucmsg=" ">99</asp:TextBox>
                    <span class="Validform_checktip">*数字，越小越向前</span>
                </dd>
            </dl>
            <dl>
                <dt>广告名称</dt>
                <dd>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="input normal" datatype="*2-100" sucmsg=" "></asp:TextBox></dd>
            </dl>
            <dl>
                <dt>投放时间</dt>
                <dd>
                    <div class="input-date">
                        <asp:TextBox ID="txtStartTime" runat="server" CssClass="input date" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" datatype="/^\d{4}\-\d{1,2}\-\d{1,2}$/" errormsg="请选择正确的日期" sucmsg=" " />
                        <i>日期</i>
                    </div>
                    <span class="Validform_checktip">*当前日期大于该日期时显示</span>
                </dd>
            </dl>
            <dl>
                <dt>到期时间</dt>
                <dd>
                    <div class="input-date">
                        <asp:TextBox ID="txtEndTime" runat="server" CssClass="input date" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" datatype="/^\d{4}\-\d{1,2}\-\d{1,2}$/" errormsg="请选择正确的日期" sucmsg=" " />
                        <i>日期</i>
                    </div>
                    <span class="Validform_checktip">*过期后不显示</span>
                </dd>
            </dl>
            <dl>
                <dt>链接网址</dt>
                <dd>
                    <asp:TextBox ID="txtLinkUrl" runat="server" MaxLength="255" CssClass="input normal" />
                    <span class="Validform_checktip">可填写相对地址或网址</span>
                </dd>
            </dl>
            <dl>
                <dt>上传文件</dt>
                <dd>
                    <asp:TextBox ID="txtFilePath" runat="server" CssClass="input normal upload-path" />
                    <div class="upload-box upload-img"></div>
                </dd>
            </dl>
            <dl>
                <dt>备注(代码)</dt>
                <dd>
                    <asp:TextBox ID="txtContent" runat="server" MaxLength="255" TextMode="MultiLine" CssClass="input"></asp:TextBox>
                </dd>
            </dl>
        </div>
        <!--/内容-->

        <!--工具栏-->
        <div class="page-footer">
            <div class="btn-list">
                <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btn" OnClick="btnSubmit_Click" />
                <input name="btnReturn" type="button" value="返回上一页" class="btn yellow" onclick="javascript: history.back(-1);" />
            </div>
            <div class="clear"></div>
        </div>
        <!--/工具栏-->
    </form>
</body>
</html>
