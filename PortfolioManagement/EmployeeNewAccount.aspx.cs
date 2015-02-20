using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PortfolioManagement
{
    public partial class EmployeeNewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            SqlConnection myConnection = new SqlConnection(connectionString);

            string date = DateTime.Now.ToString("M/d/yyyy h:mm:ss tt");

            string insertSQL;
            insertSQL = "INSERT INTO Account(";
            insertSQL += "ClientID, Balance, Type, Created) ";
            insertSQL += "VALUES ('";
            insertSQL += Convert.ToInt32(ClientIDd.SelectedValue) + "','";
            insertSQL += Convert.ToDouble(txtBalance.Text) + "','";
            insertSQL += txtType.Text + "','";
            insertSQL += date + "')";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            int added = 0;

            try
            {
                con.Open();
                added = cmd.ExecuteNonQuery();
                lblResults.Text = added.ToString() + " records inserted.";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error inserting record.";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}