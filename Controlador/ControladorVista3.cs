using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using Biblioteca.Servicios;


namespace Biblioteca.Controlador
{
    public class ControladorVista3
    {
        public static DataTable CargarGrilla()
        {
            DataTable dt = new DataTable();

            dt = ServicioVista3.TraerVista();

            return dt;
        }
    }
}