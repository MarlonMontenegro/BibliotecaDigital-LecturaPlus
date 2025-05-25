# 📚 Biblioteca Digital Interactiva – Lectura+

Este es el segundo desafío práctico del curso, cuyo objetivo es implementar una **plataforma web interactiva** donde los usuarios puedan explorar, filtrar y calificar libros de una biblioteca digital.

---

## 📸 Screenshots

### Página principal – Explorar Libros
![Explorar Libros](screenshots/explorar-libros.png)

### Página de Ranking – Top Lecturas
![Top Lecturas](screenshots/top-lecturas.png)

### Página de Administración
![Administrar Libros](screenshots/administrar-libros.png)

> Las capturas deben guardarse en una carpeta `screenshots/` dentro del proyecto.

---

## 📝 Descripción del Proyecto

**Lectura+** permite a los usuarios explorar una colección digital de libros con una interfaz moderna, responsiva y amigable. Ofrece funcionalidades clave como calificación de libros sin registro, búsqueda avanzada y visualización en tiempo real de los libros mejor valorados.

---

## ⚙️ Funcionalidades Principales

### Página "Explorar Libros"
- 📚 Catálogo responsivo en tarjetas.
- ⭐ Calificación de 1 a 5 estrellas (sin login).
- 🔍 Filtros por **título** y **género**.
- 📑 Paginación automática (5 libros por página).
- 📖 Vista resumida: portada, título, autor, sinopsis truncada, género.

### Página "Top Lecturas"
- 🏆 Ranking en tiempo real de los 5 libros con mejor puntuación.
- 🥇 Íconos de medallas (🥇🥈🥉) para distinguir posiciones.

### Gestión de la base de datos
- 📥 CRUD completo: insertar, actualizar y eliminar libros.
- 💾 Toda la información es dinámica desde SQL Server.
- 🌐 Portadas por URL almacenada en la base de datos.

---

## 🛠️ Tecnologías utilizadas

- **ASP.NET Core MVC**
- **Entity Framework Core**
- **SQL Server**
- **Tailwind CSS**
- **Flowbite (UI Kit basado en Tailwind)**
- **JavaScript (eventos de calificación)**

---

---

## ⚙️ Instalación del proyecto

### 1. Clonar y abrir el proyecto

```bash
git clone <repositorio>
cd LecturaPlusWeb
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init
npm install flowbite
3. Configurar Tailwind
En tailwind.config.js asegúrate de incluir:
content: [
  './Views/**/*.cshtml',
  './node_modules/flowbite/**/*.js'
],

Y en wwwroot/css/site.css:

css

@tailwind base;
@tailwind components;
@tailwind utilities;

@import "flowbite";

4. Compilar estilos}

npx tailwindcss -i ./wwwroot/css/site.css -o ./wwwroot/css/output.css --watch

🗃️ Base de datos

Ejecuta el script script.sql incluido para:

Crear tablas Libros y Calificaciones.

Insertar al menos 15 registros de ejemplo.

Configura tu cadena de conexión en appsettings.json:


"ConnectionStrings": {
  "DefaultConnection": "Server=localhost;Database=LecturaPlusDB;Trusted_Connection=True;"
}

