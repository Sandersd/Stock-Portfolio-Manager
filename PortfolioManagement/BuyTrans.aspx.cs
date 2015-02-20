using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;


namespace PortfolioManagement
{
    public partial class BuyTrans : System.Web.UI.Page
    {
        private string connectionString;
        private SqlConnection myConnection;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {

            connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            myConnection = new SqlConnection(connectionString);

            //ThreadStaticAttribute.CurrentThread.CurrentCulture = new System.Globalization

            int NumShares = Convert.ToInt32(txtShares.Text);
            double Price = Convert.ToDouble(txtPrice.Text);
            int AccountNo = Convert.ToInt32(ddAccount.SelectedValue);
            //DateTime Date = Convert.ToDateTime("1/1/2014");
            string Date = DateTime.Now.ToString("M/d/yyyy h:mm:ss tt");
            double Cost = NumShares * Price;



            string selectSQL = "SELECT Balance FROM Account WHERE AccountNo = @AccountNo";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            cmd.Parameters.AddWithValue("@AccountNo", ddAccount.SelectedValue);


            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();

                if (Cost <= Convert.ToDouble(reader["Balance"]))
                {
                    Session["Symbol"] = txtSymbol.Text;
                    Session["NumShares"] = NumShares;
                    Session["Cost"] = Cost;
                    Session["Date"] = Date;
                    Session["AccountNo"] = AccountNo;
                    Session["Balance"] = reader["Balance"];

                    Response.Redirect("ConfirmBuy.aspx");
                }
                else
                    
                    lblResults.Text = "Not Enough Money! Select Less Shares";


                reader.Close();
            }
            catch (Exception err)
            {
                lblResults.Text = "Error";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }


            
            
            

            
        }
    }
}