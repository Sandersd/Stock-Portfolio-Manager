﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Holdings.aspx.cs" Inherits="PortfolioManagement.Holdings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <center><h1 style="padding: inherit; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 30px; color: #000080; text-transform: none; text-decoration: underline overline blink; text-align: center; letter-spacing: .25em; position: relative; cursor: crosshair;">Holdings</h1>
       <p>&nbsp;</p>
       <p style="font-family: Georgia, 'Times New Roman', Times, serif">Select an Account&nbsp;&nbsp;&nbsp;
           <asp:DropDownList ID="Accountdd" runat="server" AutoPostBack="True" DataSourceID="AccountDataSource" DataTextField="AccountNo" DataValueField="AccountNo" Font-Names="Georgia" BackColor="#99CCFF">
           </asp:DropDownList>
           <asp:SqlDataSource ID="AccountDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT [AccountNo] FROM [Account] WHERE ([ClientID] = @ClientID)">
               <SelectParameters>
                   <asp:SessionParameter Name="ClientID" SessionField="ClientID" Type="Int32" />
               </SelectParameters>
           </asp:SqlDataSource>
       </p>
       <p>
           <asp:GridView ID="HoldingsGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="TransId" DataSourceID="HoldingsDataSource" Font-Names="Georgia" BackColor="#99CCFF" >
               <Columns>
                   <asp:BoundField DataField="TransId" HeaderText="TransId" InsertVisible="False" ReadOnly="True" SortExpression="TransId" />
                   <asp:BoundField DataField="Symbol" HeaderText="Symbol" SortExpression="Symbol" />
                   <asp:BoundField DataField="Shares" HeaderText="Shares" SortExpression="Shares" />
                   <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                   <asp:BoundField DataField="TransDate" HeaderText="TransDate" SortExpression="TransDate" />
                   <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" SortExpression="AccountNo" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="HoldingsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StockPortfolioConnectionString2 %>" SelectCommand="SELECT * FROM [Holdings] WHERE ([AccountNo] = @AccountNo)">
               <SelectParameters>
                   <asp:ControlParameter ControlID="Accountdd" Name="AccountNo" PropertyName="SelectedValue" Type="Int32" />
               </SelectParameters>
           </asp:SqlDataSource>
       </p></center> 
</asp:Content>
