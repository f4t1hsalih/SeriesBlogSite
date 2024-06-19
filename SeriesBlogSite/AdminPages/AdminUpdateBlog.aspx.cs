﻿using SeriesBlogSite.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminUpdateBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
                {
                    var types = (from x in db.tbl_type select new { x.typ_id, x.typ_name }).ToList();
                    ddlBlgType.DataSource = types;
                    ddlBlgType.DataTextField = "typ_name";
                    ddlBlgType.DataValueField = "typ_id";
                    ddlBlgType.DataBind();

                    var categories = (from x in db.tbl_category select new { x.ctg_id, x.ctg_name }).ToList();
                    ddlBlgCategory.DataSource = categories;
                    ddlBlgCategory.DataTextField = "ctg_name";
                    ddlBlgCategory.DataValueField = "ctg_id";
                    ddlBlgCategory.DataBind();

                }
            }
        }
    }
}