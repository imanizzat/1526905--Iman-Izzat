<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Audiphile_E_Shop.login" %>

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
                    <td>
                        <asp:RequiredFieldValidator ID="loginUsername" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Password" runat="server" Text="Password:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="loginPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="txtSignin" runat="server" Text="Sign In" OnClick="txtSignin_Click" />
                    </td>
                    <td>
                        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Dont have an account? </p>
                    </td>
                    <td><a href="register.aspx">Register now!</a></td>
                </tr>
            </table>
        </section>
    </div>
</asp:Content>
