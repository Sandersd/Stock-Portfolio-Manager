<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDelete.aspx.cs" Inherits="PortfolioManagement.EmployeeDelete" %>

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
        Delete</h1>
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
                Enter Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPass" TextMode="Password" runat="server" BorderStyle="Dotted"></asp:TextBox>
        <br />
        <asp:Button ID="btnGet" runat="server" OnClick="btnGet_Click" Text="Get Delete" BorderStyle="Dotted" />
        <asp:Label ID="lblStatus" runat="server" ForeColor="#FF3300"></asp:Label>
    
                <br />
                <br />
    
        <asp:Button ID="btnClient" runat="server" BorderStyle="Dotted" OnClick="btnClient_Click" Text="Client" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAccount" runat="server" BorderStyle="Dotted" OnClick="btnAccount_Click" Text="Account" />
    
    </div>
    </form>
</body>
</html>