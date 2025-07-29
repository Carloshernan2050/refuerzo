-- Tabla Categoria
CREATE TABLE Categoria (
    id_categoria INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    descripcion TEXT
);

-- Tabla Libro
CREATE TABLE Libro (
    id_libro INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    autor TEXT NOT NULL,
    isbn TEXT UNIQUE NOT NULL,
    id_categoria INTEGER NOT NULL,
    cantidad_stock INTEGER DEFAULT 0,
    precio REAL NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);