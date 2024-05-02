import 'package:flutter/material.dart';
import 'package:weinds/foundations/sizes.dart';
/// A widget that adds vertical spacing between elements in your UI.
class WeincodeSepareted extends StatelessWidget {
  /// A multiplier for the base separation size.
  final double nSepareted;
  /// Creates a widget that adds vertical spacing between elements.
  const WeincodeSepareted({super.key, required this.nSepareted});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: nSepareted*WeincodeSizesFoundation.baseSepareted,
    );
  }
}
