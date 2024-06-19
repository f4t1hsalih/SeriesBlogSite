using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminComments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var comments = db.tbl_comment.ToList();
                Repeater1.DataSource = comments;
                Repeater1.DataBind();
            }
        }
    }
}