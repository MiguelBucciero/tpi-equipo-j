using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public  abstract class Persona
    {
        
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Dni { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Sexo { get; set; }
        public string Email { get; set; }
        public string Domicilio { get; set; }
        public FotoPerfil FotoPerfil { get; set; }
    }
}
