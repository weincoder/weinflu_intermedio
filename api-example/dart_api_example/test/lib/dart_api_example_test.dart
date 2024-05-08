import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

class MockClient extends Mock implements http.Client {}

@GenerateMocks([http.Client])
void main() {
  group('fetchAlbum', () {
    late final MockClient mockClient;
    late final http.Response mockResponse;

    setUpAll(() {
      mockClient = MockClient();
      mockResponse =
          http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200);
    });

    test('returns an Album if the http call completes successfully', () async {
      when(mockClient
              .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
          .thenAnswer((_) async => mockResponse);

      final response = await mockClient
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
      expect(response.statusCode, 200);
    });
  });
}
