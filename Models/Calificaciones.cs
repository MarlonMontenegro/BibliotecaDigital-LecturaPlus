using System.ComponentModel.DataAnnotations;

namespace LecturaPlusWeb.Models;

public class Calificaciones
{
    [Key]
    public int IdCalificacion { get; set; }
    public int IdLibro { get; set; }
    public int Puntuacion { get; set; }
    public DateTime FechaHora { get; set; }

    public Libros Libros { get; set; } = null!;
}