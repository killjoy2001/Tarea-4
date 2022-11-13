using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hospital.Tarea4
{
    public class Paciente
    {
        public static string nombre { get; set; }
        public static int edad { get; set; }
        public static string sexo { get; set; }
        public static string telefono { get; set; }
        public static string domicilio { get; set; }
        public static byte seguro { get; set; }

        public Paciente () { }

        // porcentaje de asegurados

        public static int contadorAsegurados = 0;
        public static int contadorNoAsegurados = 0;

        public static int porcentAsegurados;
        public static int porcentNoAsegurados;

        public static void CalculoSeguros ()
        {
            if (seguro == 1)
            {
                contadorAsegurados++;
            } else { contadorNoAsegurados++; }

        }
        public static void PorcentajeSeguros()
        {

            int total = contadorNoAsegurados + contadorAsegurados;
            int calculo = 100 / total;
            porcentAsegurados = calculo * contadorAsegurados;
            porcentNoAsegurados = calculo * contadorNoAsegurados;

        }

        // cálculo de niños/jóvenes/adultos

        public static int porcentNinnos = 0;
        public static int porcentJovenes = 0;
        public static int porcentAdultos = 0;

        public static int contadorNinnos = 0;
        public static int contadorJovenes = 0;
        public static int contadorAdultos = 0;

        public static void CalculoEdad()
        {
            if (edad >= 30)
            {
                contadorAdultos++;
            }
            else if (edad > 13)
            {
                contadorJovenes++;
            }
            else { contadorNinnos++; }
        }

        public static void PorcentajeEdad()
        {
            int total = contadorNinnos + contadorJovenes + contadorAdultos;
            int calculo = 100 / total;
            porcentNinnos = contadorNinnos * calculo;
            porcentJovenes = contadorJovenes * calculo;
            porcentAdultos = contadorAdultos * calculo;
        }

        // contador de generos

        public static int contadorHombre = 0;
        public static int contadorMujer = 0;

        public static int porcentHombre = 0;
        public static int porcentMujer = 0;

        public static void CalculoGenero()
        {
            if (sexo == "F")
            {
                contadorMujer++;
            }
            else { contadorHombre++; }
        }
        public static void PorcentajeSexo()
        {


            int total = contadorHombre + contadorMujer;
            int calculo = 100 / total;
            porcentHombre = contadorHombre * calculo;
            porcentMujer = contadorMujer * calculo;

        }

    }



}