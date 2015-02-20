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
    public partial class UpdateClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        
        
        protected void btnSearch_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";


            SqlConnection con = new SqlConnection(connectionString);


            string selectSQL;


            selectSQL = "SELECT * FROM Client WHERE SSN = @SSN AND Password = @Password";

            SqlCommand cmd = new SqlCommand(selectSQL, con);
            cmd.Parameters.AddWithValue("@SSN", txtSSN.Text);
            cmd.Parameters.AddWithValue("@Password", txtValid.Text);


            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();
                txtFname.Text = "" + reader["FirstName"];
                txtLname.Text = "" + reader["LastName"];
                txtPass.Text = "" + reader["Password"];
                txtPhone.Text = "" + reader["CellPhone"];
                txtEmail.Text = "" + reader["Email"];
                txtAddress.Text = "" + reader["StreetAddress"];
                Session["ClientID"] = reader["ClientID"];



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


            int clientID = Convert.ToInt32(Session["ClientID"]);




            string updateSQL;
            updateSQL = "Update Client set Password=@Password, CellPhone=@Phone, Email = @Email WHERE ClientId=@ClientID";


            string phone = (txtPhone.Text);
            string pass = txtPass.Text;
            string email = txtEmail.Text;
            SqlCommand cmd = new SqlCommand(updateSQL, con);
            cmd.Parameters.AddWithValue("@Phone", phone);
            cmd.Parameters.AddWithValue("@Password", pass);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@ClientID", Convert.ToInt32(Session["ClientID"]));


            //Try to open the database and delete the record.


            int updated = 0;


            try
            {
                con.Open();
                updated = cmd.ExecuteNonQuery();
                lblStatus.Text = updated +

"Client updated ";
            }


            catch (Exception err)
            {
                lblStatus.Text =

"Error updating client.";
                lblStatus.Text += err.Message;
            }


            finally
            {
                con.Close();
            }
        }

        



    }
}
