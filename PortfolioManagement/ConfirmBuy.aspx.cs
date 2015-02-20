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
    public partial class ConfirmBuy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSymbol.Text = (string)Session["Symbol"];
            lblShares.Text = Convert.ToString(Session["NumShares"]);
            lblCost.Text = Convert.ToString(Session["Cost"]);
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";

            double Price = Convert.ToDouble(Session["Cost"]) / Convert.ToDouble(Session["NumShares"]);
            string insertSQL;
            
            insertSQL = "INSERT INTO Holdings (Symbol, Shares, Cost, TransDate, AccountNo) VALUES ('";
            insertSQL += (string)Session["Symbol"] + "','";
            insertSQL += Session["NumShares"] + "','";
            insertSQL += Price + "','";
            insertSQL += Session["Date"] + "','";
            insertSQL += Session["AccountNo"] + "')";


           
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
            
            
            string updateSQL;
            updateSQL = "Update Account set Balance=@Balance WHERE AccountNo=@AccountNo";

            double NewBalance = Convert.ToDouble(Session["Balance"]) - Convert.ToDouble(Session["Cost"]);

            SqlCommand Upcmd = new SqlCommand(updateSQL, con);
            Upcmd.Parameters.AddWithValue("@Balance", NewBalance);
            Upcmd.Parameters.AddWithValue("@AccountNo", (Session["AccountNo"]));

            int updated = 0;


            try
            {
                con.Open();
                updated = Upcmd.ExecuteNonQuery();
                lblResults.Text = updated +

" Account updated ";
            }


            catch (Exception err)
            {
                lblResults.Text =

"Error updating Account.";
                lblResults.Text += err.Message;
            }


            finally
            {
                con.Close();
            }


            lblSymbol.Text = "";
            lblShares.Text = "";
            lblCost.Text = "";
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyTrans.aspx");
        }
    }
}