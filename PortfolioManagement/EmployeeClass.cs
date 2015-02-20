using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PortfolioManagement
{
    public class EmployeeClass
    {

        private int employeeID;
        private string lastName, firstName, login, password;

        public int EmployeeID
        {
            get { return employeeID; }
            set { employeeID = value; }
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

        public EmployeeClass(int employeeID, string lastName, string firstName, string login, string password) 
        {
            this.employeeID = employeeID;
            this.lastName = lastName;
            this.firstName = firstName;
            this.login = login;
            this.password = password;

        }

        public EmployeeClass()
        {

        }
    }
}