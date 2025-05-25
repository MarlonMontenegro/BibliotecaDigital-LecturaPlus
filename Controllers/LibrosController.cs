using LecturaPlusWeb.data;
using LecturaPlusWeb.Models;
using Microsoft.AspNetCore.Mvc;


namespace LecturaPlusWeb.Controllers;

public class LibrosController(AppDbContext context) : Controller
{
    public IActionResult Index(string? search, int page = 1)
    {
        const int pageSize = 6;

        var librosQuery = context.Libros.AsQueryable();

        if (!string.IsNullOrWhiteSpace(search))
        {
            librosQuery = librosQuery.Where(l => 
                l.Titulo.Contains(search) || 
                l.Genero.Contains(search)
            );
        }

        var totalLibros = librosQuery.Count();

        var librosPaginados = librosQuery
            .Skip((page - 1) * pageSize)
            .Take(pageSize)
            .ToList();

        ViewBag.CurrentPage = page;
        ViewBag.TotalPages = (int)Math.Ceiling((double)totalLibros / pageSize);
        ViewBag.Search = search;

        return View(librosPaginados);
    }
    
    public IActionResult Administrar()
    {
        var libros = context.Libros.ToList();
        return View(libros);
    }

    
    [ValidateAntiForgeryToken]
    public IActionResult Create(Libros libro)
    {
        if (!ModelState.IsValid) return View(libro);
        context.Libros.Add(libro);
        context.SaveChanges();
        return RedirectToAction("Administrar");
    }
    
    
    public IActionResult Delete(int id)
    {
        var libro = context.Libros.Find(id);
        if (libro == null)
        {
            return NotFound();
        }

        context.Libros.Remove(libro);
        context.SaveChanges();

        return RedirectToAction("Administrar");
    }
    
    [HttpGet]
    public JsonResult GetLibro(int id)
    {
        var libro = context.Libros.Find(id);
        if (libro == null) return Json(null);
        return Json(libro);
    }
    
    [HttpPost]
    [ValidateAntiForgeryToken]
    public IActionResult Edit(Libros libro)
    {
        if (!ModelState.IsValid) return View(libro);

        context.Libros.Update(libro);
        context.SaveChanges();

        return RedirectToAction("Administrar");
    }
}
    