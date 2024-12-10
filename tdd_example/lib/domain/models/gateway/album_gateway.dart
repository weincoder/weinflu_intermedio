import '../album.dart';

/// Una interfaz que define un gateway para obtener álbumes.
///
/// Esta interfaz debe ser implementada por cualquier clase que desee
/// proporcionar una fuente de datos para los álbumes.
///
/// Métodos:
///
/// - `Future<List<Album>> getAlbums()`: Obtiene una lista de álbumes.
///   Devuelve un `Future` que se completa con una lista de objetos [Album].

abstract class AlbumGateway {
  Future<List<Album>> getAlbums();
}
