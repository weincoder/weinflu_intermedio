import 'dart:convert';

import 'package:tdd_example/domain/models/album.dart';
import 'package:tdd_example/domain/models/gateway/album_gateway.dart';
import 'package:http/http.dart' as http;
import 'package:tdd_example/infraestructure/helper/mapper/album_from_json.dart';

class AlbumApi extends AlbumGateway {
  final http.Client client;
  final String endpoint;

  AlbumApi(this.client, this.endpoint);

  @override
  Future<List<Album>> getAlbums() async {
    final response = await client.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      return json.map((album) => AlbumFromJson.fromJson(album)).toList();
    } else {
      switch (response.statusCode) {
        case 404:
          throw FetchAlbumException(
              FetchAlbumError.notFound, 'Album not found');
        case 500:
          throw FetchAlbumException(
              FetchAlbumError.serverError, 'Server error');
        default:
          throw FetchAlbumException(FetchAlbumError.unknown,
              'Failed to load album (code: ${response.statusCode})');
      }
    }
  }
}

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
