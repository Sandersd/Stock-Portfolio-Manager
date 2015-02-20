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
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblGL.Text = "Gain or Loss";

        }

        protected void btnGL_Click(object sender, EventArgs e)
        {
            int accountNo = Convert.ToInt32(Accountdd.SelectedValue);

            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";


            SqlConnection con = new SqlConnection(connectionString);


            string selectSQL;


            selectSQL = "SELECT ((Shares) * (Price) - (Shares) * (Cost)) as GainLoss FROM History WHERE AccountNo = @AccountNo";

            SqlCommand cmd = new SqlCommand(selectSQL, con);
            cmd.Parameters.AddWithValue("@AccountNo", accountNo);


            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                double gainLoss = 0;
                while (reader.Read())
                {
                    gainLoss += Convert.ToDouble(reader["GainLoss"]);
                }

                
                lblGL.Text = "" + gainLoss;



                reader.Close();
            }
            catch (Exception err)
            {
                
            }
            finally
            {
                con.Close();
            }


        }
    }
}