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
            if (!IsPostBack) { 

                AtletaNegocio atletaNegocio = new AtletaNegocio();

                Session["Usuarios"]=atletaNegocio.listaAtletas();
            
            
            }
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Atleta atleta;
            AtletaNegocio negocio = new AtletaNegocio();
            try
            {
                atleta = new Atleta(txtEmail.Text, txtPass.Text);
                if (negocio.Loguear(atleta))
                {
                    Session.Add("usuario", atleta);
                    if (atleta.TipoUsuario == TipoUsuario.NORMAL)
                    {
                        Response.Redirect("MenuUsuario.aspx", false);
                    }
                    else if(atleta.TipoUsuario == TipoUsuario.ADMIN)
                    {
                        Response.Redirect("MenuAdmin.aspx", false);
                    }
                    else if(atleta.TipoUsuario== TipoUsuario.ENTRENADOR)
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
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void recoverButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecuperarContraseña.aspx");
        }
    }
}