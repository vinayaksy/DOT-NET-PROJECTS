using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }
        public void Display()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from Employees", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd = new SqlCommand("insert into Employees(name, city, salary) values (@name, @city, @salary)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@city", txtCity.Text);
                cmd.Parameters.AddWithValue("@salary", Convert.ToDecimal(txtSalary.Text));
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Label5.ForeColor = System.Drawing.Color.Green;
            Label5.Text = "Data inserted successfully....";
            Display();
        }
    }
}