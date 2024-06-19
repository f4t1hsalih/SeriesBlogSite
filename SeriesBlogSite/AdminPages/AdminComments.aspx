<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminComments.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminComments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Kullanıcı</th>
                <th>Blog</th>
                <th>Güncelle</th>
                <th>Sil</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("cmt_id") %></td>
                        <td><%# Eval("cmt_name") %></td>
                        <td><%#Eval("blg_title") %></td>
                        <td>
                            <asp:HyperLink ID="UpdateComment" NavigateUrl='<%#"/AdminPages/AdminUpdateComment.aspx?Update=" + Eval("cmt_id") %>' CssClass="btn btn-warning" runat="server">Güncelle</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="DeleteComment" NavigateUrl='<%#"/AdminPages/AdminDeleteComment.aspx?Delete=" + Eval("cmt_id") %>' CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
