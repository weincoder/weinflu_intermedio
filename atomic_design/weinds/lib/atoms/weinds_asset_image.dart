import 'package:flutter/material.dart';
/// A widget that displays an image from the asset bundle.
class WeinDsAssetImage extends StatelessWidget {
  /// The path to the image asset.
  final String path;
  /// The desired width of the image.
  final double widthImage;


  const WeinDsAssetImage(
      {super.key,
      required this.path,
      required this.widthImage,});

  @override
  Widget build(BuildContext context) {
    Widget weinDsImage = Image.asset(
      path,
      width: widthImage,
      height: widthImage,
    );
    return weinDsImage;
  }
}
