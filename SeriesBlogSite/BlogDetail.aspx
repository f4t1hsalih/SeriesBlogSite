<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="BlogDetail.aspx.cs" Inherits="SeriesBlogSite.BlogDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">
    <div class="single">
        <div class="container">
            <div class="col-md-8 single-main">
                <div class="single-grid">
                    <asp:Repeater ID="RepeaterBlog" runat="server">
                        <ItemTemplate>
                            <img src="<%#Eval("blg_picture") %>" alt="" style="margin-bottom: 10px" />
                            <div class="lone-line">
                                <h1><%#Eval("blg_title") %></h1>
                                <p><%#((DateTime)Eval("blg_date")).ToString("dd.MM.yyyy") %> / 27 Comments</p>
                                <p><%#Eval("blg_contents") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>


                <ul class="comment-list">
                    <h3 style="margin-bottom: revert">Comments</h3>
                    <asp:Repeater ID="RepeaterComment" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="/web/images/avatar.png" class="img-responsive" alt="" style="margin-bottom: 10px">
                                <div class="desc">
                                    <p>
                                        <p style="font-weight: bolder"><%#Eval("cmt_name") %></p>
                                        :
                                        <p><%#Eval("cmt_message") %></p>
                                    </p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>

                <div class="content-form">
                    <h3>Bir Yorum Bırak</h3>
                    <form runat="server" class="form-group">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"  placeholder="İsim" required=""></asp:TextBox>
                        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="form-control" placeholder="Mail"></asp:TextBox>
                        <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server" CssClass="form-control"  placeholder="Mesaj..."></asp:TextBox>
                        <asp:Button ID="btnSend" runat="server" CssClass="btn btn-success" Text="GÖNDER" />
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
