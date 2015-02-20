using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PortfolioManagement
{
    public class ClientClass
    {
        private int clientID;
        private string lastName, firstName, login, password;

        public int ClientID
        {
            get { return clientID; }
            set { clientID = value; }
        }

        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }

        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }

        public string Login
        {
            get { return login; }
            set { login = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public ClientClass(int clientID, string lastName, string firstName, string login, string password) 
        {
            this.clientID = clientID;
            this.lastName = lastName;
            this.firstName = firstName;
            this.login = login;
            this.password = password;

        }

        public ClientClass()
        {

        }
    }
}