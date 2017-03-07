/**  版本信息模板在安装目录下，可自行修改。
* user_info.cs
*
* 功 能： N/A
* 类 名： user_info
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2016/11/14 11:19:26   N/A    初版
*
* Copyright (c) 2012 Maticsoft Corporation. All rights reserved.
*┌──────────────────────────────────┐
*│　此技术信息为本公司机密信息，未经本公司书面同意禁止向第三方披露．　│
*│　版权所有：动软卓越（北京）科技有限公司　　　　　　　　　　　　　　│
*└──────────────────────────────────┘
*/
using System;
namespace DTcms.Model
{
	/// <summary>
	/// user_info:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class user_info
	{
		public user_info()
		{}
		#region Model
		private int _id;
		private int _userid;
		private string _cardno;
		private string _identyno;
		private string _truename;
		private string _alipayaccount;
		private string _alipaynickname;
        private string _bankname;
		/// <summary>
		/// 
		/// </summary>
		public int id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int userid
		{
			set{ _userid=value;}
			get{return _userid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string cardno
		{
			set{ _cardno=value;}
			get{return _cardno;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string identyno
		{
			set{ _identyno=value;}
			get{return _identyno;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string truename
		{
			set{ _truename=value;}
			get{return _truename;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string alipayaccount
		{
			set{ _alipayaccount=value;}
			get{return _alipayaccount;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string alipaynickname
		{
			set{ _alipaynickname=value;}
			get{return _alipaynickname;}
		}
        public string bankname {
            set { _bankname = value; }
            get { return _bankname; }
        }
		#endregion Model

	}
}

