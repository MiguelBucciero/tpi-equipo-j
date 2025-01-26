using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace dominio
{
    public enum TipoUsuario
    {
        ADMIN = 1,
        ENTRENADOR = 2,
        NORMAL = 3
    }
    public class Atleta
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Dni { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Sexo { get; set; }
        public decimal Peso { get; set; }
        public string Altura { get; set; }
        public string Domicilio { get; set; }
        public FotoPerfil FotoPerfil { get; set; }
        public string Email { get; set; }
        public string Pass { get; set; }
        public TipoUsuario TipoUsuario { get; set; }
        public Planificacion Planificacion { get; set; }
        public List<Carrera> Carreras { get; set; }

        public Atleta(string email, string pass)
        {
            Email = email;
            Pass = pass;
        }

        public Atleta() { }
    }
}
    
