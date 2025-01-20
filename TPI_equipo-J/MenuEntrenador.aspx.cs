using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPI_equipo_J
{
    public partial class MenuEntrenador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["usuario"] != null && ((dominio.Usuario)Session["usuario"]).tipoUsuario == dominio.Usuario.TipoUsuario.ENTRENADOR))
            {
                Session.Add("Error", "Debes tener permisos de Entrenador para entrar.");
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}