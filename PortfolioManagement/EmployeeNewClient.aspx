<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeNewClient.aspx.cs" Inherits="PortfolioManagement.EmployeeNewClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel = "stylesheet" href = "mystyle.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <center>

    <h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">
        <br />
        <br />
        New Client</h1>
    </center>

    &nbsp;&nbsp;&nbsp;
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
            <p style="font-family: Georgia, 'Times New Roman', Times, serif">
           First Name
    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
          
                <asp:RequiredFieldValidator ID="PriceValidator" runat="server" ControlToValidate="txtFname" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
          
           </p>
    <p style="font-family: Georgia, 'Times New Roman', Times, serif">
          
        Last Name&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PriceValidator0" runat="server" ControlToValidate="txtLname" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
    <p style="font-family: Georgia, 'Times New Roman', Times, serif">
        Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PriceValidator1" runat="server" ControlToValidate="txtLogin" ErrorMessage="Enter Login" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p style="font-family: Georgia, 'Times New Roman', Times, serif">
        Password&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PriceValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p style="font-family: Georgia, 'Times New Roman', Times, serif">
        Birthday&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PriceValidator3" runat="server" ControlToValidate="txtBirthday" ErrorMessage="Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p style="font-family: Georgia, 'Times New Roman', Times, serif">
        &nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
&nbsp;</p>
            <p style="font-family: Georgia, 'Times New Roman', Times, serif">
        &nbsp;City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </p>
            <p style="font-family: Georgia, 'Times New Roman', Times, serif">
                Postal Code&nbsp;
                <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
            </p>
            <p style="font-family: Georgia, 'Times New Roman', Times, serif">
                Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </p>
            <p style="font-family: Georgia, 'Times New Roman', Times, serif; margin-left: 40px;">
                SSN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSSN" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
           <p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Font-Names="Georgia" BorderStyle="Dotted" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblResult" runat="server" Font-Names="Georgia"></asp:Label>
    </p></center>
    <div>
    
    </div>
    </form>
</body>
</html>
