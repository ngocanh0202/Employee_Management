using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Management
{
    public partial class home_page : System.Web.UI.Page
    {
        lopdungchung_mysql ldc_mysql;
        lopdungchung_sql_server ldc_sqlserver;
        public home_page()
        {
            ldc_mysql = new lopdungchung_mysql();
            ldc_sqlserver = new lopdungchung_sql_server();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            loaddata();
        }
        private void loaddata()
        {
            string sql = "select * from Personal";
            GridView1.DataSource = ldc_sqlserver.getdatasqlserver(sql);
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_new_personal.aspx");
        }
    }
}