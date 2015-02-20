<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PortfolioManagement.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>

    <h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">
        Login</h1>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p style="font-family: Georgia, 'Times New Roman', Times, serif">
    Login:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtLogin" runat="server" Font-Names="Georgia" BackColor="#99CCFF"></asp:TextBox>
    <asp:RequiredFieldValidator ID="LoginValidator" runat="server" ControlToValidate="txtLogin" ErrorMessage="Enter Login" ForeColor="#CC3300" Font-Names="Georgia"></asp:RequiredFieldValidator>
</p>
<p style="font-family: Georgia, 'Times New Roman', Times, serif">
    Password:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPass" TextMode = "Password" runat="server" Font-Names="Georgia" BackColor="#99CCFF" ></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="txtPass" ErrorMessage="Enter Password" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    
</p>
        <p>
    <asp:Button ID="btSubmit" runat="server" OnClick="btSubmit_Click" Text="Submit" Font-Names="Georgia" CssClass="btn-info" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblResults" runat="server" ForeColor="#CC3300" Font-Names="Georgia"></asp:Label>
    
</p>

        </center>
</asp:Content>
