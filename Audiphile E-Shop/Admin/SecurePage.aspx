<%@ Page Title="Secure Page" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="SecurePage.aspx.cs" Inherits="Audiphile_E_Shop.Admin.adminRedirect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to the Admin Page</h1>
    <ul>
        <li><a href="modifyProducts.aspx">Add products</a></li>
    </ul>
</asp:Content>
