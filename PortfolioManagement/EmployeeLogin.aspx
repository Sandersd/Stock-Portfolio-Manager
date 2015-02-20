<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="PortfolioManagement.EmployeeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel = "stylesheet" href = "mystyle.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <center>

    <h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: auto;">
        <br />
        <br />
        Login</h1>
<p>
        </p>
<p style="font-family: Georgia, 'Times New Roman', Times, serif">
    Login:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtLogin" runat="server" Font-Names="Georgia" BorderStyle="Dotted"></asp:TextBox>
    <asp:RequiredFieldValidator ID="LoginValidator" runat="server" ControlToValidate="txtLogin" ErrorMessage="Enter Login" ForeColor="#CC3300" Font-Names="Georgia"></asp:RequiredFieldValidator>
</p>

<p style="font-family: Georgia, 'Times New Roman', Times, serif">
    Password:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPass" TextMode = "Password" runat="server" Font-Names="Georgia" BorderStyle="Dotted" ></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="txtPass" ErrorMessage="Enter Password" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    
</p>
        <p>
    <asp:Button ID="btSubmit" runat="server" OnClick="btSubmit_Click" Text="Submit" Font-Names="Georgia" CssClass="navbar" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblResults" runat="server" ForeColor="#CC3300" Font-Names="Georgia"></asp:Label>
    
</p>

        </center>
    </div>
    </form>
</body>
</html>
