<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientInfo.aspx.cs" Inherits="PortfolioManagement.ClientInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>

    <h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">
        Client</h1>
    
    &nbsp;&nbsp;&nbsp;
        <br />
        <br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="ClientDataSource" Height="50px" Width="125px" Font-Names="Georgia" BackColor="#99CCFF">
        <Fields>
            <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Fields>
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ClientDataSource" runat="server" SelectMethod="GetClient" TypeName="PortfolioManagement.DBClient">
        <SelectParameters>
            <asp:SessionParameter Name="ClientID" SessionField="ClientID" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
