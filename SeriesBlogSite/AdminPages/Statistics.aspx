<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="SeriesBlogSite.AdminPages.Statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <td>
                Toplam Blog Sayısı: <asp:Label ID="lblTotalBlog" runat="server" Text="***"></asp:Label>
            </td>
            <td>
                Toplam Yorum Sayısı: <asp:Label ID="lblTotalComment" runat="server" Text="***"></asp:Label>
            </td>
            <td>
                Toplam Film Sayısı: <asp:Label ID="lblTotalFilm" runat="server" Text="***"></asp:Label>
            </td>
        </tr>
               <tr>
            <td>
                Toplam Dizi Sayısı: <asp:Label ID="lblTotalSeries" runat="server" Text="***"></asp:Label>
            </td>
            <td>
                Toplam Animation Sayısı: <asp:Label ID="lblTotalAnimation" runat="server" Text="***"></asp:Label>
            </td>
            <td>
                En Fazla Yrumlu Blog: <asp:Label ID="lblTopCommentBlog" runat="server" Text="***"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
