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
    public partial class EmployeeUpdateClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";


            SqlConnection con = new SqlConnection(connectionString);


            string selectSQL;


            selectSQL = "SELECT * FROM Client WHERE SSN = @SSN AND ClientID = @ClientID";

            SqlCommand cmd = new SqlCommand(selectSQL, con);
            cmd.Parameters.AddWithValue("@SSN", txtSSN.Text);
            cmd.Parameters.AddWithValue("@ClientID", ClientIDd.SelectedValue);


            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();
                txtFName.Text = "" + reader["FirstName"];
                txtLName.Text = "" + reader["LastName"];
                txtLogin.Text = "" + reader["Login"];
                txtCity.Text = "" + reader["City"];
                txtPostalCode.Text = "" + reader["PostalCode"];
                txtSSNew.Text = "" + reader["SSN"];
                txtDate.Text = "" + reader["DateOfBirth"];
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
            lblStatus.Text = "Updating Client...";
            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            SqlConnection myConnection = new SqlConnection(connectionString);

            SqlConnection con = new SqlConnection(connectionString);


            int clientID = Convert.ToInt32(Session["ClientID"]);




            string updateSQL;
            updateSQL = "Update Client set Login=@Login, DateOfBirth=@Date, SSN=@SSNew, StreetAddress=@Address, FirstName=@FirstName, LastName=@LastName, Password=@Password, City=@City, PostalCode=@PostalCode, CellPhone=@Phone, Email = @Email WHERE ClientId=@ClientID";


            string phone = (txtPhone.Text);
            string pass = txtPass.Text;
            string email = txtEmail.Text;

            SqlCommand cmd = new SqlCommand(updateSQL, con);
            cmd.Parameters.AddWithValue("@Phone", phone);
            cmd.Parameters.AddWithValue("@City", txtCity.Text);
            cmd.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
            cmd.Parameters.AddWithValue("@Login", txtLogin.Text);
            cmd.Parameters.AddWithValue("@Date", txtDate.Text);
            cmd.Parameters.AddWithValue("@SSNew", txtSSNew.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@FirstName", txtFName.Text);
            cmd.Parameters.AddWithValue("@LastName", txtLName.Text);
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

" Client updated ";
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
