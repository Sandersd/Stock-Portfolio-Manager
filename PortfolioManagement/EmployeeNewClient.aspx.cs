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
    public partial class EmployeeNewClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            SqlConnection myConnection = new SqlConnection(connectionString);


            
            DateTime dateBirth = Convert.ToDateTime(txtBirthday.Text);

            string insertSQL;
            insertSQL = "INSERT INTO CLIENT (";
            insertSQL += "FirstName, LastName, Login, DateOfBirth, Password, StreetAddress, City, PostalCode, CellPhone, SSN) ";
            insertSQL += "VALUES ('";
            insertSQL += txtFname.Text + "','";
            insertSQL += txtLname.Text + "','";
            insertSQL += txtLogin.Text + "','";
            insertSQL += dateBirth + "','";
            insertSQL += txtPass.Text + "','";
            insertSQL += txtAddress.Text + "','";
            insertSQL += txtCity.Text + "','";
            insertSQL += txtPostalCode.Text + "','";
            insertSQL += txtPhone.Text + "','";
            insertSQL += txtSSN.Text +  "')";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            int added = 0;

            try
            {
                con.Open();
                added = cmd.ExecuteNonQuery();
                lblResult.Text = added.ToString() + " records inserted.";
            }
            catch (Exception err)
            {
                lblResult.Text = "Error inserting record.";
                lblResult.Text += err.Message;
            }
            finally
            {
                con.Close();
            }

            txtFname.Text = "";
            txtLname.Text = "";
            txtLogin.Text = "";
            txtPass.Text = "";
            txtBirthday.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtPostalCode.Text = "";
            txtPhone.Text = "";
            txtSSN.Text = "";
            

            /*
             * [StreetAddress] NVARCHAR (30) NULL,
             [City]          NVARCHAR (20) NULL,
    [PostalCode]    NVARCHAR (10) NULL,
    [HomePhone]     NVARCHAR (15) NULL,
    [WorkPhone]     NVARCHAR (15) NULL,
    [CellPhone]     NVARCHAR (15) NULL,
    [SSN]           NVARCHAR (15) NULL,*/
        }
    }
}