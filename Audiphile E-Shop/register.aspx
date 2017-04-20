<%@ Page Title="Register | Audiophile E-shop" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Audiphile_E_Shop.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="txtRegUsername" Text="Username:" runat="server"></asp:Label>
    <asp:TextBox ID="regUsername" runat="server"></asp:TextBox>
     <asp:Label ID="txtRegEmail" Text="Email:" runat="server"></asp:Label>
    <asp:TextBox ID="regEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="txtRegpassword" Text="Password:" runat="server"></asp:Label>
    <asp:TextBox ID="regPassword" runat="server"></asp:TextBox>
    <asp:Button ID="btnRegister" text="register" runat="server" OnClick="btnRegister_Click" />
    <asp:Literal ID="litRegister" runat="server"></asp:Literal>
</asp:Content>
