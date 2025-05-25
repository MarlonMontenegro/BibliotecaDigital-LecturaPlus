using LecturaPlusWeb.data;
using LecturaPlusWeb.Models;
using Microsoft.AspNetCore.Mvc;

namespace LecturaPlusWeb.Controllers;

public class CalificacionesController : Controller
{
    
    private readonly AppDbContext _context;

    public CalificacionesController(AppDbContext context)
    {
        _context = context;
    }

    [HttpPost]
    public IActionResult Calificar(int idLibro, int puntuacion)
    {
        if (puntuacion is < 0 or > 5)
        {
            return BadRequest("La puntuacion debe estar entre 0 y 5");
        }
        
        var calificacion = new Calificaciones
        {
            IdLibro = idLibro,
            Puntuacion = puntuacion,
            FechaHora = DateTime.Now
        };
        
        _context.Calificaciones.Add(calificacion);
        _context.SaveChanges();
        
        return RedirectToAction("Index", "Libros");
        
    }

    [HttpGet]
    public IActionResult TopLibrosCalificados(int id)
    {
        var topLibros = _context.Libros
            .Join(
                _context.Calificaciones,
                libro => libro.IdLibro,
                calificacion => calificacion.IdLibro,
                (libro, calificacion) => new { libro.Titulo, calificacion.Puntuacion }
            )
            .GroupBy(x => x.Titulo)
            .Select(g => new LibroConCalificacion
            {
                Titulo = g.Key,
                PromedioCalificacion = g.Average(x => x.Puntuacion)
            })
            .OrderByDescending(x => x.PromedioCalificacion)
            .Take(5)
            .ToList();

        return View(topLibros);
    }


}