using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca.Controlador;

namespace Biblioteca
{
    public partial class Modificar : System.Web.UI.Page
    {
        private static string id = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
               id = Request.QueryString["ID"];

                TraerLibro(id);
            }
        }

        private static void TraerLibro(string id)
        {
            SqlDataReader reader = null;

            reader = ControladorModificar.BuscarLibro(id);

        }
    }
}