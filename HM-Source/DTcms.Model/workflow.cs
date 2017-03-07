/**  版本信息模板在安装目录下，可自行修改。
* workflow.cs
*
* 功 能： N/A
* 类 名： workflow
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2017/1/4 10:24:11   N/A    初版
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
	/// workflow:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class workflow
	{
		public workflow()
		{}
		#region Model
		private int _id;
		private int _userid;
		private string _username;
		private string _typename;
		private string _content;
		private string _img1;
		private string _img2;
		private string _img3;
		private int _sta=1;
		private string _delluser;
		private string _dellcontent;
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
		public string userName
		{
			set{ _username=value;}
			get{return _username;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string typename
		{
			set{ _typename=value;}
			get{return _typename;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string content
		{
			set{ _content=value;}
			get{return _content;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string img1
		{
			set{ _img1=value;}
			get{return _img1;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string img2
		{
			set{ _img2=value;}
			get{return _img2;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string img3
		{
			set{ _img3=value;}
			get{return _img3;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int sta
		{
			set{ _sta=value;}
			get{return _sta;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string delluser
		{
			set{ _delluser=value;}
			get{return _delluser;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string dellcontent
		{
			set{ _dellcontent=value;}
			get{return _dellcontent;}
		}
		#endregion Model

	}
}

