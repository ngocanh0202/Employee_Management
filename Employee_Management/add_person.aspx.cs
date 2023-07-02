using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Management
{
    public partial class add_person : System.Web.UI.Page
    {
        lopdungchung_sql_server ldc_sql_server;
        lopdungchung_mysql ldc_mysql;
        public add_person()
        {
            ldc_sql_server = new lopdungchung_sql_server();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible=true;
            }
            Calendar1.Attributes.Add("Style", "position:absolute;");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txt_start_date.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txt_end_date.Text = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
            Calendar2.Visible = false;  
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }
            Calendar2.Attributes.Add("Style", "position:absolute;");
        }
        private void addhr()
        {
            string sqlpersonal = "insert into Personal(Employee_ID, First_Name,Last_Name, Middle_Initial,Ethnicity,Gender,Shareholder_Status) values ('"
                +txt_id.Text+"','"+txt_FN.Text+"','"+txt_LN.Text+"','"+txt_MI.Text+"','"+txt_Ethnicity.Text +"','"+genderRadioButtonList.SelectedValue.ToString()+"','"+shareholderButtonList1.SelectedValue.ToString()+"')";
            string sqlemployees = "insert into Employment(Employee_ID,Employment_Status) values ('"
                +txt_id.Text+"','"+employmentButtonList2.SelectedValue.ToString()+"') ";
            string sqljob_history = "insert into Job_History(Employee_ID,Department,Start_date,End_date,Job_Title,Salary_type) values('"
                +txt_id.Text+"','"+txt_department.Text+"','"+txt_start_date.Text+"','"+txt_end_date.Text+"','"+txt_job_title.Text+"','"+DropDownList1.SelectedValue.ToString()+"')";
            string Deductible = "";
            if (DropDown_benefit_plan.SelectedValue=="10")
            {
                Deductible = "10000";
            }
            else if (DropDown_benefit_plan.SelectedValue == "20")
            {
                Deductible = "20000";
            }
            else if (DropDown_benefit_plan.SelectedValue == "30")
            {
                Deductible = "30000";
            }
            string sqlbenefit = "insert into Benefit_Plans values('"+DropDown_benefit_plan.SelectedItem.ToString()+"','"+ Deductible + "','"+DropDown_benefit_plan.SelectedValue.ToString()+"')";
            ldc_sql_server.commandsqlserver(sqlpersonal); // add vào bảng personal
            ldc_sql_server.commandsqlserver(sqlemployees); // add vào bảng employees
            ldc_sql_server.commandsqlserver(sqljob_history); // add vào bảng jobhistory
            ldc_sql_server.commandsqlserver(sqlbenefit);// add vào bảng benefit plan
            string count = "select count(*) from Benefit_Plans";
            string sqlupdatepersonal = "update Personal set Benefit_Plans = '"+ldc_sql_server.count(count)+"' where Employee_ID = '"+txt_id.Text+"'";
            ldc_sql_server.commandsqlserver(sqlupdatepersonal); // Cập nhập bảng personal
        }
        private void addpr()
        {
            decimal pay_amount = decimal.Parse(txt_pay_amount.Text);
            decimal Tax_Percentage = 0;
            if (0 < pay_amount&& pay_amount <= 9000)
            {
                Tax_Percentage = 10;
            }
            else if(9000 < pay_amount && pay_amount <= 40000 )
            {
                Tax_Percentage = 12;
            }
            else if (40000 < pay_amount && pay_amount <= 86000)
            {
                Tax_Percentage = 22;
            }
            else if (pay_amount > 86000)
            {
                Tax_Percentage = 24;
            }
            decimal PT = pay_amount * Tax_Percentage / 100;
            decimal value = pay_amount - PT;
            string sqlpayrate = "insert into pay_rates values('"
                +txt_id.Text+"','"+DropDownList1.SelectedItem.ToString()+"','"+value+"','"+Tax_Percentage+"','"+DropDownList1.SelectedValue.ToString()+"','"+pay_amount+"','"+PT+"') ";
            ldc_mysql.commandmysql(sqlpayrate);
        }
        protected void btn_add_Click(object sender, EventArgs e)
        {
            addhr();
            addpr();
        }
    }
}