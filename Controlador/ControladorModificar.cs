using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Biblioteca.Servicios;

namespace Biblioteca.Controlador
{
    public class ControladorModificar
    {
        public static ClaseLibro BuscarLibro(string id)
        {
            //SqlDataReader reader = null;

            ClaseLibro libro = new ClaseLibro();
            
            libro = ServicioModificar.DatosBD(id);

            return libro;
        }
    }
}