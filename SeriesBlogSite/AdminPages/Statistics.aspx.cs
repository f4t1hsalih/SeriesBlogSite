using SeriesBlogSite.Entity;
using System;
using System.Linq;

namespace SeriesBlogSite.AdminPages
{
    public partial class Statistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                lblTotalBlog.Text = db.tbl_blog.Count().ToString();
                lblTotalComment.Text = db.tbl_comment.Count().ToString();
                lblTotalFilm.Text = db.tbl_blog.Where(x => x.blg_type == 2).Count().ToString();
                lblTotalSeries.Text = db.tbl_blog.Where(x => x.tbl_type.typ_name == "Dizi").Count().ToString();
                lblTotalAnimation.Text = db.tbl_blog.Where(x => x.blg_type == 4).Count().ToString();
                lblTopCommentBlog.Text = db.tbl_blog.OrderByDescending(x => x.tbl_comment.Count).FirstOrDefault().blg_title;
            }
        }
    }
}