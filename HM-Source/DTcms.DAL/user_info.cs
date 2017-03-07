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
using System.Data;
using System.Text;
using System.Data.SqlClient;
using DTcms.DBUtility;//Please add references
namespace DTcms.DAL
{
	/// <summary>
	/// 数据访问类:user_info
	/// </summary>
	public partial class user_info
	{
		public user_info()
		{}
		#region  Method

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("id", "dt_user_info"); 
		}


		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from dt_user_info");
			strSql.Append(" where id="+id+" ");
			return DbHelperSQL.Exists(strSql.ToString());
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(DTcms.Model.user_info model)
		{
			StringBuilder strSql=new StringBuilder();
			StringBuilder strSql1=new StringBuilder();
			StringBuilder strSql2=new StringBuilder();
			if (model.userid != null)
			{
				strSql1.Append("userid,");
				strSql2.Append(""+model.userid+",");
			}
			if (model.cardno != null)
			{
				strSql1.Append("cardno,");
				strSql2.Append("'"+model.cardno+"',");
			}
			if (model.identyno != null)
			{
				strSql1.Append("identyno,");
				strSql2.Append("'"+model.identyno+"',");
			}
			if (model.truename != null)
			{
				strSql1.Append("truename,");
				strSql2.Append("'"+model.truename+"',");
			}
			if (model.alipayaccount != null)
			{
				strSql1.Append("alipayaccount,");
				strSql2.Append("'"+model.alipayaccount+"',");
			}
			if (model.alipaynickname != null)
			{
				strSql1.Append("alipaynickname,");
				strSql2.Append("'"+model.alipaynickname+"',");
			}
            if (model.bankname != null)
            {
                strSql1.Append("bankname,");
                strSql2.Append("'" + model.bankname + "',");
            }
			strSql.Append("insert into dt_user_info(");
			strSql.Append(strSql1.ToString().Remove(strSql1.Length - 1));
			strSql.Append(")");
			strSql.Append(" values (");
			strSql.Append(strSql2.ToString().Remove(strSql2.Length - 1));
			strSql.Append(")");
			strSql.Append(";select @@IDENTITY");
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(DTcms.Model.user_info model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update dt_user_info set ");
			if (model.userid != null)
			{
				strSql.Append("userid="+model.userid+",");
			}
			if (model.cardno != null)
			{
				strSql.Append("cardno='"+model.cardno+"',");
			}
			else
			{
				strSql.Append("cardno= null ,");
			}
			if (model.identyno != null)
			{
				strSql.Append("identyno='"+model.identyno+"',");
			}
			else
			{
				strSql.Append("identyno= null ,");
			}
			if (model.truename != null)
			{
				strSql.Append("truename='"+model.truename+"',");
			}
			else
			{
				strSql.Append("truename= null ,");
			}
			if (model.alipayaccount != null)
			{
				strSql.Append("alipayaccount='"+model.alipayaccount+"',");
			}
			else
			{
				strSql.Append("alipayaccount= null ,");
			}
			if (model.alipaynickname != null)
			{
				strSql.Append("alipaynickname='"+model.alipaynickname+"',");
			}
			else
			{
				strSql.Append("alipaynickname= null ,");
			}
            if (model.bankname != null)
            {
                strSql.Append("bankname='" + model.bankname + "',");
            }
            else
            {
                strSql.Append("bankname= null ,");
            }
			int n = strSql.ToString().LastIndexOf(",");
			strSql.Remove(n, 1);
			strSql.Append(" where id="+ model.id+"");
			int rowsAffected=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rowsAffected > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from dt_user_info ");
			strSql.Append(" where id="+id+"" );
			int rowsAffected=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rowsAffected > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string idlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from dt_user_info ");
			strSql.Append(" where id in ("+idlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public DTcms.Model.user_info GetModel(int id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1  ");
            strSql.Append(" id,userid,cardno,identyno,truename,alipayaccount,alipaynickname,bankname ");
			strSql.Append(" from dt_user_info ");
            strSql.Append(" where userid=" + id + "");
			DTcms.Model.user_info model=new DTcms.Model.user_info();
			DataSet ds=DbHelperSQL.Query(strSql.ToString());
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public DTcms.Model.user_info DataRowToModel(DataRow row)
		{
			DTcms.Model.user_info model=new DTcms.Model.user_info();
			if (row != null)
			{
				if(row["id"]!=null && row["id"].ToString()!="")
				{
					model.id=int.Parse(row["id"].ToString());
				}
				if(row["userid"]!=null && row["userid"].ToString()!="")
				{
					model.userid=int.Parse(row["userid"].ToString());
				}
				if(row["cardno"]!=null)
				{
					model.cardno=row["cardno"].ToString();
				}
				if(row["identyno"]!=null)
				{
					model.identyno=row["identyno"].ToString();
				}
				if(row["truename"]!=null)
				{
					model.truename=row["truename"].ToString();
				}
				if(row["alipayaccount"]!=null)
				{
					model.alipayaccount=row["alipayaccount"].ToString();
				}
				if(row["alipaynickname"]!=null)
				{
					model.alipaynickname=row["alipaynickname"].ToString();
				}
                if (row["bankname"] != null)
                {
                    model.bankname = row["bankname"].ToString();
                }
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
            strSql.Append("select id,userid,cardno,identyno,truename,alipayaccount,alipaynickname,bankname ");
			strSql.Append(" FROM dt_user_info ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
            strSql.Append(" id,userid,cardno,identyno,truename,alipayaccount,alipaynickname,bankname ");
			strSql.Append(" FROM dt_user_info ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM dt_user_info ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.id desc");
			}
			strSql.Append(")AS Row, T.*  from dt_user_info T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		*/

		#endregion  Method
		#region  MethodEx

		#endregion  MethodEx
	}
}

