using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Odbc;
using Biblioteca.Controlador;

namespace Biblioteca 

    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["Usuario"].ToString() == string.Empty)
                    Response.Redirect("Login.aspx");
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
           bool resp = ControladorAlta.Alta(txtNombre.Text, txtAño.Text);

            if (resp)
                lblMensaje.Text = "Se realizo el alta correctamente";
            else
                lblMensaje.Text = "No se pudo realizar el alta";
        }
    }
}