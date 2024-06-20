using SeriesBlogSite.Entity;
using System;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminUpdateAbout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Update"]);
            if (!IsPostBack)
            {
                using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
                {
                    var value = db.tbl_about.Find(id);
                    txtAbtDescription.Text = value.abt_description;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Update"]);
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var value = db.tbl_about.Find(id);
                value.abt_description = txtAbtDescription.Text;
                db.SaveChanges();
                Response.Redirect("/AdminPages/AdminAbout.aspx");
            }
        }
    }
}