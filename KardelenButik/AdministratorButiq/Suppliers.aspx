<%@ Page Title="" Language="C#" MasterPageFile="~/AdministratorButiq/Default.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="KardelenButik.AdministratorButiq.Suppliers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      
        <asp:Repeater ID="rp_supplierList" runat="server">
            <ItemTemplate>
                <thead>
                    <li>Tedarikçi ID</li>
                    <li>Tedarikçi Adı</li>
                    <li>Tedarikçi Şirket Telefonu</li>
                    <li>Tedarikçi Şirket Adı</li>
                    <li>Tedarikçi Şirket Adresi</li>
                    <li>Tedarikçi Telefonu</li>
                    <li>Durum</li>
                    <li>Seçenekler</li>
                </thead>
                <tbody>
                    <li><%# Eval("SupplierID") %></li>
                    <li><%# Eval("SupplierName") %></li>
                    <li><%# Eval("SupplierPhoneNumber") %></li>
                    <li><%# Eval("CompanyName") %></li>
                    <li><%# Eval("CompanyAdress") %></li>
                    <li><%# Eval("CompanyPhoneNumber") %></li>
                    <li><span class="badge bg-success"><%# Eval("Status") %></span></li>
                    <li>
                        <div class="btn-group btn-group-sm">
                            <a href="#"><i class="fa-solid fa-eye"></i></a>
                            <a href="#"><i class="fa-solid fa-pen-to-square"></i></a>
                            <a href="#"><i class="fa-solid fa-trash"></i></a>
                        </div>
                    </li>
                </tbody>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
