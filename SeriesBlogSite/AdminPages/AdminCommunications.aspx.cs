using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminCommunications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Mesajlar";

            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                Repeater1.DataSource = (from x in db.tbl_communication
                                        select new
                                        {
                                            x.cmm_id,
                                            x.cmm_nameSurname,
                                            x.cmm_mail,
                                            x.cmm_subject
                                        }).ToList();
                Repeater1.DataBind();
            }
        }
    }
}