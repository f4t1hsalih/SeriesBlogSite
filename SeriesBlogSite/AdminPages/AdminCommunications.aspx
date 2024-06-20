<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCommunications.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminCommunications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Ad Soyad</th>
                <th>Mail</th>
                <th>Konu</th>
                <th>Güncelle</th>
                <th>Sil</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("cmm_id") %></td>
                        <td><%# Eval("cmm_nameSurname") %></td>
                        <td><%# Eval("cmm_mail") %></td>
                        <td><%# Eval("cmm_subject") %></td>
                        <td>
                            <asp:HyperLink ID="ViewCommunication" NavigateUrl='<%#"/AdminPages/AdminViewCommunication.aspx?View=" + Eval("cmm_id") %>' CssClass="btn btn-info" runat="server">Görüntüle</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="DeleteCommunication" NavigateUrl='<%#"/AdminPages/AdminDeleteCommunication.aspx?Delete=" + Eval("cmm_id") %>' CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
