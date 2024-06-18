using SeriesBlogSite.Entity;
using System;
using System.Linq;

namespace SeriesBlogSite
{
    public partial class BlogDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int blogId = Convert.ToInt32(Request.QueryString["BlogID"]);
                LoadBlogDetail(blogId);
                LoadBlogComments(blogId);
            }
        }

        private void LoadBlogComments(int blogId)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var comments = db.tbl_comment
                    .Where(b => b.cmt_blog == blogId)
                    .Select(b => new
                    {
                        b.cmt_name,
                        b.cmt_message,
                    })
                    .ToList();

                RepeaterComment.DataSource = comments;
                RepeaterComment.DataBind();
            }
        }

        private void LoadBlogDetail(int blogId)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var blog = db.tbl_blog
                    .Where(b => b.blg_id == blogId)
                    .Select(b => new
                    {
                        b.blg_title,
                        b.blg_date,
                        b.blg_contents,
                        b.blg_picture
                    })
                    .ToList();

                if (blog != null && blog.Count > 0)
                {
                    RepeaterBlog.DataSource = blog;
                    RepeaterBlog.DataBind();
                }
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                tbl_comment comment = new tbl_comment
                {
                    cmt_name = txtName.Text,
                    cmt_mail = txtMail.Text,
                    cmt_message = txtMessage.Text,
                    cmt_blog = int.Parse(Request.QueryString["BlogID"])
                };

                db.tbl_comment.Add(comment);
                db.SaveChanges();
            }
            Response.Redirect(Request.RawUrl, false);
        }
    }
}