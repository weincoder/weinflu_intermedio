import 'package:dart_api_example/dart_api_example.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';

const mockJson = '{"userId": 1, "id": 2, "title": "Mock Album"}';
final mockClient = MockClient((request) async {
  http.Response returnedRequest = http.Response('Not Found', 404);
  if (request.url ==
      Uri.parse('https://jsonplaceholder.typicode.com/albums/2')) {
    returnedRequest = http.Response(mockJson, 200);
  } else if (request.url ==
      Uri.parse('https://jsonplaceholder.typicode.com/albums/a')) {
    returnedRequest = http.Response('Not Found', 500);
  } else {
    returnedRequest = http.Response('Not Found', 404);
  }
  return returnedRequest;
});
// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {
  group('fetchAlbum', () {
    test('returns an Album if the http call completes successfully', () async {
      final album = await fetchAlbum('2', mockClient);
      expect(album.title, 'Mock Album');
    });
    test('throws FetchAlbumException on non-200 status code', () async {
      expect(() => fetchAlbum('3', mockClient),
          throwsA(const TypeMatcher<FetchAlbumException>()));
    });

    test('throws FetchAlbumException (serverError) on 500', () async {
      expect(() => fetchAlbum('a', mockClient),
          throwsA(const TypeMatcher<FetchAlbumException>()));
    });
  });
}
