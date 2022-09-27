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
        public static SqlDataReader BuscarLibro(string id)
        {
            SqlDataReader reader = null;

            reader = ServicioModificar.DatosBD(id);

            return reader;
        }
    }
}