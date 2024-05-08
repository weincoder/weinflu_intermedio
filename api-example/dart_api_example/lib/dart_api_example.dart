import 'dart:convert';

import 'package:dart_api_example/album.dart';
import 'package:http/http.dart' as http;

enum FetchAlbumError {
  notFound,
  serverError,
  unknown,
}

class FetchAlbumException implements Exception {
  final FetchAlbumError error;
  final String message;

  FetchAlbumException(this.error, this.message);

  @override
  String toString() => 'FetchAlbumException: $message';
}

Future<Album> fetchAlbum(String id) async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'));

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    switch (response.statusCode) {
      case 404:
        throw FetchAlbumException(FetchAlbumError.notFound, 'Album not found');
      case 500:
        throw FetchAlbumException(FetchAlbumError.serverError, 'Server error');
      default:
        throw FetchAlbumException(FetchAlbumError.unknown,
            'Failed to load album (code: ${response.statusCode})');
    }
  }
}
