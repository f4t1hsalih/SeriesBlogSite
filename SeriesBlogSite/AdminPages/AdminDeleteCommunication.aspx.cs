using SeriesBlogSite.Entity;
using System;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminDeleteCommunication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Delete"]);
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var value = db.tbl_communication.Find(id);
                db.tbl_communication.Remove(value);
                db.SaveChanges();
                Response.Redirect("/AdminPages/AdminCommunications.aspx");
            }
        }
    }
}