<%@ Page Title="Headphones | Audiphile LTd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Headphones.aspx.cs" Inherits="Audiphile_E_Shop.gears" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
        <div class="products">
            <img src="Image/ATH-M50X/ath_m50x_1_sq.jpg" style="height: 200px; width: 150px" />
            <br />
            <a href="#"><strong>Audio Technica ATH-M50X</strong></a>
            <p><em>BND$255</em></p>

            <asp:Button ID="txtID01" runat="server" Text="Add to cart" />
        </div>




        <div class="products">
            <img src="Image/Sennheiser%20Momentum%202.0/Momentum_1.jpg" style="height: 200px; width: 150px" />
            <strong><a href="#">Sennheiser Momentum 2.0 </a></strong>
            <p><em>BND$385</em></p>
            <asp:Button ID="txtID02" runat="server" Text="Add to cart" />
        </div>


        <div class="products">
            <img alt="dt770" class="auto-style1" src="Image/Beyerdynamic%20dt770/DT770PRO_80_3c_01.jpg" style="height: 200px; width: 150px" />
            <br />
            <a href="#">
                <strong>Beyerdynamic dt770 80ohms</strong>
            </a>
            <p><em>BND$400</em></p>

            <asp:Button ID="txtID03" runat="server" Text="Add to cart" />
            <br />
        </div>
      
        <!-- fiio e10k DAC&Amp-->
        <div class="products">
            <img alt="fiio_e10k" style="height: 200px; width: 150px" src="Image/Fiio%20e10k/1.jpg" />
            <br />
            <a href="#">
                <strong>Fiio E10K Desktop DAC & Amp</strong></a>
            <p><em>BND$138</em></p>

            <asp:Button ID="txtID04" runat="server" Text="Add to cart" />
        </div>
        <!-- Fiio A5 Amp-->
        <div class="products">
            <img src="Image/Fiio%20A5/1.jpg" style="height: 200px; width: 150px" />
            <br />
            <a href="#">
                <strong>Fiio A5 Portable Headphone Amp</strong>

            </a>
            <p><em>BND$180</em></p>

            <asp:Button ID="Button1" runat="server" Text="Add to cart" />
        </div>
        <br />
        <div class="products">
            <br />
            <img src="Image/RHA%20MA750/Ma750_1.jpg" alt="Rha-ma750i" style="height: 200px; width: 150px" />
            <br />
            <a href="#">
                <strong>RHA MA750i</strong>
            </a>
            <p><em>BND$190</em></p>

            <asp:Button ID="Button2" runat="server" Text="Add to cart" />
        </div>
        <br />
        <div class="products">
            <img src="Image/Fiio%20X5II/x5ii_1.png" style="height: 200px; width: 150px" />
            <br />
            <a href="#">
                <strong>Fiio X5 Second Generation</strong>

            </a>
            <p><em>BND$355</em></p>

            <asp:Button ID="Button3" runat="server" Text="Add to cart" />
        </div>

    </article>


</asp:Content>
