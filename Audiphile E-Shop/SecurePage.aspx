<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="SecurePage.aspx.cs" Inherits="Audiphile_E_Shop.SecurePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to Audiophile E-Shop Ltd</h1>
    <asp:Button ID="logout" runat="server" Text="logout" OnClick="logout_Click" />
</asp:Content>
