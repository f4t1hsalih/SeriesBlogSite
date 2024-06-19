using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminBlogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Bloglar";

            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                Repeater1.DataSource = (from x in db.tbl_blog
                                        select new
                                        {
                                            x.blg_id,
                                            x.blg_title,
                                            x.blg_date,
                                            x.tbl_type.typ_name,
                                            x.tbl_category.ctg_name
                                        }).ToList();
                Repeater1.DataBind();
            }
        }
    }
}