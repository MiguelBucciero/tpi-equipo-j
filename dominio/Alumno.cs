using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Alumno : Persona
    {
        public double Peso {  get; set; }
        public string Altura { get; set; }
        public Planificacion Planificacion { get; set; }
        public List<Carrera> Carreras { get; set; }
    }
    
}