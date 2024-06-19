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
                        <td><%#((DateTime)Eval("blg_date")).ToString("dd.MM.yyyy") %></td>
                        <td><%# Eval("typ_name") %></td>
                        <td><%# Eval("ctg_name") %></td>
                        <td>
                            <asp:HyperLink ID="UpdateBlog" NavigateUrl='<%#"/AdminPages/AdminUpdateBlog.aspx?Update=" + Eval("blg_id") %>' CssClass="btn btn-warning" runat="server">Güncelle</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="DeleteBlog" NavigateUrl='<%#"/AdminPages/AdminDeleteBlog.aspx?Delete=" + Eval("blg_id") %>' CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

    <a href="/AdminPages/AdminAddBlog.aspx" class="btn btn-primary">Yeni Blog</a>

</asp:Content>
