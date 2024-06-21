using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminBlogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Bloglar";

            if (Session["username"] != null)
            {
                Response.Write("Hoşgeldiniz, " + Session["username"].ToString());

                try
                {
                    using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
                    {
                        var blogs = from x in db.tbl_blog
                                    select new
                                    {
                                        x.blg_id,
                                        x.blg_title,
                                        x.blg_date,
                                        x.tbl_type.typ_name,
                                        x.tbl_category.ctg_name
                                    };

                        Repeater1.DataSource = blogs.ToList();
                        Repeater1.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    // Hata ayıklama için hata mesajı yazdırma
                    Response.Write("Veritabanı hatası: " + ex.Message);
                }
            }
            else
            {
                Response.Redirect("/Login/Login.aspx");
            }
        }
    }
}
