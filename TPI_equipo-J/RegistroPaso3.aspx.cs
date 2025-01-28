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
    public partial class RegistroPaso3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] == null)
                {
                    Session.Add("Error", "Debes registrarte primero");
                    Response.Redirect("Error.aspx", false);
                }
                else
                {
                    Atleta atleta = (Atleta)Session["usuario"];
                    if (atleta != null)
                    {
                        nombreCargado.Text = atleta.Nombre;
                    }
                }
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            AtletaNegocio negocio = new AtletaNegocio();
            Atleta atleta = (Atleta)Session["usuario"];
            atleta.Sexo = Request.Form["sexo"];
            atleta.FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text);
            atleta.Dni = txtDni.Text;
            atleta.Domicilio = txtDomicilio.Text;
            atleta.Peso = decimal.Parse(txtPeso.Text);
            atleta.Altura = txtAltura.Text;
            Session.Add("usuario", atleta);
            negocio.guardarAtleta(atleta);
            Response.Redirect("MenuUsuario.aspx", false);
        }
    }
}