using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Employee_Management
{
    public class lopdungchung_mysql
    {
        string cn;
        public MySqlConnection mysql;
        public lopdungchung_mysql()
        {
            cn = "server=localhost;port=3306;user id=root;password=sopaqijHkalHhak7163;database=payroll";
            mysql = new MySqlConnection(cn);
        }
        public DataTable getdatamysql(string sql)
        {
            MySqlDataAdapter da = new MySqlDataAdapter(sql, mysql);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void commandmysql(string sql)
        {
            MySqlCommand cm = new MySqlCommand(sql,mysql);
            mysql.Open();
            cm.ExecuteNonQuery();
            mysql.Close();
        }
        public object countmysql(string sql)
        {
            MySqlCommand cm = new MySqlCommand(sql,mysql);
            mysql.Open();
            object a = cm.ExecuteScalar();
            mysql.Close();
            return a;
        }
    }
}