<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddBlog.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminAddBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div>
            <asp:Label ID="lblBlgTitle" runat="server" Text="Blog Başlık"></asp:Label>
            <asp:TextBox ID="txtBlgTitle" runat="server" CssClass="form-control" placeholder="***"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Blog İçerik"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="***"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Blog Tarih"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="***"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Blog Resmi"></asp:Label>
            <asp:Image ID="Image1" runat="server" CssClass="form-control"/>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Blog Tür"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Blog Kategori"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Kaydet" />
        </div>
    </form>

</asp:Content>
