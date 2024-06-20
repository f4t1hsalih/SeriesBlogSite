<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUpdateComment.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminUpdateComment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div>
            <asp:Label ID="lblBlgTitle" runat="server" Text="Blog Başlık" ></asp:Label>
            <asp:TextBox ID="txtBlgTitle" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblCmtName" runat="server" Text="Kullanıcı Adı"></asp:Label>
            <asp:TextBox ID="txtCmtName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblCmtContent" runat="server" Text="Yorum İçerik"></asp:Label>
            <asp:TextBox ID="txtCmtContent" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success" Text="Güncelle" OnClick="btnUpdate_Click"/>
        </div>
    </form>

</asp:Content>
