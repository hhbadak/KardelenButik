<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorButiq/Default.Master" AutoEventWireup="true" CodeBehind="Cafeteria.aspx.cs" Inherits="KardelenButik.AdministratorButiq.Cafeteria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <asp:ListView ID="lv_productList" runat="server">
            <LayoutTemplate>
                <table class="table table-light table-hover mt-5">
                    <tr>
                        <td>Ürün ID</td>
                        <td>Ürün Adı</td>
                        <td>Kategor</td>
                        <td>Tedarikçi</td>
                        <td>Alış Fiyatı</td>
                        <td>Satış Fiyatı</td>
                        <td>Stok</td>
                        <td>Stokta Minimum Kalması Gereken</td>
                        <td>Ürün Fotoğrafları</td>
                        <td>Durum</td>
                        <td>Seçenekler</td>
                    </tr>
                    <tbody>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ProductID") %></td>
                    <td><%# Eval("ProductName") %></td>
                    <td><%# Eval("Category") %></td>
                    <td><%# Eval("Supplier") %></td>
                    <td><%# Eval("PurchasePrice") %></td>
                    <td><%# Eval("SalePrice") %></td>
                    <td><%# Eval("Stock") %></td>
                    <td><%# Eval("ReorderLevel") %></td>
                    <td>
                        <img src="../Assets/Image/<%# Eval("Image") %>" width="50" /></td>
                    <td><%# Eval("Status") %></td>
                    <td>
                        <div class="btn-group btn-group-sm">
                            <a href="#" class="btn btn-danger">
                                <i class="fa-solid fa-trash" title="Sil"></i>
                            </a>
                        </div>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
