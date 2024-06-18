<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SeriesBlogSite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">

    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2>İLETİŞİM</h2>
                <p>Blog sayfamızda bulunan film ve dizilere eklemek istedikleriniz için veya yorumlarda yaşadığınız herhangi bir problem olursa bizlere mesaj gönderebilirsiniz. Mesaj gönderme sırasında mutlaka mail adresinizi doğru bir şekilde yazın ki sizlere bu mail üzerinden dönüş yapabilelim.</p>
            </div>

            <div class="contact-details">
                <form runat="server">
                    <div>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Ad" required=""></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Mail" required=""></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone" placeholder="Telefon" required=""></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Konu" required=""></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Mesaj..." required=""></asp:TextBox>
                    </div>
                    <div class="btn-container">
                        <asp:Button ID="btnSend" runat="server" CssClass="btn btn-success" Text="GÖNDER" />
                    </div>
                </form>
            </div>



            <div class="contact-details">
                <div class="col-md-6 contact-map">
                    <h4>Biz Buradayız</h4>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d192697.8885053628!2d28.847372731098304!3d41.00546324298783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caa7040068086b%3A0xe1ccfe98bc01b0d0!2zxLBzdGFuYnVs!5e0!3m2!1str!2str!4v1718737647817!5m2!1str!2str" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="clearfix"></div>
            </div>


        </div>
    </div>

</asp:Content>
