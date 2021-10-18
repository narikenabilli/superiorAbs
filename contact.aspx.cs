using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void OnSubmitClicked(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            using (SmtpClient client = new SmtpClient("relay-hosting.secureserver.net", 25))
            using (MailMessage message = new MailMessage())
            {
                message.Body = "Contact Us \n\n" +
                "Name:      " + this.tbName.Text.Trim() + "\n" +
                "Company:   " + this.tbCompany.Text.Trim()  + "\n" +
                "Email:     " + this.tbEmail.Text.Trim() + "\n" +
                "Phone:     " + this.tbContactNumber.Text.Trim() + "\n" +
                "Comments: " + "\n" + this.tbComments.Text.Trim()  + "\n";
                message.From = new MailAddress(this.tbEmail.Text.Trim());

                message.To.Add(new MailAddress("info@superiorabstract.com"));
                message.CC.Add(new MailAddress("dlamothe@superiorabstract.com"));
                message.Subject = "Contact Us from Website";

                client.Send(message);
            }

            this.fields.Visible = false;
            this.thankyou.Visible = true;
        }
    }
}