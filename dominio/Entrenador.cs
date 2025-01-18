using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Entrenador : Persona
    {
        public bool nivelAcceso { get; set; }
        public List<Alumno> Alumnos { get; set; }

    }
    
}
