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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Atleta atleta;
            AtletaNegocio negocio = new AtletaNegocio();
            try
            {
                atleta = new Atleta();
                atleta.Email = txtEmail.Text;
                if (negocio.ValidadarEmail(atleta))
                {
                    lblError.Text = "Esta dirección de e-mail ya está registrada.";
                    lblError.Visible = true;
                }
                else
                {
                    atleta.Nombre = txtNombre.Text;
                    atleta.Apellido = txtApellido.Text;
                    Session.Add("usuario", atleta);
                    Response.Redirect("RegistroPaso2.aspx", false);
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "Ha ocurrido un error. Inténtalo de nuevo.";
                lblError.Visible = true;
            }
        }
    }
}