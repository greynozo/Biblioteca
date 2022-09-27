using Biblioteca.Controlador;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca
{
    public partial class Vista3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                RellenarTabla();
            }
        }

        public void RellenarTabla()
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
                //e.CommandArgument.ToString();
                int index = int.Parse(e.CommandArgument.ToString());
                string id = GridView1.DataKeys[index].Value.ToString();

                Response.Redirect("Modificar.aspx?ID=" + id);
                //GridView1.data

            }
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {

        }
    }
}