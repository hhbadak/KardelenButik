<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorButiq/Default.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="KardelenButik.AdministratorButiq.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:100px">
        <asp:ListView ID="lv_customerList" runat="server">
            <LayoutTemplate>
                <table class="table table-light table-hover mt-5">
                    <tr>
                        <td>Müşteri ID</td>
                        <td>Müşteri Adı</td>
                        <td>Müşteri Soyadı</td>
                        <td>Müşteri Telefon Numarası</td>
                        <td>Toplam Alınan Ücret</td>
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
                    <td><%# Eval("CustomerID") %></td>
                    <td><%# Eval("CustomerName") %></td>
                    <td><%# Eval("CustomerSurname") %></td>
                    <td><%# Eval("CustomerPhoneNumber") %></td>
                    <td><%# Eval("TotalMoneyReceived") %> ₺</td>
                    <td><%# Eval("Status") %></td>
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
