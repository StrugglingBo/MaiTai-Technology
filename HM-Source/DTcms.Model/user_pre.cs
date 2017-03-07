/**  版本信息模板在安装目录下，可自行修改。
* user_pre.cs
*
* 功 能： N/A
* 类 名： user_pre
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2017/2/7 11:12:14   N/A    初版
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
	/// user_pre:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class user_pre
	{
		public user_pre()
		{}
		#region Model
		private int _id;
		private decimal? _totallr;
		private decimal? _nowamount=0M;
		private decimal? _totalpre;
		private DateTime? _add_time= DateTime.Now;
		private decimal? _uppre=1M;
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
		public decimal? totallr
		{
			set{ _totallr=value;}
			get{return _totallr;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? nowamount
		{
			set{ _nowamount=value;}
			get{return _nowamount;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? totalpre
		{
			set{ _totalpre=value;}
			get{return _totalpre;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? add_time
		{
			set{ _add_time=value;}
			get{return _add_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? uppre
		{
			set{ _uppre=value;}
			get{return _uppre;}
		}
		#endregion Model

	}
}

