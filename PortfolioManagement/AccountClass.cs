using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PortfolioManagement
{
    public class AccountClass
    {
        private int accountNo;
        private int clientID;
        private double balance;
        private string type;
        private string created;

        public int AccountNo
        {
            get { return accountNo; }
            set { accountNo = value; }
        }

        public int ClientID
        {
            get { return clientID; }
            set { clientID = value; }
        }

        public double Balance
        {
            get { return balance; }
            set { balance = value; }
        }

        public string Type
        {
            get { return type; }
            set { type = value; }
        }

        /*public string Created
        {
            get { return created; }
            set { created = value; }
        }*/

        public AccountClass(int accountNo, int clientID, double balance, string type) 
        {
            this.accountNo = accountNo;
            this.clientID = clientID;
            this.balance = balance;
            this.type = type;
            //this.created = created;
        }

        public AccountClass()
        {

        }


    }
}