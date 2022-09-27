using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Biblioteca.Servicios;

namespace Biblioteca.Controlador
{
    public class ControladorVista
    {
        public static DataTable CargarGrilla()
        {
            DataTable dt = new DataTable();

            dt = ServicioVista.TraerVista();

            return dt;
        }
    }
}