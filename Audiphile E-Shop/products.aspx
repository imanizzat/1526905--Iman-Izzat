<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Audiphile_E_Shop.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <ul class="products">
            <li>
                <img src="Image/ATH-M50X/ath_m50x_1_sq.jpg" alt="athm50x" width="200" height="150" />
                <h4>Audio Technica m50x</h4>
                <p>BND$255</p>
                <asp:Button ID="txtID01" runat="server" Text="Add to cart" />

            </li>

            <li>
                <img src="Image/Sennheiser Momentum 2.0/Momentum_1.jpg" alt="momentum_2" width="200" height="150" />
                <h4>Sennheiser Momentum 2.0</h4>
                <p>BND$385</p>
                <asp:Button ID="txtID02" runat="server" Text="Add to cart" />

            </li>

            <li>
                <img src="Image/Beyerdynamic dt770/DT770PRO_80_3c_01.jpg" alt="dt770" width="200" height="150" />
                <h4>BeyerDynamic dt770 pro 250ohms</h4>
                <p>BND$300</p>
                <asp:Button ID="txtID03" runat="server" Text="Add to cart" />
                <br />
            </li>

            <li>
                <img src="Image/Fiio A5/1.jpg" alt="fiioA5" width="200" height="150" />
                <h4>Fiio A5 Portable headphone amplifier</h4>
                <p>BND$180</p>
                <asp:Button ID="Button1" runat="server" Text="Add to cart" />

            </li>

            <li>
                <img src="Image/Fiio e10k/1.jpg" alt="FiioE10k" width="200" height="150" />
                <h4>Fiio E10k DAC & Headphone Amplifier</h4>
                <p>BND$150</p>
                <asp:Button ID="Button2" runat="server" Text="Add to cart" />
                <br />
            </li>

            <li>
                <img src="Image/Fiio%20X5II/fiio%20x5.jpg" alt="fiioX5ii" width="150" height="200" />
                <h4>Fiio X5 Second Generation</h4>
                <p>BND$350</p>
                <asp:Button ID="Button3" runat="server" Text="Add to cart" />
                <br />
            </li>

            <li>
                <img src="Image/RHA MA750/Ma750_1.jpg" alt="RHAma750" width="200" height="150" />
                <h4>RHA MA750i In ear headphone</h4>
                <p>BND$190</p>
                <asp:Button ID="Button4" runat="server" Text="Add to cart" />

            </li>
        </ul>
    </div>

</asp:Content>
