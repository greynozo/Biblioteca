using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Runtime.InteropServices.WindowsRuntime;

namespace Biblioteca.Servicios
{
    public class ServicioAlta
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;
        public static bool AltaLibro(string nombre, string anio)
        {
            
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                try
                {
                    string script = "INSERT INTO LIBROS VALUES('"+nombre+"','"+ anio+"','','','1111',1)";

                    connection.Open();

                    SqlCommand command = new SqlCommand(script, connection);

                    int filas = command.ExecuteNonQuery();

                    connection.Close();

                    return true;
                }
                catch (Exception exception)
                {
                    return false;
                    Console.WriteLine(exception.Message);
                }
            }
        }
    }
}