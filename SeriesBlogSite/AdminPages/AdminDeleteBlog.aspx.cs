using SeriesBlogSite.Entity;
using System;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminDeleteBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Delete"]);
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var value = db.tbl_blog.Find(id);
                db.tbl_blog.Remove(value);
                db.SaveChanges();
                Response.Redirect("/AdminPages/AdminBlogs.aspx");
            }
        }
    }
}