<%@ Page Title="Upload Image" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Audiphile_E_Shop.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="ImageUpload" runat="server" />
    <asp:Button ID="txtUpload" runat="server" Text="Upload" OnClick="txtUpload_Click" />
    <asp:Image ID="CurrentImage" runat="server" />
</asp:Content>
