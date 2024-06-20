<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewCommunication.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminViewCommunication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div>
            <asp:Label ID="lblNameSurname" runat="server" Text="Ad Soyad"></asp:Label>
            <asp:TextBox ID="txtNameSurname" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblMail" runat="server" Text="Mail"></asp:Label>
            <asp:TextBox ID="txtMail" TextMode="Email" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblTel" runat="server" Text="Telofon Numarası"></asp:Label>
            <asp:TextBox ID="txtTel" TextMode="Phone" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblSubject" runat="server" Text="Konu"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblMessage" runat="server" Text="Mesaj"></asp:Label>
            <asp:TextBox ID="txtMessage" TextMode="MultiLine" Height="200px" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary" Text="Mesajlara Geri Dön" OnClick="btnBack_Click" />
        </div>
    </form>

</asp:Content>
