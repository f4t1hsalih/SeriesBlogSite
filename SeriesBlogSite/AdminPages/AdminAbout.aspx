<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAbout.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table class="table table-bordered">
    <thead>
        <tr>
            <th>Açıklama</th>
            <th>Güncelle</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("abt_description") %></td>
                    <td>
                        <asp:HyperLink ID="UpdateBlog" NavigateUrl='<%#"/AdminPages/AdminUpdateAbout.aspx?Update=" + Eval("abt_id") %>' CssClass="btn btn-warning" runat="server">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>

</asp:Content>
