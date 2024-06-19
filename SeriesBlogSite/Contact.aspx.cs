using SeriesBlogSite.Entity;
using System;

namespace SeriesBlogSite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            using (SeriesBlogSiteEntities db = new SeriesBlogSiteEntities())
            {
                tbl_communication communication = new tbl_communication
                {
                    cmm_nameSurname = txtName.Text,
                    cmm_mail = txtMail.Text,
                    cmm_tel = txtPhone.Text,
                    cmm_subject = txtSubject.Text,
                    cmm_message = txtMessage.Text
                };
                db.tbl_communication.Add(communication);
                db.SaveChanges();
                Response.Redirect(Request.RawUrl, true);
            }
        }
    }
}