using SeriesBlogSite.Entity;
using System;
using System.Linq;

namespace SeriesBlogSite.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                db.Configuration.ValidateOnSaveEnabled = false;

                string username = txtLoginUsername.Text.Trim();
                string password = txtLoginPassword.Text.Trim();

                var user = db.tbl_admin.FirstOrDefault(x => x.adm_username == username && x.adm_password == password);

                if (user != null)
                {
                    Session.Add("username", user.adm_username);
                    Response.Redirect("/AdminPages/AdminBlogs.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Uyuşmayan Kullanıcı Adı veya Şifre')</script>");
                }
            }
        }
    }
}
