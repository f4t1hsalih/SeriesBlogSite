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

            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                Repeater1.DataSource = db.tbl_blog.ToList();
                Repeater1.DataBind();
            }
        }
    }
}