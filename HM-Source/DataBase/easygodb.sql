USE [easygodb]
GO
/****** Object:  Table [dbo].[dt_navigation]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[channel_id] [int] NULL,
	[nav_type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[sub_title] [nvarchar](100) NULL,
	[icon_url] [nvarchar](255) NULL,
	[link_url] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[remark] [nvarchar](500) NULL,
	[action_type] [nvarchar](500) NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_NAVIGATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属父导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'nav_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'icon_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏0显示1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限资源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统导航菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation'
GO
SET IDENTITY_INSERT [dbo].[dt_navigation] ON
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (1, 0, 0, N'System', N'sys_contents', N'站点管理', N'站点', N'/admin/skin/default/nav/home.png', N'', 99, 0, N'系统默认导航，不可更改导航ID', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (2, 0, 0, N'System', N'sys_application', N'应用管理', N'应用', N'/admin/skin/default/nav/pus.png', N'', 100, 0, N'系统默认导航，不可更改导航ID', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (3, 0, 0, N'System', N'sys_users', N'会员管理', N'会员', N'/admin/skin/default/nav/user.png', N'', 101, 0, N'系统默认导航，不可更改导航ID', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (4, 0, 0, N'System', N'sys_controller', N'控制面板', N'控制面板', N'/admin/skin/default/nav/sys.png', N'', 103, 0, N'系统默认导航，不可更改导航ID', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (7, 4, 0, N'System', N'sys_manager', N'系统用户', N'', N'', N'', 103, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (8, 7, 0, N'System', N'manager_list', N'管理员管理', N'', N'', N'manager/manager_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (9, 7, 0, N'System', N'manager_role', N'角色管理', N'', N'', N'manager/role_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (10, 7, 0, N'System', N'manager_log', N'管理日志', N'', N'', N'manager/manager_log.aspx', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (11, 4, 0, N'System', N'sys_settings', N'系统管理', N'', N'', N'', 99, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (12, 11, 0, N'System', N'sys_config', N'系统设置', N'', N'', N'settings/sys_config.aspx', 99, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (13, 11, 0, N'System', N'sys_plugin_config', N'插件设置', N'', N'', N'settings/plugin_list.aspx', 100, 0, N'', N'Show,View,Build,Instal,Unload', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (14, 11, 0, N'System', N'sys_url_rewrite', N'URL配置', N'', N'', N'settings/url_rewrite_list.aspx', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (15, 4, 0, N'System', N'sys_site_settings', N'站点设置', N'', N'', N'', 100, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (16, 15, 0, N'System', N'sys_site_manage', N'站点管理', N'', N'', N'channel/site_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (17, 15, 0, N'System', N'sys_channel_manage', N'频道管理', N'', N'', N'channel/channel_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (18, 15, 0, N'System', N'sys_channel_field', N'扩展字段', N'', N'', N'channel/attribute_field_list.aspx', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (19, 4, 0, N'System', N'sys_design', N'界面管理', N'', N'', N'', 102, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (20, 19, 0, N'System', N'sys_site_templet', N'站点模板管理', N'', N'', N'settings/templet_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Build', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (21, 19, 0, N'System', N'sys_builder_html', N'生成静态管理', N'', N'', N'settings/builder_html.aspx', 100, 0, N'', N'Show,View,Build', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (22, 19, 0, N'System', N'sys_navigation', N'后台导航管理', N'', N'', N'settings/nav_list.aspx', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (23, 0, 0, N'System', N'sys_orders', N'订单管理', N'订单', N'/admin/skin/default/nav/order.png', N'', 102, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (25, 1, 0, N'System', N'channel_leego', N'新生活·乐e购', N'', N'', N'', 99, 0, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (26, 2, 0, N'System', N'sys_plugin_manage', N'插件管理', N'', N'', N'', 99, 0, N'', N'Show,View', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (35, 23, 0, N'System', N'order_manage', N'订单管理', N'', N'', N'', 99, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (36, 23, 0, N'System', N'order_settings', N'订单设置', N'', N'', N'', 100, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (37, 36, 0, N'System', N'order_config', N'订单参数设置', N'', N'', N'order/order_config.aspx', 99, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (38, 36, 0, N'System', N'order_payment', N'支付方式设置', N'', N'', N'order/payment_list.aspx', 100, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (39, 36, 0, N'System', N'order_express', N'配送方式设置', N'', N'', N'order/express_list.aspx', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (40, 15, 0, N'System', N'sys_goods_spec', N'商品规格', N'', N'', N'channel/spec_list.aspx', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (41, 35, 0, N'System', N'order_confirm', N'待确认订单', N'', N'', N'order/order_confirm.aspx', 99, 0, N'', N'Show,View,Confirm', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (42, 35, 0, N'System', N'order_list', N'全部订单', N'', N'', N'order/order_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (43, 3, 0, N'System', N'user_manage', N'会员管理', N'', N'', N'', 99, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (44, 43, 0, N'System', N'user_audit', N'审核会员', N'', N'', N'users/user_audit.aspx', 99, 0, N'', N'Show,View,Audit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (45, 43, 0, N'System', N'user_list', N'所有会员', N'', N'', N'users/user_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (46, 43, 0, N'System', N'user_group', N'会员组别', N'', N'', N'users/group_list.aspx', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (47, 3, 0, N'System', N'user_log', N'会员日志', N'', N'', N'', 100, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (48, 47, 0, N'System', N'user_sms', N'发送短信', N'', N'', N'users/user_sms.aspx', 99, 0, N'', N'Show,View,Add', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (49, 47, 0, N'System', N'user_message', N'站内消息', N'', N'', N'users/message_list.aspx', 100, 0, N'', N'Show,View,Add,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (50, 47, 0, N'System', N'user_recharge_log', N'充值记录', N'', N'', N'users/recharge_list.aspx', 101, 0, N'', N'Show,View,Add,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (51, 47, 0, N'System', N'user_amount_log', N'消费记录', N'', N'', N'users/amount_log.aspx', 102, 0, N'', N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (52, 47, 0, N'System', N'user_point_log', N'积分记录', N'', N'', N'users/point_log.aspx', 103, 0, N'', N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (53, 3, 0, N'System', N'user_settings', N'会员设置', N'', N'', N'', 101, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (54, 53, 0, N'System', N'user_config', N'参数设置', N'', N'', N'users/user_config.aspx', 99, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (55, 53, 0, N'System', N'user_sms_template', N'短信模板', N'', N'', N'users/sms_template_list.aspx', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (56, 53, 0, N'System', N'user_mail_template', N'邮件模板', N'', N'', N'users/mail_template_list.aspx', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (57, 53, 0, N'System', N'user_oauth', N'OAuth设置', N'', N'', N'users/oauth_app_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (58, 2, 0, N'System', N'sys_weixin_message', N'微信管理', N'', N'', N'', 100, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (59, 15, 0, N'System', N'sys_article_tags', N'Tags标签', N'', N'', N'channel/tags_list.aspx', 103, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (60, 25, 7, N'System', N'channel_goods', N'购物商城', N'', NULL, N'', 100, 0, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (61, 60, 7, N'System', N'channel_goods_list', N'内容管理', N'', NULL, N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (62, 60, 7, N'System', N'channel_goods_category', N'栏目类别', N'', NULL, N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (63, 60, 7, N'System', N'channel_goods_comment', N'评论管理', N'', NULL, N'article/comment_list.aspx', 101, 0, N'', N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (76, 25, 11, N'System', N'channel_content', N'公司介绍', N'', NULL, N'', 104, 0, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (77, 76, 11, N'System', N'channel_content_list', N'内容管理', N'', NULL, N'article/article_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (78, 76, 11, N'System', N'channel_content_category', N'栏目类别', N'', NULL, N'article/category_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (79, 76, 11, N'System', N'channel_content_comment', N'评论管理', N'', NULL, N'article/comment_list.aspx', 101, 0, N'', N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (80, 26, 0, N'System', N'plugin_feedback', N'留言管理', N'', NULL, N'/plugins/feedback/admin/index.aspx', 0, 0, N'', N'Show,View,Delete,Audit,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (81, 26, 0, N'System', N'plugin_link', N'链接管理', N'', NULL, N'/plugins/link/admin/index.aspx', 0, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (82, 58, 0, N'System', N'weixin_base_settings', N'基本设置', N'', N'', N'', 99, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (83, 82, 0, N'System', N'weixin_account_manage', N'公众平台管理', N'', N'', N'weixin/account_list.aspx', 99, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (84, 82, 0, N'System', N'weixin_custom_menu', N'自定义菜单', N'', N'', N'weixin/menu_list.aspx', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (85, 58, 0, N'System', N'weixin_message_manage', N'消息管理', N'', N'', N'', 100, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (86, 85, 0, N'System', N'weixin_subscribe_subscribe', N'关注回复', N'', N'', N'weixin/subscribe_edit.aspx?action=subscribe', 99, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (87, 85, 0, N'System', N'weixin_subscribe_default', N'默认回复', N'', N'', N'weixin/subscribe_edit.aspx?action=default', 100, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (88, 85, 0, N'System', N'weixin_response_text', N'文本回复', N'', N'', N'weixin/text_list.aspx', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (89, 85, 0, N'System', N'weixin_response_picture', N'图文回复', N'', N'', N'weixin/picture_list.aspx', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (90, 85, 0, N'System', N'weixin_response_sound', N'语音回复', N'', N'', N'weixin/sound_list.aspx', 103, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (91, 85, 0, N'System', N'weixin_response_content', N'消息记录', N'', N'', N'weixin/response_list.aspx', 104, 0, N'', N'Show,View,Delete', 0)
SET IDENTITY_INSERT [dbo].[dt_navigation] OFF
/****** Object:  Table [dbo].[dt_mail_template]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_mail_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[maill_title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'maill_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template'
GO
SET IDENTITY_INSERT [dbo].[dt_mail_template] ON
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (2, N'注册激活账户邮件', N'regverify', N'激活注册账户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 欢迎您成为{webname}会员用户，请点击如下的网址进行激活您的会员账户：
</p>
<p>
	&nbsp;&nbsp;&nbsp; <a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (3, N'用户取回密码', N'getpassword', N'找回密码提示(请勿回复此邮件)', N'<strong>{username}，您好：</strong><br />
<p>
	您在<span style="color:#FF0000;">{webname}</span>点击了“忘记密码”找回申请，故系统自动为您发送了这封邮件。您可以点击以下链接修改您的密码：<br />
<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行修改。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (4, N'欢迎新用户邮件', N'welcomemsg', N'欢迎新用户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 您已成功注册并正式成为{webname}会员用户，请您注意保管好个人账户信息，防止丢失或泄漏。
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (5, N'订单确认通知', N'order_confirm', N'订单确认通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货，请您耐心等待，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (6, N'订单发货通知', N'order_express', N'订单发货通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已经发货，订单号为：{orderno}，共计{amount}元，请您注意查收，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (7, N'订单完成通知', N'order_complete', N'订单完成通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单交易完成，订单号为：{orderno}，共计{amount}元，期待您下次光临，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
SET IDENTITY_INSERT [dbo].[dt_mail_template] OFF
/****** Object:  Table [dbo].[dt_link]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_path] [nvarchar](100) NULL,
	[title] [nvarchar](255) NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[site_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[is_image] [int] NOT NULL,
	[sort_id] [int] NOT NULL,
	[is_red] [tinyint] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK__dt_link__5DA0D232] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_feedback]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_path] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](30) NULL,
	[user_qq] [nvarchar](30) NULL,
	[user_email] [nvarchar](100) NULL,
	[add_time] [datetime] NOT NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
	[is_lock] [tinyint] NOT NULL,
 CONSTRAINT [PK__dt_feedback__6359AB88] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_express]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[express_code] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[website] [nvarchar](255) NULL,
	[remark] [ntext] NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_EXPRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流快递' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express'
GO
SET IDENTITY_INSERT [dbo].[dt_express] ON
INSERT [dbo].[dt_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (1, N'顺丰快递', N'shunfeng', CAST(24.00 AS Decimal(9, 2)), N'http://www.sf-express.com', N'国内最好的物流公司', 99, 0)
SET IDENTITY_INSERT [dbo].[dt_express] OFF
/****** Object:  Table [dbo].[dt_channel_site]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_site](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[build_path] [nvarchar](100) NULL,
	[templet_path] [nvarchar](100) NULL,
	[domain] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[logo] [nvarchar](255) NULL,
	[company] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[tel] [nvarchar](30) NULL,
	[fax] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[crod] [nvarchar](100) NULL,
	[copyright] [text] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keyword] [nvarchar](255) NULL,
	[seo_description] [nvarchar](500) NULL,
	[is_mobile] [tinyint] NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL_SITE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成目录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'build_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板目录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'templet_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绑定域名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站LOGO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备案号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'crod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版权信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'copyright'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'seo_keyword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否移动站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'is_mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_site'
GO
SET IDENTITY_INSERT [dbo].[dt_channel_site] ON
INSERT [dbo].[dt_channel_site] ([id], [title], [build_path], [templet_path], [domain], [name], [logo], [company], [address], [tel], [fax], [email], [crod], [copyright], [seo_title], [seo_keyword], [seo_description], [is_mobile], [is_default], [sort_id]) VALUES (4, N'新生活·乐e购', N'leego', N'leego', N'xingchat.com', N'新生活·乐e购官方网站', N'', N'记忆犹猩工作室', N'浙江省金华市婺城区', N'15105793977', N'-', N'itsowhat@qq.com', N'浙ICP备14012365号', N'版权所有 新生活·乐e购 ? Copyright 2016 - 2018. xingchat.com. All Rights Reserved.', N'新生活·乐e购官方网站- 生活中必不可少的购物APP', N'新生活·乐e购', N'新生活&#183;乐e购', 0, 1, 99)
SET IDENTITY_INSERT [dbo].[dt_channel_site] OFF
/****** Object:  Table [dbo].[dt_manager_role]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NULL,
	[role_type] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统默认0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_role] ON
INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (1, N'超级管理组', 1, 1)
SET IDENTITY_INSERT [dbo].[dt_manager_role] OFF
/****** Object:  Table [dbo].[dt_manager_log]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[user_ip] [nvarchar](30) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log'
GO
/****** Object:  Table [dbo].[dt_article_attribute_field]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[control_type] [nvarchar](50) NULL,
	[data_type] [nvarchar](50) NULL,
	[data_length] [int] NULL,
	[data_place] [tinyint] NULL,
	[item_option] [ntext] NULL,
	[default_value] [ntext] NULL,
	[is_required] [tinyint] NULL,
	[is_password] [tinyint] NULL,
	[is_html] [tinyint] NULL,
	[editor_type] [tinyint] NULL,
	[valid_tip_msg] [nvarchar](255) NULL,
	[valid_error_msg] [nvarchar](255) NULL,
	[valid_pattern] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'control_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小数点位数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'item_option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'default_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必填0非必填1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否密码框' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许HTML' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_html'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑器类型0标准型1简洁型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'editor_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_tip_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证失败提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_error_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证正则表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_pattern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field'
GO
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] ON
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (2, N'sub_title', N'副标题', N'single-text', N'nvarchar(255)', 255, 0, N'', N'', 0, 0, 0, 0, N'可为空，最多255个字符', N'', N's0-255', 99, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (3, N'source', N'信息来源', N'single-text', N'nvarchar(100)', 100, 0, N'', N'本站', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 100, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (4, N'author', N'文章作者', N'single-text', N'nvarchar(50)', 50, 0, N'', N'', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 101, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (5, N'goods_no', N'商品货号', N'single-text', N'nvarchar(100)', 100, 0, N'', N'', 0, 0, 0, 0, N'允许字母、下划线，100个字符内', N'', N's0-100', 102, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (6, N'stock_quantity', N'库存数量', N'number', N'int', 0, 0, N'', N'0', 0, 0, 0, 0, N'库存数量为0时显示缺货状态', N'', N'n', 103, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (7, N'market_price', N'市场价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 0, 0, 0, 0, N'市场的参与价格，不参与计算', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 104, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (8, N'sell_price', N'销售价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 1, 0, 0, 0, N'*出售的实际交易价格', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 105, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (9, N'point', N'交易积分', N'number', N'int', 0, 0, N'', N'0', 0, 0, 0, 0, N'*正为返还，负为消费积分', N'', N'n', 106, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (12, N'video_src', N'视频上传', N'video', N'nvarchar(255)', 0, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0)
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] OFF
/****** Object:  Table [dbo].[dt_article_attach]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[file_name] [nvarchar](255) NULL,
	[file_path] [nvarchar](255) NULL,
	[file_size] [int] NULL,
	[file_ext] [nvarchar](20) NULL,
	[down_num] [int] NULL,
	[point] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTACH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小(字节)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'down_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分(正赠送负消费)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach'
GO
/****** Object:  Table [dbo].[dt_article_albums]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[thumb_path] [nvarchar](255) NULL,
	[original_path] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ALBUMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'thumb_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'original_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums'
GO
SET IDENTITY_INSERT [dbo].[dt_article_albums] ON
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (58, 87, N'/upload/201504/20/thumb_201504200046589514.jpg', N'/upload/201504/20/201504200046589514.jpg', N'', CAST(0x0000A480000E06A9 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (59, 87, N'/upload/201504/20/thumb_201504200046594439.jpg', N'/upload/201504/20/201504200046594439.jpg', N'', CAST(0x0000A480000E06BC AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (60, 88, N'/upload/201504/20/thumb_201504200059017695.jpg', N'/upload/201504/20/201504200059017695.jpg', N'', CAST(0x0000A4800010C022 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (61, 88, N'/upload/201504/20/thumb_201504200059022920.jpg', N'/upload/201504/20/201504200059022920.jpg', N'', CAST(0x0000A4800010C030 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (62, 89, N'/upload/201504/20/thumb_201504200119256512.jpg', N'/upload/201504/20/201504200119256512.jpg', N'', CAST(0x0000A4800015D66B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (63, 89, N'/upload/201504/20/thumb_201504200119262837.jpg', N'/upload/201504/20/201504200119262837.jpg', N'', CAST(0x0000A4800015D67A AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (64, 90, N'/upload/201504/20/thumb_201504200154277661.jpg', N'/upload/201504/20/201504200154277661.jpg', N'', CAST(0x0000A480001F7B53 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (65, 90, N'/upload/201504/20/thumb_201504200154282586.jpg', N'/upload/201504/20/201504200154282586.jpg', N'', CAST(0x0000A480001F7B61 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (66, 91, N'/upload/201504/20/thumb_201504200214466608.jpg', N'/upload/201504/20/201504200214466608.jpg', N'', CAST(0x0000A48000250B04 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (67, 91, N'/upload/201504/20/thumb_201504200214471783.jpg', N'/upload/201504/20/201504200214471783.jpg', N'', CAST(0x0000A48000250B12 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (68, 92, N'/upload/201504/20/thumb_201504200225100165.jpg', N'/upload/201504/20/201504200225100165.jpg', N'', CAST(0x0000A4800027E423 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (69, 92, N'/upload/201504/20/thumb_201504200225107390.jpg', N'/upload/201504/20/201504200225107390.jpg', N'', CAST(0x0000A4800027E431 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (70, 93, N'/upload/201504/20/thumb_201504200233019087.jpg', N'/upload/201504/20/201504200233019087.jpg', N'', CAST(0x0000A480002A0CC2 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (71, 93, N'/upload/201504/20/thumb_201504200233024338.jpg', N'/upload/201504/20/201504200233024338.jpg', N'', CAST(0x0000A480002A0CDE AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (72, 94, N'/upload/201504/20/thumb_201504200239192345.jpg', N'/upload/201504/20/201504200239192345.jpg', N'', CAST(0x0000A480002BD23E AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (73, 94, N'/upload/201504/20/thumb_201504200239197670.jpg', N'/upload/201504/20/201504200239197670.jpg', N'', CAST(0x0000A480002BD24C AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (74, 95, N'/upload/201504/20/thumb_201504200242250674.jpg', N'/upload/201504/20/201504200242250674.jpg', N'', CAST(0x0000A480002CF32B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (75, 96, N'/upload/201504/20/thumb_201504200253026047.jpg', N'/upload/201504/20/201504200253026047.jpg', N'', CAST(0x0000A480002F8BD5 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (76, 97, N'/upload/201504/20/thumb_201504200258403759.jpg', N'/upload/201504/20/201504200258403759.jpg', N'', CAST(0x0000A4800031E3CE AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (77, 98, N'/upload/201504/20/thumb_201504200314272543.jpg', N'/upload/201504/20/201504200314272543.jpg', N'', CAST(0x0000A48000357C7C AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (78, 99, N'/upload/201504/20/thumb_201504200318534459.jpg', N'/upload/201504/20/201504200318534459.jpg', N'', CAST(0x0000A4800036E1BF AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (79, 100, N'/upload/201504/20/thumb_201504200327369421.jpg', N'/upload/201504/20/201504200327369421.jpg', N'', CAST(0x0000A48000390964 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (80, 101, N'/upload/201504/20/thumb_201504200333240710.jpg', N'/upload/201504/20/201504200333240710.jpg', N'', CAST(0x0000A480003B08BC AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_albums] OFF
/****** Object:  Table [dbo].[dt_article]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NULL,
	[click] [int] NULL,
	[status] [tinyint] NULL,
	[is_msg] [tinyint] NULL,
	[is_top] [tinyint] NULL,
	[is_red] [tinyint] NULL,
	[is_hot] [tinyint] NULL,
	[is_slide] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
	[user_name] [nvarchar](100) NULL,
	[add_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TAG标签逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'tags'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'zhaiyao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1未审核2锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_hot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否幻灯片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_slide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员发布0不是1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'update_time'
GO
SET IDENTITY_INSERT [dbo].[dt_article] ON
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (54, 11, 25, N'about', N'关于我们', N'', N'', N'', N'', N'', N'', N'动力启航（www.dtcms.net）是一个以ASP.NET(C#)+jQuery技术为中心，面向软件开发者、程序爱好者、网页设计师，服务于个人、企业的网站，同时也是一个专门结合AJAX技术开发友好界面、倍受欢迎用户体验的BS模式软件系统，致力打造自己的品牌。DTcms是动力启航旗下一个开源软件产…', N'<p>
	动力启航（www.dtcms.net）是一个以ASP.NET(C#)+jQuery技术为中心，面向软件开发者、程序爱好者、网页设计师，服务于个人、企业的网站，同时也是一个专门结合AJAX技术开发友好界面、倍受欢迎用户体验的BS模式软件系统，致力打造自己的品牌。
</p>
<p>
	DTcms是动力启航旗下一个开源软件产品，最早创建于2009年10月，其本质不以商业为目的，我们的宗旨是让更多的编程爱好者分享交流互联网开发技术。
</p>
<p>
	DTcms之所以开源，最大原因在于国内ASP.NET(c#)开源软件成品太少，相信刚接触编程开发者都跟我一样有很深的体会，书本上的知识很有限，学习的过程中都是一些比较简单的基础知识，偶然发现一个比较成熟的案例，要么就是不开源，要么就是收费。想学习研究却无从下手。在摸索的道路上我仅将自己摸索的一点知识和经验分享出来。
</p>
<p>
	站在巨人的肩膀上，会让你看得更远，走得更快，虽然我们现在不是巨人；编程也一样，在前者的摸索道路上，如果大家都将自己的编程思想和经验共享出来让后人去学习和纠正，那么或许他们就不必走那么多的弯路，互联网的发展是否会更快？
</p>
<p>
	基于以上的追求，限于国产开源界的目前现状，DTcms由此而诞生。
</p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E0178532C AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (55, 11, 25, N'contact', N'联系我们', N'', N'', N'', N'', N'', N'', N'动力启航 - 专注互联网开发最前端 官方网址：http://www.dtcms.net http://www.dtsoft.net 所在地区：广东省深圳市宝安区西乡街道业务电话：+86 13695245546新浪微博：http://weibo.com/dtcms', N'<p>
	<strong>动力启航 - 专注互联网开发最前端 </strong> 
</p>
<p>
	<strong>官方网址：</strong><a href="http://www.dtcms.net" target="_blank">http://www.dtcms.net</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.dtsoft.net">http://www.dtsoft.net</a> 
</p>
<p>
	<strong>所在地区：</strong>广东省深圳市宝安区西乡街道
</p>
<p>
	<strong>业务电话：</strong>+86 13695245546
</p>
<p>
	<strong>新浪微博：</strong><a href="http://weibo.com/dtcms" target="_blank">http://weibo.com/dtcms</a> 
</p>
<p>
	<strong>技术Q群：</strong>17671249（1群已满）、65105443 (2群已满)、65105043 (3群已满)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;124834949 (4群已满)、264768101（5群）
</p>
<p>
	<strong>电子邮箱：</strong><a href="mailto:info@dtcms.net">info@dtcms.net</a> 
</p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A47E0178A4B4 AS DateTime), CAST(0x0000A47E0179ABC3 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (87, 7, 43, N'', N'华为（HUAWEI）荣耀6Plus 16G双4G版', N'', N'/upload/201504/20/thumb_201504200046589514.jpg', N'华为（HUAWEI）荣耀6Plus 16G双4G版', N'华为（HUAWEI）,荣耀6Plus,移动/联通/电信/双4G版,双800万摄像头，八核，安卓智能手机,荣耀6plus', N'华为（HUAWEI）荣耀6Plus 移动/联通/电信/双4G版（双800万摄像头，八核，安卓智能手机）荣耀6plus(白色 移动16G版/套餐一)', N'', N'荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080…', N'<p>
	荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。
</p>
<p align="center">
	<span style="color:#FF0000;font-size:16px;"><img class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201503/desc04/A0004794664/3997361.jpg" /></span> 
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A480000E0574 AS DateTime), CAST(0x0000A4800010E78D AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (88, 7, 43, N'', N'苹果Apple iPhone 6 Plus 16G 4G手机（联通三网版）', N'', N'/upload/201504/20/thumb_201504200059017695.jpg', N'苹果Apple iPhone 6 Plus 16G 4G手机（联通三网版）', N'苹果,iPhone 6 Plus 16G,4G手机,联通三网版', N'AppleiPhone 6 Plus手机金色（联通）5.5英寸16G】Apple iPhone 6 Plus 16G 4G手机（联通三网版）', N'', N'iPhone 6 Plus设计上和iPhone 6一致，做工延续了苹果的高标准。和前几代不同的是，与前几代iPhone有棱有角的设计相比，它从屏幕边缘到边框都是弧形设计，玻璃与边框贴合的十分紧凑，两者衔接的地方过度十分自然，更像是unibody一体式的设计。它一改以往的设计风格，也使得手机…', N'<p>
	iPhone 6 Plus设计上和iPhone 6一致，做工延续了苹果的高标准。
</p>
<p>
	和前几代不同的是，与前几代iPhone有棱有角的设计相比，它从屏幕边缘到边框都是弧形设计，玻璃与边框贴合的十分紧凑，两者衔接的地方过度十分自然，更像是unibody一体式的设计。它一改以往的设计风格，也使得手机十分圆滑，不太容易掌控。
</p>
<p>
	TechCrunch和Engadget都提到，iPhone 6 Plus让人想起了iPad mini，尤其是后者的侧边也是弧形设计。iPhone 6 Plus同样需要双手来操作，想要单手模式的话，轻拍两下Home键（不是按下去），显示内容会下移大约一半的尺寸。
</p>
<p>
	<br />
</p>
<p align="center">
	<img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_02.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_03.jpg" /> 
</p>
<p align="center">
	<img width="750" height="370" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_04.jpg" /> 
</p>
<p align="center">
	<img width="750" height="371" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_05.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_06.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_07.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_08.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_09.jpg" /> <img width="750" height="370" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_10.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_11.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_12.jpg" /> 
</p>
<p align="center">
	<img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_13.jpg" /> 
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A4800010BEB8 AS DateTime), CAST(0x0000A4800011C73B AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (89, 7, 43, N'', N'小米（Mi）小米Note 16G双网通版', N'', N'/upload/201504/20/thumb_201504200119256512.jpg', N'小米（Mi）小米Note 16G双网通版', N'小米（Mi）小米Note 双网通版（4G、5.7英寸、16GB/64GB可选 ） Note/小米note手机(天然竹特别版 双网通/16GB内存 标配)', N'小米（Mi）小米Note 双网通版（4G、5.7英寸、16GB/64GB可选 ） Note/小米note手机(天然竹特别版 双网通/16GB内存 标配)', N'', N'小米Note此次采用的5.7英寸夏普/JDI分辨率为1920X1080的屏幕。小米Note配置方面，CPU采用的是高通骁龙801四核2.5GHZ处理器，3GB的运行内存。4G双卡双待，1300万像素后置摄像头和400万前置摄像头组合，首次加入HiFi模块，高保真音质，电池容量为3000mAh。小米Note顶配版升级了C…', N'<p>
	小米Note此次采用的5.7英寸夏普/JDI分辨率为1920X1080的屏幕。小米Note配置方面，CPU采用的是高通骁龙801四核2.5GHZ处理器，3GB的运行内存。
</p>
<p>
	4G双卡双待，1300万像素后置摄像头和400万前置摄像头组合，首次加入HiFi模块，高保真音质，电池容量为3000mAh。
</p>
<p>
	小米Note顶配版升级了CPU、屏幕、运行内存，采用的5.7英寸夏普/JDI分辨率为2560 x 1440的2K屏，CPU采用的是高通骁龙810八核64位处理器，4GB的运行内存。
</p>
<p align="center">
	<img class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201501/desc04/A0005143105/3851475.jpg" /> 
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A4800015D608 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (90, 7, 44, N'', N'佳能（Canon） EOS 700D 单反套机', N'', N'/upload/201504/20/thumb_201504200154277661.jpg', N'佳能（Canon） EOS 700D 单反套机 （EF-S 18-135mm f/3.5-5.6 IS STM镜头）旗舰机型 正品行货 翻转触摸屏', N'佳能,EOS 700D,单反套机,旗舰机型,正品行货,翻转触摸屏', N'佳能（Canon） EOS 700D 单反套机 （EF-S 18-135mm f/3.5-5.6 IS STM镜头）旗舰机型 正品行货 翻转触摸屏行业标杆!DIGIC 5数字影像处理器 全9点十字型自动对焦 2013入门旗舰 全新力作!', N'', N'◆ 佳能普及型单反新旗舰记忆的片段，偶然的相遇，铭记那一刻的感动。想记录美丽的夜景，想留下鲜艳的色彩，更想捕捉决定性的瞬间。能够满足这些的相机就是EOS 700D。拓展拍摄自由度的触摸操作和可旋转液晶监视器，激发拍摄灵感的丰富创意功能，趁手的坚实机身中融入了令人惊叹…', N'<p align="center">
	<img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/0.jpg" /> 
</p>
<p>
	<strong>◆ 佳能普及型单反新旗舰</strong><br />
记忆的片段，偶然的相遇，铭记那一刻的感动。想记录美丽的夜景，想留下鲜艳的色彩，更想捕捉决定性的瞬间。能够满足这些的相机就是EOS 700D。拓展拍摄自由度的触摸操作和可旋转液晶监视器，激发拍摄灵感的丰富创意功能，趁手的坚实机身中融入了令人惊叹的先进功能。佳能与你一同分享拥有数码单反相机的喜悦。
</p>
<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 高反应性 — 卓越的自动对焦性能和高速连拍</strong><br />
无论被摄体的种类和状态如何，瞬间捕捉快门时机是EOS 700D的强项。全9点十字型高精度自动对焦感应器和Hybrid CMOS AF是拓展多种拍摄方式的坚实后盾。在取景器拍摄和实时显示拍摄时都能精确捕捉被摄体。另外，最高约5张/秒的高速连拍可连续记录被摄体的动作，不会错过拍摄时机。
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/12.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 高画质・高感光度 — 约1800万有效像素带来的高精细、低噪点画质</strong><br />
从明亮场景到昏暗场景，EOS 700D随时随地都能拍出令人感动的美丽照片。其中的秘密就在于约1800万有效像素CMOS图像感应器和担负高速高画质图像处理的DIGIC 5数字影像处理器的组合。高像素带来精细成像和细腻层次表现是数码单反相机的特长。另外，常用感光度为ISO 100-12800，可拓展至ISO 25600。卓越的降噪效果使得高感光度拍摄时也能获得清晰的画质。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/13.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 触控 — 可迅速拍摄且便于回放的触控液晶监视器</strong><br />
使用EOS 700D只需轻触液晶监视器的表面即可完成从对焦、拍摄到回放图像的操作。通过触摸操作可迅速改变设置或选择菜单，因此相机丰富的功能都能轻松调出，使用起来更熟练。直观的操作使初学者也不再为操作而烦恼。根据被摄体和拍摄场景分别使用不同的自动对焦方式，轻松简单的触摸操作也能拍出理想的照片。可以说EOS 700D可利用智能手机般的简易操作拍出专业级的照片。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/14.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>短片拍摄 — 可自动对焦追踪拍摄的全高清EOS短片</strong><br />
可持续对焦动态被摄体的短片伺服自动对焦和短片拍摄中的高速自动对焦使短片拍摄更加顺畅。使用超过60款的EF镜头能够自由地表现美丽的虚化和微距世界等。拍摄短片时可进行直观的触摸操作，轻松拍出可用于电影、电视广告制作的高品质影像。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/15.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 基本性能 — 自动识别拍摄场景和被摄体，拍摄理想照片的先进功能</strong><br />
被摄体周围的光线环境多种多样。EOS 700D搭载了可识别被摄体颜色和拍摄场景的高性能测光感应器，能够随时随地正确计算曝光。另外DIGIC 5数字影像处理器可综合分析相机内各感应器获取的多种信息，针对拍摄场景进行合适的图像处理。基于EOS 700D卓越的基本性能无论何时何地都能获得理想的照片效果。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/16.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 创造性 — 在拍摄中或拍摄后提升作品效果的多种功能</strong><br />
EOS 700D搭载了多种功能，通过简单的操作即可获得专业级的效果。使用"手持夜景"模式无需三脚架也能手持拍摄夜景，"HDR逆光控制"模式在逆光下可有效抑制暗部缺失和高光溢出，而"夜景人像"模式在拍摄人像时可使背景和人物的亮度更加协调。除此之外，充实的"创意滤镜"功能还可以为照片添加丰富的效果。使用这些功能便能创作出有别于通常拍摄的照片效果，获得理想的摄影作品。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/17.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 设计・拓展性 — 全新的外观和丰富的附件</strong><br />
全新设计的EOS 700D功能性和系统性都更加完善。机身设计焕然一新，转盘改为凸型图标。套机镜头EF-S 18-55mm f/3.5-5.6 IS STM和EF-S 18-135mm f/3.5-5.6 IS STM可实现安静流畅的自动对焦。除可使用超过60款的EF镜头外，还可搭配功能繁多的外接闪光灯和电池盒兼手柄等附件。组合使用就能拓展拍摄领域，获得更高的表现力。
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<p align="center">
	<img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/0.jpg" /> 
</p>
<p align="center">
	<img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/1.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/2.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/3.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/4.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/5.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/6.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/7.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/8.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/9.jpg" />
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A480001F79D0 AS DateTime), CAST(0x0000A4800020E6F2 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (91, 7, 44, N'', N'尼康(Nikon)D3300套机（18-55mm f/3.5-5.6G VRII）（黑色）', N'', N'/upload/201504/20/thumb_201504200214471783.jpg', N'尼康(Nikon)D3300套机(18-55mm f/3.5-5.6G VRII)', N'尼康,Nikon,D3300套机', N'尼康（Nikon）D3300套机（18-55mm f/3.5-5.6G VRII）（黑色）新一代Expeed 4图像处理器3寸液晶屏 支持短片拍摄 双重清洁系统 11点自动对焦', N'', N'作为D3200的升级版，尼康D3300最大特点即是无低通的设置，整体配置却与D5300十分相似。搭载2416万像素无低通滤镜传感器，以及EXPEED 4图像处理器，在入门级单反中比较抢眼。最高感光度达到至ISO 25600，最高连拍速度5fps，11点对焦系统，可录制1080/60p全高清视频。外观方面，…', N'<p>
	作为D3200的升级版，尼康D3300最大特点即是无低通的设置，整体配置却与D5300十分相似。搭载2416万像素无低通滤镜传感器，以及EXPEED 4图像处理器，在入门级单反中比较抢眼。最高感光度达到至ISO 25600，最高连拍速度5fps，11点对焦系统，可录制1080/60p全高清视频。
</p>
<p>
	外观方面，尼康D3300与D3200区别不大，依然以“圆润”化设计思路为主线，相机更加的柔和，时尚化。机身背面配有3英寸92万像素液晶屏，可进行亮度调节。除此D3300整体握持手感可以说是近年来小型单反中做得最好的，无论是手柄的深度，蒙皮的覆盖位置都可以说是刚刚好。而黑色，灰色以及红色的外观，更增加了可选性。
</p>
<table width="750" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_21.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_22.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_23.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_24.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_25.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_26.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_27.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_28.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_29.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_30.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_31.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_32.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_33.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_34.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_35.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_36.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_37.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_38.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_39.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_40.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_41.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_42.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_43.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_44.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_45.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_46.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_47.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
			</td>
		</tr>
	</tbody>
</table>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A48000250A67 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (92, 7, 46, N'', N'联想（Lenovo） G510AM 15.6英寸笔记本电脑', N'', N'/upload/201504/20/thumb_201504200225107390.jpg', N'联想（Lenovo） G510AM 15.6英寸笔记本电脑（i3-4000M 4G 500G 2G独显 摄像头 DVD刻录 Win8）金属黑', N'联想（Lenovo） G510AM 15.6英寸笔记本电脑（i3-4000M 4G 500G 2G独显 摄像头 DVD刻录 Win8）金属黑', N'联想（Lenovo） G510AM 15.6英寸笔记本电脑（i3-4000M 4G 500G 2G独显 摄像头 DVD刻录 Win8）金属黑

【新一代G系の高性能家用笔记本】万箭穿心Ω斯巴达克斯级战备性能∑炼狱级2G显卡性能本，全面预装windows8系统！', N'', N'G系列全面支持Windows 8 简体中文版，在秉承了坚实耐用、稳定可靠的产品指纹的同时，金属版本全金属C面令笔记本更加安全可靠。搭载独立显卡在游戏和多媒体方面较上一代显卡最高可实现两倍性能提升，提供更加强大的笔记本体验。杜比环绕立体声音效，轻松拥有影院级高品质享受；…', N'<p>
	G系列全面支持Windows 8 简体中文版，在秉承了坚实耐用、稳定可靠的产品指纹的同时，金属版本全金属C面令笔记本更加安全可靠。搭载独立显卡在游戏和多媒体方面较上一代显卡最高可实现两倍性能提升，提供更加强大的笔记本体验。杜比环绕立体声音效，轻松拥有影院级高品质享受；更可以通过HDMI接口连接3D电视，实现坐拥私家3D影院的梦想！
</p>
<p>
	Windows 8 中文版操作系统（限部分机型标配），紧跟潮流CPU全面升级，四核普及风暴：搭载第四代智能英特尔Haswell酷睿处理器，最高至i7四核处理器，极致性能一本无忧显卡换代，火爆升级：显卡切换至新一代AMD Radeon HD8570 2G DDR3独立显存，最高可至AMD Radeon HD87504GDDR3独立显存；性能较上代提升超过100%，为客户带来酣畅使用体验。
</p>
<table width="749" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_02.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_03.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_04.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_05.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_06.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_07.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_08.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_09.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_10.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_11.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_12.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_13.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_14.jpg" />
			</td>
		</tr>
	</tbody>
</table>
<!-- End Save for Web Slices -->
<div id="adbottom">
	<div style="text-align:center;">
		<a href="http://prom.gome.com.cn/html/prodhtml/topics/201501/jiaanbao.html"></a>
	</div>
</div>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A4800027E39D AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (93, 7, 46, N'', N'Apple iMac MF883CH/A 21.5英寸一体机电脑', N'', N'/upload/201504/20/201504200341260763.jpg', N'Apple iMac MF883CH/A 21.5英寸一体机电脑', N'赏心悦目de感官享受 艺术品般de细致雕琢 效能与设计de完美结合', N'Apple iMac MF883CH/A 21.5英寸一体机电脑赏心悦目de感官享受 艺术品般de细致雕琢 效能与设计de完美结合', N'', N'—— iMac —— 锋锐设计，锋芒表现。iMac 拥有亮丽的宽显示屏、强劲的 Intel 处理器、超快的图形处理器和其他先进功能，而一切精彩都集于超乎想象的锋锐外壳中，边缘处仅有 5 毫米。 ● 绚丽夺目的设计● 绚美的宽显示屏● 全线配备 Intel Core i5 处理器● 强大的图形处理器…', N'—— iMac —— <br />
锋锐设计，锋芒表现。<br />
iMac 拥有亮丽的宽显示屏、强劲的 Intel 处理器、超快的图形处理器和其他先进功能，而一切精彩都集于超乎想象的锋锐外壳中，边缘处仅有 5 毫米。 <br />
● 绚丽夺目的设计<br />
● 绚美的宽显示屏<br />
● 全线配备 Intel Core i5 处理器<br />
● 强大的图形处理器<br />
● 高速 I/O 传输技术，包括两个 Thunderbolt 端口、四个 USB 3 端口等<br />
● FaceTime HD 高清摄像头<br />
● Apple Wireless Keyboard<br />
● Apple Magic Mouse<br />
● 一系列激发创意和提升效率的强大 app<br />
● OS X Mavericks，了不起的先进操作系统 <br />
&nbsp; <br />
—— Apple Wireless Keyboard —— <br />
Apple Wireless Keyboard 拥有难以置信的超薄流线型设计，让你能在你的桌上、膝上或任意有效范围之内尽情输入。不管你把它放在哪里，它只需极小的空间即可容身。 <br />
&nbsp; <br />
—— Apple Magic Mouse —— <br />
Magic Mouse 不同于你以往用过的其他鼠标。Multi-Touch 表面让你可以使用手势轻扫翻看照片，滚动浏览网页。整个鼠标就是一个按钮，任你随处点击。 <br />
&nbsp; <br />
—— Apple Magic Trackpad —— <br />
和 Apple Wireless Keyboard 可以对齐摆放。你可以使用内置于 OS X Mavericks 的所有 Multi-Touch 手势，来轻松掌控，和屏幕进行互动。轻扫浏览照片，上下滚读网页，并可随处点击。 <br />
&nbsp; <br />
—— Apple USB SuperDrive 光驱 —— <br />
紧凑轻便的 Apple USB SuperDrive 光驱仅需一条 USB 线缆就能接入你的 iMac、配备 Retina 显示屏的 MacBook Pro、MacBook Air 或 Mac mini 连接，并且可以轻松纳入你的旅行包。有了它，你可以安装软件，播放及刻录 CD 和 DVD（包括双层 DVD）。 <br />
&nbsp; <br />
—— AirPort Extreme —— <br />
简单易用的 AirPort Extreme 基站拥有新一代 802.11ac Wi-Fi 技术，能为家庭、学校和公司提供理想的无线接入点1。它具备同步双频支持，为 Mac 电脑、PC，以及 iPhone、iPad 和 iPod touch 等设备带来高性能的无线网络连接2。<br />
1、AirPort Extreme 基于 IEEE 802.11ac 规范草案。性能数据基于与 Apple 的 802.11n 产品所做的比较。<br />
2、接入无线互联网要求使用互联网账号；可能需要付费。 <br />
&nbsp; <br />
—— AirPort Time Capsule —— <br />
AirPort Time Capsule 这款无线硬盘能与 OS X 中的 Time Machine 无缝配合，为你备份生活中难忘的美好回忆。它还是一款全功能的 Wi-Fi 基站，具备新一代 802.11ac 技术与同步双频支持*。<br />
* AirPort Time Capsule 基于 IEEE 802.11ac 规范草案。性能数据基于与 Apple 的 802.11n 产品所做的比较。接入无线互联网要求使用互联网账号；可能需要付费。<br />
&nbsp;适用于 Mac 的AppleCare Protection Plan 全方位服务计划可提供长达 3 年的专家电话技术支持，以及来自Apple 的额外硬件服务选项1。 <br />
&nbsp; <br />
当你购买了AppleCare Protection Plan 全方位服务计划，只需一通电话即可帮你解答各式各样的问题2，包括 iLife 和 iWork 等产品的使用方法问题。你甚至还可以在访问世界其他国家或地区时，在当地获取维修服务。 <br />
&nbsp; <br />
中国的消费者权益保护法包括"三包"规定，赋予了消费者自购机之日起 2 年的主要部件质量问题保修服务。在浙江省，消费者权益保护法赋予了消费者自购买之日起 3 年的台式电脑质量问题保修服务。在此基础之上，大多数 Apple 产品也附带 90 天的免费电话技术支持，以及来自 Apple 的 1 年有限保修服务。 <br />', 99, 0, 0, 1, 0, 0, 0, 1, 1, N'admin', CAST(0x0000A480002A0BAC AS DateTime), CAST(0x0000A480003CD492 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (94, 7, 47, N'', N'金士顿（Kingston） DataTraveler SE9 32GB 金属U盘', N'', N'/upload/201504/20/thumb_201504200239192345.jpg', N'金士顿（Kingston） DataTraveler SE9 32GB 金属U盘 银色', N'金士顿,金属U盘', N'金士顿（Kingston） DataTraveler SE9 32GB 金属U盘 银色', N'', N'品名：金士顿颜色：银色容量：32GB USB2.0尺寸：1.535＂0.486＂0.179＂（39.00mm12.35mm4.55mm）携带方便：小巧的无盖帽设计袖珍型，携带方便质量保证：5年保固，免费技术支持工作温度：32℉到140℉（0℃到60℃）保存温度：-4℉到185℉（-20℃到85℃）', N'<p>
	<span class="yhbb">品名：</span>金士顿<br />
<span class="yhbb">颜色：</span>银色<br />
<span class="yhbb">容量：</span>32GB USB2.0<br />
<span class="yhbb">尺寸：</span>1.535＂×0.486＂×0.179＂<br />
（39.00mm×12.35mm×4.55mm）<br />
<span class="yhbb">携带方便：</span>小巧的无盖帽设计袖珍型，携带方便<br />
<span class="yhbb">质量保证：</span>5年保固，免费技术支持<br />
<span class="yhbb">工作温度：</span>32℉到140℉（0℃到60℃）<br />
<span class="yhbb">保存温度：</span>-4℉到185℉（-20℃到85℃）
</p>
<table width="750" class="dingwei" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_06.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_07.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_08.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_09.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_10.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_11.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_12.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_13.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_14.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_15.jpg" />
			</td>
		</tr>
	</tbody>
</table>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A480002BD1B5 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (95, 7, 48, N'', N'惠普（HP）LaserJet 2035商用黑白激光打印机（黑色）', N'', N'/upload/201504/20/thumb_201504200242250674.jpg', N'惠普（HP）LaserJet 2035商用黑白激光打印机（黑色）', N'惠普,HP,LaserJet 2035,激光打印机', N'惠普（HP）LaserJet 2035商用黑白激光打印机（黑色）', N'', N'全新hp laserjet p2035系列激光打印机既可令您尽享卓越的打印体验，又可提高办公生产率。此款打印机外形精巧、简单易用，且具备多种强大功能，以全力打造高端惠普激光打印体验。此外，它还可快速轻松输出专业办公文档，因此特别适用于中小型企业和大型企业环境内的小型工作组和…', N'<table width="735" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="735" height="473" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201504/desc1284/1000016696/6.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="19">
								&nbsp;
							</td>
							<td width="700" class="yha">
								全新hp laserjet p2035系列激光打印机既可令您尽享卓越的打印体验，又可提高办公生产率。此款打印机外形精巧、简单易用，且具备多种强大功能，以全力打造高端惠普激光打印体验。此外，它还可快速轻松输出专业办公文档，因此特别适用于中小型企业和大型企业环境内的小型工作组和高使用量个人用户。
							</td>
							<td width="16">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="23">
								&nbsp;
							</td>
							<td width="689" class="bk">
								&nbsp;
							</td>
							<td width="23">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="24">
								&nbsp;
							</td>
							<td width="293">
								<img width="268" height="228" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201504/desc1284/1000016696/2.jpg" />
							</td>
							<td width="392">
								<span class="yy">以独特的价值实现强大的办公生产率</span><br />
<span class="yhb">·尽享高达30 ppm (letter/a4)的快捷打印速度。<br />
·采用惠普0秒预热技术，节能模式下仅8秒即可快速输出首页。<br />
·10/100以太网/快速以太网联网功能可确保轻松共享打印资源。<br />
·使用usb或并行端口，轻松连接打印机与计算机。<br />
·250页进纸盒和50页多用途纸盒，减少纸张输入次数。<br />
·266 mhz处理器和16 mb内存可确保快速处理复杂文件。 </span>
							</td>
							<td width="26">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="23">
								&nbsp;
							</td>
							<td width="689" class="bk">
								&nbsp;
							</td>
							<td width="23">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="26">
								&nbsp;
							</td>
							<td width="407">
								<span class="yy">线条流畅、节省空间的设计为您全力打造专业品质</span><br />
<span class="yhb">·高达600 x 600 dpi的分辨率，通过分辨率增强技术(ret)，打印质感文本和清晰图像的专业办公文档。<br />
·借助惠普一体化硒鼓，体验品质如一的输出效果和出色易用性。</span>
							</td>
							<td width="20">
								&nbsp;
							</td>
							<td width="282">
								<img width="258" height="242" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201504/desc1284/1000016696/3.jpg" />
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="23">
								&nbsp;
							</td>
							<td width="689" class="bk">
								&nbsp;
							</td>
							<td width="23">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="25">
								&nbsp;
							</td>
							<td width="277">
								<img width="253" height="238" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201504/desc1284/1000016696/4.jpg" />
							</td>
							<td width="405">
								<span class="yy">容易设置、使用和维护</span><br />
<span class="yhb">·利用直观的控制面板，轻松导航打印机功能。<br />
·一个打印机正面检修门可确保无忧更换硒鼓。<br />
·借助可hp easy printer care软件，高效管理2到20台惠普激光打印机，掌握打印机的状态，配置等信息。<br />
·hp suresupply便于订购打印耗材，避免意外停机。<br />
·外形精巧，可节省宝贵的桌面空间。</span>
							</td>
							<td width="28">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="23">
								&nbsp;
							</td>
							<td width="689" class="bk">
								&nbsp;
							</td>
							<td width="23">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="26">
								&nbsp;
							</td>
							<td width="396">
								<span class="yy">更多特性，带来更好打印体验</span><br />
<span class="yhb">·选择独特的打印机安静模式，尽享异常安静的操作体验。<br />
·支持a6卡片等多种介质尺寸和类型，可轻松制作各类商业文档。</span>
							</td>
							<td width="23">
								&nbsp;
							</td>
							<td width="290">
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A480002CF292 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (96, 7, 48, N'', N'惠普(HP) Officejet Pro 8610商用彩色喷墨一体机', N'', N'/upload/201504/20/thumb_201504200253026047.jpg', N'惠普(HP) Officejet Pro 8610商用彩色喷墨一体机', N'惠普,Officejet Pro 8610,彩色喷墨一体机', N'专业彩色打印件的单页成本比激光打印机低 50%，从而在日常打印中节省更多打印成本。', N'', N'专业彩色打印件的单页成本比激光打印机低 50%，从而在日常打印中节省更多打印成本。无论您身在何处，均可通过任意移动设备进行打印。 借助惠普“云打印”技术，您现在可以随时随地，随心打印。使用智能复印解决方案，创建完美无瑕的副本，同时轻松打印双面身份证。专业彩色打印…', N'<p>
	专业彩色打印件的单页成本比激光打印机低 50%，从而在日常打印中节省更多打印成本。
</p>
<p>
	无论您身在何处，均可通过任意移动设备进行打印。 借助惠普“云打印”技术，您现在可以随时随地，随心打印。
</p>
<p>
	使用智能复印解决方案，创建完美无瑕的副本，同时轻松打印双面身份证。
</p>
<p>
	专业彩色打印成本低于激光打印机，而且生产率高，可大幅推动业务发展。
</p>
<p>
	适用墨盒：HP 950XL 黑色/青色/品红/黄色超大容量墨盒 CN045AA/CN046AA/CN047AA/CN048AA
</p>
<p align="center">
	&nbsp;<img alt="WW-CNPublicStore:/Product/RichContent/IPG/CM750A-Pro-8600-20120704-ver1.jpg" src="http://shopping1.hp.com/is-bin/intershop.static/WFS/WW-CNPublicStore-Site/WW-CNPublicStore/zh_CN/Product/RichContent/IPG/CM750A-Pro-8600-20120704-ver1.jpg" border="0" /> 
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A480002F8B4C AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (97, 7, 49, N'', N'三星（SAMSUNG）UA40HU5920JXXZ 40英寸4K超高清', N'', N'/upload/201504/20/thumb_201504200258403759.jpg', N'三星（SAMSUNG）UA40HU5920JXXZ 40英寸4K超高清', N'三星,UA40HU5920JXXZ,4K超高清,智能,四核处理器,平板液晶电视', N'三星（SAMSUNG）UA40HU5920JXXZ 40英寸4K超高清 智能 四核处理器 平板液晶电视UHDTV4K网络智能！欢迎比价后购买！此商品为爆款，不参加满减活动！数量有限，先抢先得！智能彩电节，点击抢购', N'', N'三星（SAMSUNG）UA40HU5920JXXZ 40英寸4K超高清 智能 四核处理器 平板液晶电视（黑色） UHDTV【智能彩电节】4K网络智能！欢迎比价后购买！此商品为爆款，不参加满减活动！数量有限，先抢先得！智能彩电节，点击抢购', N'<table width="750" align="center">
	<tbody>
		<tr>
			<td>
				<img alt="" src="http://pwg0.gtimg.cn/wanggou/855006089/6fb0525cb4_028a1096486f185e4456f317c3ab36c.jpg/750" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img alt="" src="http://pwg0.gtimg.cn/wanggou/855006089/6fb0525cb4_e6b2746ff5f12be74588b3336f24bc6.jpg/750" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img alt="" src="http://pwg2.gtimg.cn/wanggou/855006089/6fb0525cb4_f836a109bd9d3db4f2a11dc68a2731c.jpg/750" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img alt="" src="http://pwg3.gtimg.cn/wanggou/855006089/6fb0525cb4_39af00629049492f108b33dfcae40dd.jpg/750" /> 
			</td>
		</tr>
	</tbody>
</table>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A4800031E318 AS DateTime), CAST(0x0000A4800032163C AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (98, 7, 50, N'', N'奔腾（BNTN） 380功放+纽约至尊 套装家庭影院', N'', N'/upload/201504/20/thumb_201504200314272543.jpg', N'奔腾（BNTN） 380功放+纽约至尊 套装家庭影院（黑色）', N'奔腾,380功放,套装家庭影院,黑色', N'奔腾（BNTN） 380功放+纽约至尊 套装家庭影院送美诗特TA20无线话筒1套+自拍神器杆！ DTS解码数字功放 HDMI、光纤、同轴多组输入输出 USB、蓝牙播放功能', N'', N'奔腾（BNTN） 380功放+纽约至尊 套装家庭影院送美诗特TA20无线话筒1套+自拍神器杆！ DTS解码数字功放 HDMI、光纤、同轴多组输入输出 USB、蓝牙播放功能', N'<table style="width:750px;" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<a href="http://product.suning.com/105795090.html" target="_blank"><img width="247" height="260" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144524.jpg" border="0" /></a>
			</td>
			<td>
				<a href="http://product.suning.com/120345060.html" target="_blank"><img width="244" height="260" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144532.jpg" border="0" /></a>
			</td>
			<td>
				<a href="http://product.suning.com/104008402.html" target="_blank"><img width="259" height="260" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144541.jpg" border="0" /></a>
			</td>
		</tr>
		<tr>
			<td>
				<a href="http://product.suning.com/104823628.html" target="_blank"><img width="247" height="151" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144551.jpg" border="0" /></a>
			</td>
			<td>
				<a href="http://product.suning.com/105795089.html" target="_blank"><img width="244" height="151" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144601.jpg" border="0" /></a>
			</td>
			<td>
				<a href="http://product.suning.com/107105903.html" target="_blank"><img width="259" height="151" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144610.jpg" border="0" /></a>
			</td>
		</tr>
	</tbody>
</table>
<table style="width:750px;" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="219" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155335.jpg" /><br />
<img width="750" height="666" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155342.jpg" /><br />
<img width="750" height="690" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155348.jpg" /><br />
<img width="750" height="633" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155355.jpg" /><br />
<img width="750" height="630" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155401.jpg" />
			</td>
		</tr>
	</tbody>
</table>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A48000357BE6 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (99, 7, 51, N'', N'飞利浦（PHILIPS）DVP3690 全高清DVD影碟机播放器', N'', N'/upload/201504/20/thumb_201504200318534459.jpg', N'飞利浦（PHILIPS）DVP3690 全高清DVD影碟机播放器', N'飞利浦,PHILIPS,DVP3690,全高清DVD,影碟机,播放器', N'锐利清晰的影像，逼真的画质带给您极佳的影音娱乐体验', N'', N'2D电影系列在家中体验3D电影带来的刺激感，采用最新数字技术来分析2D视频内容，利用智能转码芯片点对点转换，从而将前台和后台之间的对象加以区分。这一细节可生成深度图，将普通2D视频格式转换为激动人心的3D。再配合兼容3D的电视，让您观看效果更好不晃眼，即可享受高清3D体…', N'<p>
	<img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_01.jpg" />
</p>
<p style="text-align:center;">
	<span style="font-family:Microsoft YaHei;font-size:18px;">锐利清晰的影像，逼真的画质带给您极佳的影音娱乐体验</span>
</p>
<p>
	<img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_02.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_03.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_04.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_05.jpg" />
</p>
<p>
	<div style="text-align:left;">
		<span style="color:#333300;font-family:&quot;Microsoft YaHei&quot;;font-size:24px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;超清画质呈现，还原真实的视觉盛宴</span>
	</div>
<br />
	<p>
		<br />
	</p>
	<p>
		<img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_06.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_07.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_08.jpg" />
	</p>
	<p style="text-align:center;">
		<span style="color:#996633;font-family:Microsoft YaHei;font-size:24px;"><strong>液晶电视最佳伴侣送给最爱的人给他最真的感动</strong></span>
	</p>
	<p>
		<img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_09.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_10.jpg" />
	</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A4800036E070 AS DateTime), CAST(0x0000A480003799DD AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (100, 7, 51, N'', N'霍尼韦尔（Honeywel）HM-F1020-A-B HDMI高清数据线', N'', N'/upload/201504/20/thumb_201504200327369421.jpg', N'霍尼韦尔（Honeywel）HM-F1020-A-B HDMI高清数据线', N'霍尼韦尔,HDMI高清数据线', N'专利扁线设计！附送90°背夹！25K镀金端子！抗氧化！完美传输高品质画面！霍尼韦尔出品，国际品质！', N'', N'霍尼韦尔（Honeywel）HM-F1020-A-B HDMI高清数据线（镀金接口 扁平设计 支持4K*2K ）2米 黑色专利扁线设计！附送90背夹！25K镀金端子！抗氧化！完美传输高品质画面！霍尼韦尔出品，国际品质！', N'<table width="750" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_20.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_21.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_22.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_23.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_24.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_25.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_26.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_27.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_28.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_29.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_30.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_31.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_32.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_33.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_34.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_35.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_36.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_37.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_38.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_39.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_40.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_41.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_42.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_43.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_44.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_45.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_46.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_47.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_48.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_49.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_50.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_51.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_52.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_53.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_54.jpg" />
			</td>
		</tr>
		<tr>
			<td>
			</td>
		</tr>
	</tbody>
</table>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A480003908D9 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (101, 7, 51, N'', N'Shinco/新科 S2300 无线麦克风 无线手持话筒 双手麦 KTV 舞台', N'', N'/upload/201504/20/thumb_201504200333240710.jpg', N'Shinco/新科 S2300 无线麦克风 无线手持话筒 双手麦 KTV 舞台', N'Shinco,新科,S2300,无线麦克风,无线手持话筒,双手麦', N'', N'', N'Shinco/新科 S2300 无线麦克风 无线手持话筒 双手麦 KTV 舞台有买就有送，买麦克风买一送九（话筒海绵套2个，话筒防滑胶圈2个，电脑转接头1个，5号电池4只），不容错过，数量有限，送完为止！', N'<img class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201410/desc04/A0003850992/2989713.jpg" />', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A480003B0754 AS DateTime), CAST(0x0000A480003CB5FE AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article] OFF
/****** Object:  Table [dbo].[dt_article_tags_relation]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_tags_relation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[tag_id] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_TAGS_RELATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'tag_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TAG标签关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation'
GO
/****** Object:  Table [dbo].[dt_article_tags]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[is_red] [tinyint] NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_TAGS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TAG标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags'
GO
SET IDENTITY_INSERT [dbo].[dt_article_tags] ON
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (5, N'房企利润', 0, 99, CAST(0x0000A47C00C3237E AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (6, N'跌幅', 0, 99, CAST(0x0000A47C00C323A4 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (7, N'买房', 1, 99, CAST(0x0000A47C00C7492C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (8, N'炒股', 1, 99, CAST(0x0000A47C00C74956 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (9, N'猎豹CS10', 1, 99, CAST(0x0000A47C00CAF3F7 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (10, N'哈弗H8', 1, 99, CAST(0x0000A47C00CDF43B AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (11, N'哈弗H6', 1, 99, CAST(0x0000A47C00CF0823 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (12, N'比亚迪S7', 1, 99, CAST(0x0000A47C00CF084D AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (13, N'长安CS75', 1, 99, CAST(0x0000A47C00CF0877 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (14, N'三星S6', 1, 99, CAST(0x0000A47C00D27D26 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (15, N'乐视手机', 1, 99, CAST(0x0000A47C00D4BFCB AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (16, N'淘宝', 1, 99, CAST(0x0000A47D00A93253 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (17, N'海外购房', 1, 99, CAST(0x0000A47D00AA707A AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (18, N'京东', 1, 99, CAST(0x0000A47D00B74A58 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (19, N'海外代购', 1, 99, CAST(0x0000A47D00B74A82 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (20, N'卧室', 1, 99, CAST(0x0000A47E00CE3A3A AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (21, N'书柜', 1, 99, CAST(0x0000A47E00D000D7 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (22, N'UI套件', 1, 99, CAST(0x0000A47E017E2511 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (23, N'jQuery插件', 1, 99, CAST(0x0000A47E0187F36C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (24, N'PSD素材', 1, 99, CAST(0x0000A47F0006F56C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (25, N'美剧', 1, 99, CAST(0x0000A47F00E30E21 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (26, N'大陆剧', 1, 99, CAST(0x0000A47F00EC134F AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_tags] OFF
/****** Object:  Table [dbo].[dt_article_spec]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_spec](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_SPEC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_spec'
GO
SET IDENTITY_INSERT [dbo].[dt_article_spec] ON
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (8, 0, N'颜色', NULL, N'全部颜色规格', 99)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (9, 8, N'白色', N'/upload/201503/25/201503251553231051.jpg', NULL, 99)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (10, 8, N'红色', N'/upload/201503/25/201503251553387052.jpg', NULL, 101)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (11, 8, N'绿色', N'/upload/201503/25/201503251553466924.jpg', NULL, 101)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (12, 8, N'黄色', N'/upload/201503/25/201503251553550852.jpg', NULL, 102)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (13, 8, N'黑色', N'/upload/201503/25/201503251554034624.jpg', NULL, 103)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (14, 8, N'蓝色', N'/upload/201503/25/201503251554117928.jpg', NULL, 104)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (15, 0, N'版本', NULL, N'', 100)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (16, 15, N'移动4G', N'', NULL, 99)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (17, 15, N'联通4G', N'', NULL, 100)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (18, 15, N'电信4G', N'', NULL, 101)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (19, 15, N'双网通', N'', NULL, 102)
INSERT [dbo].[dt_article_spec] ([id], [parent_id], [title], [img_url], [remark], [sort_id]) VALUES (22, 15, N'全网通', N'', NULL, 103)
SET IDENTITY_INSERT [dbo].[dt_article_spec] OFF
/****** Object:  Table [dbo].[dt_article_goods_spec]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_goods_spec](
	[article_id] [int] NULL,
	[spec_id] [int] NULL,
	[parent_id] [int] NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'spec_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品对应规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods_spec'
GO
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (87, 8, 0, N'颜色', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (87, 9, 8, N'白色', N'/upload/201503/25/201503251553231051.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (87, 13, 8, N'黑色', N'/upload/201503/25/201503251554034624.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (87, 15, 0, N'版本', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (87, 16, 15, N'移动4G', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (87, 17, 15, N'联通4G', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (87, 19, 15, N'双网通', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (88, 8, 0, N'颜色', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (88, 9, 8, N'白色', N'/upload/201503/25/201503251553231051.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (88, 13, 8, N'黑色', N'/upload/201503/25/201503251554034624.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (88, 15, 0, N'版本', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (88, 22, 15, N'全网通', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (89, 8, 0, N'颜色', N'')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (89, 9, 8, N'白色', N'/upload/201503/25/201503251553231051.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (89, 13, 8, N'黑色', N'/upload/201503/25/201503251554034624.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (89, 15, 0, N'版本', N'')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (89, 16, 15, N'移动4G', N'')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (89, 17, 15, N'联通4G', N'')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (89, 19, 15, N'双网通', N'')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (90, 8, 0, N'颜色', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (90, 13, 8, N'黑色', N'/upload/201503/25/201503251554034624.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (91, 8, 0, N'颜色', N'')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (91, 13, 8, N'黑色', N'/upload/201503/25/201503251554034624.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (92, 8, 0, N'颜色', N'')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (92, 13, 8, N'黑色', N'/upload/201503/25/201503251554034624.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (93, 8, 0, N'颜色', NULL)
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (93, 9, 8, N'白色', N'/upload/201503/25/201503251553231051.jpg')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (94, 8, 0, N'颜色', N'')
INSERT [dbo].[dt_article_goods_spec] ([article_id], [spec_id], [parent_id], [title], [img_url]) VALUES (94, 9, 8, N'白色', N'/upload/201503/25/201503251553231051.jpg')
/****** Object:  Table [dbo].[dt_article_goods]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[goods_no] [nvarchar](50) NULL,
	[spec_ids] [nvarchar](500) NULL,
	[spec_text] [ntext] NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_ARTICLE_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格ID以逗号分隔开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'spec_ids'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'spec_text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'stock_quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'market_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods', @level2type=N'COLUMN',@level2name=N'sell_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品扩展' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_goods'
GO
SET IDENTITY_INSERT [dbo].[dt_article_goods] ON
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (67, 87, N'SD9102356032-1', N',9,16,', N'颜色：白色；版本：移动4G', 10, CAST(2499.00 AS Decimal(9, 2)), CAST(2195.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (68, 87, N'SD9102356032-2', N',9,17,', N'颜色：白色；版本：联通4G', 10, CAST(2499.00 AS Decimal(9, 2)), CAST(2195.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (69, 87, N'SD9102356032-3', N',9,19,', N'颜色：白色；版本：双网通', 10, CAST(2899.00 AS Decimal(9, 2)), CAST(2499.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (70, 87, N'SD9102356032-4', N',13,16,', N'颜色：黑色；版本：移动4G', 10, CAST(2499.00 AS Decimal(9, 2)), CAST(2499.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (71, 87, N'SD9102356032-5', N',13,17,', N'颜色：黑色；版本：联通4G', 10, CAST(2499.00 AS Decimal(9, 2)), CAST(2200.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (72, 87, N'SD9102356032-6', N',13,19,', N'颜色：黑色；版本：双网通', 10, CAST(2499.00 AS Decimal(9, 2)), CAST(2200.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (73, 88, N'SD7159810321-1', N',9,22,', N'颜色：白色；版本：全网通', 100, CAST(6388.00 AS Decimal(9, 2)), CAST(5780.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (74, 88, N'SD7159810321-2', N',13,22,', N'颜色：黑色；版本：全网通', 100, CAST(6388.00 AS Decimal(9, 2)), CAST(5780.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (75, 89, N'SD2932214404-1', N',9,16,', N'颜色：白色；版本：移动4G', 10, CAST(2699.00 AS Decimal(9, 2)), CAST(2299.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (76, 89, N'SD2932214404-2', N',9,17,', N'颜色：白色；版本：联通4G', 10, CAST(2699.00 AS Decimal(9, 2)), CAST(2299.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (77, 89, N'SD2932214404-3', N',9,19,', N'颜色：白色；版本：双网通', 10, CAST(2899.00 AS Decimal(9, 2)), CAST(2499.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (78, 89, N'SD2932214404-4', N',13,16,', N'颜色：黑色；版本：移动4G', 10, CAST(2699.00 AS Decimal(9, 2)), CAST(2299.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (79, 89, N'SD2932214404-5', N',13,17,', N'颜色：黑色；版本：联通4G', 10, CAST(2699.00 AS Decimal(9, 2)), CAST(2299.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (80, 89, N'SD2932214404-6', N',13,19,', N'颜色：黑色；版本：双网通', 10, CAST(2899.00 AS Decimal(9, 2)), CAST(2499.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (82, 90, N'SD8861076806-1', N',13,', N'颜色：黑色', 100, CAST(5099.00 AS Decimal(9, 2)), CAST(4799.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (83, 91, N'SD1260286073-1', N',13,', N'颜色：黑色', 10, CAST(3150.00 AS Decimal(9, 2)), CAST(3180.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (84, 92, N'SD6808149048-1', N',13,', N'颜色：黑色', 100, CAST(4599.00 AS Decimal(9, 2)), CAST(2999.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (86, 94, N'SD3720019286-1', N',9,', N'颜色：白色', 100, CAST(99.00 AS Decimal(9, 2)), CAST(79.00 AS Decimal(9, 2)))
INSERT [dbo].[dt_article_goods] ([id], [article_id], [goods_no], [spec_ids], [spec_text], [stock_quantity], [market_price], [sell_price]) VALUES (87, 93, N'SD9683710842-1', N',9,', N'颜色：白色', 10, CAST(7988.00 AS Decimal(9, 2)), CAST(7200.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[dt_article_goods] OFF
/****** Object:  Table [dbo].[dt_article_comment]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_ip] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[is_lock] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[is_reply] [tinyint] NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_COMMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父评论ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已答复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_time'
GO
SET IDENTITY_INSERT [dbo].[dt_article_comment] ON
INSERT [dbo].[dt_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (14, 7, 101, 0, 0, N'匿名用户', N'127.0.0.1', N'我来评论一下啦！', 0, CAST(0x0000A48000448767 AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[dt_article_comment] OFF
/****** Object:  Table [dbo].[dt_article_category]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_ARTICLE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
SET IDENTITY_INSERT [dbo].[dt_article_category] ON
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (25, 11, N'公司介绍', N'', 0, N',25,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (40, 7, N'手机数码', N'', 0, N',40,', 1, 99, N'', N'', N'', N'手机数码', N'单反相机,苹果手机,小米手机,三星手机,手机配件,手机电池,充电器,内存卡,蓝牙耳机,贴膜', N'苹果手机，小米手机，三星手机，手机配件，手机电池，充电器，内存卡，蓝牙耳机，贴膜提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (41, 7, N'电脑办公', N'', 0, N',41,', 1, 100, N'', N'', N'', N'电脑办公', N'笔记本,台式机,电脑配件,苹果配件,网络设备,办公设备,办公打印,办公文仪', N'电脑产品，电脑整机，笔记本，台式机，电脑配件，苹果配件，网络设备，办公设备，办公打印，办公文仪提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (42, 7, N'影音娱乐', N'', 0, N',42,', 1, 101, N'', N'', N'', N'影音娱乐', N'空调,音响,DVD,影音配件,电视配件', N'电视音响，DVD，影音配件提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (43, 7, N'手机通讯', N'', 40, N',40,43,', 2, 99, N'', N'', N'', N'手机通讯', N'苹果手机,小米手机,三星手机,手机配件,手机电池,充电器,内存卡,蓝牙耳机,贴膜', N'苹果手机，小米手机，三星手机，手机配件，手机电池，充电器，内存卡，蓝牙耳机，贴膜提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (44, 7, N'摄影摄像', N'', 40, N',40,44,', 2, 100, N'', N'', N'', N'摄影摄像', N'单反相机,苹果手机,小米手机,三星手机,手机配件,手机电池,充电器,内存卡,蓝牙耳机,贴膜', N'苹果手机，小米手机，三星手机，手机配件，手机电池，充电器，内存卡，蓝牙耳机，贴膜提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (45, 7, N'存储设备', N'', 40, N',40,45,', 2, 101, N'', N'', N'', N'存储设备', N'单反相机,苹果手机,小米手机,三星手机,手机配件,手机电池,充电器,内存卡,蓝牙耳机,贴膜', N'苹果手机，小米手机，三星手机，手机配件，手机电池，充电器，内存卡，蓝牙耳机，贴膜提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (46, 7, N'电脑整机', N'', 41, N',41,46,', 2, 99, N'', N'', N'', N'电脑整机', N'笔记本,台式机,电脑配件,苹果配件,网络设备,办公设备,办公打印,办公文仪', N'电脑产品，电脑整机，笔记本，台式机，电脑配件，苹果配件，网络设备，办公设备，办公打印，办公文仪提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (47, 7, N'外设产品', N'', 41, N',41,47,', 2, 100, N'', N'', N'', N'外设产品', N'笔记本,台式机,电脑配件,苹果配件,网络设备,办公设备,办公打印,办公文仪', N'电脑产品，电脑整机，笔记本，台式机，电脑配件，苹果配件，网络设备，办公设备，办公打印，办公文仪提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (48, 7, N'办公打印', N'', 41, N',41,48,', 2, 101, N'', N'', N'', N'办公打印', N'笔记本,台式机,电脑配件,苹果配件,网络设备,办公设备,办公打印,办公文仪', N'电脑产品，电脑整机，笔记本，台式机，电脑配件，苹果配件，网络设备，办公设备，办公打印，办公文仪提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (49, 7, N'平板电视', N'', 42, N',42,49,', 2, 99, N'', N'', N'', N'平板电视', N'空调,音响,DVD,影音配件,电视配件', N'电视音响，DVD，影音配件提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (50, 7, N'音响DVD', N'', 42, N',42,50,', 2, 100, N'', N'', N'', N'音响DVD', N'空调,音响,DVD,影音配件,电视配件', N'电视音响，DVD，影音配件提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (51, 7, N'影音配件', N'', 42, N',42,51,', 2, 101, N'', N'', N'', N'影音配件', N'空调,音响,DVD,影音配件,电视配件', N'电视音响，DVD，影音配件提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。')
SET IDENTITY_INSERT [dbo].[dt_article_category] OFF
/****** Object:  Table [dbo].[dt_weixin_response_content]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_response_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[openid] [nvarchar](100) NULL,
	[request_type] [nvarchar](50) NULL,
	[request_content] [nvarchar](2000) NULL,
	[response_type] [nvarchar](50) NULL,
	[reponse_content] [nvarchar](2000) NULL,
	[create_time] [nvarchar](50) NULL,
	[xml_content] [nvarchar](2000) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_RESPONSE_CONTENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众账户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户微信ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link 事件:event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'request_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'request_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复的类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'response_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统回复的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'reponse_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'xml原始内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'xml_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入系统的时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众平台回复信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_response_content'
GO
/****** Object:  Table [dbo].[dt_weixin_request_rule]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_request_rule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[name] [nvarchar](200) NULL,
	[keywords] [nvarchar](2000) NULL,
	[request_type] [int] NULL,
	[response_type] [int] NULL,
	[is_like_query] [tinyint] NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_REQUEST_RULE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众账户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求关键词,逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求类型(0默认回复1文字2图片3语音4链接5地理位置6关注7取消关注8扫描带参数二维码事件9上报地理位置事件10自定义菜单事件）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'request_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复类型(1文本2图文3语音4视频5第三方接口)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'response_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否模糊查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'is_like_query'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求回复规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_rule'
GO
/****** Object:  Table [dbo].[dt_weixin_request_content]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_request_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[rule_id] [int] NULL,
	[title] [nvarchar](500) NULL,
	[content] [ntext] NULL,
	[link_url] [nvarchar](500) NULL,
	[img_url] [nvarchar](500) NULL,
	[media_url] [nvarchar](500) NULL,
	[meida_hd_url] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_REQUEST_CONTENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众账户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'rule_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语音或视频地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'media_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高清语音或者视频地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'meida_hd_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_request_content'
GO
/****** Object:  Table [dbo].[dt_weixin_account]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[originalid] [nvarchar](50) NULL,
	[wxcode] [nvarchar](50) NULL,
	[token] [nvarchar](300) NULL,
	[appid] [nvarchar](100) NULL,
	[appsecret] [nvarchar](150) NULL,
	[is_push] [tinyint] NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众号原始ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'originalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'wxcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'令牌必须与微信平台对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'appid(仅用于高级接口)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'appid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'appsecret(仅用于高级接口)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'appsecret'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否支持网站内容推送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'is_push'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信公众平台账户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_account'
GO
/****** Object:  Table [dbo].[dt_weixin_access_token]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_weixin_access_token](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[access_token] [nvarchar](1000) NULL,
	[expires_in] [int] NULL,
	[count] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_WEIXIN_ACCESS_TOKEN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众账户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'account_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期(秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'expires_in'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众平台access_token存储' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_weixin_access_token'
GO
/****** Object:  Table [dbo].[dt_users]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NULL,
	[user_name] [nvarchar](100) NOT NULL,
	[salt] [nvarchar](20) NULL,
	[password] [nvarchar](100) NOT NULL,
	[mobile] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[avatar] [nvarchar](255) NULL,
	[nick_name] [nvarchar](100) NULL,
	[sex] [nvarchar](20) NULL,
	[birthday] [datetime] NULL,
	[telphone] [nvarchar](50) NULL,
	[area] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[qq] [nvarchar](20) NULL,
	[msn] [nvarchar](100) NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[exp] [int] NULL,
	[status] [tinyint] NULL,
	[reg_time] [datetime] NULL,
	[reg_ip] [nvarchar](20) NULL,
 CONSTRAINT [PK_DT_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'nick_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属地区逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MSN号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'msn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户余额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户状态,0正常,1待验证,2待审核,3锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员主表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users'
GO
/****** Object:  Table [dbo].[dt_user_recharge]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_recharge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[recharge_no] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_RECHARGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'recharge_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未完成1已完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户充值表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge'
GO
/****** Object:  Table [dbo].[dt_user_point_log]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_point_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[value] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_POINT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员积分日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log'
GO
/****** Object:  Table [dbo].[dt_user_oauth_app]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[app_id] [nvarchar](100) NULL,
	[app_key] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_mobile] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_USER_OAUTH_APP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支持移动设备0通用1电脑2移动' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'is_mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app'
GO
SET IDENTITY_INSERT [dbo].[dt_user_oauth_app] ON
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (1, N'用QQ帐号登录', N'/images/oauth/qq.png', N'API Key', N'Secret Key', N'QQ互联开放平台', 99, 0, 0, N'qq')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (2, N'用新浪微博登录', N'/images/oauth/weibo.png', N'API Key', N'Secret Key', N'新浪微博开放平台', 100, 0, 0, N'sina')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (3, N'用淘宝账号登录', N'/images/oauth/taobao.png', N'API Key', N'Secret Key', N'淘宝开放平台', 101, 0, 0, N'taobao')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (4, N'用开心网帐号登录', N'/images/oauth/kaixin.png', N'API Key', N'Secret Key', N'开心网开放平台', 102, 0, 0, N'kaixin')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (5, N'用人人网帐号登录', N'/images/oauth/renren.png', N'API Key', N'Secret Key', N'人人网开放平台', 103, 0, 0, N'renren')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (6, N'用飞信账号登录', N'/images/oauth/feixin.png', N'API Key', N'Secret Key', N'中国移动飞信开放平台', 104, 0, 0, N'feixin')
SET IDENTITY_INSERT [dbo].[dt_user_oauth_app] OFF
/****** Object:  Table [dbo].[dt_user_oauth]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[oauth_name] [nvarchar](50) NOT NULL,
	[oauth_access_token] [nvarchar](500) NULL,
	[oauth_openid] [nvarchar](255) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开放平台名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth授权用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth'
GO
/****** Object:  Table [dbo].[dt_user_message]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[post_user_name] [nvarchar](100) NULL,
	[accept_user_name] [nvarchar](100) NULL,
	[is_read] [tinyint] NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[post_time] [datetime] NOT NULL,
	[read_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息类型0系统消息1收件箱2发件箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'accept_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否查看0未阅1已阅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'is_read'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'read_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员短消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message'
GO
/****** Object:  Table [dbo].[dt_user_login_log]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_login_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[login_time] [datetime] NULL,
	[login_ip] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_USER_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员登录日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log'
GO
/****** Object:  Table [dbo].[dt_user_groups]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[grade] [int] NULL,
	[upgrade_exp] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[discount] [int] NULL,
	[is_default] [tinyint] NULL,
	[is_upgrade] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_USER_GROUPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'upgrade_exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否注册用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动升级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_upgrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups'
GO
SET IDENTITY_INSERT [dbo].[dt_user_groups] ON
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (1, N'注册会员', 0, 0, CAST(0.00 AS Decimal(9, 2)), 0, 100, 1, 0, 0)
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (2, N'VIP会员', 16, 3, CAST(0.00 AS Decimal(9, 2)), 365, 99, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[dt_user_groups] OFF
/****** Object:  Table [dbo].[dt_user_group_price]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_group_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[goods_id] [int] NULL,
	[group_id] [int] NULL,
	[price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_USER_GROUP_PRICE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price'
GO
/****** Object:  Table [dbo].[dt_user_code]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](20) NULL,
	[str_code] [nvarchar](255) NULL,
	[count] [int] NULL,
	[status] [tinyint] NULL,
	[user_ip] [nvarchar](20) NULL,
	[eff_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_DT_USER_CODE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成码类别 password取回密码,register邀请注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成的字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'str_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未使用1已使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'eff_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户随机码表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code'
GO
/****** Object:  Table [dbo].[dt_user_attach_log]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_attach_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[attach_id] [int] NULL,
	[file_name] [nvarchar](255) NULL,
	[add_time] [datetime] NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'attach_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户下载记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log'
GO
/****** Object:  Table [dbo].[dt_user_amount_log]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_amount_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[value] [decimal](9, 2) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_AMOUNT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员金额日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log'
GO
/****** Object:  Table [dbo].[dt_user_addr_book]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_addr_book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[accept_name] [nvarchar](100) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[mobile] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[is_default] [tinyint] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_ADDR_BOOK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省市区逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址簿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book'
GO
/****** Object:  Table [dbo].[dt_sms_template]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_sms_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_SMS_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机短信模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template'
GO
SET IDENTITY_INSERT [dbo].[dt_sms_template] ON
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (1, N'会员验证码短信', N'usercode', N'您的验证码为：{code}，{valid}分钟内有效。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (2, N'欢迎新用户短信', N'welcomemsg', N'欢迎成为{webname}会员，你的用户名为：{username}，注意保管好您的账户信息。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (3, N'订单确认通知', N'order_confirm', N'尊敬的{username}，您在{webname}的订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (4, N'订单发货通知', N'order_express', N'尊敬的{username}，您在{webname}的订单已发货，订单号为：{orderno}，请注意查收。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (5, N'订单完成通知', N'order_complete', N'尊敬的{username}，您在{webname}的一笔订单交易完成，订单号为：{orderno}，期待下次光临，祝您购物愉快。', 1)
SET IDENTITY_INSERT [dbo].[dt_sms_template] OFF
/****** Object:  Table [dbo].[dt_payment]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[type] [tinyint] NULL,
	[poundage_type] [tinyint] NULL,
	[poundage_amount] [decimal](9, 2) NULL,
	[sort_id] [int] NULL,
	[is_mobile] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](100) NULL,
 CONSTRAINT [PK_DT_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型1线上2线下' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费类型1百分比2固定金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支持移动设备0通用1电脑2移动' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'is_mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment'
GO
SET IDENTITY_INSERT [dbo].[dt_payment] ON
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (1, N'货到付款', N'', N'收到商品后进行支付，支持现金和刷卡服务。', 2, 2, CAST(0.00 AS Decimal(9, 2)), 99, 0, 0, N'')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (2, N'账户余额', N'', N'账户余额是客户在您网站上的账户虚拟资金', 1, 2, CAST(0.00 AS Decimal(9, 2)), 100, 0, 0, N'balance')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (3, N'支付宝', N'', N'付款后立即到账，无预付/年费，单笔费率阶梯最低0.7%，无流量限制。<a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C433530444855584111X&market_type=from_agent_contract&pro_codes=61F99645EC0DC4380ADE569DD132AD7A" target="_blank">立即申请</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 101, 1, 0, N'alipaypc')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (4, N'财付通', N'', N'费率最低至<span style="color:#FF0000;font-weight: bold;">0.61%</span>，并赠送价值千元企业QQ。<a href="http://union.tenpay.com/mch/mch_register.shtml?sp_suggestuser=1202822001" target="_blank">中小商家签约入口</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 102, 1, 0, N'tenpaypc')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_mobile], [is_lock], [api_path]) VALUES (5, N'网银在线', N'', N'国内领先的电子支付解决方案提供商，专注于为各行业提供安全、便捷的综合电子支付服务。', 1, 2, CAST(0.00 AS Decimal(9, 2)), 103, 1, 0, N'chinabankpc')
SET IDENTITY_INSERT [dbo].[dt_payment] OFF
/****** Object:  Table [dbo].[dt_orders]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[payment_fee] [decimal](9, 2) NULL,
	[payment_status] [tinyint] NULL,
	[payment_time] [datetime] NULL,
	[express_id] [int] NULL,
	[express_no] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[express_status] [tinyint] NULL,
	[express_time] [datetime] NULL,
	[accept_name] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[mobile] [nvarchar](20) NULL,
	[email] [nvarchar](30) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[message] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[is_invoice] [tinyint] NULL,
	[invoice_title] [varchar](100) NULL,
	[invoice_taxes] [decimal](9, 2) NULL,
	[payable_amount] [decimal](9, 2) NULL,
	[real_amount] [decimal](9, 2) NULL,
	[order_amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[confirm_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ORDERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号担保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付手续费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付状态1未支付2已支付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态1未发货2已发货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属省市区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否索要发票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'is_invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票抬头' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'invoice_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'invoice_taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payable_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'real_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态1生成订单,2确认订单,3完成订单,4取消订单,5作废订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'confirm_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders'
GO
/****** Object:  Table [dbo].[dt_order_goods]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_order_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[order_id] [int] NULL,
	[goods_id] [int] NULL,
	[goods_no] [nvarchar](50) NULL,
	[goods_title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[spec_text] [text] NULL,
	[goods_price] [decimal](9, 2) NULL,
	[real_price] [decimal](9, 2) NULL,
	[quantity] [int] NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ORDER_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'spec_text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'real_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods'
GO
/****** Object:  Table [dbo].[dt_article_attribute_value]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_value](
	[article_id] [int] NOT NULL,
	[sub_title] [nvarchar](255) NULL,
	[source] [nvarchar](100) NULL,
	[author] [nvarchar](50) NULL,
	[goods_no] [nvarchar](100) NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[video_src] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_VALUE] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value'
GO
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (54, NULL, NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (55, NULL, NULL, NULL, NULL, 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (87, N'双800万摄像头，八核，安卓智能手机）荣耀6plus', NULL, NULL, N'SD9102356032', 60, CAST(2499.00 AS Decimal(9, 2)), CAST(2195.00 AS Decimal(9, 2)), 100, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (88, N'支持联通移动电信三网4G，5.5英寸，1920x1080分辨率，800万像素摄像头，Touch ID指纹识别传感器', NULL, NULL, N'SD7159810321', 200, CAST(6388.00 AS Decimal(9, 2)), CAST(5780.00 AS Decimal(9, 2)), 200, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (89, N'小米note手机(天然竹特别版 双网通/16GB内存 标配)', NULL, NULL, N'SD2932214404', 60, CAST(2699.00 AS Decimal(9, 2)), CAST(2299.00 AS Decimal(9, 2)), 200, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (90, N'行业标杆!DIGIC 5数字影像处理器 全9点十字型自动对焦 2013入门旗舰 全新力作!', NULL, NULL, N'SD8861076806', 100, CAST(5099.00 AS Decimal(9, 2)), CAST(4799.00 AS Decimal(9, 2)), 400, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (91, N'3寸液晶屏 支持短片拍摄 双重清洁系统 11点自动对焦', NULL, NULL, N'SD1260286073', 10, CAST(3150.00 AS Decimal(9, 2)), CAST(3180.00 AS Decimal(9, 2)), 200, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (92, N'万箭穿心Ω斯巴达克斯级战备性能∑炼狱级2G显卡性能本，全面预装windows8系统！', NULL, NULL, N'SD6808149048', 100, CAST(4599.00 AS Decimal(9, 2)), CAST(2999.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (93, N'赏心悦目de感官享受 艺术品般de细致雕琢 效能与设计de完美结合', NULL, NULL, N'SD9683710842', 10, CAST(7988.00 AS Decimal(9, 2)), CAST(7200.00 AS Decimal(9, 2)), 100, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (94, N'足够自信，欢迎比价后购买！', NULL, NULL, N'SD3720019286', 100, CAST(99.00 AS Decimal(9, 2)), CAST(79.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (95, N'节约办公成本！智慧科技！', NULL, NULL, N'SD6808159034', 100, CAST(2099.00 AS Decimal(9, 2)), CAST(1899.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (96, N'', NULL, NULL, N'', 100, CAST(2099.00 AS Decimal(9, 2)), CAST(1999.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (97, N'4K网络智能！欢迎比价后购买', NULL, NULL, N'SD345234674', 100, CAST(3599.00 AS Decimal(9, 2)), CAST(3299.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (98, N'送美诗特TA20无线话筒1套+自拍神器杆！ DTS解码数字功放 HDMI、光纤、同轴多组输入输出 USB、蓝牙播放功能', NULL, NULL, N'SD6583245641', 10, CAST(5880.00 AS Decimal(9, 2)), CAST(4880.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (99, N'锐利清晰的影像，逼真的画质带给您极佳的影音娱乐体验', NULL, NULL, N'SD3092308422', 100, CAST(499.00 AS Decimal(9, 2)), CAST(399.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (100, N'专利扁线设计！附送90°背夹！25K镀金端子！抗氧化！完美传输高品质画面！霍尼韦尔出品，国际品质！', NULL, NULL, N'SD5674897403', 50, CAST(59.00 AS Decimal(9, 2)), CAST(49.00 AS Decimal(9, 2)), 0, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [video_src]) VALUES (101, N'有买就有送，买麦克风买一送九（话筒海绵套2个，话筒防滑胶圈2个，电脑转接头1个，5号电池4只），不容错过，数量有限，送完为止！', NULL, NULL, N'SD3973042344', 20, CAST(269.00 AS Decimal(9, 2)), CAST(199.00 AS Decimal(9, 2)), 0, NULL)
/****** Object:  Table [dbo].[dt_manager]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[role_type] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[salt] [nvarchar](20) NULL,
	[real_name] [nvarchar](50) NULL,
	[telephone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[is_lock] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员类型1超管2系管' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'real_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager'
GO
SET IDENTITY_INSERT [dbo].[dt_manager] ON
INSERT [dbo].[dt_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [real_name], [telephone], [email], [is_lock], [add_time]) VALUES (1, 1, 1, N'admin', N'87FA6AD6CBFDF3108E4DD6F47F5D04A4', N'24V0XZ', N'超级管理员', N'13800138000', N'info@dtcms.net', 0, CAST(0x0000A45A00E1AC53 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_manager] OFF
/****** Object:  Table [dbo].[dt_manager_role_value]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[nav_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE_VALUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'nav_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value'
GO
/****** Object:  Table [dbo].[dt_channel]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[is_albums] [tinyint] NULL,
	[is_attach] [tinyint] NULL,
	[is_spec] [tinyint] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启相册功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_albums'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启附件功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_attach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_spec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统频道表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel'
GO
SET IDENTITY_INSERT [dbo].[dt_channel] ON
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (7, 4, N'goods', N'购物商城', 1, 0, 1, 100)
INSERT [dbo].[dt_channel] ([id], [site_id], [name], [title], [is_albums], [is_attach], [is_spec], [sort_id]) VALUES (11, 4, N'content', N'公司介绍', 0, 0, 0, 104)
SET IDENTITY_INSERT [dbo].[dt_channel] OFF
/****** Object:  View [dbo].[view_channel_goods]    Script Date: 11/07/2016 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_goods] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.goods_no,dt_article_attribute_value.stock_quantity,dt_article_attribute_value.market_price,dt_article_attribute_value.sell_price,dt_article_attribute_value.point FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=7
GO
/****** Object:  View [dbo].[view_channel_content]    Script Date: 11/07/2016 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_content] as SELECT dt_article.* FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=11
GO
/****** Object:  Table [dbo].[dt_channel_field]    Script Date: 11/07/2016 17:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[field_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'field_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field'
GO
SET IDENTITY_INSERT [dbo].[dt_channel_field] ON
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (22, 7, 2)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (23, 7, 5)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (24, 7, 6)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (25, 7, 7)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (26, 7, 8)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (27, 7, 9)
SET IDENTITY_INSERT [dbo].[dt_channel_field] OFF
/****** Object:  Default [DF__dt_articl__chann__44801EAD]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__chann__44801EAD]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__categ__457442E6]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__categ__457442E6]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_articl__call___4668671F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__call___4668671F]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__link___475C8B58]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__link___475C8B58]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__4850AF91]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__img_u__4850AF91]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__4944D3CA]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_t__4944D3CA]  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__4A38F803]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_k__4A38F803]  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__4B2D1C3C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_d__4B2D1C3C]  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__zhaiy__4C214075]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__zhaiy__4C214075]  DEFAULT ('') FOR [zhaiyao]
GO
/****** Object:  Default [DF__dt_articl__sort___4D1564AE]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__sort___4D1564AE]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__click__4E0988E7]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__click__4E0988E7]  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_articl__statu__4EFDAD20]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__statu__4EFDAD20]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_articl__is_ms__4FF1D159]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_ms__4FF1D159]  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_articl__is_to__50E5F592]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_to__50E5F592]  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_articl__is_re__51DA19CB]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_re__51DA19CB]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_articl__is_ho__52CE3E04]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_ho__52CE3E04]  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_articl__is_sl__53C2623D]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_sl__53C2623D]  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_articl__is_sy__54B68676]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_sy__54B68676]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_articl__add_t__55AAAAAF]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__add_t__55AAAAAF]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__artic__5887175A]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__artic__5887175A]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__thumb__597B3B93]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__thumb__597B3B93]  DEFAULT ('') FOR [thumb_path]
GO
/****** Object:  Default [DF__dt_articl__origi__5A6F5FCC]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__origi__5A6F5FCC]  DEFAULT ('') FOR [original_path]
GO
/****** Object:  Default [DF__dt_articl__remar__5B638405]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__remar__5B638405]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_articl__add_t__5C57A83E]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__add_t__5C57A83E]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__artic__5F3414E9]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__artic__5F3414E9]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__file___60283922]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___60283922]  DEFAULT ('') FOR [file_name]
GO
/****** Object:  Default [DF__dt_articl__file___611C5D5B]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___611C5D5B]  DEFAULT ('') FOR [file_path]
GO
/****** Object:  Default [DF__dt_articl__file___62108194]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___62108194]  DEFAULT ((0)) FOR [file_size]
GO
/****** Object:  Default [DF__dt_articl__file___6304A5CD]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___6304A5CD]  DEFAULT ('') FOR [file_ext]
GO
/****** Object:  Default [DF__dt_articl__down___63F8CA06]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__down___63F8CA06]  DEFAULT ((0)) FOR [down_num]
GO
/****** Object:  Default [DF__dt_articl__point__64ECEE3F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__point__64ECEE3F]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__add_t__65E11278]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__add_t__65E11278]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__title__68BD7F23]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__title__68BD7F23]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_articl__data___69B1A35C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___69B1A35C]  DEFAULT ((0)) FOR [data_length]
GO
/****** Object:  Default [DF__dt_articl__data___6AA5C795]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___6AA5C795]  DEFAULT ((0)) FOR [data_place]
GO
/****** Object:  Default [DF__dt_articl__item___6B99EBCE]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__item___6B99EBCE]  DEFAULT ('') FOR [item_option]
GO
/****** Object:  Default [DF__dt_articl__defau__6C8E1007]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__defau__6C8E1007]  DEFAULT ('') FOR [default_value]
GO
/****** Object:  Default [DF__dt_articl__is_re__6D823440]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_re__6D823440]  DEFAULT ((0)) FOR [is_required]
GO
/****** Object:  Default [DF__dt_articl__is_pa__6E765879]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_pa__6E765879]  DEFAULT ((0)) FOR [is_password]
GO
/****** Object:  Default [DF__dt_articl__is_ht__6F6A7CB2]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_ht__6F6A7CB2]  DEFAULT ((0)) FOR [is_html]
GO
/****** Object:  Default [DF__dt_articl__edito__705EA0EB]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__edito__705EA0EB]  DEFAULT ((0)) FOR [editor_type]
GO
/****** Object:  Default [DF__dt_articl__valid__7152C524]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__7152C524]  DEFAULT ('') FOR [valid_tip_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__7246E95D]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__7246E95D]  DEFAULT ('') FOR [valid_error_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__733B0D96]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__733B0D96]  DEFAULT ('') FOR [valid_pattern]
GO
/****** Object:  Default [DF__dt_articl__sort___742F31CF]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__sort___742F31CF]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__is_sy__75235608]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_sy__75235608]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF_dt_article_attribute_value_stock_quantity]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF_dt_article_attribute_value_stock_quantity]  DEFAULT ((0)) FOR [stock_quantity]
GO
/****** Object:  Default [DF_dt_article_attribute_value_market_price]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF_dt_article_attribute_value_market_price]  DEFAULT ((0)) FOR [market_price]
GO
/****** Object:  Default [DF_dt_article_attribute_value_sell_price]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF_dt_article_attribute_value_sell_price]  DEFAULT ((0)) FOR [sell_price]
GO
/****** Object:  Default [DF_dt_article_attribute_value_point]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF_dt_article_attribute_value_point]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__call___7FA0E47B]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__call___7FA0E47B]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__paren__009508B4]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__paren__009508B4]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF_dt_article_category_class_layer]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF_dt_article_category_class_layer]  DEFAULT ((0)) FOR [class_layer]
GO
/****** Object:  Default [DF__dt_articl__sort___01892CED]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__sort___01892CED]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__link___027D5126]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__link___027D5126]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__0371755F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__img_u__0371755F]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__04659998]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_t__04659998]  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__0559BDD1]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_k__0559BDD1]  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__064DE20A]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_d__064DE20A]  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__chann__092A4EB5]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__chann__092A4EB5]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__artic__0A1E72EE]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__artic__0A1E72EE]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__paren__0B129727]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__paren__0B129727]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__user___0C06BB60]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___0C06BB60]  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_articl__user___0CFADF99]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___0CFADF99]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_articl__is_lo__0DEF03D2]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_lo__0DEF03D2]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_articl__add_t__0EE3280B]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__add_t__0EE3280B]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__is_re__0FD74C44]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_re__0FD74C44]  DEFAULT ((0)) FOR [is_reply]
GO
/****** Object:  Default [DF__dt_articl__stock__12B3B8EF]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_goods] ADD  CONSTRAINT [DF__dt_articl__stock__12B3B8EF]  DEFAULT ((0)) FOR [stock_quantity]
GO
/****** Object:  Default [DF__dt_articl__paren__168449D3]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_spec] ADD  CONSTRAINT [DF__dt_articl__paren__168449D3]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__sort___17786E0C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_spec] ADD  CONSTRAINT [DF__dt_articl__sort___17786E0C]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__is_re__1A54DAB7]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__is_re__1A54DAB7]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_articl__sort___1B48FEF0]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__sort___1B48FEF0]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__add_t__1C3D2329]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__add_t__1C3D2329]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channel__name__2101D846]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channel__name__2101D846]  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_channe__title__21F5FC7F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__title__21F5FC7F]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_channe__is_al__22EA20B8]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_al__22EA20B8]  DEFAULT ((0)) FOR [is_albums]
GO
/****** Object:  Default [DF__dt_channe__is_at__23DE44F1]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_at__23DE44F1]  DEFAULT ((0)) FOR [is_attach]
GO
/****** Object:  Default [DF__dt_channe__is_sp__24D2692A]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_sp__24D2692A]  DEFAULT ((0)) FOR [is_spec]
GO
/****** Object:  Default [DF__dt_channe__sort___25C68D63]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__sort___25C68D63]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__build__2B7F66B9]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__build__2B7F66B9]  DEFAULT ('') FOR [build_path]
GO
/****** Object:  Default [DF__dt_channe__templ__2C738AF2]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__templ__2C738AF2]  DEFAULT ('') FOR [templet_path]
GO
/****** Object:  Default [DF__dt_channe__domai__2D67AF2B]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__domai__2D67AF2B]  DEFAULT ('') FOR [domain]
GO
/****** Object:  Default [DF__dt_channe__is_mo__2E5BD364]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__is_mo__2E5BD364]  DEFAULT ((0)) FOR [is_mobile]
GO
/****** Object:  Default [DF__dt_channe__is_de__2F4FF79D]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__is_de__2F4FF79D]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_channe__sort___30441BD6]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel_site] ADD  CONSTRAINT [DF__dt_channe__sort___30441BD6]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__expre__33208881]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__expre__33208881]  DEFAULT ('') FOR [express_code]
GO
/****** Object:  Default [DF__dt_expres__expre__3414ACBA]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__expre__3414ACBA]  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_expres__websi__3508D0F3]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__websi__3508D0F3]  DEFAULT ('') FOR [website]
GO
/****** Object:  Default [DF__dt_expres__remar__35FCF52C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__remar__35FCF52C]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_expres__sort___36F11965]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__sort___36F11965]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__is_lo__37E53D9E]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__is_lo__37E53D9E]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_feedba__add_t__644DCFC1]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__add_t__644DCFC1]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_feedba__reply__6541F3FA]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__reply__6541F3FA]  DEFAULT ('') FOR [reply_content]
GO
/****** Object:  Default [DF__dt_feedba__is_lo__66361833]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__is_lo__66361833]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_link__is_imag__5E94F66B]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__is_imag__5E94F66B]  DEFAULT ((0)) FOR [is_image]
GO
/****** Object:  Default [DF__dt_link__sort_id__5F891AA4]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__sort_id__5F891AA4]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_link__is_red__607D3EDD]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__is_red__607D3EDD]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_link__add_tim__61716316]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__add_tim__61716316]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_mail_t__is_sy__3AC1AA49]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_mail_template] ADD  CONSTRAINT [DF__dt_mail_t__is_sy__3AC1AA49]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_manage__role___3D9E16F4]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__role___3D9E16F4]  DEFAULT ((2)) FOR [role_type]
GO
/****** Object:  Default [DF__dt_manage__real___3E923B2D]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__real___3E923B2D]  DEFAULT ('') FOR [real_name]
GO
/****** Object:  Default [DF__dt_manage__telep__3F865F66]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__telep__3F865F66]  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__dt_manage__email__407A839F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__email__407A839F]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_manage__is_lo__416EA7D8]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__is_lo__416EA7D8]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_manage__add_t__4262CC11]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__add_t__4262CC11]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__add_t__453F38BC]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager_log] ADD  CONSTRAINT [DF__dt_manage__add_t__453F38BC]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__is_sy__481BA567]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager_role] ADD  CONSTRAINT [DF__dt_manage__is_sy__481BA567]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_naviga__paren__4CE05A84]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__paren__4CE05A84]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_naviga__chann__4DD47EBD]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__chann__4DD47EBD]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_naviga__nav_t__4EC8A2F6]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__nav_t__4EC8A2F6]  DEFAULT ('') FOR [nav_type]
GO
/****** Object:  Default [DF__dt_navigat__name__4FBCC72F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_navigat__name__4FBCC72F]  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_naviga__title__50B0EB68]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__title__50B0EB68]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_naviga__sub_t__51A50FA1]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sub_t__51A50FA1]  DEFAULT ('') FOR [sub_title]
GO
/****** Object:  Default [DF__dt_naviga__link___529933DA]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__link___529933DA]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_naviga__sort___538D5813]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sort___538D5813]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_naviga__is_lo__54817C4C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_lo__54817C4C]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_naviga__remar__5575A085]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__remar__5575A085]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_naviga__actio__5669C4BE]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__actio__5669C4BE]  DEFAULT ('') FOR [action_type]
GO
/****** Object:  Default [DF__dt_naviga__is_sy__575DE8F7]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_sy__575DE8F7]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_order___goods__5A3A55A2]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___goods__5A3A55A2]  DEFAULT ((0)) FOR [goods_price]
GO
/****** Object:  Default [DF__dt_order___real___5B2E79DB]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___real___5B2E79DB]  DEFAULT ((0)) FOR [real_price]
GO
/****** Object:  Default [DF__dt_order___quant__5C229E14]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___quant__5C229E14]  DEFAULT ((0)) FOR [quantity]
GO
/****** Object:  Default [DF__dt_order___point__5D16C24D]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___point__5D16C24D]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__order__5FF32EF8]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__5FF32EF8]  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__dt_orders__trade__60E75331]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__trade__60E75331]  DEFAULT ('') FOR [trade_no]
GO
/****** Object:  Default [DF__dt_orders__user___61DB776A]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___61DB776A]  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_orders__user___62CF9BA3]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___62CF9BA3]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_orders__payme__63C3BFDC]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__63C3BFDC]  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_orders__payme__64B7E415]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__64B7E415]  DEFAULT ((0)) FOR [payment_fee]
GO
/****** Object:  Default [DF__dt_orders__payme__65AC084E]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__65AC084E]  DEFAULT ((0)) FOR [payment_status]
GO
/****** Object:  Default [DF__dt_orders__expre__66A02C87]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__66A02C87]  DEFAULT ((0)) FOR [express_id]
GO
/****** Object:  Default [DF__dt_orders__expre__679450C0]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__679450C0]  DEFAULT ('') FOR [express_no]
GO
/****** Object:  Default [DF__dt_orders__expre__688874F9]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__688874F9]  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_orders__expre__697C9932]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__697C9932]  DEFAULT ((0)) FOR [express_status]
GO
/****** Object:  Default [DF__dt_orders__accep__6A70BD6B]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__accep__6A70BD6B]  DEFAULT ('') FOR [accept_name]
GO
/****** Object:  Default [DF__dt_orders__post___6B64E1A4]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__post___6B64E1A4]  DEFAULT ('') FOR [post_code]
GO
/****** Object:  Default [DF__dt_orders__telph__6C5905DD]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__telph__6C5905DD]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_orders__mobil__6D4D2A16]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__mobil__6D4D2A16]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF_dt_orders_email]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF_dt_orders_email]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_orders__area__6E414E4F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__area__6E414E4F]  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__dt_orders__addre__6F357288]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__addre__6F357288]  DEFAULT ('') FOR [address]
GO
/****** Object:  Default [DF__dt_orders__messa__702996C1]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__messa__702996C1]  DEFAULT ('') FOR [message]
GO
/****** Object:  Default [DF__dt_orders__remar__711DBAFA]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__remar__711DBAFA]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_orders__is_in__7211DF33]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__is_in__7211DF33]  DEFAULT ((0)) FOR [is_invoice]
GO
/****** Object:  Default [DF__dt_orders__invoi__7306036C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__invoi__7306036C]  DEFAULT ((0)) FOR [invoice_taxes]
GO
/****** Object:  Default [DF__dt_orders__payab__73FA27A5]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payab__73FA27A5]  DEFAULT ((0)) FOR [payable_amount]
GO
/****** Object:  Default [DF__dt_orders__real___74EE4BDE]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__real___74EE4BDE]  DEFAULT ((0)) FOR [real_amount]
GO
/****** Object:  Default [DF__dt_orders__order__75E27017]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__75E27017]  DEFAULT ((0)) FOR [order_amount]
GO
/****** Object:  Default [DF__dt_orders__point__76D69450]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__point__76D69450]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__statu__77CAB889]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__statu__77CAB889]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__dt_orders__add_t__78BEDCC2]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__add_t__78BEDCC2]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_paymen__img_u__7B9B496D]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__img_u__7B9B496D]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_payment__type__7C8F6DA6]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_payment__type__7C8F6DA6]  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_paymen__pound__7D8391DF]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__7D8391DF]  DEFAULT ((1)) FOR [poundage_type]
GO
/****** Object:  Default [DF__dt_paymen__pound__7E77B618]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__7E77B618]  DEFAULT ((0)) FOR [poundage_amount]
GO
/****** Object:  Default [DF__dt_paymen__sort___7F6BDA51]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__sort___7F6BDA51]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_paymen__is_mo__005FFE8A]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__is_mo__005FFE8A]  DEFAULT ((0)) FOR [is_mobile]
GO
/****** Object:  Default [DF__dt_paymen__is_lo__015422C3]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__is_lo__015422C3]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_sms_te__title__04308F6E]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__title__04308F6E]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_sms_te__call___0524B3A7]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__call___0524B3A7]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_sms_te__conte__0618D7E0]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__conte__0618D7E0]  DEFAULT ('') FOR [content]
GO
/****** Object:  Default [DF__dt_sms_te__is_sy__070CFC19]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__is_sy__070CFC19]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_user_a__mobil__09E968C4]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__mobil__09E968C4]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_user_a__telph__0ADD8CFD]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__telph__0ADD8CFD]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_user_a__email__0BD1B136]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__email__0BD1B136]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_user_a__post___0CC5D56F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__post___0CC5D56F]  DEFAULT ('') FOR [post_code]
GO
/****** Object:  Default [DF__dt_user_a__is_de__0DB9F9A8]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__is_de__0DB9F9A8]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_user_a__add_t__0EAE1DE1]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__add_t__0EAE1DE1]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_a__payme__118A8A8C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__payme__118A8A8C]  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_user_a__value__127EAEC5]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__value__127EAEC5]  DEFAULT ((0)) FOR [value]
GO
/****** Object:  Default [DF__dt_user_a__remar__1372D2FE]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__remar__1372D2FE]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_a__add_t__1466F737]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__add_t__1466F737]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_a__add_t__164F3FA9]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_attach_log] ADD  CONSTRAINT [DF__dt_user_a__add_t__164F3FA9]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_c__count__192BAC54]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__count__192BAC54]  DEFAULT ((0)) FOR [count]
GO
/****** Object:  Default [DF__dt_user_c__statu__1A1FD08D]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__statu__1A1FD08D]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_c__add_t__1B13F4C6]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__add_t__1B13F4C6]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_g__artic__1DF06171]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__artic__1DF06171]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_user_g__goods__1EE485AA]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__goods__1EE485AA]  DEFAULT ((0)) FOR [goods_id]
GO
/****** Object:  Default [DF__dt_user_g__group__1FD8A9E3]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__group__1FD8A9E3]  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__dt_user_g__price__20CCCE1C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__price__20CCCE1C]  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF__dt_user_g__title__23A93AC7]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__title__23A93AC7]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_g__grade__249D5F00]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__grade__249D5F00]  DEFAULT ((0)) FOR [grade]
GO
/****** Object:  Default [DF__dt_user_g__upgra__25918339]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__upgra__25918339]  DEFAULT ((0)) FOR [upgrade_exp]
GO
/****** Object:  Default [DF__dt_user_g__amoun__2685A772]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__amoun__2685A772]  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_user_g__point__2779CBAB]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__point__2779CBAB]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_user_g__is_de__286DEFE4]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_de__286DEFE4]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_user_g__is_up__2962141D]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_up__2962141D]  DEFAULT ((1)) FOR [is_upgrade]
GO
/****** Object:  Default [DF__dt_user_g__is_lo__2A563856]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_lo__2A563856]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_l__user___2D32A501]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__user___2D32A501]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_user_l__remar__2E26C93A]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__remar__2E26C93A]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_l__login__2F1AED73]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__2F1AED73]  DEFAULT (getdate()) FOR [login_time]
GO
/****** Object:  Default [DF__dt_user_l__login__300F11AC]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__300F11AC]  DEFAULT ('') FOR [login_ip]
GO
/****** Object:  Default [DF__dt_user_me__type__32EB7E57]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_me__type__32EB7E57]  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_user_m__is_re__33DFA290]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_m__is_re__33DFA290]  DEFAULT ((0)) FOR [is_read]
GO
/****** Object:  Default [DF__dt_user_m__post___34D3C6C9]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_m__post___34D3C6C9]  DEFAULT (getdate()) FOR [post_time]
GO
/****** Object:  Default [DF__dt_user_o__oauth__37B03374]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__oauth__37B03374]  DEFAULT ('0') FOR [oauth_name]
GO
/****** Object:  Default [DF__dt_user_o__add_t__38A457AD]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__add_t__38A457AD]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_o__title__3B80C458]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__title__3B80C458]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_o__img_u__3C74E891]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__img_u__3C74E891]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_user_o__remar__3D690CCA]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__remar__3D690CCA]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_o__sort___3E5D3103]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__sort___3E5D3103]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_user_o__is_mo__3F51553C]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__is_mo__3F51553C]  DEFAULT ((0)) FOR [is_mobile]
GO
/****** Object:  Default [DF__dt_user_o__is_lo__40457975]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__is_lo__40457975]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_o__api_p__41399DAE]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__api_p__41399DAE]  DEFAULT ('') FOR [api_path]
GO
/****** Object:  Default [DF__dt_user_p__add_t__44160A59]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_point_log] ADD  CONSTRAINT [DF__dt_user_p__add_t__44160A59]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_r__amoun__4BB72C21]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__amoun__4BB72C21]  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_user_r__statu__4CAB505A]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__statu__4CAB505A]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_r__add_t__4D9F7493]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__add_t__4D9F7493]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_users__mobile__6E0C4425]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__mobile__6E0C4425]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_users__email__6F00685E]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__email__6F00685E]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_users__avatar__6FF48C97]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__avatar__6FF48C97]  DEFAULT ('') FOR [avatar]
GO
/****** Object:  Default [DF__dt_users__nick_n__70E8B0D0]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__nick_n__70E8B0D0]  DEFAULT ('') FOR [nick_name]
GO
/****** Object:  Default [DF__dt_users__sex__71DCD509]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__sex__71DCD509]  DEFAULT ('') FOR [sex]
GO
/****** Object:  Default [DF__dt_users__telpho__72D0F942]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__telpho__72D0F942]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_users__area__73C51D7B]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__area__73C51D7B]  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__dt_users__addres__74B941B4]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__addres__74B941B4]  DEFAULT ('') FOR [address]
GO
/****** Object:  Default [DF__dt_users__qq__75AD65ED]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__qq__75AD65ED]  DEFAULT ('') FOR [qq]
GO
/****** Object:  Default [DF__dt_users__msn__76A18A26]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__msn__76A18A26]  DEFAULT ('') FOR [msn]
GO
/****** Object:  Default [DF__dt_users__amount__7795AE5F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__amount__7795AE5F]  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_users__point__7889D298]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__point__7889D298]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_users__exp__797DF6D1]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__exp__797DF6D1]  DEFAULT ((0)) FOR [exp]
GO
/****** Object:  Default [DF__dt_users__status__7A721B0A]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__status__7A721B0A]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_users__reg_ti__7B663F43]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__reg_ti__7B663F43]  DEFAULT (getdate()) FOR [reg_time]
GO
/****** Object:  Default [DF__dt_weixin__expir__233F2673]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_access_token] ADD  CONSTRAINT [DF__dt_weixin__expir__233F2673]  DEFAULT ((0)) FOR [expires_in]
GO
/****** Object:  Default [DF__dt_weixin__count__24334AAC]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_access_token] ADD  CONSTRAINT [DF__dt_weixin__count__24334AAC]  DEFAULT ((0)) FOR [count]
GO
/****** Object:  Default [DF__dt_weixin__add_t__25276EE5]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_access_token] ADD  CONSTRAINT [DF__dt_weixin__add_t__25276EE5]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_weixin__is_pu__19B5BC39]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_account] ADD  CONSTRAINT [DF__dt_weixin__is_pu__19B5BC39]  DEFAULT ((0)) FOR [is_push]
GO
/****** Object:  Default [DF__dt_weixin__sort___1AA9E072]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_account] ADD  CONSTRAINT [DF__dt_weixin__sort___1AA9E072]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_weixin__add_t__1B9E04AB]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_account] ADD  CONSTRAINT [DF__dt_weixin__add_t__1B9E04AB]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_weixin__add_t__2803DB90]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_request_content] ADD  CONSTRAINT [DF__dt_weixin__add_t__2803DB90]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_weixin__is_li__1E7A7156]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_request_rule] ADD  CONSTRAINT [DF__dt_weixin__is_li__1E7A7156]  DEFAULT ((0)) FOR [is_like_query]
GO
/****** Object:  Default [DF__dt_weixin__is_de__1F6E958F]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_request_rule] ADD  CONSTRAINT [DF__dt_weixin__is_de__1F6E958F]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_weixin__add_t__2062B9C8]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_request_rule] ADD  CONSTRAINT [DF__dt_weixin__add_t__2062B9C8]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_weixin__add_t__2AE0483B]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_weixin_response_content] ADD  CONSTRAINT [DF__dt_weixin__add_t__2AE0483B]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  ForeignKey [FK_DT_ARTIC_REFERENCE_DT_ARTIC]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_article_attribute_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC] FOREIGN KEY([article_id])
REFERENCES [dbo].[dt_article] ([id])
GO
ALTER TABLE [dbo].[dt_article_attribute_value] CHECK CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CHANN]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN] FOREIGN KEY([site_id])
REFERENCES [dbo].[dt_channel_site] ([id])
GO
ALTER TABLE [dbo].[dt_channel] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_ARTIC]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_ARTIC] FOREIGN KEY([field_id])
REFERENCES [dbo].[dt_article_attribute_field] ([id])
GO
ALTER TABLE [dbo].[dt_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_ARTIC]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD] FOREIGN KEY([channel_id])
REFERENCES [dbo].[dt_channel] ([id])
GO
ALTER TABLE [dbo].[dt_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE_VALUE]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_manager_role_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE_VALUE] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager_role_value] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE_VALUE]
GO
/****** Object:  ForeignKey [FK_DT_ORDER_REFERENCE_DT_ORDER]    Script Date: 11/07/2016 17:50:02 ******/
ALTER TABLE [dbo].[dt_order_goods]  WITH CHECK ADD  CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER] FOREIGN KEY([order_id])
REFERENCES [dbo].[dt_orders] ([id])
GO
ALTER TABLE [dbo].[dt_order_goods] CHECK CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER]
GO
