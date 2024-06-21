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
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var blog = db.tbl_blog.ToList();
                RepeaterBlog.DataSource = blog;
                RepeaterBlog.DataBind();

                RepeaterLastBlogs.DataSource = db.tbl_blog
                                                 .OrderByDescending(b => b.blg_date)
                                                 .Take(5)
                                                 .ToList();
                RepeaterLastBlogs.DataBind();

                var comment = db.tbl_comment.OrderByDescending(x=>x.cmt_id).Take(5).ToList();
                RepeaterLastComments.DataSource = comment;
                RepeaterLastComments.DataBind();

                var category = db.tbl_category.ToList();
                RepeaterCategory.DataSource = category;
                RepeaterCategory.DataBind();

            }
        }
    }
}