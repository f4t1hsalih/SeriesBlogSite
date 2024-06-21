using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace SeriesBlogSite
{
    public partial class CategoryDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string idValue = Request.QueryString["ID"];
            try
            {
                int id = int.Parse(idValue);
                using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
                {
                    var blog = db.tbl_blog.Where(x => x.blg_category == id).ToList();
                    RepeaterBlog.DataSource = blog;
                    RepeaterBlog.DataBind();

                    RepeaterLastBlogs.DataSource = db.tbl_blog
                                                     .OrderByDescending(b => b.blg_date)
                                                     .Take(5)
                                                     .ToList();
                    RepeaterLastBlogs.DataBind();

                    var comment = db.tbl_comment.OrderByDescending(x => x.cmt_id).Take(5).ToList();
                    RepeaterLastComments.DataSource = comment;
                    RepeaterLastComments.DataBind();

                    var category = db.tbl_category.ToList();
                    RepeaterCategory.DataSource = category;
                    RepeaterCategory.DataBind();

                }
            }
            catch (FormatException ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}