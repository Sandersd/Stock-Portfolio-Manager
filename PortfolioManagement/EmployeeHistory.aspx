﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeHistory.aspx.cs" Inherits="PortfolioManagement.EmployeeHistory" %>

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
        <br />
        History</h1>
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
    <div>
    
        Enter Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPass" TextMode="Password" runat="server" BorderStyle="Dotted"></asp:TextBox>
        <br />
        <asp:Button ID="btnGet" runat="server" OnClick="btnGet_Click" Text="Get History" BorderStyle="Dotted" />
        <asp:Label ID="lblStatus" runat="server" ForeColor="#FF3300"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="HistoryGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="SellId" DataSourceID="HistoryDataSource" Visible="False" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="SellId" HeaderText="SellId" InsertVisible="False" ReadOnly="True" SortExpression="SellId" />
                <asp:BoundField DataField="Symbol" HeaderText="Symbol" SortExpression="Symbol" />
                <asp:BoundField DataField="Shares" HeaderText="Shares" SortExpression="Shares" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="SellDate" HeaderText="SellDate" SortExpression="SellDate" />
                <asp:BoundField DataField="TransId" HeaderText="TransId" SortExpression="TransId" />
                <asp:BoundField DataField="TransDate" HeaderText="TransDate" SortExpression="TransDate" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" SortExpression="AccountNo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="HistoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT * FROM [History]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="HoldingsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT * FROM [Holdings]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="AccountsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" DeleteCommand="DELETE FROM [Account] WHERE [AccountNo] = @AccountNo" InsertCommand="INSERT INTO [Account] ([ClientID], [Balance], [Type], [Created]) VALUES (@ClientID, @Balance, @Type, @Created)" SelectCommand="SELECT * FROM [Account]" UpdateCommand="UPDATE [Account] SET [ClientID] = @ClientID, [Balance] = @Balance, [Type] = @Type, [Created] = @Created WHERE [AccountNo] = @AccountNo">
            <DeleteParameters>
                <asp:Parameter Name="AccountNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ClientID" Type="Int32" />
                <asp:Parameter Name="Balance" Type="Decimal" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Created" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClientID" Type="Int32" />
                <asp:Parameter Name="Balance" Type="Decimal" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Created" Type="DateTime" />
                <asp:Parameter Name="AccountNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
