<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/CosmeticSale.Master" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="CSharpAssignment.ShowProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList CssClass="container" ID="DLProduct" runat="server" CellPadding="15" RepeatColumns="3" DataKeyField="ID" DataSourceID="SqlDataSource1" Width="70%" Style="margin-top: 1px" OnItemCommand="DLProduct_ItemCommand" ValidateRequestMode="Disabled">
            <ItemTemplate>
                <div class="thumb-wrapper card" style="max-width: 250px">
                    <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                    <div class="img-box">
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("ImageLink") %>' CssClass="img-fluid" />
                    </div>
                    <div class="thumb-content">
                        <h4>
                            <asp:Label ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>' />
                        </h4>
                        <p class="item-price">
                            <strike>
                                <asp:Label ID="Label1" runat="server" Text='<%# (double.Parse(Eval("Price").ToString()) * 1.1).ToString() %>' />
                            </strike>
                            <b>
                                <asp:Label ID="PriceLabel1" runat="server" Text='<%# Eval("Price") %>' />
                            </b>
                        </p>
                        <asp:HiddenField ID="IDLabel" runat="server" Value='<%# Eval("ID") %>'/>
                        <asp:Button CssClass="btn btn-primary" ID="ButtonAddToCart" runat="server" Text="Add To Cart" OnClick="ButtonAddToCart_Click"/>
                    </div>
                </div>

            </ItemTemplate>
        </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSharpAssignmentConnectionString %>" SelectCommand="SELECT [Quantity], [Price], [Usage], [Name], [StatusID], [CateID], [ImageLink], [ID] FROM [Product]"></asp:SqlDataSource>
</asp:Content>
