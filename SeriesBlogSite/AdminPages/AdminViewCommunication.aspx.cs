using SeriesBlogSite.Entity;
using System;

namespace SeriesBlogSite.AdminPages
{
    public partial class AdminViewCommunication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["View"]);
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                var value = db.tbl_communication.Find(id);
                txtNameSurname.Text = value.cmm_nameSurname;
                txtMail.Text = value.cmm_mail;
                txtMail.Text = value.cmm_mail;
                txtTel.Text = value.cmm_tel;
                txtSubject.Text = value.cmm_subject;
                txtMessage.Text = value.cmm_message;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminPages/AdminCommunications.aspx");
        }
    }
}