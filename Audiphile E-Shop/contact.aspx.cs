using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Audiphile_E_Shop
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitContact_Click(object sender, EventArgs e)
        {
            //Mail Server
            SmtpClient email = new SmtpClient();

            //host address
            email.Host = "smtp.gmail.com";
            email.Port = 587;
            email.EnableSsl = true;

            //credentials
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1526905.Chester@gmail.com", ")N%qfzq](");
            email.Credentials = credentials;

            //account to forward the message to
            MailMessage message = new MailMessage("1526905.Chester@gmail.com", "1526905.Chester@gmail.com");

            message.Subject = txtSubject.Text;
            message.Body += "From: " + txtFirst.Text + " " + txtLast.Text + "\n" + "Email: " + txtEmail.Text + "\n";
            message.Body += "Message: " + txtMessage.Text;


            email.Send(message);

            txtMessage.Text = "";
        }
    }
}