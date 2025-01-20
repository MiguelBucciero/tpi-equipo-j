using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace TPI_equipo_J
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Usuario usuario;
            UsuarioNegocio negocio = new UsuarioNegocio();
            try
            {
                usuario = new Usuario(txtUser.Text, txtPass.Text);
                if (negocio.Loguear(usuario))
                {
                    Session.Add("usuario", usuario);
                    if (usuario.tipoUsuario == Usuario.TipoUsuario.NORMAL)
                    {
                        Response.Redirect("MenuUsuario.aspx", false);
                    }
                    else if(usuario.tipoUsuario == Usuario.TipoUsuario.ADMIN)
                    {
                        Response.Redirect("MenuAdmin.aspx", false);
                    }
                    else if(usuario.tipoUsuario== Usuario.TipoUsuario.ENTRENADOR)
                    {
                        Response.Redirect("MenuEntrenador.aspx", false);
                    }
                }
                else
                {
                    lblError.Text = "Usuario o contraseña incorrectos."; 
                    lblError.Visible = true;
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