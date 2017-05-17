<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="viewProduct.aspx.cs" Inherits="Audiphile_E_Shop.product.viewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div>
    <h2>
        <asp:Literal ID="litTitle" runat="server"></asp:Literal>
    </h2>
        <small><asp:Literal ID="litDate" runat="server"></asp:Literal></small>
        <p><asp:Literal ID="litBody" runat="server"></asp:Literal></p>
    </div>
        <asp:Image ID="imageControl" runat="server" />



</asp:Content>
