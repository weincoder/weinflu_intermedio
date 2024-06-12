import 'package:dart_api_example/album.dart';
import 'package:test/test.dart';

void main() {
  test('throws FormatException with invalid JSON ☠', () {
    const fakeBadJsonResponse = {
      "userIds": 1,
      "ids": 1,
      "titles": "quidem molestiae enim"
    };
    expect(() => Album.fromJson(fakeBadJsonResponse),
        throwsA(const TypeMatcher<FormatException>()));
  });

  test('correctly parses valid JSON 💙', () {
    const fakeJsonResponse = {
      "userId": 1,
      "id": 1,
      "title": "quidem molestiae enim"
    };
    final album = Album.fromJson(fakeJsonResponse);
    expect(album.userId, fakeJsonResponse['userId']);
    expect(album.id, fakeJsonResponse['id']);
    expect(album.title, fakeJsonResponse['title']);
  });
}
