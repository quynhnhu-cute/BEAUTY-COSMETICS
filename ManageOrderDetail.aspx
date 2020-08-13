<%@ Page Title="" Language="C#" MasterPageFile="~/CosmeticSale.Master" AutoEventWireup="true" CodeBehind="ManageOrderDetail.aspx.cs" Inherits="CSharpAssignment.ManageOrderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel CssClass="table-container" ID="Panel1" runat="server">
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-5">
                            <h2>Booking <b>Management</b>
                            </h2>
                        </div>
                        <div class="col-sm-7">

                            <asp:LinkButton CssClass="btn btn-primary book-now btn-cart" ID="BtnNewProduct" runat="server">
                                <i class="material-icons"></i>
                                <span>Add New Product</span>
                            </asp:LinkButton>

                        </div>
                    </div>
                </div>
                <asp:Panel ID="CartPanel" runat="server">
                    <asp:GridView ID="GvOrder" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="ID" DataSourceID="OrderDS" PageSize="5" Width="100%" OnSelectedIndexChanged="BtnSelectOrder_Click">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Booking Code" HeaderText="Booking Code" SortExpression="Booking Code" />
                            <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
                            <asp:BoundField DataField="Discount Code" HeaderText="Discount Code" SortExpression="Discount Code" HeaderStyle-CssClass="hide-grid-column" ItemStyle-CssClass="hide-grid-column" />
                            <asp:BoundField DataField="Discount Value" HeaderText="Discount Value" SortExpression="Discount Value" HeaderStyle-CssClass="hide-grid-column" ItemStyle-CssClass="hide-grid-column" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="Import Date" HeaderText="Import Date" SortExpression="Import Date" />
                            <asp:BoundField DataField="Payment Type" HeaderText="Payment Type" SortExpression="Payment Type" />
                            <asp:BoundField DataField="Contact Person" HeaderText="Contact Person" SortExpression="Contact Person" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="hide-grid-column" ItemStyle-CssClass="hide-grid-column" />
                        </Columns>
                    </asp:GridView>

                    <asp:Panel ID="DetailsPanel" runat="server" Visible="false">
                        <h3 class="mt-2">Booking Detail</h3>
                        <asp:GridView ID="GvOrderDetail" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="ID" DataSourceID="OrderDetailDS" Width="100%" OnRowDataBound="GvOrderDetail_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" InsertVisible="False" />
                                <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" ReadOnly="True" SortExpression="TotalPrice" />
                            </Columns>
                        </asp:GridView>
                        Discount Code:&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDiscountCode" runat="server"></asp:Label>
                        <br />
                        Discount Value:&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDiscountValue" runat="server"></asp:Label>
                        <br />
                        Total price:
                        <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                        <br />
                        <asp:Button ID="BtnAccept" runat="server" Text="Accept" OnClientClick="return confirm('Accept the order?')" OnClick="BtnAccept_Click" />
                        &nbsp;<asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClientClick="return confirm('Cancel the order?')" OnClick="BtnCancel_Click" />
                        <asp:SqlDataSource ID="OrderDetailDS" runat="server" ConnectionString="<%$ ConnectionStrings:CSharpAssignmentConnectionString %>" SelectCommand="SELECT BookingDetail.ID, Product.Name AS [Product Name], Product.Price, BookingDetail.Amount, Product.Price * BookingDetail.Amount AS TotalPrice FROM BookingDetail INNER JOIN Product ON BookingDetail.ProductID = Product.ID WHERE (BookingDetail.BookingID = @BookingID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GvOrder" Name="BookingID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="OrderDS" runat="server" ConnectionString="<%$ ConnectionStrings:CSharpAssignmentConnectionString %>" SelectCommand="SELECT Booking.ID, Booking.BookingCode AS [Booking Code], Booking.CustomerName AS [Customer Name], Discount.Code AS [Discount Code], Discount.Value AS [Discount Value], Booking.Address, Booking.Phone, Status.Name AS Status, Booking.ImportDate AS [Import Date], Booking.PaymentType AS [Payment Type], Booking.ContactPerson AS [Contact Person], Booking.Description FROM Booking LEFT JOIN Discount ON Booking.DiscountID = Discount.ID LEFT JOIN Status ON Booking.StatusID = Status.ID"></asp:SqlDataSource>
                        <br />
                    </asp:Panel>
                </asp:Panel>
            </div>
        </div>
    </asp:Panel>
    <div>
    </div>
</asp:Content>
