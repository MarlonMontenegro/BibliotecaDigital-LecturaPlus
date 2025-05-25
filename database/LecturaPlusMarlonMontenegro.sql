CREATE DATABASE LecturaPlus;

USE LecturaPlus;


CREATE TABLE Libros (
    idLibro INT PRIMARY KEY IDENTITY(1,1), 
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100),     
    genero VARCHAR(50),      
    Sinopsis VARCHAR(MAX),   
    PortadaUrl VARCHAR(255)
);


CREATE TABLE Calificaciones (
    idCalificacion INT PRIMARY KEY IDENTITY(1,1),
    idLibro INT NOT NULL,
    puntuacion TINYINT CHECK (puntuacion BETWEEN 1 AND 5),
    fechaHora DATETIME NOT NULL,
    FOREIGN KEY (idLibro) REFERENCES Libros(idLibro) ON DELETE CASCADE
);

INSERT INTO libros (titulo, autor, genero, Sinopsis, PortadaUrl) VALUES
('Matar a un ruiseñor', 'Harper Lee', 'Ficción', 'Scout Finch crece en Alabama enfrentando el racismo y la injusticia.', 'https://i.pinimg.com/736x/61/dc/81/61dc819697d86b9c96e6542cf8639981.jpg'),
('1984', 'George Orwell', 'Distopía', 'Un régimen totalitario vigila todos los aspectos de la vida.', 'https://m.media-amazon.com/images/I/61ZTSOFkFPL._AC_UF894,1000_QL80_DpWeblab_.jpg'),
('Orgullo y prejuicio', 'Jane Austen', 'Romance', 'Elizabeth Bennet y el Sr. Darcy desafían normas sociales en busca del amor.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvC-ihcGdtkATFpKMUIRRVmO2-fBwZ6Axkvw&s'),
('El gran Gatsby', 'F. Scott Fitzgerald', 'Clásico', 'Jay Gatsby intenta recuperar un amor perdido en los locos años 20.', 'https://www.planetadelibros.com/usuaris/libros/thumbs/acb348b0-e085-478c-a1bb-62115110c270/d_295_510/el-gran-gatsby_9789500435260.webp'),
('Moby-Dick', 'Herman Melville', 'Aventura', 'El capitán Ahab persigue obsesivamente a una ballena blanca.', 'https://mir-s3-cdn-cf.behance.net/project_modules/hd/cc8a8d34051824.56c7461a62ad2.jpg'),
('Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Fantasía', 'Harry descubre que es un mago y asiste a Hogwarts.', 'https://image.cdn0.buscalibre.com/5b56b6968863b5e8148b4568.RS500x500.jpg'),
('El hobbit', 'J.R.R. Tolkien', 'Fantasía', 'Bilbo Bolsón vive una aventura épica con enanos y dragones.', 'https://www.elfenomeno.com/imag/117_imageneslibros/Portada_de_El_Hobbit_67629a8aa7728.jpg'),
('El guardián entre el centeno', 'J.D. Salinger', 'Ficción', 'Holden Caulfield relata su conflicto con la hipocresía del mundo adulto.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3800pDJ23V3IAQPCSH8YqZfspu3vlM6jWDA&s'),
('Un mundo feliz', 'Aldous Huxley', 'Ciencia ficción', 'Una sociedad tecnológicamente avanzada pero sin libertad personal.', 'https://www.planetadelibros.com/usuaris/libros/fotos/362/original/portada_un-mundo-feliz-novela-grafica_aldous-huxley_202302011011.jpg'),
('Frankenstein', 'Mary Shelley', 'Gótico', 'Un científico crea vida y desata consecuencias trágicas.', 'https://www.planetadelibros.com/usuaris/libros/fotos/403/original/portada_frankenstein_mary-shelley_202409160914.jpg'),
('El alquimista', 'Paulo Coelho', 'Ficción', 'Santiago, un joven pastor, sigue las señales del universo.', 'https://static.wixstatic.com/media/88b1d5_966792875df44c8e8dbf3ef18480a178~mv2.webp/v1/fill/w_392,h_600,al_c,lg_1,q_80/88b1d5_966792875df44c8e8dbf3ef18480a178~mv2.webp'),
('Mujercitas', 'Louisa May Alcott', 'Drama', 'Cuatro hermanas crecen juntas durante la Guerra Civil estadounidense.', 'https://contrapunto.cl/cdn/shop/files/30336.jpg?v=1725990339'),
('Crimen y castigo', 'Fiódor Dostoyevski', 'Psicológico', 'Un joven comete un crimen y lidia con la culpa y la redención.', 'https://images.cdn3.buscalibre.com/fit-in/520x520/1d/c7/1dc7efb8101e02d6196c79c2c2518346.jpg'),
('Jane Eyre', 'Charlotte Brontë', 'Romance', 'Una joven huérfana encuentra independencia, amor y propósito.', 'https://m.media-amazon.com/images/I/71kRZV2+r1S._AC_UF1000,1000_QL80_DpWeblab_.jpg'),
('El retrato de Dorian Gray', 'Oscar Wilde', 'Fantasía oscura', 'Dorian mantiene su juventud mientras su retrato envejece.', 'https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9788467070842_183opqw8besmt5ka.jpg');



