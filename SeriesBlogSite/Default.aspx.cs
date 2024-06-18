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

            var blog = db.tbl_blog.ToList();
            RepeaterBlog.DataSource = blog;
            RepeaterBlog.DataBind();

            RepeaterLastBlogs.DataSource = blog;
            RepeaterLastBlogs.DataBind();

            var category = db.tbl_category.ToList();
            RepeaterCategory.DataSource = category;
            RepeaterCategory.DataBind();

            var comment = db.tbl_comment.ToList();
            RepeaterLastComments.DataSource = comment;
            RepeaterLastComments.DataBind();
        }
    }
}