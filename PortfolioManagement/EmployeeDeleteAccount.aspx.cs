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
    public partial class EmployeeDeleteAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsView1.Visible = false;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int AccountNo = (int)DetailsView1.SelectedValue;

            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";


            SqlConnection con = new SqlConnection(connectionString);

            string deleteSQL;
            deleteSQL = "DELETE FROM Account ";
            deleteSQL += "WHERE AccountNo = @AccountNo";

            SqlCommand cmd = new SqlCommand(deleteSQL, con);
            cmd.Parameters.AddWithValue("@AccountNo", AccountNo);

            int deleted = 0;
            try
            {
                con.Open();
                deleted = cmd.ExecuteNonQuery();
                lblStatus.Text = deleted + " Account deleted ";
            }
            catch (Exception err)
            {
                lblStatus.Text = "Error deleting Account.";
                lblStatus.Text += err.Message;
            }
            finally
            {
                con.Close();

                DetailsView1.Visible = false;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DetailsView1.Visible = true;
        }
    }
}