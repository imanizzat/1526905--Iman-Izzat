<%@ Page Title="Account | Audiophile Ltd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="Audiphile_E_Shop.account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <section>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Username" runat="server" Text="Username:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Password" runat="server" Text="Password:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="txtSignin" runat="server" Text="Sign In" /></td>
                </tr>
                <tr>
                    <td>
                        <p>Dont have an account? </p>
                    </td>
                    <td><a href="#">Register now!</a></td>
                </tr>
            </table>
        </section>
    </div>
</asp:Content>
