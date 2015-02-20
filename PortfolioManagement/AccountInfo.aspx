<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccountInfo.aspx.cs" Inherits="PortfolioManagement.AccountInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>

    <h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">
       Account</h1>
     <p>
        <br />
    </p>
    <p style="font-family: Georgia, 'Times New Roman', Times, serif">
        Select an Account&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="AccountDropDown" DataTextField="AccountNo" DataValueField="AccountNo" Font-Names="Georgia" BackColor="#99CCFF" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="AccountDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT [AccountNo] FROM [Account] WHERE ([ClientID] = @ClientID)">
            <SelectParameters>
                <asp:SessionParameter Name="ClientID" SessionField="ClientID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="AccountDataSource" Height="50px" Width="125px" Font-Names="Georgia" BackColor="#99CCFF">
            <Fields>
                <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" SortExpression="AccountNo" />
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="AccountDataSource" runat="server" SelectMethod="GetAccount" TypeName="PortfolioManagement.DBAccount">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="AccountNo" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>
