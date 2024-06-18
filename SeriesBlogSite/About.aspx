<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SeriesBlogSite.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">

    <div class="container">
        <div class="about-section">
            <div class="about-grid">
                <h3>HAKKIMIZDA</h3>
                <asp:Repeater ID="RepeaterAbout" runat="server">
                    <ItemTemplate>
                        <p><%#Eval("abt_description") %></p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

</asp:Content>
