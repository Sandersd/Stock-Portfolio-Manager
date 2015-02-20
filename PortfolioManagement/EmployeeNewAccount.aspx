<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeNewAccount.aspx.cs" Inherits="PortfolioManagement.EmployeeNewAccount" %>

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
        New Account</h1>
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
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Client ID&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ClientIDd" runat="server" DataSourceID="ClientIDataSource" DataTextField="ClientId" DataValueField="ClientId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="ClientIDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT [ClientId] FROM [Client]"></asp:SqlDataSource>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">
        <br />
        Balance&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="txtBalance" runat="server" Font-Names="Georgia"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PriceValidator" runat="server" ControlToValidate="txtBalance" ErrorMessage="Enter Balance" ForeColor="Red"></asp:RequiredFieldValidator>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">
        <br />
        Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="txtType" runat="server" Font-Names="Georgia"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PriceValidator0" runat="server" ControlToValidate="txtType" ErrorMessage="Enter Type" ForeColor="Red"></asp:RequiredFieldValidator>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">&nbsp;<p style="font-family: Georgia, 'Times New Roman', Times, serif">
        <asp:Button ID="btnSubmit" runat="server" Font-Names="Georgia" OnClick="btnSubmit_Click" Text="Submit" BorderStyle="Dotted" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblResults" runat="server" Font-Names="Georgia"></asp:Label>
        <br />
&nbsp;</center>
    
    </div>
    </form>
</body>
</html>
