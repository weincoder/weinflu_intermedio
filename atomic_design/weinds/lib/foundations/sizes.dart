import 'package:weinds/weinds.dart';

/// A class that consolidates foundation size definitions for the app.
class WeincodeSizesFoundation {
  WeincodeSizesFoundation._(); // Private constructor to prevent instantiation.

  // Widget sizes
  /// The size for cards (refer to [WeinDSSizes] for details).
  static const double sizeCard = WeinDSSizes.sizeLG;

  /// The size for action button circles (refer to [WeinDSSizes] for details).
  static const double sizeCircleAccionableCard = WeinDSSizes.sizeMD;

  /// The base size for spacing between elements (refer to [WeinDSSizes] for details).
  static const double baseSepareted = WeinDSSizes.sizeSM;
}