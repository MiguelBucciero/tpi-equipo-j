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
    public partial class MenuAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (!(Session["usuario"] != null && ((dominio.Atleta)Session["usuario"]).TipoUsuario == dominio.TipoUsuario.ADMIN))
                {
                    Session.Add("Error", "Debes tener permisos de Administrador para entrar.");
                    Response.Redirect("Error.aspx", false);
                }
                else
                {
                    AtletaNegocio negocio = new AtletaNegocio();
                    Atleta atleta = negocio.datosAtleta((Atleta)Session["usuario"]);
                    lblUserName.InnerText = atleta.Nombre;

                    dgvUsuarios.DataSource = (List<Atleta>)Session["Usuarios"];
                    dgvUsuarios.DataBind();
                }

            }
        }

        protected void dgvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}