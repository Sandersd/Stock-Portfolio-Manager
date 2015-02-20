using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace PortfolioManagement
{
    public class DBEmployee
    {
        private string connectionString;

        public DBEmployee()
        {
            connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            
        }

        public EmployeeClass GetEmployee(int EmployeeID)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string selectSQL = "Select * from Employee Where EmployeeID=@EmployeeID";
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            

            cmd.Parameters.Add(new SqlParameter("@EmployeeID", EmployeeID));
           

            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                // Get the first row.
                reader.Read();
                
                
                
                EmployeeClass emply = new EmployeeClass(
                    (int)reader["EmployeeID"], (string)reader["LastName"], (string)reader["FirstName"], (string)reader["Login"],
                    (string)reader["Password"]);
                reader.Close();
                return emply;
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
    
