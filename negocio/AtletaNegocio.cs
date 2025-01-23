using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class AtletaNegocio
    {
        public bool Loguear(Atleta atleta)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Select Id, TipoUser from ATLETAS where Email = @email AND Pass = @pass");
                datos.setearParametro("@email", atleta.Email);
                datos.setearParametro("@pass", atleta.Pass);

                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    atleta.Id = (int)datos.Lector["Id"];
                    atleta.TipoUsuario = (int)(datos.Lector["TipoUser"]) == 1 ? TipoUsuario.ADMIN:(int)(datos.Lector["TipoUser"]) == 2 ? TipoUsuario.ENTRENADOR: TipoUsuario.NORMAL;
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

       public Atleta datosAtleta(Atleta atleta)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Select * from ATLETAS where Id = @id");
                datos.setearParametro("@id", atleta.Id);
                datos.ejecutarLectura();
                
                while (datos.Lector.Read())
                {
                    atleta.Nombre = (string)datos.Lector["Nombre"];
                    atleta.Apellido = (string)datos.Lector["Apellido"];
                    atleta.Dni = (string)datos.Lector["Dni"];
                    atleta.FechaNacimiento = (DateTime)datos.Lector["FechaNacimiento"];
                    atleta.Sexo = (string)datos.Lector["Sexo"];
                    atleta.Peso = (decimal)datos.Lector["Peso"];
                    atleta.Altura = (string)datos.Lector["Altura"];
                    atleta.Domicilio = (string)datos.Lector["Domicilio"];
                }
                return atleta;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        
    }
}
