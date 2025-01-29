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

        public int armarCorreo(string emailDestino, string nombre, string apellido)
        {
            email = new MailMessage();
            email.From = new MailAddress("noresponder@ClubRunning.com");
            email.To.Add(emailDestino);
            email.Subject = ("Bienvenido a la Plataforma de Club Running.");
            email.IsBodyHtml = true;
            Random random = new Random();
            int codigo = random.Next(100000, 999999);
            email.Body = $"<h1>Hola {nombre} {apellido},</h1><p>Hemos procesado tu registro en la plataforma de Club Running.\r\n\r\nPara poder activar tu cuenta introduce el siguiente código en la pantalla dónde has hecho el registro.\r\n\r\nCódigo: <strong>{codigo}</strong></p>";
            return codigo;
        }
        public int recuperarPass(string emailDestino)
        {
            email = new MailMessage();
            email.From = new MailAddress("noresponder@ClubRunning.com");
            email.To.Add(emailDestino);
            email.Subject = ("Recuperación de Contraseña.");
            email.IsBodyHtml = true;
            Random random = new Random();
            int codigo = random.Next(100000, 999999);
            email.Body = $"<h1>Hola,</h1><p>Para recuperar tu contraseña introduce el siguiente código en la pantalla dónde has solicitado la recuperación.\r\n\r\nCódigo: <strong>{codigo}</strong></p>";
            return codigo;
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
