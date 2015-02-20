<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="PortfolioManagement.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <center><h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">Menu</h1>
        <br />
        <br />
        <asp:Button ID="btnBuy" runat="server" OnClick="btnBuy_Click" Text="Buy" Font-Names="Georgia" CssClass="btn-info" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSell" runat="server" OnClick="btnSell_Click" Text="Sell" Font-Names="Georgia" CssClass="btn-info" />
</center>
</asp:Content>
