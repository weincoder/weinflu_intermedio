import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:tdd_example/domain/models/album.dart';
import 'package:tdd_example/infraestructure/driven_adapter/album_api.dart';
import 'package:mockito/annotations.dart';

const mockJson = '''
[
    {
      "title": "Album 1",
      "thumbnailUrl": "./"
    },
    {
      "title": "Album 2",
      "thumbnailUrl": "./"
    }
  ]
''';

final client = MockClient((request) async {
  http.Response returnedRequest = http.Response('Not Found', 404);
  if (request.url == Uri.parse('https://jsonplaceholder.typicode.com/photos')) {
    returnedRequest = http.Response(mockJson, 200);
  } else if (request.url ==
      Uri.parse('https://jsonplaceholder.typicode.com/albums/a')) {
    returnedRequest = http.Response('Not Found', 500);
  } else if (request.url ==
      Uri.parse('https://jsonplaceholder.typicode.com/albums/b')) {
    returnedRequest = http.Response('Nop', 308);
  } else {
    returnedRequest = http.Response('Not Found', 404);
  }
  return returnedRequest;
});

@GenerateMocks([http.Client])
void main() {
  test('should return list of album when use case is called', () async {
    const endpoint = 'https://jsonplaceholder.typicode.com/photos';
    // arrange
    final albumApi = AlbumApi(client, endpoint);
    // act
    final result = await albumApi.getAlbums();
    // assert
    expect(result, isA<List<Album>>());
  });

  test('should throw FetchAlbumException when endpoint is not found', () async {
    const endpoint = 'https://jsonplaceholder.typicode.com/albums/aasd';
    // arrange
    final albumApi = AlbumApi(client, endpoint);
    // act
    final result = albumApi.getAlbums();
    // assert
    expect(result, throwsA(isA<FetchAlbumException>()));
  });

  test('should throw FetchAlbumException when endpoint is not found', () async {
    const endpoint = 'https://jsonplaceholder.typicode.com/albums/a';
    // arrange
    final albumApi = AlbumApi(client, endpoint);
    // act
    final result = albumApi.getAlbums();
    // assert
    expect(result, throwsA(isA<FetchAlbumException>()));
  });

  test('should throw FetchAlbumException when Failed to load album', () async {
    const endpoint = 'https://jsonplaceholder.typicode.com/albums/b';
    // arrange
    final albumApi = AlbumApi(client, endpoint);
    // act
    try {
      await albumApi.getAlbums();
    } catch (e) {
      // assert
      expect(e, isA<FetchAlbumException>());
      expect(
        e.toString(),
        contains('FetchAlbumException: Failed to load'),
      );
    }
  });
}
