<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorButiq/Default.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="KardelenButik.AdministratorButiq.CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px">
        <asp:ListView ID="lv_customerDetailList" runat="server">
            <LayoutTemplate>
                <table class="table table-light table-hover mt-5">
                    <tr>
                        <td>Detaylar ID</td>
                        <td>Müşteri Adı</td>
                        <td>Ürün Adı</td>
                        <td>Miktar</td>
                        <td>Alınan Ücret</td>
                        <td>Seçenekler</td>
                    </tr>
                    <tbody>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("CustomerDetailsID") %></td>
                    <td><%# Eval("Customer") %></td>
                    <td><%# Eval("Product") %></td>
                    <td><%# Eval("Quantity") %></td>
                    <td><%# Eval("TheFeeCharged") %></td>
                    <td>
                        <div class="btn-group btn-group-sm">
                            <a href="#" class="btn btn-primary">
                                <i class="fa-solid fa-eye"></i>
                            </a>
                            <a href="#" class="btn btn-success">
                                <i class="fa-solid fa-pen-to-square"></i>
                            </a>
                            <a href="#" class="btn btn-danger">
                                <i class="fa-solid fa-trash"></i>
                            </a>
                        </div>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
