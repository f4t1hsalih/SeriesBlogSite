<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUpdateBlog.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminUpdateBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div>
            <asp:Label ID="lblBlgTitle" runat="server" Text="Blog Başlık"></asp:Label>
            <asp:TextBox ID="txtBlgTitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblBlgContent" runat="server" Text="Blog İçerik"></asp:Label>
            <asp:TextBox ID="txtBlgContent" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblBlgImage" runat="server" Text="Blog Resim Yolu"></asp:Label>
            <asp:TextBox ID="txtBlgImage" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblBlgType" runat="server" Text="Blog Tür"></asp:Label>
            <asp:DropDownList ID="ddlBlgType" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="lblBlgCategory" runat="server" Text="Blog Kategori"></asp:Label>
            <asp:DropDownList ID="ddlBlgCategory" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-warning" Text="Güncelle" OnClick="btnUpdate_Click" />
        </div>
    </form>

</asp:Content>
