using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class AlumnoNegocio
    {
       
        public List<Alumno> listarAlumnos()
        {
            string consulta = "select Id, Nombre, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email from ALUMNOS";
            List<Alumno> listaAlumnos = new List<Alumno>();
            AccesoDatos accesoDatos = new AccesoDatos();


            try
            {
                accesoDatos.setearConsulta(consulta);
                accesoDatos.ejecutarLectura();

                while (accesoDatos.Lector.Read())
                {
                    Alumno alumno = new Alumno();
                    alumno.Id = (int)accesoDatos.Lector["Id"];
                    alumno.Nombre = (string)accesoDatos.Lector["Nombre"];
                    alumno.Dni = (string)accesoDatos.Lector["Dni"];
                    alumno.FechaNacimiento = (DateTime)accesoDatos.Lector["FechaNacimiento"];
                    alumno.Sexo = (string)accesoDatos.Lector["Sexo"];
                    alumno.Domicilio = (string)accesoDatos.Lector["Domicilio"];
                    alumno.Altura = (string)accesoDatos.Lector["Altura"];
                    alumno.Peso = (decimal)accesoDatos.Lector["Peso"];
                    alumno.Pass = (string)accesoDatos.Lector["Pass"];
                    alumno.Email = (string)accesoDatos.Lector["Email"];

                    listaAlumnos.Add(alumno);


                }
                return listaAlumnos;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }
        }
    }
}
