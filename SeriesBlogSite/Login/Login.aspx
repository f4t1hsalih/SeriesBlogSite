<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SeriesBlogSite.Login.Login" %>

<!--A Design by W3layouts
   Author: W3layout
   Author URL: http://w3layouts.com
   License: Creative Commons Attribution 3.0 Unported
   License URL: http://creativecommons.org/licenses/by/3.0/
   -->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Giriş Sayfası</title>
    <link href="/web/css/bootstrap.css" rel="stylesheet" />
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script>
        addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <!-- Meta tags -->
    <!--stylesheets-->
    <link href="/Login/css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//style sheet end here-->
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
</head>
<body>
    <div class="mid-class">
        <div class="art-right-w3ls">
            <h2>Giriş Yap veya Kaydol</h2>
            <form action="#" method="post" runat="server">
                <div class="main">
                    <div class="form-left-to-w3l">
                        <asp:TextBox ID="txtLoginUsername" runat="server" placeholder="Kullanıcı Adı" required=""></asp:TextBox>
                    </div>
                    <div class="form-left-to-w3l ">
                        <asp:TextBox ID="txtLoginPassword" TextMode="Password" runat="server" placeholder="Şifre" required=""></asp:TextBox>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="clear"></div>
                <div>
                    <asp:Button ID="btnSignIn" CssClass="btn btn-info" runat="server" Text="Giriş Yap" />
                </div>
            </form>
        </div>
        <div class="art-left-w3ls">
            <h1 class="header-w3ls">Giriş Yapın ve Blog Yazmaya Başlayın
            </h1>
        </div>
    </div>
</body>
</html>
