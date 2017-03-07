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
using System.Data;
using System.Text;
using System.Data.SqlClient;
using DTcms.DBUtility;//Please add references
namespace DTcms.DAL
{
    /// <summary>
    /// 数据访问类:user_pre
    /// </summary>
    public partial class user_pre
    {
        public user_pre()
        { }
        #region  Method

        /// <summary>
        /// 得到最大ID
        /// </summary>
        public int GetMaxId()
        {
            return DbHelperSQL.GetMaxID("id", "dt_user_pre");
        }


        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from dt_user_pre");
            strSql.Append(" where convert(char(10),add_time,120)=convert(char(10),getdate(),120)");
            return DbHelperSQL.Exists(strSql.ToString());
        }

        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(DTcms.Model.user_pre model)
        {
            StringBuilder strSql = new StringBuilder();
            StringBuilder strSql1 = new StringBuilder();
            StringBuilder strSql2 = new StringBuilder();
            if (model.totallr != null)
            {
                strSql1.Append("totallr,");
                strSql2.Append("" + model.totallr + ",");
            }
            if (model.nowamount != null)
            {
                strSql1.Append("nowamount,");
                strSql2.Append("" + model.nowamount + ",");
            }
            if (model.totalpre != null)
            {
                strSql1.Append("totalpre,");
                strSql2.Append("" + model.totalpre + ",");
            }
            if (model.add_time != null)
            {
                strSql1.Append("add_time,");
                strSql2.Append("'" + model.add_time + "',");
            }
            if (model.uppre != null)
            {
                strSql1.Append("uppre,");
                strSql2.Append("" + model.uppre + ",");
            }
            strSql.Append("insert into dt_user_pre(");
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
        public bool Update(DTcms.Model.user_pre model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update dt_user_pre set ");
            if (model.totallr != null)
            {
                strSql.Append("totallr=" + model.totallr + ",");
            }
            else
            {
                strSql.Append("totallr= null ,");
            }
            if (model.nowamount != null)
            {
                strSql.Append("nowamount=" + model.nowamount + ",");
            }
            else
            {
                strSql.Append("nowamount= null ,");
            }
            if (model.totalpre != null)
            {
                strSql.Append("totalpre=" + model.totalpre + ",");
            }
            else
            {
                strSql.Append("totalpre= null ,");
            }
            if (model.add_time != null)
            {
                strSql.Append("add_time='" + model.add_time + "',");
            }
            else
            {
                strSql.Append("add_time= null ,");
            }
            if (model.uppre != null)
            {
                strSql.Append("uppre=" + model.uppre + ",");
            }
            else
            {
                strSql.Append("uppre= null ,");
            }
            int n = strSql.ToString().LastIndexOf(",");
            strSql.Remove(n, 1);
            strSql.Append(" where id=" + model.id + "");
            int rowsAffected = DbHelperSQL.ExecuteSql(strSql.ToString());
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
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from dt_user_pre ");
            strSql.Append(" where id=" + id + "");
            int rowsAffected = DbHelperSQL.ExecuteSql(strSql.ToString());
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
        public bool DeleteList(string idlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from dt_user_pre ");
            strSql.Append(" where id in (" + idlist + ")  ");
            int rows = DbHelperSQL.ExecuteSql(strSql.ToString());
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
        public DTcms.Model.user_pre GetModel(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1  ");
            strSql.Append(" id,totallr,nowamount,totalpre,add_time,uppre ");
            strSql.Append(" from dt_user_pre ");
            strSql.Append(" where id=" + id + "");
            DTcms.Model.user_pre model = new DTcms.Model.user_pre();
            DataSet ds = DbHelperSQL.Query(strSql.ToString());
            if (ds.Tables[0].Rows.Count > 0)
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
        public DTcms.Model.user_pre DataRowToModel(DataRow row)
        {
            DTcms.Model.user_pre model = new DTcms.Model.user_pre();
            if (row != null)
            {
                if (row["id"] != null && row["id"].ToString() != "")
                {
                    model.id = int.Parse(row["id"].ToString());
                }
                if (row["totallr"] != null && row["totallr"].ToString() != "")
                {
                    model.totallr = decimal.Parse(row["totallr"].ToString());
                }
                if (row["nowamount"] != null && row["nowamount"].ToString() != "")
                {
                    model.nowamount = decimal.Parse(row["nowamount"].ToString());
                }
                if (row["totalpre"] != null && row["totalpre"].ToString() != "")
                {
                    model.totalpre = decimal.Parse(row["totalpre"].ToString());
                }
                if (row["add_time"] != null && row["add_time"].ToString() != "")
                {
                    model.add_time = DateTime.Parse(row["add_time"].ToString());
                }
                if (row["uppre"] != null && row["uppre"].ToString() != "")
                {
                    model.uppre = decimal.Parse(row["uppre"].ToString());
                }
            }
            return model;
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,totallr,nowamount,totalpre,add_time,uppre ");
            strSql.Append(" FROM dt_user_pre ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" id,totallr,nowamount,totalpre,add_time,uppre ");
            strSql.Append(" FROM dt_user_pre ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获取记录总数
        /// </summary>
        public int GetRecordCount(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) FROM dt_user_pre ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
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
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by T." + orderby);
            }
            else
            {
                strSql.Append("order by T.id desc");
            }
            strSql.Append(")AS Row, T.*  from dt_user_pre T ");
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
        public double updateandgettotalpre()
        {
            string singpre = "";
            DataSet ds = GetList("CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
            if (ds.Tables[0].Rows.Count > 0)
            {
                StringBuilder strSql1 = new StringBuilder();
                strSql1.Append("update dt_user_pre set nowamount=isnull((select SUM(amount) from dt_user_recharge where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120) and status=0),1) where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                DbHelperSQL.Query(strSql1.ToString());

                StringBuilder strSql2 = new StringBuilder();
                strSql2.Append("update dt_user_pre set totalpre=totallr/nowamount where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                DbHelperSQL.Query(strSql2.ToString());

                StringBuilder strSql3 = new StringBuilder();
                strSql3.Append("select isnull(totalpre,1.2) from dt_user_pre where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                singpre = DbHelperSQL.GetSingle(strSql3.ToString()).ToString();

                if (double.Parse(singpre) > 1.5)
                {
                    singpre = "1.2";
                    StringBuilder strSql4 = new StringBuilder();
                    strSql4.Append("update dt_user_pre set totalpre=1.2 where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                    DbHelperSQL.Query(strSql4.ToString());
                }
            }
            return double.Parse(singpre == "" ? "1.2" : singpre);
        }
        public double updatelrze(double totallr, double uppre)
        {
            string singpre = "";
            DataSet ds = GetList("CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
            if (ds.Tables[0].Rows.Count > 0)
            {
                StringBuilder strSql = new StringBuilder();
                strSql.Append("update dt_user_pre set totallr=" + totallr + ",uppre=" + uppre + " where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                DbHelperSQL.Query(strSql.ToString());

                StringBuilder strSql1 = new StringBuilder();
                strSql1.Append("update dt_user_pre set nowamount=isnull((select SUM(amount) from dt_user_recharge where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120) and status=0),1) where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                DbHelperSQL.Query(strSql1.ToString());

                StringBuilder strSql2 = new StringBuilder();
                strSql2.Append("update dt_user_pre set totalpre=totallr/nowamount where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                DbHelperSQL.Query(strSql2.ToString());

                StringBuilder strSql3 = new StringBuilder();
                strSql3.Append("select isnull(totalpre,1.2) from dt_user_pre where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                singpre = DbHelperSQL.GetSingle(strSql3.ToString()).ToString();

                if (double.Parse(singpre) > 1.5)
                {
                    singpre = "1.2";
                    StringBuilder strSql4 = new StringBuilder();
                    strSql4.Append("update dt_user_pre set totalpre=1.2 where CONVERT(char(10),add_time,120)=CONVERT(char(10),getdate(),120)");
                    DbHelperSQL.Query(strSql4.ToString());
                }
            }
            else
            {
                StringBuilder strSql1 = new StringBuilder();
                strSql1.Append("insert into dt_user_pre(totallr,nowamount,totalpre,add_time,uppre) values(" + totallr + ",0,1.2,getdate()," + uppre + ")");
                DbHelperSQL.Query(strSql1.ToString());
            }
            return double.Parse(singpre == "" ? "1.2" : singpre);
        }
        #endregion  MethodEx
    }
}

