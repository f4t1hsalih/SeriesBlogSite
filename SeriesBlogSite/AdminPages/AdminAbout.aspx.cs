using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminAbout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Hakkımızda";

            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                Repeater1.DataSource = (from x in db.tbl_about
                                        select new
                                        {
                                            x.abt_description
                                        }).ToList();
                Repeater1.DataBind();
            }
        }
    }
}