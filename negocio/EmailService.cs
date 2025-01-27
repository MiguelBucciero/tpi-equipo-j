using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class EmailService
    {
        private MailMessage email;
        private SmtpClient server;

        public EmailService()
        {
            server = new SmtpClient();
            server.Credentials = new NetworkCredential("miguelbucciero@gmail.com", "bvnf kneu ldli lwyn");
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "smtp.gmail.com";
        }

        public void armarCorreo(string emailDestino)
        {
            email = new MailMessage();
            email.From = new MailAddress("noresponder@ClubRunning.com");
            email.To.Add(emailDestino);
            email.Subject = ("Confirmación de registro");
            email.IsBodyHtml = true;
            email.Body = "<h1>Para comfirmar el registro debes ingresar el siguente codigo: 123 456 789 </h1>";
        }

        public void enviarEmail()
        {

            try
            {
                server.Send(email);
            }
            catch (SmtpException ex)
            {
                throw new Exception("Error sending email: " + ex.Message, ex);
            }
        }
    }

}
