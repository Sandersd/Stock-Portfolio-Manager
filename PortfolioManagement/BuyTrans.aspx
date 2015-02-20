<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuyTrans.aspx.cs" Inherits="PortfolioManagement.BuyTrans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <center><h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">Buy Transactions</h1>
        <p>&nbsp;</p>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Choose an Account</p>
        <p>
            <asp:DropDownList ID="ddAccount" runat="server" AutoPostBack="True" DataSourceID="AccountDataSource" DataTextField="AccountNo" DataValueField="AccountNo" Font-Names="Georgia" BackColor="#99CCFF">
            </asp:DropDownList>
            <asp:SqlDataSource ID="AccountDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT [AccountNo], [Balance] FROM [Account] WHERE ([ClientID] = @ClientID)">
                <SelectParameters>
                    <asp:SessionParameter Name="ClientID" SessionField="ClientID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Symbol&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSymbol" runat="server" Font-Names="Georgia" BackColor="#99CCFF"></asp:TextBox>
            <asp:RequiredFieldValidator ID="SymbolValidator" runat="server" ControlToValidate="txtSymbol" ErrorMessage="Enter Symbol" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Shares&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtShares" runat="server" Font-Names="Georgia" BackColor="#99CCFF"></asp:TextBox>
            <asp:RequiredFieldValidator ID="SharesValidator" runat="server" ControlToValidate="txtShares" ErrorMessage="Enter Shares" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPrice" runat="server" Font-Names="Georgia" BackColor="#99CCFF"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PriceValidator" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="btnBuy" runat="server" OnClick="btnBuy_Click" Text="Buy" Font-Names="Georgia" CssClass="btn-info" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblResults" runat="server" Font-Names="Georgia"></asp:Label>
        </p></center>
</asp:Content>
