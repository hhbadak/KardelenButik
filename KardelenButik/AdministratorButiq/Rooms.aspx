<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorButiq/Default.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="KardelenButik.AdministratorButiq.Rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:100px">
        <asp:ListView ID="lv_roomList" runat="server">
            <LayoutTemplate>
                <table class="table table-light table-hover mt-5">
                    <tr>
                        <td>Oda ID</td>
                        <td>Yatak Sayısı</td>
                        <td>Özellikler</td>
                        <td>Dolu mu?</td>
                        <td>Fiyat</td>
                        <td>Oda Numarası</td>
                        <td>Seçenekler</td>
                    </tr>
                    <tbody>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("RoomID") %></td>
                    <td><%# Eval("NumberOfBeds") %></td>
                    <td><%# Eval("Features") %></td>
                    <td><%# Eval("Empty") %></td>
                    <td><%# Eval("Price") %> ₺</td>
                    <td><%# Eval("RoomNumber") %></td>
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
