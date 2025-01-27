using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPI_equipo_J
{
    public partial class RegistroPaso2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] == null || Session["Codigo"] == null)
                {
                    Session.Add("Error", "Debes registrar primero tu Email y Nombre.");
                    Response.Redirect("Error.aspx", false);
                }
            }
        }
        protected void btnValidar_Click(object sender, EventArgs e)
        {
            int codigoIngresado;
            if (int.TryParse(txtCodigo.Text, out codigoIngresado))
            {
                int codigo = (int)Session["Codigo"];
                if (codigoIngresado == codigo)
                {
                    lblMensaje.Text = "Código validado correctamente.";
                    txtPass1.Enabled = true;
                    txtPass2.Enabled = true;
                    btnActivar.Enabled = true;
                }
                else
                {
                    lblMensaje.Text = "El código ingresado es incorrecto.";
                }
            }
            else
            {
                lblMensaje.Text = "Por favor, ingrese un código válido.";
            }
        }
        protected void VolverEnviar_Click(object sender, EventArgs e)
        {
            Atleta atleta = (Atleta)Session["usuario"];
            if(atleta != null)
            {
                EmailService emailService = new EmailService();
                int codigo = emailService.armarCorreo(atleta.Email, atleta.Nombre, atleta.Apellido);
                emailService.enviarEmail();
                Session.Add("Codigo", codigo);
                lblMensaje.Text = "El código ha sido reenviado.";
            }
            else
            {
                lblMensaje.Text = "No se pudo reenviar el código. Por favor, intente registrarse nuevamente.";
            }

        }

        protected void btnActivar_Click(object sender, EventArgs e)
        {
            string pass1 = txtPass1.Text;
            string pass2 = txtPass2.Text;
            if (pass1 != pass2)
            {
                lblPassError.Text = "Las contraseñas no coinciden.";
                lblPassError.Visible = true;
                return;
            }
            if (!contraseñaValida(pass1))
            {
                lblPassError.Text = "La contraseña debe tener al menos 6 caracteres, una letra mayúscula y un símbolo.";
                lblPassError.Visible = true;
                return;
            }
            lblPassError.Text = "Cuenta activada correctamente.";
            lblPassError.Visible = true;
            Atleta atleta = (Atleta)Session["usuario"];
            atleta.Pass = pass1;
            Session.Add("usuario", atleta);
            Response.Redirect("RegistroPaso3.aspx");
        }
        private bool contraseñaValida(string contraseña)
        {
            if (contraseña.Length < 6)
                return false;

            if (!Regex.IsMatch(contraseña, @"[A-Z]"))
                return false;

            if (!Regex.IsMatch(contraseña, @"[\W_]"))
                return false;

            return true;
        }

    }
}