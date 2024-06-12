import 'package:flutter_api_example/dart_api_example.dart';
import 'package:flutter_api_example/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';

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
    testWidgets('returns an Album if the http call completes successfully',
        (widgetTester) async {
      const title = 'Mock Album';
      await widgetTester.runAsync(() async {
        await widgetTester.pumpWidget(
            MyApp(
              futureAlbum: fetchAlbum('2', mockClient),
            ),
            duration: const Duration(seconds: 1));
        //Act
        await widgetTester.pumpAndSettle();
        final findedTitle = find.text(title);
        expect(findedTitle, findsOneWidget);
      });
    });

    testWidgets('throws FetchAlbumException on non-200 status code',
        (widgetTester) async {
      const title = 'FetchAlbumException: Album not found';
      await widgetTester.runAsync(() async {
        await widgetTester.pumpWidget(
            MyApp(
              futureAlbum: fetchAlbum('3', mockClient),
            ),
            duration: const Duration(seconds: 1));
        //Act
        await widgetTester.pumpAndSettle();
        final findedTitle = find.text(title);
        expect(findedTitle, findsOneWidget);
      });
    });
  });
}
