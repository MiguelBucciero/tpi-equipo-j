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
    public partial class MenuLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] == null)
                {
                    Session.Add("Error", "Debes loguearte para ingresar.");
                    Response.Redirect("Error.aspx", false);
                }
                AtletaNegocio negocio = new AtletaNegocio();
                Atleta atleta = negocio.datosAtleta((Atleta)Session["usuario"]);
                lblUserName.InnerText = atleta.Nombre;
            }
        }
    }
}