using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace PortfolioManagement
{
    public class DBClient
    {
        private string connectionString;

        public DBClient()
        {
            connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            
        }

        public ClientClass GetClient(int ClientID)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string selectSQL = "Select * from Client Where ClientID=@ClientID";
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            

            cmd.Parameters.Add(new SqlParameter("@ClientID", ClientID));
           

            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                // Get the first row.
                reader.Read();
                
                
                
                ClientClass clnt = new ClientClass(
                    (int)reader["ClientID"], (string)reader["LastName"], (string)reader["FirstName"], (string)reader["Login"],
                    (string)reader["Password"]);
                reader.Close();
                return clnt;
            }
            catch (Exception err)
            {

                throw new ApplicationException("Data error.");
                //Handle an error by displaying the information.

            }
            finally
            {
                con.Close();
            }
        }
    }
}