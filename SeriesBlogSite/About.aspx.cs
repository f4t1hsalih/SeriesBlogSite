using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace SeriesBlogSite
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var about = db.tbl_about.ToList();
                RepeaterAbout.DataSource = about;
                RepeaterAbout.DataBind();
            }
        }
    }
}