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
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d803187.8113675824!2d-120.11910914056458!3d38.15292455846902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb9fe5f285e3d%3A0x8b5109a227086f55!2sCalifornia%2C+USA!5e0!3m2!1sen!2sin!4v1423829283333" frameborder="0" style="border: 0"></iframe>
                </div>
                <div class="col-md-6 company_address">
                    <h4>GET IN TOUCH</h4>
                    <p>500 Lorem Ipsum Dolor Sit,</p>
                    <p>22-56-2-9 Sit Amet, Lorem,</p>
                    <p>USA</p>
                    <p>Phone:(00) 222 666 444</p>
                    <p>Fax: (000) 123 456 78 0</p>
                    <p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
                    <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                </div>
                <div class="clearfix"></div>
            </div>


        </div>
    </div>

</asp:Content>
