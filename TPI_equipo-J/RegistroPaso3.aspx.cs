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
                if (Session["usuario"] == null )
                {
                    Session.Add("Error", "Debes registrarte primero");
                    Response.Redirect("Error.aspx", false);
                }
            }
        }
    }
}