using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
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
                else
                {
                    AtletaNegocio negocio = new AtletaNegocio();
                    Atleta atleta = negocio.datosAtleta((Atleta)Session["usuario"]);
                    lblUserName.InnerText = atleta.Nombre;
                    lblNombre.InnerText = atleta.Nombre;
                    lblApellido.InnerText = atleta.Apellido;
                    lblFechaNacimiento.InnerText = atleta.FechaNacimiento.ToString();
                    lblDNI.InnerText = atleta.Dni;
                    lblDomicilio.InnerText = atleta.Domicilio;
                    lblAltura.InnerText = atleta.Altura.ToString();
                    lblPeso.InnerText = atleta.Peso.ToString();
                    lblEmail.InnerText = atleta.Email;
                    lblSexo.InnerText = atleta.Sexo;
                    FotoPerfil fotoPerfil = new FotoPerfil();
                    fotoPerfil.IdAtleta = atleta.Id;
                    negocio.imagenPerfil(fotoPerfil);
                    imagenPerfil.ImageUrl = "~/Images/" + fotoPerfil.Url;
                    imgPerfil.ImageUrl = "~/Images/" + fotoPerfil.Url;

                    if (atleta.TipoUsuario == TipoUsuario.NORMAL)
                    {
                        lnkAlumnos.Visible = false;
                        lnkPermisos.Visible = false;
                        alumnos.Visible = false;
                        permisos.Visible = false;
                    }
                    else if (atleta.TipoUsuario == TipoUsuario.ADMIN)
                    {
                        dgvUsuarios.DataSource = (List<Atleta>)Session["Usuarios"];
                        dgvUsuarios.DataBind();
                    }
                    else if (atleta.TipoUsuario == TipoUsuario.ENTRENADOR)
                    {
                        lnkPermisos.Visible = false;
                        permisos.Visible = false;
                    }
                    
                    string pestañaActiva = Session["PestañaActiva"]?.ToString();
                    if (string.IsNullOrEmpty(pestañaActiva))
                    {
                        pestañaActiva = "dashboard";
                    }
                    PestañaActiva(pestañaActiva);

                }
            }
        }
        private void PestañaActiva(string nombrePestaña)
        {
            dashboard.Attributes["class"] = "tab-pane fade";
            entrenos.Attributes["class"] = "tab-pane fade";
            perfil.Attributes["class"] = "tab-pane fade";
            alumnos.Attributes["class"] = "tab-pane fade";
            permisos.Attributes["class"] = "tab-pane fade";

            switch (nombrePestaña)
            {
                case "dashboard":
                    dashboard.Attributes["class"] += " show active";
                    break;
                case "entrenos":
                    entrenos.Attributes["class"] += " show active";
                    break;
                case "perfil":
                    perfil.Attributes["class"] += " show active";
                    break;
                case "alumnos":
                    alumnos.Attributes["class"] += " show active"; 
                    break;
                case "permisos":
                    permisos.Attributes["class"] += " show active"; 
                    break;
            }

            Session["PestañaActiva"] = nombrePestaña;
        }
        protected void btnGuardarImagen_Click1(object sender, EventArgs e)
        {
            try
            {
                string ruta = Server.MapPath("./Images/");
                Atleta atleta = (Atleta)Session["usuario"];
                txtImagen.PostedFile.SaveAs(ruta + DateTime.Now.ToString("yyyyMMddHHmmss") + ".jpg");
                FotoPerfil fotoPerfil = new FotoPerfil();
                fotoPerfil.Url = DateTime.Now.ToString("yyyyMMddHHmmss") + ".jpg";
                fotoPerfil.IdAtleta = atleta.Id;

                AtletaNegocio negocio = new AtletaNegocio();
                if (negocio.existeImagen(atleta.Id))
                {
                    negocio.actualizarImagen(fotoPerfil);
                }
                else
                {
                    negocio.agregarImagen(fotoPerfil);
                }
                imagenPerfil.ImageUrl = "~/Images/" + fotoPerfil.Url;
                imgPerfil.ImageUrl = "~/Images/" + fotoPerfil.Url;
                string resolvedUrl = ResolveUrl("~/Images/" + fotoPerfil.Url);
                string timestamp = DateTime.Now.Ticks.ToString();
                string script = $@"
                document.getElementById('imgPerfil').src = '{resolvedUrl}?t={timestamp}';
                document.getElementById('imagenPerfil').src = '{resolvedUrl}?t={timestamp}';";
                ScriptManager.RegisterStartupScript(this, GetType(), "ActualizarImagen", script, true);
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }
        }

        protected void editarPrivado_Click(object sender, EventArgs e)
        {
            TextDni.Enabled = true;
            TextDomicilio.Enabled = true;
            TextAltura.Enabled = true;
            TextPeso.Enabled = true;
            TextEmail.Enabled = true;

            TextDni.Text = lblDNI.InnerText;
            TextDomicilio.Text = lblDomicilio.InnerText;
            TextAltura.Text = lblAltura.InnerText;
            TextPeso.Text = lblPeso.InnerText;
            TextEmail.Text = lblEmail.InnerText;


            TextDni.Style["display"] = "block";
            TextDomicilio.Style["display"] = "block";
            TextAltura.Style["display"] = "block";
            TextPeso.Style["display"] = "block";
            TextEmail.Style["display"] = "block";

            lblDNI.Style["display"] = "none";
            lblDomicilio.Style["display"] = "none";
            lblAltura.Style["display"] = "none";
            lblPeso.Style["display"] = "none";
            lblEmail.Style["display"] = "none";
            editarPrivado.Style["display"] = "none";

            btnGuardarPrivido.Style["display"] = "block";
        }
        protected void btnEditarPublico_Click1(object sender, EventArgs e)
        {
            TextNombre.Enabled = true;
            TextApellido.Enabled = true;
            TextFechaNacimiento.Enabled = true;
            TextSexo.Enabled = true;

            TextNombre.Text = lblNombre.InnerText;
            TextApellido.Text = lblApellido.InnerText;
            TextFechaNacimiento.Text = lblFechaNacimiento.InnerText;
            TextSexo.Text = lblSexo.InnerText;

            TextNombre.Style["display"] = "block";
            TextApellido.Style["display"] = "block";
            TextFechaNacimiento.Style["display"] = "block";
            TextSexo.Style["display"] = "block";

            lblNombre.Style["display"] = "none";
            lblApellido.Style["display"] = "none";
            lblFechaNacimiento.Style["display"] = "none";
            lblSexo.Style["display"] = "none";
            btnEditarPublico.Style["display"] = "none";


            btnGuardarPublico.Style["display"] = "block";
            txtImagen.Style["display"] = "block";
            btnGuardarImagen.Style["display"] = "block";
        }

        protected void btnGuardarPrivido_Click(object sender, EventArgs e)
        {
            try
            {
                AtletaNegocio negocio = new AtletaNegocio();
                Atleta atleta = (Atleta)Session["usuario"];

                atleta.Dni = TextDni.Text;
                atleta.Domicilio = TextDomicilio.Text;
                atleta.Altura = TextAltura.Text;
                atleta.Peso = decimal.Parse(TextPeso.Text);
                atleta.Email = TextEmail.Text;

                negocio.actualizarPerfilPrivado(atleta);

                lblDNI.InnerText = TextDni.Text;
                lblDomicilio.InnerText = TextDomicilio.Text;
                lblAltura.InnerText = TextAltura.Text;
                lblPeso.InnerText = TextPeso.Text;
                lblEmail.InnerText = TextEmail.Text;

                TextDni.Style["display"] = "none";
                TextDomicilio.Style["display"] = "none";
                TextAltura.Style["display"] = "none";
                TextPeso.Style["display"] = "none";
                TextEmail.Style["display"] = "none";

                lblDNI.Style["display"] = "block";
                lblDomicilio.Style["display"] = "block";
                lblAltura.Style["display"] = "block";
                lblPeso.Style["display"] = "block";
                lblEmail.Style["display"] = "block";
                editarPrivado.Style["display"] = "block";

                btnGuardarPrivido.Style["display"] = "none";
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnGuardarPublico_Click(object sender, EventArgs e)
        {
            try
            {
                AtletaNegocio negocio = new AtletaNegocio();
                Atleta atleta = (Atleta)Session["usuario"];

                atleta.Nombre = TextNombre.Text;
                atleta.Apellido = TextApellido.Text;
                atleta.FechaNacimiento = DateTime.Parse(TextFechaNacimiento.Text);
                atleta.Sexo = TextSexo.Text;

                negocio.actualizarPerfilPublico(atleta);

                lblNombre.InnerText = TextNombre.Text;
                lblApellido.InnerText = TextApellido.Text;
                lblFechaNacimiento.InnerText = TextFechaNacimiento.Text;
                lblSexo.InnerText = TextSexo.Text;

                TextNombre.Style["display"] = "none";
                TextApellido.Style["display"] = "none";
                TextFechaNacimiento.Style["display"] = "none";
                TextSexo.Style["display"] = "none";

                lblNombre.Style["display"] = "block";
                lblApellido.Style["display"] = "block";
                lblFechaNacimiento.Style["display"] = "block";
                lblSexo.Style["display"] = "block";
                btnEditarPublico.Style["display"] = "block";

                btnGuardarImagen.Style["display"] = "none";
                txtImagen.Style["display"] = "none";
                btnGuardarPublico.Style["display"] = "none";
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }

        }
        protected void lnkDashboard_Click(object sender, EventArgs e)
        {
            PestañaActiva("dashboard");
        }

        protected void lnkEntrenos_Click(object sender, EventArgs e)
        {
            PestañaActiva("entrenos");
        }

        protected void lnkPerfil_Click(object sender, EventArgs e)
        {
            PestañaActiva("perfil");
        }

        protected void lnkAlumnos_Click(object sender, EventArgs e)
        {
            PestañaActiva("alumnos");
        }

        protected void lnkPermisos_Click(object sender, EventArgs e)
        {
            PestañaActiva("permisos");
        }
    }
}