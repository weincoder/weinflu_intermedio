import 'dart:convert';

import 'package:dart_api_example/album.dart';
import 'package:http/http.dart';

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

Future<Album> fetchAlbum(String id, Client client) async {
  final response = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
      headers: {'Content-Type': 'application/json'});

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
