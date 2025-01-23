using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Planificacion
    {
        public int Id { get; set; }
        public DateTime Inicio { get; set; }
        public DateTime Fin { get; set; }
        //public Entrenador Entrenador { get; set; }
        public List<Entrenamiento> Entrenamientos {  get; set; }
    }
}
