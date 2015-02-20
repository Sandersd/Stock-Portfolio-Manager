<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="PortfolioManagement.EmployeeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel = "stylesheet" href = "mystyle.css" />
    <title></title>


    </head>
<body>
    <form id="form1" runat="server">
        <center>

    <h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">
        <br />
        Employee</h1>
    </center>

    &nbsp;&nbsp;&nbsp;
        <br />
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
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="EmployeeDataSource" Height="50px" Width="125px" Font-Names="Georgia">
        <Fields>
            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Fields>
    </asp:DetailsView>
        <asp:ObjectDataSource ID="EmployeeDataSource" runat="server" SelectMethod="GetEmployee" TypeName="PortfolioManagement.DBEmployee">
            <SelectParameters>
                <asp:SessionParameter Name="EmployeeID" SessionField="EmployeeID" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>

    <div>
    
    </div>
    </form>
</body>
</html>
