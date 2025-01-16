using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MimeKit;
using MailKit.Net.Smtp;

namespace EmailForm
{
    public partial class EmailForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;
            string recipient2 = txtEmail2.Text;
            string recipient3 = txtEmail3.Text;

            if (!string.IsNullOrWhiteSpace(name) && !string.IsNullOrWhiteSpace(email) && !string.IsNullOrWhiteSpace(message))
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                string query = @"INSERT INTO [dbo].[EmailForm]
            ([name]
            ,[email]
            ,[message])
            VALUES
            (@name, @email, @message)";
                SqlCommand cmd = new SqlCommand(query, con);
                
                try
                {
                    var emailMessage = new MimeMessage();
                    emailMessage.From.Add(new MailboxAddress("shiva","sbsumit404@gmail.com"));
                    emailMessage.To.Add(new MailboxAddress("satyam",email));
                    emailMessage.Bcc.Add(new MailboxAddress("", recipient2));
                    emailMessage.Bcc.Add(new MailboxAddress("", recipient3));
                    emailMessage.Subject = "New Contact Form Submission";
                    emailMessage.Body = new TextPart("plain")
                    {
                        Text = $"Message: {message}"
                    };

                    var client = new SmtpClient();
                    client.Connect("smtp.gmail.com", 587, false);
                    client.Authenticate("sbsumit404@gmail.com", "nloh ujgq ephv cknk "); // this password is APP SPECFIC PASSWORD
                    client.Send(emailMessage);
                    //client.Dispose();
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    client.Disconnect(true);



                }
                catch (Exception err)
                {
                    Response.Write($"<script>alert('email is not save error happens is:- {err.Message}')</script>");
                }

            }

        }
    }
}