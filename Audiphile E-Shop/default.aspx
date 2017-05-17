<%@ Page Title="Home | Audiophile Ltd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Audiphile_E_Shop._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="box">
      <h1>Welcome to Audiophile E-shop ltd</h1>
      <p>The products below are our best sellers!</p>
        <ul class="products">
            <li>
                <img src="Image/ATH-M50X/ath_m50x_1_sq.jpg" alt="athm50x" width="200" height="150" /><!-- Images retrieved from http://www.audio-technica.com/cms/headphones/99aff89488ddd6b1/ -->
                <h4>Audio Technica m50x</h4>
                <p>BNBND$255</p>
                <asp:Button ID="txtID01" runat="server" Text="View product details" OnClick="txtID01_Click" />

            </li>

            <li>
                <img src="Image/Sennheiser Momentum 2.0/Momentum_1.jpg" alt="momentum_2" width="200" height="150" /> <!-- Images retrieved from http://en-uk.sennheiser.com/momentum-m2 -->
                <h4>Sennheiser Momentum 2.0</h4>
                <p>BNBND$385</p>
                <asp:Button ID="txtID02" runat="server" Text="View product details" OnClick="txtID02_Click" />

            </li>

            <li>
                <img src="Image/Beyerdynamic dt770/DT770PRO_80_3c_01.jpg" alt="dt770" width="200" height="150" /> <!-- Images retrieved from http://north-america.beyerdynamic.com/shop/dt-770-pro.html -->
                <h4>BeyerDynamic dt770 pro 250ohms</h4>
                <p>BNBND$300</p>
                <asp:Button ID="txtID03" runat="server" Text="View product details" OnClick="txtID03_Click" />
                <br />
            </li>

           
        </ul>
    </div>


</asp:Content>
