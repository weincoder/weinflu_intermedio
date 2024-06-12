import 'package:dart_api_example/album.dart';

import 'package:dart_api_example/dart_api_example.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  late Future<Album> futureAlbum;
  print('Hello world: !');
  futureAlbum = fetchAlbum('2', http.Client());
  futureAlbum
      .then((value) => print(value.title))
      .onError((error, stackTrace) => print(error.toString()));
}
