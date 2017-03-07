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
using System.Data;
using System.Text;
using System.Data.SqlClient;
using DTcms.DBUtility;
using DTcms.Common;//Please add references
namespace DTcms.DAL
{
	/// <summary>
	/// 数据访问类:workflow
	/// </summary>
	public partial class workflow
	{
		public workflow()
		{}
		#region  Method

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("id", "dt_workflow"); 
		}


		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string orderno)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from dt_workflow");
            strSql.Append(" where content like '%" + orderno + "%' ");
			return DbHelperSQL.Exists(strSql.ToString());
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(DTcms.Model.workflow model)
		{
			StringBuilder strSql=new StringBuilder();
			StringBuilder strSql1=new StringBuilder();
			StringBuilder strSql2=new StringBuilder();
			if (model.userid != null)
			{
				strSql1.Append("userid,");
				strSql2.Append(""+model.userid+",");
			}
			if (model.userName != null)
			{
				strSql1.Append("userName,");
				strSql2.Append("'"+model.userName+"',");
			}
			if (model.typename != null)
			{
				strSql1.Append("typename,");
				strSql2.Append("'"+model.typename+"',");
			}
			if (model.content != null)
			{
				strSql1.Append("content,");
				strSql2.Append("'"+model.content+"',");
			}
			if (model.img1 != null)
			{
				strSql1.Append("img1,");
				strSql2.Append("'"+model.img1+"',");
			}
			if (model.img2 != null)
			{
				strSql1.Append("img2,");
				strSql2.Append("'"+model.img2+"',");
			}
			if (model.img3 != null)
			{
				strSql1.Append("img3,");
				strSql2.Append("'"+model.img3+"',");
			}
			if (model.sta != null)
			{
				strSql1.Append("sta,");
				strSql2.Append(""+model.sta+",");
			}
			if (model.delluser != null)
			{
				strSql1.Append("delluser,");
				strSql2.Append("'"+model.delluser+"',");
			}
			if (model.dellcontent != null)
			{
				strSql1.Append("dellcontent,");
				strSql2.Append("'"+model.dellcontent+"',");
			}
			strSql.Append("insert into dt_workflow(");
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
		public bool Update(DTcms.Model.workflow model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update dt_workflow set ");
			if (model.userid != null)
			{
				strSql.Append("userid="+model.userid+",");
			}
			if (model.userName != null)
			{
				strSql.Append("userName='"+model.userName+"',");
			}
			if (model.typename != null)
			{
				strSql.Append("typename='"+model.typename+"',");
			}
			if (model.content != null)
			{
				strSql.Append("content='"+model.content+"',");
			}
			else
			{
				strSql.Append("content= null ,");
			}
			if (model.img1 != null)
			{
				strSql.Append("img1='"+model.img1+"',");
			}
			else
			{
				strSql.Append("img1= null ,");
			}
			if (model.img2 != null)
			{
				strSql.Append("img2='"+model.img2+"',");
			}
			else
			{
				strSql.Append("img2= null ,");
			}
			if (model.img3 != null)
			{
				strSql.Append("img3='"+model.img3+"',");
			}
			else
			{
				strSql.Append("img3= null ,");
			}
			if (model.sta != null)
			{
				strSql.Append("sta="+model.sta+",");
			}
			if (model.delluser != null)
			{
				strSql.Append("delluser='"+model.delluser+"',");
			}
			else
			{
				strSql.Append("delluser= null ,");
			}
			if (model.dellcontent != null)
			{
				strSql.Append("dellcontent='"+model.dellcontent+"',");
			}
			else
			{
				strSql.Append("dellcontent= null ,");
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
			strSql.Append("delete from dt_workflow ");
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
			strSql.Append("delete from dt_workflow ");
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
		public DTcms.Model.workflow GetModel(int id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1  ");
			strSql.Append(" id,userid,userName,typename,content,img1,img2,img3,sta,delluser,dellcontent ");
			strSql.Append(" from dt_workflow ");
			strSql.Append(" where id="+id+"" );
			DTcms.Model.workflow model=new DTcms.Model.workflow();
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
		public DTcms.Model.workflow DataRowToModel(DataRow row)
		{
			DTcms.Model.workflow model=new DTcms.Model.workflow();
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
				if(row["userName"]!=null)
				{
					model.userName=row["userName"].ToString();
				}
				if(row["typename"]!=null)
				{
					model.typename=row["typename"].ToString();
				}
				if(row["content"]!=null)
				{
					model.content=row["content"].ToString();
				}
				if(row["img1"]!=null)
				{
					model.img1=row["img1"].ToString();
				}
				if(row["img2"]!=null)
				{
					model.img2=row["img2"].ToString();
				}
				if(row["img3"]!=null)
				{
					model.img3=row["img3"].ToString();
				}
				if(row["sta"]!=null && row["sta"].ToString()!="")
				{
					model.sta=int.Parse(row["sta"].ToString());
				}
				if(row["delluser"]!=null)
				{
					model.delluser=row["delluser"].ToString();
				}
				if(row["dellcontent"]!=null)
				{
					model.dellcontent=row["dellcontent"].ToString();
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
			strSql.Append("select id,userid,userName,typename,content,img1,img2,img3,sta,delluser,dellcontent ");
			strSql.Append(" FROM dt_workflow ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

        /// <summary>
        /// 获得查询分页数据
        /// </summary>
        public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * FROM dt_workflow");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            recordCount = Convert.ToInt32(DbHelperSQL.GetSingle(PagingHelper.CreateCountingSql(strSql.ToString())));
            return DbHelperSQL.Query(PagingHelper.CreatePagingSql(recordCount, pageSize, pageIndex, strSql.ToString(), filedOrder));
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
			strSql.Append(" id,userid,userName,typename,content,img1,img2,img3,sta,delluser,dellcontent ");
			strSql.Append(" FROM dt_workflow ");
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
			strSql.Append("select count(1) FROM dt_workflow ");
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
			strSql.Append(")AS Row, T.*  from dt_workflow T ");
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

