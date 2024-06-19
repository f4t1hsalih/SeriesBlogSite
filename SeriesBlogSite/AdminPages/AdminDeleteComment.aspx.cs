using SeriesBlogSite.Entity;
using System;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminDeleteComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Delete"]);
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var value = db.tbl_comment.Find(id);
                db.tbl_comment.Remove(value);
                db.SaveChanges();
                Response.Redirect("/AdminPages/AdminComments.aspx");
            }
        }
    }
}