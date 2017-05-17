<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="productsGridview.aspx.cs" Inherits="Audiphile_E_Shop.productsGridview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526905_co5027ConnectionString %>" SelectCommand="SELECT [Name], [Price] FROM [products]"></asp:SqlDataSource>
</asp:Content>
