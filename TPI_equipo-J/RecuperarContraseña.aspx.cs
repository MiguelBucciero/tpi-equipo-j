using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPI_equipo_J
{
    public partial class RecuperarContraseña : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            AtletaNegocio negocio = new AtletaNegocio();
            EmailService emailService = new EmailService();
            Atleta atleta = new Atleta();
            atleta.Email = txtEmail.Text;
            if (negocio.ValidadarEmail(atleta))
            {
                Session.Add("usuario", atleta);
                int codigo=emailService.recuperarPass(txtEmail.Text);
                emailService.enviarEmail();
                Session.Add("Codigo", codigo);        
                Response.Redirect("RecuperarContraseñaPaso2.aspx", false);
            }
            else
            {
                lblError.Text = "El email ingresado no pertenece a un usuario registrado.";
                lblError.Visible = true;
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}