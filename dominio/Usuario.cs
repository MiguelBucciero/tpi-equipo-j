using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Usuario
    {
        public enum TipoUsuario
        {
            NORMAL = 1,
            ADMIN = 2,
            ENTRENADOR = 3
        }
        public int Id { get; set; }
        public string User { get; set; }
        public string Pass { get; set; }
        public TipoUsuario tipoUsuario{ get; set; }

        public Usuario(string user, string pass )
        {
            User = user;
            Pass = pass;
        }
    }
}
