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
    public partial class SellTrans : System.Web.UI.Page
    {
         private string connectionString;
        private SqlConnection myConnection;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            myConnection = new SqlConnection(connectionString);

            int NumShares = Convert.ToInt32(txtShares.Text);
            double Price = Convert.ToDouble(txtPrice.Text);
            int AccountNo = Convert.ToInt32(ddAccount.SelectedValue);
            //DateTime Date = Convert.ToDateTime("1/1/2014");
            string Date = DateTime.Now.ToString("M/d/yyyy h:mm:ss tt");
            string Symbol = txtSymbol.Text;
            double Cost = NumShares * Price;
            int HeldShares = 0;
            int[] TransId = new int[10];

            string selectBalanceSQL = "SELECT Balance FROM Account WHERE AccountNo = @AccountNo";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectBalanceSQL, con);
            cmd.Parameters.AddWithValue("@AccountNo", ddAccount.SelectedValue);


            SqlDataReader BalanceReader;

            try
            {
                con.Open();
                BalanceReader = cmd.ExecuteReader();
                BalanceReader.Read();

                
                    Session["Balance"] = BalanceReader["Balance"];

                   BalanceReader.Close();
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


            string selectSQL = "SELECT * FROM Holdings WHERE AccountNo = @AccountNo and Symbol = @Symbol";

            SqlCommand Selcmd = new SqlCommand(selectSQL, con);
            Selcmd.Parameters.AddWithValue("@AccountNo", ddAccount.SelectedValue);
            Selcmd.Parameters.AddWithValue("@Symbol", Symbol);


            SqlDataReader reader;
            int i = 0;

            try
            {
                con.Open();
                reader = Selcmd.ExecuteReader();
                while (reader.Read())
                {
                    HeldShares += Convert.ToInt32(reader["Shares"]);
                    

                    if (NumShares <= HeldShares)
                    {


                        Session["Symbol"] = Symbol;
                        Session["NumShares"] = NumShares;
                        Session["Price"] = Price;
                        Session["Cost"] = Cost;
                        Session["Date"] = reader["TransDate"];
                        Session["AccountNo"] = AccountNo;
                        Session["HeldShares"] = HeldShares;
                        Session["TransId"] = reader["TransId"];
                        Session["realCost"] = reader["Cost"];


                        Response.Redirect("ConfirmSell.aspx");



                    }

                    else

                        lblResults.Text = "Not Enough Shares!";
                        

                    
                }
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