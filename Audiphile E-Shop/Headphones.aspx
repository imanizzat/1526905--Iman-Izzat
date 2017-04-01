<%@ Page Title="Headphones | Audiphile LTd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Headphones.aspx.cs" Inherits="Audiphile_E_Shop.gears" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 250px;
            height: 308px;
            margin-top: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
       <div class="products">
        <img src="Image/ATH-M50X/ath_m50x_1_sq.jpg" style="height: 316px; width: 301px" />&nbsp;
           <br />
            <a href="#">
                <strong>Audio Technica ATH-M50X</strong>

            </a>
                <p><em>BND$255</em></p>
          
               <asp:Button ID="txtID01" runat="server"  Text="Add to cart" />
             
        </div>
            
        <div class="products">
        <img src="Image/Sennheiser%20Momentum%202.0/Momentum_1.jpg" style="height: 330px; width: 283px" />
            <br />
            <strong>
            <a href="#">Sennheiser Momentum 2.0 </a>
            </strong>
                <p><em>BND$385</em></p>
         
                <asp:Button ID="txtID02" runat="server" Text="Add to cart" />
             
        </div>

        <div class="products">
        <img alt="dt770" class="auto-style1" src="Image/Beyerdynamic%20dt770/DT770PRO_80_3c_01.jpg" />
            <br />
            <a href ="#">
                <strong>Beyerdynamic dt770 80ohms</strong>
            </a>
                <p><em>BND$400</em></p>
            
                <asp:Button ID="txtID03" runat="server" Text="Add to cart" />
              
        </div>
    </article>
           

</asp:Content>
