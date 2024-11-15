class Libro:
    def __init__(self, titulo, autor):
        self.titulo = titulo
        self.autor = autor

    def mostrar_info(self):
        print(f"Titulo: {self.titulo}, Autor: {self.autor}")

class Biblioteca:
    def __init__(self):
        self.libros = []  # No tiene interacción directa con la clase Libro

    def agregar_libro(self, libro):
        self.libros.append(libro)

# Crear instancias de Libro
libro1 = Libro("Cien Años de Soledad", "Gabriel García Márquez")
libro2 = Libro("1984", "George Orwell")

# Crear instancia de Biblioteca
biblioteca = Biblioteca()
biblioteca.agregar_libro(libro1)
biblioteca.agregar_libro(libro2)
