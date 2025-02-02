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
        public List<Atleta> listaAtletas()
        {
            string consulta = "select Id, Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email, TipoUser from ATLETAS";
            List<Atleta> listaAtletas = new List<Atleta>();
            AccesoDatos accesoDatos = new AccesoDatos();
            try
            {
                accesoDatos.setearConsulta(consulta);
                accesoDatos.ejecutarLectura();

                while (accesoDatos.Lector.Read())
                {
                    Atleta atletaAux = new Atleta();
                    atletaAux.Id = (int)accesoDatos.Lector["Id"];
                    atletaAux.Nombre = (string)accesoDatos.Lector["Nombre"];
                    atletaAux.Apellido = (string)accesoDatos.Lector["Apellido"];
                    atletaAux.Dni = (string)accesoDatos.Lector["Dni"];
                    atletaAux.FechaNacimiento = (DateTime)accesoDatos.Lector["FechaNacimiento"];
                    atletaAux.Sexo = (string)accesoDatos.Lector["Sexo"];
                    atletaAux.Domicilio = (string)accesoDatos.Lector["Domicilio"];
                    atletaAux.Altura = (string)accesoDatos.Lector["Altura"];
                    atletaAux.Peso = (decimal)accesoDatos.Lector["Peso"];
                    atletaAux.Email = (string)accesoDatos.Lector["Email"];
                    atletaAux.TipoUsuario = (int)(accesoDatos.Lector["TipoUser"]) == 1 ? TipoUsuario.ADMIN : (int)(accesoDatos.Lector["TipoUser"]) == 2 ? TipoUsuario.ENTRENADOR : TipoUsuario.NORMAL;

                    listaAtletas.Add(atletaAux);
                }
                return listaAtletas;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
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
                    atleta.TipoUsuario = (int)(datos.Lector["TipoUser"]) == 1 ? TipoUsuario.ADMIN : (int)(datos.Lector["TipoUser"]) == 2 ? TipoUsuario.ENTRENADOR : TipoUsuario.NORMAL;
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
        public bool ValidadarEmail(Atleta atleta)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Select * from ATLETAS where Email = @email");
                datos.setearParametro("@email", atleta.Email);

                datos.ejecutarLectura();
                if (datos.Lector.HasRows)
                {
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
                    atleta.Domicilio = (string)datos.Lector["Domicilio"];
                    atleta.Peso = (decimal)datos.Lector["Peso"];
                    atleta.Altura = (string)datos.Lector["Altura"];
                    atleta.Email = (string)datos.Lector["Email"];
                    atleta.Pass = (string)datos.Lector["Pass"];
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
        public void guardarAtleta(Atleta nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("INSERT INTO ATLETAS (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email, TipoUser) VALUES (@Nombre, @Apellido, @Dni, @FechaNacimiento, @Sexo, @Domicilio, @Altura, @Peso, @Pass, @Email, @TipoUser)");
                datos.setearParametro("@Nombre", nuevo.Nombre);
                datos.setearParametro("@Apellido", nuevo.Apellido);
                datos.setearParametro("@Dni", nuevo.Dni);
                datos.setearParametro("@FechaNacimiento", nuevo.FechaNacimiento);
                datos.setearParametro("@Sexo", nuevo.Sexo);
                datos.setearParametro("@Domicilio", nuevo.Domicilio);
                datos.setearParametro("@Altura", nuevo.Altura);
                datos.setearParametro("@Peso", nuevo.Peso);
                datos.setearParametro("@Pass", nuevo.Pass);
                datos.setearParametro("@Email", nuevo.Email);
                datos.setearParametro("@TipoUser", 3);
                datos.ejecutarAccion();
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
        public void actualizarPass(Atleta nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("UPDATE ATLETAS SET Pass = @Pass WHERE Email = @Email");
                datos.setearParametro("@Pass", nuevo.Pass);
                datos.setearParametro("@Email", nuevo.Email);
                datos.ejecutarAccion();
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
        public void agregarImagen (FotoPerfil nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Insert Into IMAGENES (IdAlumno, ImagenUrl) values (@IdAlumno,@ImagenUrl);");
                datos.setearParametro("@IdAlumno", nuevo.IdAtleta);
                datos.setearParametro("@ImagenUrl", nuevo.Url);
                datos.ejecutarAccion();

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
        public void imagenPerfil(FotoPerfil nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Select ImagenUrl From IMAGENES where IdAlumno = @IdAlumno");
                datos.setearParametro("@IdAlumno", nuevo.IdAtleta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    nuevo.Url = (string)datos.Lector["ImagenUrl"];
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void actualizarImagen(FotoPerfil nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("UPDATE IMAGENES SET ImagenUrl = @ImagenUrl WHERE IdAlumno = @IdAlumno");
                datos.setearParametro("@IdAlumno", nuevo.IdAtleta);
                datos.setearParametro("@ImagenUrl", nuevo.Url);
                datos.ejecutarAccion();
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


        public bool existeImagen(int idAtleta)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT ImagenUrl FROM IMAGENES WHERE IdAlumno = @IdAlumno");
                datos.setearParametro("@IdAlumno", idAtleta);
                datos.ejecutarLectura();

                if (datos.Lector.Read())
                {
                    int count = (int)datos.Lector[0];
                    return count > 0;
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

        public void actualizarPerfilPublico(Atleta atleta)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("UPDATE ATLETAS SET Nombre = @Nombre,Apellido = @Apellido, FechaNacimiento = @FechaNacimiento, Sexo = @Sexo WHERE Id = @Id");
                datos.setearParametro("@Id", atleta.Id);
                datos.setearParametro("@Nombre", atleta.Nombre);
                datos.setearParametro("Apellido", atleta.Apellido);
                datos.setearParametro("@FechaNacimiento", atleta.FechaNacimiento);
                datos.setearParametro("@Sexo", atleta.Sexo);
                datos.ejecutarAccion();
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
        public void actualizarPerfilPrivado(Atleta atleta)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("UPDATE ATLETAS SET Dni = @Dni,Domicilio = @Domicilio, Altura = @Altura, Peso = @Peso, Email=@Email WHERE Id = @Id;");
                datos.setearParametro("@Id", atleta.Id);
                datos.setearParametro("@Dni",atleta.Dni );
                datos.setearParametro("@Domicilio", atleta.Domicilio);
                datos.setearParametro("@Altura", atleta.Altura);
                datos.setearParametro("@Peso", atleta.Peso);
                datos.setearParametro("@Email", atleta.Email);
                datos.ejecutarAccion();
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
