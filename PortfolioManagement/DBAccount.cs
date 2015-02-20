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
    public class DBAccount
    {
        private string connectionString;

        public DBAccount()
        {
            connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            
        }

        public AccountClass GetAccount(int AccountNo)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string selectSQL = "Select * from Account Where AccountNo=@AccountNo";
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            

            cmd.Parameters.Add(new SqlParameter("@AccountNo", AccountNo));
            //cmd.Parameters["@AccountNo"].Value = AccountNo;

            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                // Get the first row.
                reader.Read();
                
                int acno = (int)reader["AccountNo"];
                int clid = (int)reader["ClientID"];
                double bala = Convert.ToDouble(reader["Balance"]);
                string typ = (string)reader["Type"];
                //string crea = (string)reader["Created"];
                
                AccountClass acnt = new AccountClass(
                    (int)reader["AccountNo"], (int)reader["ClientID"], Convert.ToDouble(reader["Balance"]),
                    (string)reader["Type"]);
                reader.Close();
                return acnt;
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