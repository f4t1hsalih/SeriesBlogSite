using SeriesBlogSite.Entity;
using System;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminUpdateComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Update"]);
            if (!IsPostBack)
            {
                using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
                {
                    var value = db.tbl_comment.Find(id);
                    txtBlgTitle.Text = value.tbl_blog.blg_title;
                    txtCmtName.Text = value.cmt_name;
                    txtCmtContent.Text = value.cmt_message;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Update"]);
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var value = db.tbl_comment.Find(id);
                value.cmt_name = txtCmtName.Text;
                value.cmt_message = txtCmtContent.Text;
                db.SaveChanges();
                Response.Redirect("/AdminPages/AdminComments.aspx");
            }
        }
    }
}