using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LecturaPlusWeb.Models;

[Table("Libros")]
public class Libros
{
    [Key]
    public int IdLibro { get; set; }
    public string Titulo { get; set; }
    public string Autor { get; set; }
    public string Genero { get; set; }
    public string Sinopsis { get; set; }
    public string PortadaUrl { get; set; }
    
    public ICollection<Calificaciones> Calificaciones { get; set; } = new List<Calificaciones>();

}