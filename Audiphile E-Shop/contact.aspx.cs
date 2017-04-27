using System;
using System.Collections.Generic;
using System.IO;
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

            //code adapted from Debendra Dash (http://www.c-sharpcorner.com/UploadFile/33b051/sending-mail-with-html-template/)
            try
            {

                string body = this.EmailBody(txtFirst.Text, txtLast.Text, txtEmail.Text, txtSubject.Text, txtMessage.Text);

                string bodyUser = this.EmailBodyForUser(txtFirst.Text, txtLast.Text, txtEmail.Text, txtSubject.Text, txtMessage.Text);

                this.SendEmail("An enquire was received from:" + " " + txtFirst.Text + " " + txtLast.Text, body);

                this.SendEmailToUser("Enquiry about: " + txtSubject.Text,bodyUser);

                txtFirst.Text = "";
                txtLast.Text = "";
                txtEmail.Text = "";
                txtSubject.Text = "";
                txtMessage.Text = "";

                litResult.Text = "Your enquiry has been sent successfully!";

               


            }

            catch (Exception error)
            {
                litResult.Text = "Send failed: " + error.Message + ":" + error.InnerException + "";
            }
        }


        private string EmailBody(string firstName, string lastName, string emailAdd, string subject, string message)

        {

            string body = string.Empty;

            //link the template to the code
            using (StreamReader reader = new StreamReader(Server.MapPath("~/Email/HtmlTemplate.html")))

            {

                body = reader.ReadToEnd();

            }
            //pushing the user's information to the email's template
            body = body.Replace("{firstName}", firstName);

            body = body.Replace("{lastName}", lastName);

            body = body.Replace("{emailAdd}", emailAdd);

            body = body.Replace("{subject}", subject);

            body = body.Replace("{message}", message);


            return body;

        }

        private void SendEmail(string subject, string body)

        {

            using (MailMessage message = new MailMessage("1526905.Chester@gmail.com", "1526905.Chester@gmail.com"))

            {


                SmtpClient email = new SmtpClient();
                message.Subject = subject;

                message.Body = body;

                message.IsBodyHtml = true;

                message.To.Add(new MailAddress("1526905.Chester@gmail.com"));

                email.Host = "smtp.gmail.com";
                email.Port = 587;
                email.EnableSsl = true;

                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1526905.Chester@gmail.com", ")N%qfzq](");

                email.UseDefaultCredentials = true;

                email.Credentials = credentials;



                email.Send(message);
                //end of adapted code

               
            }

        }
        private string EmailBodyForUser(string firstName, string lastName, string emailAdd, string subject, string message)

        {

            string body = string.Empty;

            //link the template to the code
            using (StreamReader reader = new StreamReader(Server.MapPath("~/Email/UserEmailTemplate.html")))

            {

                body = reader.ReadToEnd();

            }
            //pushing the user's information to the email's template
            body = body.Replace("{firstName}", firstName);

            body = body.Replace("{lastName}", lastName);

            body = body.Replace("{emailAdd}",  emailAdd);

            body = body.Replace("{subject}",  subject);

            body = body.Replace("{message}",  message);


            return body;

        }

        private void SendEmailToUser(string subject, string body)
        {
            using (MailMessage message = new MailMessage("1526905.Chester@gmail.com", txtEmail.Text))
            {
                SmtpClient email = new SmtpClient();
                message.Subject = subject;

                message.Body = body;

                message.IsBodyHtml = true;

                message.To.Add(new MailAddress(txtEmail.Text));

                email.Host = "smtp.gmail.com";
                email.Port = 587;
                email.EnableSsl = true;

                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1526905.Chester@gmail.com", ")N%qfzq](");

                email.UseDefaultCredentials = true;

                email.Credentials = credentials;



                email.Send(message);

               
            }


        }
    }
}
    
