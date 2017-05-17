<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="modifyProducts.aspx.cs" Inherits="Audiphile_E_Shop.gridview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-top: 18px" DataKeyNames="Id" ShowFooter="True" CellSpacing="-1" GridLines="None">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
        <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
            <asp:LinkButton runat="server"  OnClick="addProduct_Click">Add Product</asp:LinkButton>
                </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name" SortExpression="Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEditName" runat="server" 
                    ErrorMessage="Product name is required"
                    ControlToValidate="txtName" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </FooterTemplate>

        </asp:TemplateField>
        <asp:TemplateField HeaderText="SKU" SortExpression="SKU">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SKU") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("SKU") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtSKU" runat="server" ></asp:TextBox>
            </FooterTemplate>

        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price" SortExpression="Price">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </FooterTemplate>

        </asp:TemplateField>
        <asp:TemplateField HeaderText="Stocks" SortExpression="Stocks">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Stocks") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Stocks") %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtStocks" runat="server"></asp:TextBox>
            </FooterTemplate>

        </asp:TemplateField>

        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Images" />

    </Columns>
</asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Insert" 
    ForeColor="Red" runat="server" />
<asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" 
    runat="server" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526905_co5027ConnectionString %>" SelectCommand="SELECT * FROM [products]" DeleteCommand="DELETE FROM [products] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([SKU] = @original_SKU) OR ([SKU] IS NULL AND @original_SKU IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stocks] = @original_Stocks) OR ([Stocks] IS NULL AND @original_Stocks IS NULL))" InsertCommand="INSERT INTO [products] ([Name], [SKU], [Price], [Stocks]) VALUES (@Name, @SKU, @Price, @Stocks)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [products] SET [Name] = @Name, [SKU] = @SKU, [Price] = @Price, [Stocks] = @Stocks WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([SKU] = @original_SKU) OR ([SKU] IS NULL AND @original_SKU IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stocks] = @original_Stocks) OR ([Stocks] IS NULL AND @original_Stocks IS NULL))" ConflictDetection="CompareAllValues">
 
    <DeleteParameters>
        <asp:Parameter Name="original_Id" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_SKU" Type="String" />
        <asp:Parameter Name="original_Price" Type="String" />
        <asp:Parameter Name="original_Stocks" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SKU" Type="String" />
        <asp:Parameter Name="Price" Type="String" />
        <asp:Parameter Name="Stocks" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SKU" Type="String" />
        <asp:Parameter Name="Price" Type="String" />
        <asp:Parameter Name="Stocks" Type="Int32" />
        <asp:Parameter Name="original_Id" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_SKU" Type="String" />
        <asp:Parameter Name="original_Price" Type="String" />
        <asp:Parameter Name="original_Stocks" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
    <%--         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>--%>
   
</asp:Content>
