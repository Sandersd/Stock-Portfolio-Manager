<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PortfolioManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
    <div class="jumbotron" style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">
        Dylan Sanders<br />
        Portfolio Manager<br />
        CS 3051<br />
        Fall 2014</div>
            
    
    <center>
        <asp:Button ID="btnLogIn" runat="server" OnClick="btnLogIn_Click" Text="Log In" BackColor="#99CCFF" BorderStyle="Outset" CssClass="btn-info" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEmployee" runat="server" OnClick="btnEmployee_Click" Text="Employee Portal" BackColor="#99CCFF" BorderStyle="Outset" CssClass="btn-info" />
        </center>
    <div class="row">
    </div>

</asp:Content>
