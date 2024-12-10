import 'package:tdd_example/domain/models/album.dart';
import 'package:tdd_example/domain/models/gateway/album_gateway.dart';

class AlbumUseCase {
  final AlbumGateway _albumGateway;

  AlbumUseCase(this._albumGateway);

  Future<List<Album>> getAlbums() async {
    return await _albumGateway.getAlbums();
  }
}
