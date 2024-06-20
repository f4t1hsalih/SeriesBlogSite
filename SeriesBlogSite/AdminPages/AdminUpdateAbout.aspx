<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUpdateAbout.aspx.cs" Inherits="SeriesBlogSite.AdminPages.AdminUpdateAbout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div>
            <asp:Label ID="lblAbtDescription" runat="server" Text="Açıklama"></asp:Label>
            <asp:TextBox ID="txtAbtDescription" TextMode="MultiLine" Height="700px" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-warning" Text="Güncelle" OnClick="btnUpdate_Click"/>
        </div>
    </form>

</asp:Content>
