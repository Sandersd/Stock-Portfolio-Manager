<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmBuy.aspx.cs" Inherits="PortfolioManagement.ConfirmBuy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <center><h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">Confirm Transaction</h1>
        <p>&nbsp;</p>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Are you sure you want to Buy:</p>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Symbol:&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSymbol" runat="server" Text="Symbol" Font-Names="Georgia" ForeColor="#FF3300"></asp:Label>
        </p>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Shares:&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblShares" runat="server" Text="Shares" Font-Names="Georgia" ForeColor="#FF3300"></asp:Label>
        </p>
        <p style="font-family: Georgia, 'Times New Roman', Times, serif">Cost:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCost" runat="server" Text="Cost" Font-Names="Georgia" ForeColor="#FF3300"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnBuy" runat="server" OnClick="btnBuy_Click" Text="Buy" Font-Names="Georgia" CssClass="btn-info " />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblResults" runat="server" Font-Names="Georgia"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="Return" Font-Names="Georgia" CssClass="btn-info " />
        </p></center>


</asp:Content>
