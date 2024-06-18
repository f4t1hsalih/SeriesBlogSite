using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace SeriesBlogSite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SeriesBlogSiteEntities db = new SeriesBlogSiteEntities();
            db.tbl_blog.ToList();
            RepeaterBlog.DataSource = db.tbl_blog.ToList();
            RepeaterBlog.DataBind();
            RepeaterLastBlogs.DataSource = db.tbl_blog.ToList();
            RepeaterLastBlogs.DataBind();
        }
    }
}