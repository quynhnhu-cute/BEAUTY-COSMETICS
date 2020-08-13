<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/CosmeticSale.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CSharpAssignment.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xl">
        <div class="row">
            <div class="col-md-12">
                <h2>Featured <b>Products</b></h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
                    <!-- Carousel indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for carousel items -->
                    <div class="carousel-inner">
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <div class="item carousel-item active">
                                    <div class="row">
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <div class="col-sm-3">
                                                    <div class="thumb-wrapper">
                                                        <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                        <div class="img-box">
                                                            <img src="/examples/images/products/ipad.jpg" class="img-fluid" alt="">
                                                        </div>
                                                        <div class="thumb-content">
                                                            <h4>Apple iPad</h4>
                                                            <div class="star-rating">
                                                                <ul class="list-inline">
                                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                                </ul>
                                                            </div>
                                                            <p class="item-price"><strike>$400.00</strike><b>$369.00</b></p>
                                                            <a href="#" class="btn btn-primary">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- Carousel controls -->
                    <a class="carousel-control-prev" style="height: 44px; width: 40px; background: #7ac400; margin: auto 0; border-radius: 4px; opacity: 0.8;" href="#myCarousel" data-slide="prev">
                        <i style="font-size: 36px; position: absolute; top: 50%; display: inline-block; margin: -19px 0 0 0; z-index: 5; left: 0; right: 0; color: #fff; text-shadow: none; font-weight: bold;" class="fa fa-angle-left"></i>
                    </a>
                    <a class="carousel-control-next" style="height: 44px; width: 40px; background: #7ac400; margin: auto 0; border-radius: 4px; opacity: 0.8;" href="#myCarousel" data-slide="next">
                        <i style="font-size: 36px; position: absolute; top: 50%; display: inline-block; margin: -19px 0 0 0; z-index: 5; left: 0; right: 0; color: #fff; text-shadow: none; font-weight: bold;" class="fa fa-angle-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
