using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;

namespace Biblioteca.Servicios
{
    public class ServicioVista
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;
        public static DataTable TraerVista()
        {
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                SqlCommand consulta = new SqlCommand(string.Format("SELECT * FROM LIBROS"), connection);
                SqlDataAdapter da = new SqlDataAdapter(consulta);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                return dt;
            }
        }
           
    }
}