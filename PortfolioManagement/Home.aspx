<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PortfolioManagement.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel = "stylesheet" href = "mystyle.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
    <div class="jumbotron" style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">
        Dylan Sanders<br />
        Portfolio Manager<br />
        CS 3051<br />
        Fall 2014</div>

    <div>
    
        <br />
        <br />
    
    <center>
        <asp:Button ID="btnLogIn" runat="server" OnClick="btnLogIn_Click" Text="Log In" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEmployee" runat="server" OnClick="btnEmployee_Click" Text="Employee Portal" />
        </center></div>
    </form>
</body>
</html>
