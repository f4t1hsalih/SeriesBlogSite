<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBlogs.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminBlogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Başlık</th>
                <th>Tarih</th>
                <th>Tür</th>
                <th>Kategori</th>
                <th>Güncelle</th>
                <th>Sil</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("blg_id") %></td>
                        <td><%# Eval("blg_title") %></td>
                        <td><%# Eval("blg_date") %></td>
                        <td><%# Eval("blg_type") %></td>
                        <td><%# Eval("blg_category") %></td>
                        <td>
                            <a href="#.aspx" class="btn btn-warning">Güncelle</a>
                        </td>
                        <td>
                            <a href="#.aspx" class="btn btn-danger">Sil</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

    <a href="/AdminPages/AdminAddBlog.aspx" class="btn btn-primary">Yeni Blog</a>

</asp:Content>
