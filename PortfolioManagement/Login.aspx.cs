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
    public partial class Login : System.Web.UI.Page
    {
        private string connectionString;
        private SqlConnection myConnection;
        string fname, lname;
        private int clientID;

        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            myConnection = new SqlConnection(connectionString);
            
        }

        protected void btSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                myConnection.Open();
                myConnection.State.ToString();
            }
            catch (Exception err)
            {
                lblResults.Text = "Error";
                lblResults.Text += err.Message;
            }
            finally{
                myConnection.Close();
            }

            string selectSQL;

            String Login = txtLogin.Text;
            selectSQL = "SELECT * FROM Client WHERE Login = @Login";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            cmd.Parameters.AddWithValue("@Login", txtLogin.Text);


            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();
                //lResults.Text = "<b>" + reader["Login"];
                //lResults.Text += ", " + reader["Password"] + "<br />";
                String Password = txtPass.Text;

                if (Password == (string)reader["Password"])
                {
                    lname = reader["LastName"] + "";
                    fname = reader["FirstName"] + "";
                    Session["fname"] = fname;
                    Session["lname"] = lname;
                    Session["ClientID"] = reader["ClientID"];
                    Session["login"] = txtLogin.Text;

                    Response.Redirect("ClientInfo.aspx");

                }
                else
                    //Response.Redirect("WrongCredentials.aspx");
                    lblResults.Text = "Wrong Password!";


                reader.Close();
            }
            catch(Exception err)
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