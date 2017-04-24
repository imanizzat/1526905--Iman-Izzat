<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Audiphile_E_Shop.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            height: 29px;
            text-align: right;
        }
        .auto-style4 {
            height: 29px;
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="auto-style1">
        <tr>
              <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Username:" style="text-align: right"></asp:Label></td>
            <td class="auto-style1">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
            </tr>
          <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Email Address:"></asp:Label>
            </td>
          
            <td class="auto-style4">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid email address"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="First name:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtRegFirstname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegFirstname" ErrorMessage="First name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Last name:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtRegLastname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRegLastname" ErrorMessage="Last name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtRegisterPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRegisterPass" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="confirm password:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtRegConfirmpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="passwordConfirmation" runat="server" ControlToValidate="txtRegConfirmpass" ErrorMessage="Reconfirm your password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtRegisterPass" ErrorMessage="Password is not the same" Operator="NotEqual"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Country:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="countryList" runat="server">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>Brunei Darussalam</asp:ListItem>
                    <asp:ListItem>United Kingdom</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="countryList" ErrorMessage="Select a country from the dropdown menu"></asp:RequiredFieldValidator>
            </td>
        </tr>
   
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                
                
                
                <asp:Button ID="btnRegister1" runat="server" Text="Register!" OnClick="btnRegister1_Click" style="text-align: center" />
               
            </td>
            <td><asp:Literal ID="litRegError" runat="server"></asp:Literal></td>
              
        </tr>
   
    </table>
</asp:Content>
