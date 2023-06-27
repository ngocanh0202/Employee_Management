using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Employee_Management
{
    public class lopdungchung_sql_server
    {
        string chuoiketnoi;
        SqlConnection cn;
        public lopdungchung_sql_server()
        {
            chuoiketnoi = @"Data Source=NGOCANH\NGOCANH;Initial Catalog=HR;Integrated Security=True";
            cn = new SqlConnection(chuoiketnoi);
        }
        public DataTable getdatasqlserver(string sql)
        {
            SqlDataAdapter da = new SqlDataAdapter(sql,cn);
            DataTable td = new DataTable();
            cn.Open();
            da.Fill(td);
            cn.Close();
            return td;
        }
        public void commandsqlserver(string sql)
        {
            SqlCommand cm = new SqlCommand();
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
        }
        public object count(string sql)
        {
            SqlCommand cm = new SqlCommand(sql, cn);
            cn.Open();
            object a = cm.ExecuteScalar();
            cn.Close();
            return a;
        }
    }
}