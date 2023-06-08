<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorButiq/Default.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="KardelenButik.AdministratorButiq.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:100px;">
        <asp:ListView ID="lv_categoryList" runat="server">
            <LayoutTemplate>
                <table class="table table-light table-hover mt-5">
                    <tr>
                        <td>Kategori ID</td>
                        <td>Kategori Adı</td>
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
                    <td><%# Eval("CategoryID") %></td>
                    <td><%# Eval("CategoryName") %></td>
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
