using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DTcms.Web.Plugin.Advert
{
    public partial class Advert:Web.UI.BasePage
    {
        /// <summary>
        /// 友情链接列表
        /// </summary>
        /// <param name="top">显示条数</param>
        /// <param name="strwhere">查询条件</param>
        /// <returns>DataTable</returns>
        public DataTable get_Advert_list(int top, string strwhere)
        {
            DataTable dt = new DataTable();
            string _where = "end_time >=GETDATE() and is_lock=0";
            if (!string.IsNullOrEmpty(strwhere))
            {
                _where += " and " + strwhere;
            }
            dt = new BLL.advert_banner().GetList(top, _where, "sort_id desc").Tables[0];
            return dt;
        }
    }
}
