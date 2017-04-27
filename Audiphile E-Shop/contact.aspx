<%@ Page Title="Contact | Audiophile E-shop Ltd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Audiphile_E_Shop.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Firstname:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valTxtFirstaname" runat="server" ErrorMessage="First name is required." ControlToValidate="txtFirst"></asp:RequiredFieldValidator></td>


            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Lastname:"></asp:Label></td>

                <td>
                    <asp:TextBox ID="txtLast" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="valTxtLastname" runat="server" ErrorMessage="Last name is required." ControlToValidate="txtLast"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valTxtEmail" runat="server" ErrorMessage="Email is required." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Subject:"></asp:Label></td>

                <td>
                    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valTxtSubject" runat="server" ErrorMessage="Subject is required." ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Message:"></asp:Label></td>
                <td>

                    <table>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtMessage" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
                            </td>



                            <td>
                                <asp:RequiredFieldValidator ID="valTxtMessage" runat="server" ErrorMessage="Please enter your message." ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
                            </td>

                        </tr>


                        <tr>
                            <td>
                                <asp:Button ID="btnSubmitContact" runat="server" Text="Submit" OnClick="btnSubmitContact_Click"></asp:Button>
                            </td>
                            <td>
                                <asp:Literal ID="litResult" runat="server"></asp:Literal>
                            </td>

                        </tr>

                    </table>
                </td>




            </tr>

        </table>
        <div id="map" style="width: 100%; height: 400px;"></div>
       <script src="Scripts/myGoogleMap.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBbtnjMabB66zCXYoa2VLiIjLHKAm9gXY8&callback=myGoogleMap"></script>
    </div>
</asp:Content>

