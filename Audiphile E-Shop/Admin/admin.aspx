<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Audiphile_E_Shop.admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <asp:PlaceHolder ID="btnLogin" runat="server" Visible="false">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblAdminUsername" runat="server" Text="Admin Username:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAdminUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAdminPassword" runat="server" Text="Admin Password:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAdminPassword" runat="server" TextMode="Password"></asp:TextBox><asp:Literal ID="litAdminLoginError" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAdminLogin" runat="server" Text="Login" OnClick="btnAdminLogin_Click" /></td>
            </tr>
            
        </table>
            </asp:PlaceHolder>
        <asp:PlaceHolder ID="btnLogout" runat="server" Visible="false">
        <asp:Button ID="btnLogoutAdmin" runat="server" Text="Logout" OnClick="btnLogoutAdmin_Click" />
            </asp:PlaceHolder>
    </div>
</asp:Content>
