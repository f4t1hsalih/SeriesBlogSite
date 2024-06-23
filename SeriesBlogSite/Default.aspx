<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SeriesBlogSite.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">

    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="RepeaterBlog" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info">
                                <a href="/BlogDetail.aspx?BlogID=<%#Eval("blg_id") %>">
                                    <img src="<%#Eval("blg_picture") %>" alt="" height="300" width="600" />
                                </a>
                                <div class="post-info">
                                    <h4><a href="/BlogDetail.aspx?BlogID=<%#Eval("blg_id") %>"><%#Eval("blg_title") %></a><%#((DateTime)Eval("blg_date")).ToString("dd.MM.yyyy") %></h4>
                                    <p><%#Eval("blg_contents") %></p>
                                    <a href="/BlogDetail.aspx?BlogID=<%#Eval("blg_id") %>"><span></span>Devamını Oku</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>SON BLOGLAR</h3>
                    <ul>
                        <asp:Repeater ID="RepeaterLastBlogs" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%#Eval("blg_title") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="comments">
                    <h3>SON YORUMLAR</h3>
                    <ul>
                        <asp:Repeater ID="RepeaterLastComments" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("cmt_name") %> - <%# Eval("cmt_message") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="categories">
                    <h3>KATEGORİLER</h3>
                    <ul>
                        <asp:Repeater ID="RepeaterCategory" runat="server">
                            <ItemTemplate>
                                <li><a href="/CategoryDetail.aspx?ID=<%#Eval("ctg_id") %>"><%#Eval("ctg_name") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</asp:Content>
