<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="Audiphile_E_Shop.account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section >
    <p>Username:</p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <p>Password:</p>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="txtSignin" runat="server" Text="Sign In" />
    <br />
    Dont have an account? <a href="#">Register now!</a>
        </section>
</asp:Content>
