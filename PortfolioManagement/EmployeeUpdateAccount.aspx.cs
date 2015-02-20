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
    public partial class EmployeeUpdateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";


            SqlConnection con = new SqlConnection(connectionString);


            string selectSQL;


            selectSQL = "SELECT * FROM Account WHERE AccountNo = @AccountNo";

            SqlCommand cmd = new SqlCommand(selectSQL, con);
            cmd.Parameters.AddWithValue("@AccountNo", AccountNoDD.SelectedValue);


            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();
                txtBalance.Text = "" + reader["Balance"];
                txtDate.Text = "" + reader["Created"];
                txtClientID.Text = "" + reader["ClientID"];
                txtType.Text = "" + reader["Type"];
                Session["AccountNo"] = reader["AccountNo"];



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

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            SqlConnection myConnection = new SqlConnection(connectionString);

            SqlConnection con = new SqlConnection(connectionString);


            int accountNo = Convert.ToInt32(Session["AccountNo"]);




            string updateSQL;
            updateSQL = "Update Account set Balance = @Balance WHERE AccountNo=@AccountNo";


            

            SqlCommand cmd = new SqlCommand(updateSQL, con);
            cmd.Parameters.AddWithValue("@Balance", txtBalance.Text);
            cmd.Parameters.AddWithValue("@AccountNo", Convert.ToInt32(Session["AccountNo"]));


            //Try to open the database and delete the record.


            int updated = 0;


            try
            {
                con.Open();
                updated = cmd.ExecuteNonQuery();
                lblStatus.Text = updated +

" Account updated ";
            }


            catch (Exception err)
            {
                lblStatus.Text =

"Error updating Account.";
                lblStatus.Text += err.Message;
            }


            finally
            {
                con.Close();
            }
        }







    }
}
