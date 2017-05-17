<%@ Page Title="Products | Audiophile Ltd" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Audiphile_E_Shop.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="box">
        <ul class="products">
            <li>
                <img src="Image/ATH-M50X/ath_m50x_1_sq.jpg" alt="athm50x" width="200" height="150" /><!-- Images retrieved from http://www.audio-technica.com/cms/headphones/99aff89488ddd6b1/ -->
                <h4><a href="~/viewProducts.aspx?Id=1" runat="server">Audio Technica m50x</a></h4>
                <p>BND$255</p>
                <asp:DropDownList ID="drpDwnM50xQuantity" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="txtID01" runat="server" Text="Add to cart" />
                <asp:Button ID="btnPurchaseM50x" runat="server" Text="Buy now!" OnClick="btnPurchaseM50x_Click" />

            </li>

            <li>
                <img src="Image/Sennheiser Momentum 2.0/Momentum_1.jpg" alt="momentum_2" width="200" height="150" /> <!-- Images retrieved from http://en-uk.sennheiser.com/momentum-m2 -->
                <h4><a href="~/viewProducts.aspx?Id=2">Sennheiser Momentum 2.0</a></h4>
                <p>BND$385</p>
                <asp:DropDownList ID="drpDwnMomentum2Quantity" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="txtID02" runat="server" Text="Add to cart" />
                <asp:Button ID="btnPurchaseMomentum2" runat="server" Text="Buy now!" />

            </li>

            <li>
                <img src="Image/Beyerdynamic dt770/DT770PRO_80_3c_01.jpg" alt="dt770" width="200" height="150" /> <!-- Images retrieved from http://north-america.beyerdynamic.com/shop/dt-770-pro.html -->
                <h4>BeyerDynamic dt770 pro 250ohms</h4>
                <p>BND$300</p>
                   <asp:DropDownList ID="drpDwnBeyerDynamicDt770" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="txtID03" runat="server" Text="Add to cart" />
                <asp:Button ID="btnPurchaseBeyerDynamicDt770" runat="server" Text="Buy now!" />
            </li>

            <li>
                <img src="Image/Fiio A5/1.jpg" alt="fiioA5" width="200" height="150" /> <!-- Images retrieved from http://www.fiio.net/en/products/59 -->
                <h4>Fiio A5 Portable headphone amplifier</h4>
                <p>BND$180</p>
                <asp:DropDownList ID="drpDwnFiioA5" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="txtID04" runat="server" Text="Add to cart" />
                <asp:Button ID="btnPurchaseFiioA5" runat="server" Text="Buy now!" />


            </li>

            <li>
                <img src="Image/Fiio e10k/1.jpg" alt="FiioE10k" width="200" height="150" /> <!-- Images retrieved from http://www.fiio.net/en/products/27 -->
                <h4>Fiio E10k DAC & Headphone Amplifier</h4>
                <p>BND$150</p>
                <asp:DropDownList ID="drpDwnFiioE10k" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="txtID05" runat="server" Text="Add to cart" />
                <asp:Button ID="btnPurchaseFiioE10k" runat="server" Text="Buy now!" />
              
            </li>

            <li>
                <img src="Image/Fiio%20X5II/fiio%20x5.jpg" alt="fiioX5ii" width="150" height="200" /> <!-- Images retrieved from http://www.fiio.net/en/products/41 -->
                <h4>Fiio X5 Second Generation</h4>
                <p>BND$350</p>
                 <asp:DropDownList ID="drpDownFiioX5ii" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="txtID06" runat="server" Text="Add to cart" />
                <asp:Button ID ="btnPurchaseFiioX5ii" runat="server" Text="Buy now!" />
             
            </li>

            <li>
                <img src="Image/RHA MA750/Ma750_1.jpg" alt="RHAma750" width="200" height="150" /> <!-- Images retrieved from https://www.rha-audio.com/in/products/ma750 -->
                <h4>RHA MA750i In ear headphone</h4>
                <p>BND$190</p>
                 <asp:DropDownList ID="drpDownMa750" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="txtID07" runat="server" Text="Add to cart" />
                <asp:Button ID="btnPurchaseMa750" runat="server" Text="Buy Now!" />

            </li>
        
        </ul>

          
       <asp:Repeater ID="rptrProducts" runat="server">
<HeaderTemplate></HeaderTemplate>
   <ItemTemplate>
       <li>
   <a href="<%# Eval("Id", "viewProducts.aspx?Id={0}")%>">
      <%#Eval("Name")%>
   </a>
        </li>
   </ItemTemplate>
   <FooterTemplate></FooterTemplate>

    </asp:Repeater>

    </div>--%>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellSpacing="-1" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id" Visible="False">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                     
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="UploadedImages/{0}.jpg" ControlStyle-Width="100px" ControlStyle-Height="100px">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="productDetails.aspx?Id={0}" Text="View Details" />
            
            
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526905_co5027ConnectionString %>" SelectCommand="SELECT [Id], [Name], [Price], [Description] FROM [products]"></asp:SqlDataSource>

</asp:Content>
