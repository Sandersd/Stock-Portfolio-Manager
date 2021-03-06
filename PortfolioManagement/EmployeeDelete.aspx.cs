﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PortfolioManagement
{
    public partial class EmployeeDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnClient.Visible = false;
            btnAccount.Visible = false;
        }

        protected void btnClient_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDeleteClient.aspx");
        }

        protected void btnAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDeleteAccount.aspx");
        }



        protected void btnGet_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";


            SqlConnection con = new SqlConnection(connectionString);


            string selectSQL;


            selectSQL = "SELECT * FROM Employee WHERE EmployeeID = @EmployeeID";

            SqlCommand cmd = new SqlCommand(selectSQL, con);
            cmd.Parameters.AddWithValue("@EmployeeID", Session["EmployeeID"]);
            //cmd.Parameters.AddWithValue("@Password", txtPass.Text);


            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();

                if (txtPass.Text.Equals(reader["Password"]))
                {
                    btnClient.Visible = true;
                    btnAccount.Visible = true;

                }
                else
                    lblStatus.Text = "Wrong Password";




                reader.Close();
            }
            catch (Exception err)
            {
                lblStatus.Text = "Error";
                lblStatus.Text += err.Message;
            }
            finally
            {
                con.Close();
            }


        }
    }
}