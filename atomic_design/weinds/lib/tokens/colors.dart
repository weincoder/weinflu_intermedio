//  ..................................................
//  .██████╗.██████╗.██╗......██████╗.██████╗.███████╗
//  ██╔════╝██╔═══██╗██║.....██╔═══██╗██╔══██╗██╔════╝
//  ██║.....██║...██║██║.....██║...██║██████╔╝███████╗
//  ██║.....██║...██║██║.....██║...██║██╔══██╗╚════██║
//  ╚██████╗╚██████╔╝███████╗╚██████╔╝██║..██║███████║
//  .╚═════╝.╚═════╝.╚══════╝.╚═════╝.╚═╝..╚═╝╚══════╝
//  ..................................................


import 'package:flutter/material.dart';
/// A class containing the color palette used throughout the app.
class WeinDsColors {
  WeinDsColors._(); // Private constructor to prevent instantiation.

  /// The primary dark color of the app.
  static const dark = Color.fromRGBO(93, 93, 93, 1);

  /// The primary light color of the app.
  static const light = Color.fromRGBO(255, 255, 255, 1);

  /// The primary brand color of the app.
  static const primaryColor = Color.fromRGBO(145, 83, 244, 1);

  /// A stronger variation of the primary color.
  static const strongPrimary = Color.fromRGBO(27, 0, 68, 1);

  /// The secondary brand color of the app.
  static const secondaryColor = Color.fromRGBO(214, 197, 240, 1);

  /// A stronger variation of the secondary color.
  static const strongSecondary = Color.fromRGBO(87, 39, 163, 1);

  /// The color used to indicate an error state.
  static const statusError = Color.fromRGBO(232, 56, 139, 1);

  /// The color used to indicate a success state.
  static const statusSuccess = Color.fromRGBO(193, 251, 198, 1);

  /// The color used to indicate a warning state.
  static const statusWarning = Color.fromRGBO(247, 233, 158, 1);

// Grayscale color palette

  /// White (used for backgrounds, etc.).
  static const scale00 = Color(0xFFFFFFFF);

  /// Light gray (used for borders, etc.).
  static const scale01 = Color(0xFFF7F7F7);

  /// Lighter medium gray (used for text, etc.).
  static const scale02 = Color(0xFFE6E7E8);

  /// Medium gray (used for text or icons that need more contrast).
  static const scale03 = Color(0xFF747779);

  /// Darker medium gray (used for text or icons that need high contrast).
  static const scale04 = Color(0xFF808285);

  /// Gray (used for text or icons needing strong contrast on a light background).
  static const scale05 = Color(0xFF454648);

  /// Black (used for text or icons needing maximum contrast).
  static const scale06 = Color(0xFF292929);
}