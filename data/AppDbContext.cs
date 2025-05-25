namespace LecturaPlusWeb.data;

using Microsoft.EntityFrameworkCore;
using LecturaPlusWeb.Models;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    {
        
    }
    
    public DbSet<Libros> Libros { get; set; }
    public DbSet<Calificaciones> Calificaciones { get; set; }
    
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Calificaciones>()
            .HasOne(c => c.Libros)
            .WithMany(l => l.Calificaciones)
            .HasForeignKey(c => c.IdLibro)
            .HasConstraintName("FK_Calificaciones_Libros"); // Este nombre es opcional si ya está definido así

        base.OnModelCreating(modelBuilder);
    }
}