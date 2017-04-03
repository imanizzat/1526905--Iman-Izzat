<%@ Page Title="Amplifiers| Audiophile Ltd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Amplifiers.aspx.cs" Inherits="Audiphile_E_Shop.guide" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
        <!-- fiio e10k DAC&Amp-->
        <div class="products">
        <img alt="fiio_e10k" style="height: 163px; width: 259px"  src="Image/Fiio%20e10k/1.jpg" />
    <br />
            <a href="#">
                <strong>Fiio E10K Desktop DAC & Amp</strong></a>
            <p><em>BND$138</em></p>
          
               <asp:Button ID="txtID04" runat="server"  Text="Add to cart" />
        </div>
    <!-- Fiio A5 Amp-->
      <div class="products">
          <img src="Image/Fiio%20A5/1.jpg" style="height: 163px; width: 259px" />
    <br />
            <a href="#">
                <strong>Fiio A5 Portable Headphone Amp</strong>

            </a>
                <p><em>BND$180</em></p>
          
               <asp:Button ID="Button1" runat="server"  Text="Add to cart" />
        </div>
    </article>
</asp:Content>
