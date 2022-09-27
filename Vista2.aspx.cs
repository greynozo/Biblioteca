using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca.Controlador;
using System.Windows.Forms;

namespace Biblioteca
{
    public partial class Vista2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargardatagridview();
            }
        }

        public void cargardatagridview()
        {
            DataTable dt = new DataTable();
            dt = ControladorVista.CargarGrilla();
          
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Modificar")
            {
                int index = int.Parse(e.CommandArgument.ToString());
                int id = int.Parse(GridView1.DataKeys[index].Value.ToString());
            }
        }
    }
}