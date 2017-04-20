<%@ Page Title="Contact | Audiophile Ltd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Audiphile_E_Shop.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Firstname:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox></td>
                <td rowspan="6">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d644.419253593341!2d114.93111989364999!3d4.885742730173522!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcacd96016959ec39!2sKolej+Perniagaan+Laksamana!5e0!3m2!1sms!2sbn!4v1491197845485"
                        width="300" height="400" frameborder="0" style="border: 0" allowfullscreen></iframe>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Lastname:"></asp:Label></td>

                <td>
                    <asp:TextBox ID="txtLast" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Subject:"></asp:Label></td>

                <td>
                    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Message:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" Height="119px" Width="364px" TextMode="MultiLine"></asp:TextBox></td>


            </tr>
            <tr>

                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
            </tr>


        </table>


    </div>


</asp:Content>
