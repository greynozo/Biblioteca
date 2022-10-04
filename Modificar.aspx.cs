using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca.Controlador;
using System.Web.WebSockets;

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

        public void TraerLibro(string id)
        {
            //SqlDataReader reader = null;

            ClaseLibro libro = new ClaseLibro();

            libro = ControladorModificar.BuscarLibro(id);

            txtNombre.Text = libro.Nombre;
            txtAutor.Text = libro.Autor;
            txtISBN.Text = libro.ISBN;
            txtEditorial.Text = libro.Editorial;
            txtAño.Text = libro.Año;

        }
    }
}