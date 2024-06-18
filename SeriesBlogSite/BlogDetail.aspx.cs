﻿using SeriesBlogSite.Entity;
using System;
using System.Linq;

namespace SeriesBlogSite
{
    public partial class BlogDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int blogId = Convert.ToInt32(Request.QueryString["BlogID"]);
                LoadBlogDetail(blogId);
            }
        }
        private void LoadBlogDetail(int blogId)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var blog = db.tbl_blog
                    .Where(b => b.blg_id == blogId)
                    .Select(b => new
                    {
                        b.blg_title,
                        b.blg_date,
                        b.blg_contents,
                        b.blg_picture
                    })
                    .ToList();

                if (blog != null && blog.Count > 0)
                {
                    RepeaterBlog.DataSource = blog;
                    RepeaterBlog.DataBind();
                }
            }
        }
    }
}