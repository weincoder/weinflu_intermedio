import 'package:dart_api_example/album.dart';

import 'package:dart_api_example/dart_api_example.dart';

void main(List<String> arguments) {
  late Future<Album> futureAlbum;
  print('Hello world: !');
  futureAlbum = fetchAlbum('100');
  futureAlbum
      .then((value) => print(value.title))
      .onError((error, stackTrace) => print(error.toString()));
}
