<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeUpdateAccount.aspx.cs" Inherits="PortfolioManagement.EmployeeUpdateAccount" %>

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
        Update Account</h1>
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
    
        Account #&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="AccountNoDD" runat="server" AutoPostBack="True" DataSourceID="AccountIDataSource" DataTextField="AccountNo" DataValueField="AccountNo">
        </asp:DropDownList>
        <asp:SqlDataSource ID="AccountIDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT [AccountNo] FROM [Account]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Client ID</asp:TextBox>
        <asp:TextBox ID="txtClientID" runat="server" ReadOnly="True" BackColor="#FF5050"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Balance</asp:TextBox>
        <asp:TextBox ID="txtBalance" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Type</asp:TextBox>
        <asp:TextBox ID="txtType" runat="server" ReadOnly="True" BackColor="#FF5050"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" BorderColor="Transparent" ReadOnly="True">Created</asp:TextBox>
        <asp:TextBox ID="txtDate" runat="server" ReadOnly="True" BackColor="#FF5050"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Balance" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
