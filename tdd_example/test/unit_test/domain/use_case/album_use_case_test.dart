import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_example/domain/models/album.dart';
import 'package:tdd_example/domain/models/gateway/album_gateway.dart';
import 'package:tdd_example/domain/use_case/album_use_case.dart';

void main() {
  test('should return list of album when use case is called', () async {
    // arrange
    final albumMockRepository = AlbumMockRepository();
    final albumUseCase = AlbumUseCase(albumMockRepository);
    // act
    final result = await albumUseCase.getAlbums();
    // assert
    expect(result, isA<List<Album>>());
  });
}

class AlbumMockRepository extends AlbumGateway {
  @override
  Future<List<Album>> getAlbums() async {
    return Future.value([Album(title: '', pathFrontPage: './')]);
  }
}
