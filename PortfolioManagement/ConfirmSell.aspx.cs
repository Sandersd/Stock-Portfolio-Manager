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
    public partial class ConfirmSell : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSymbol.Text = (string)Session["Symbol"];
            lblShares.Text = Convert.ToString(Session["NumShares"]);
            lblCost.Text = Convert.ToString(Session["Cost"]);

        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=srv-gr-msf;Initial Catalog=StockPortfolio;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            string Date = DateTime.Now.ToString("M/d/yyyy h:mm:ss tt");


           string SQLDelete = "DELETE from Holdings WHERE Symbol = @Symbol AND AccountNo = @AccountNo AND TransId < @TransId";
                 SqlCommand cmdel = new SqlCommand(SQLDelete, con);
                    cmdel.Parameters.AddWithValue("@Symbol", (Session["Symbol"]));
                    cmdel.Parameters.AddWithValue("@AccountNo", (Session["AccountNo"]));
                    cmdel.Parameters.AddWithValue("@TransId", (Session["TransId"]));

                    try
                    {
                        con.Open();
                        int updated = cmdel.ExecuteNonQuery();
                        lblResults.Text = updated + " Holding updated ";
                    }


                    catch (Exception err)
                    {
                        lblResults.Text = "Error updating client.";
                        lblResults.Text += err.Message;
                    }


                    finally
                    {
                        con.Close();
                    }





            // if shares < holdings --> update holdings - shares sold and insert in history

            if (Convert.ToInt32(Session["NumShares"]) < Convert.ToInt32(Session["HeldShares"]))
            {
                string updateHoldingsSQL = "Update Holdings set Shares = @Shares WHERE TransId = @TransId";
               

                
                SqlCommand cmd = new SqlCommand(updateHoldingsSQL, con);
                cmd.Parameters.AddWithValue("@Shares", (Convert.ToInt32(Session["HeldShares"]) - Convert.ToInt32(Session["NumShares"])));
                cmd.Parameters.AddWithValue("@TransId", (Session["TransId"]));



                int updated = 0;


                try
                {
                    con.Open();
                    updated = cmd.ExecuteNonQuery();
                    lblResults.Text = updated + " Holding updated ";
                }


                catch (Exception err)
                {
                    lblResults.Text = "Error updating client.";
                    lblResults.Text += err.Message;
                }


                finally
                {
                    con.Close();
                }

            }


            //if shares == holdings --> delete row and insert in history

            if (Convert.ToInt32(Session["NumShares"]) == Convert.ToInt32(Session["HeldShares"]))
            {
                string deleteHoldingsSQL = "DELETE FROM Holdings WHERE TransId = @TransId";


                SqlCommand Delcmd = new SqlCommand(deleteHoldingsSQL, con);
                Delcmd.Parameters.AddWithValue("@TransId", (Session["TransId"]));

                int updated = 0;

                 try
                {
                    con.Open();
                    updated = Delcmd.ExecuteNonQuery();
                    lblResults.Text = updated + " Holding updated ";
                }


                catch (Exception err)
                {
                    lblResults.Text = "Error updating client.";
                    lblResults.Text += err.Message;
                }


                finally
                {
                    con.Close();
                }

            }

            

            string insertSQL = "INSERT INTO History (Symbol, Shares, Price, SellDate, TransId, TransDate, Cost, AccountNo) VALUES ('";
            insertSQL += (string)Session["Symbol"] + "','";
            insertSQL += Session["NumShares"] + "','";
            insertSQL += Session["Price"] + "','";
            insertSQL += Date + "','";
            insertSQL += Session["TransId"] + "','";
            insertSQL += Session["Date"] + "','";
            insertSQL += Session["realCost"] + "','";
            insertSQL += Session["AccountNo"] + "')";



            SqlCommand Insercmd = new SqlCommand(insertSQL, con);

            int added = 0;

            try
            {
                con.Open();
                added = Insercmd.ExecuteNonQuery();
                lblResults.Text = added.ToString() + " records inserted.";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error inserting record.";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }

            

            string updateSQL;
            updateSQL = "Update Account set Balance=@Balance WHERE AccountNo=@AccountNo";

            double NewBalance = Convert.ToDouble(Session["Balance"]) + Convert.ToDouble(Session["Cost"]);

            SqlCommand Upcmd = new SqlCommand(updateSQL, con);
            Upcmd.Parameters.AddWithValue("@Balance", NewBalance);
            Upcmd.Parameters.AddWithValue("@AccountNo", (Session["AccountNo"]));

            int Newupdated = 0;


            try
            {
                con.Open();
                Newupdated = Upcmd.ExecuteNonQuery();
                lblResults.Text = Newupdated +

" Account updated ";
            }


            catch (Exception err)
            {
                lblResults.Text =

"Error updating Account.";
                lblResults.Text += err.Message;
            }


            finally
            {
                con.Close();
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellTrans.aspx");
        }
    }
}