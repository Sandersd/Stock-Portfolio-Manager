<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeUpdateClient.aspx.cs" Inherits="PortfolioManagement.EmployeeUpdateClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel = "stylesheet" href = "mystyle.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <center>

    <h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">
        <br />
        <br />
        Update Client</h1>
    </center>

    &nbsp;&nbsp;&nbsp;
        <br />
        <UL class= "navbar">

	<LI> <A HREF="EmployeeInfo.aspx">Info</A> </LI>
	<LI> <A HREF="EmployeeAccounts.aspx">Accounts</A> </LI>
      <LI> <A HREF="EmployeeClients.aspx">Clients</A> </LI>
	<LI> <A HREF="EmployeeHoldings.aspx">Holdings</A> </LI>
    <LI> <A HREF="EmployeeHistory.aspx">History</A> </LI>
   
    <LI> <A HREF="EmployeeNew.aspx">New</A> </LI>
    <LI> <A HREF="EmployeeUpdate.aspx">Update</A> </LI>
    <LI> <A HREF="EmployeeDelete.aspx">Delete</A> </LI>
            <LI> <A HREF="Default.aspx">Home</A> </LI>
	</UL>
        <center>
    <div>
    
        Client ID&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ClientIDd" runat="server" AutoPostBack="True" DataSourceID="ClientIDataSource" DataTextField="ClientId" DataValueField="ClientId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="ClientIDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT [ClientId] FROM [Client]"></asp:SqlDataSource>
        <br />
        SSN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSSN" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PriceValidator" runat="server" ControlToValidate="txtSSN" ErrorMessage="Enter SSN" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">First Name</asp:TextBox>
        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Last Name</asp:TextBox>
        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Address</asp:TextBox>
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">City</asp:TextBox>
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Postal Code</asp:TextBox>
        <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Phone</asp:TextBox>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox7" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">SSN</asp:TextBox>
        <asp:TextBox ID="txtSSNew" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox8" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Login</asp:TextBox>
        <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox9" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Password</asp:TextBox>
        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox10" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Email</asp:TextBox>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox11" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Date of Birth</asp:TextBox>
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
