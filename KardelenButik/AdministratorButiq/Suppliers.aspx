<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorButiq/Default.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="KardelenButik.AdministratorButiq.Suppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top: 100px">
        <asp:ListView ID="lv_supplierList" runat="server">
            <LayoutTemplate>
                <table class="table table-dark table-hover mt-5">
                    <tr>
                        <td>Tedarikçi ID</td>
                        <td>Tedarikçi Adı</td>
                        <td>Tedarikçi Şirket Telefonu</td>
                        <td>Tedarikçi Şirket Adı</td>
                        <td>Tedarikçi Şirket Adres</td>
                        <td>Tedarikçi Telefonu</td>
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
                    <td><%# Eval("SupplierID") %></td>
                    <td><%# Eval("SupplierName") %></td>
                    <td><%# Eval("SupplierPhoneNumber") %></td>
                    <td><%# Eval("CompanyName") %></td>
                    <td><%# Eval("CompanyAddress") %></td>
                    <td><%# Eval("CompanyPhoneNumber") %></td>
                    <td><span class="badge bg-success"><%# Eval("Status") %></span></td>
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
