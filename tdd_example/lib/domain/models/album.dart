/// Representa un álbum con un título y una imagen de portada.
///
/// La clase `Album` contiene la información básica de un álbum, incluyendo
/// su título y la ruta de la imagen de la portada.
///
/// Propiedades:
/// - `title`: El título del álbum.
/// - `pathFrontPage`: La ruta de la imagen de la portada del álbum.
class Album {
  final String title;
  final String pathFrontPage;

  Album({required this.title, required this.pathFrontPage});
}
