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
    public partial class EmployeeDeleteClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientDetails.Visible = false;

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int clientID = (int)ClientGV.SelectedValue;

            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";


            SqlConnection con = new SqlConnection(connectionString);

            string deleteSQL;
            deleteSQL = "DELETE FROM Client ";
            deleteSQL += "WHERE ClientID = @Client";

            SqlCommand cmd = new SqlCommand(deleteSQL, con);
            cmd.Parameters.AddWithValue("@Client", clientID);

            int deleted = 0;
            try
            {
                con.Open();
                deleted = cmd.ExecuteNonQuery();
                lblStatus.Text = deleted + " Client deleted ";
            }
            catch (Exception err)
            {
                lblStatus.Text = "Error deleting Client.";
                lblStatus.Text += err.Message;
            }
            finally
            {
                con.Close();
                
                ClientDetails.Visible = false;
            }
        
            

        

        }

        protected void ClientGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClientDetails.Visible = true;
        }
    }
}