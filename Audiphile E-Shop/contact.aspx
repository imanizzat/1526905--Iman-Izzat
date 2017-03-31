<%@ Page Title="Contact | Audiophile Ltd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Audiphile_E_Shop.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <article><p>
    First name:</p>
<p>
    <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
</p>
<p>
    Last name:</p>
<p>
    <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
</p>
<p>
    Email:</p>
<p>
    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
</p>
<p>
    Subject:</p>
<p>
    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
</p>
<p>
    Messages:</p>
<p>
    <asp:TextBox ID="txtMessage" runat="server" Height="172px" Width="497px" TextMode="MultiLine"></asp:TextBox>
</p>
<p>
    <asp:Button ID="txtSubmit" runat="server" Text="Submit" />
</p>
        </article>
</asp:Content>
