using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Entrenamiento
    {
        public DateTime Dia { get; set; }
        public TimeSpan Duracion { get; set; }
        public Entrenamiento Tipo { get; set; }
        public double Distancia { get; set; }
        public int  Series { get; set; }
        public int Repeticiones { get; set; }
    }
}
