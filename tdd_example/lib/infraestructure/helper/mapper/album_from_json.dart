import 'package:tdd_example/domain/models/album.dart';

class AlbumFromJson {
  AlbumFromJson._();

  static Album fromJson(Map<String, dynamic> json) {
    return Album(
      title: json['title'],
      pathFrontPage: json['thumbnailUrl'],
    );
  }
}
