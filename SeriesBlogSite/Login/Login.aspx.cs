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
                var user = db.tbl_admin.Where(x => x.adm_username == txtLoginUsername.Text && x.adm_password == txtLoginPassword.Text).FirstOrDefault();
                if (user != null)
                {
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