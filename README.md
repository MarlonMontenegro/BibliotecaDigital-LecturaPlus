
# 📚 Biblioteca Digital Interactiva – Lectura+

Este es el segundo desafío práctico del curso, cuyo objetivo es implementar una **plataforma web interactiva** donde los usuarios puedan explorar, filtrar y calificar libros de una biblioteca digital.

---

## 📸 Screenshots

### Página principal – Explorar Libros
![image](https://github.com/user-attachments/assets/64b78e6b-bccc-484b-9481-74b5fc0e056f)


### Página de Ranking – Top Lecturas
![image](https://github.com/user-attachments/assets/f4ae0c3f-8f44-4b88-90a4-f248e6415db1)


### Página de Administración
![image](https://github.com/user-attachments/assets/9a95fb98-e755-47f7-858e-3d0de972dc4f)


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

## ⚙️ Instalación y configuración del entorno

Sigue estos pasos para ejecutar el proyecto correctamente en tu entorno local.

### 1. Clonar y abrir el proyecto

```bash
git clone <repositorio>
cd LecturaPlusWeb
```

### 2. Instalar dependencias de Tailwind CSS y Flowbite

Asegúrate de tener **Node.js** y **npm** instalados.

```bash
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init
npm install flowbite
```

### 3. Configurar Tailwind

Edita tu archivo `tailwind.config.js` para incluir lo siguiente:

```js
module.exports = {
  content: [
    './Views/**/*.cshtml',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('flowbite/plugin')
  ],
}
```

Luego, en `wwwroot/css/site.css`, agrega:

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

@import "flowbite";
```

### 4. Compilar estilos con Tailwind

```bash
npx tailwindcss -i ./wwwroot/css/site.css -o ./wwwroot/css/output.css --watch
```

---

## 🗃️ Configuración de la base de datos

1. Ejecuta el script `script.sql` incluido para:
   - Crear las tablas `Libros` y `Calificaciones`.
   - Insertar al menos 15 registros de ejemplo.

2. Abre tu archivo `appsettings.json` y configura la cadena de conexión de esta forma:

```json
"ConnectionStrings": {
  "DefaultConnection": "Server=localhost;Database=LecturaPlusDB;Trusted_Connection=True;"
}
```

