//  ..................................................
//  .██████╗.██████╗.██╗......██████╗.██████╗.███████╗
//  ██╔════╝██╔═══██╗██║.....██╔═══██╗██╔══██╗██╔════╝
//  ██║.....██║...██║██║.....██║...██║██████╔╝███████╗
//  ██║.....██║...██║██║.....██║...██║██╔══██╗╚════██║
//  ╚██████╗╚██████╔╝███████╗╚██████╔╝██║..██║███████║
//  .╚═════╝.╚═════╝.╚══════╝.╚═════╝.╚═╝..╚═╝╚══════╝
//  ..................................................




import 'package:flutter/material.dart';
import 'package:weinds/weinds.dart';

/// A class that consolidates foundation color definitions for the app.
class WeinDsColorsFoundation {
  WeinDsColorsFoundation._(); // Private constructor to prevent instantiation.

  // Background colors
  /// The background color used for light themes (refer to [WeinDsColors] for details).
  static const Color bgGray = WeinDsColors.light;

  /// The background color used for dark themes (refer to [WeinDsColors] for details).
  static const Color bgDark = WeinDsColors.scale06;
  
  /// The primary color  (refer to [WeinDsColors] for details).
  static const Color primaryColor = WeinDsColors.primaryColor;
  
  /// The primary color  (refer to [WeinDsColors] for details).
  static const MaterialColor primaryColorMat = Colors.deepPurple;

  // Button colors
  /// The primary button color (refer to [WeinDsColors] for details).
  static const Color colorButtonPrimary = WeinDsColors.primaryColor;
  /// The primary button color (refer to [WeinDsColors] for details).
  static const Color colorBorderButtonPrimary = WeinDsColors.scale02;

  /// The secondary button color (refer to [WeinDsColors] for details).
  static const Color colorButtonSecondary = WeinDsColors.light;

  /// The secondary button text color (refer to [WeinDsColors] for details).
  static const Color colorTextButtonPrimary = WeinDsColors.light;
  /// The secondary button text color (refer to [WeinDsColors] for details).
  static const Color colorTextButtonSecondary = WeinDsColors.strongPrimary;
  /// The secondary button text color (refer to [WeinDsColors] for details).
  static const Color colorBorderButtonSecondary = WeinDsColors.strongPrimary;

  // Text colors
  /// The color for primary text (dark themes) (refer to [WeinDsColors] for details).
  static const Color darkTextColors = WeinDsColors.scale06;

  /// The color for primary text (light themes) (refer to [WeinDsColors] for details).
  static const Color lightTextColors = WeinDsColors.scale02;

  /// The color for body text (refer to [WeinDsColors] for details).
  static const Color bodyColor = WeinDsColors.scale04;

  /// The color for body text content (refer to [WeinDsColors] for details).
  static const Color bodyTextColor = WeinDsColors.scale04;

  // Card colors
  /// The background color for cards (refer to [WeinDsColors] for details).
  static const Color cardBgColor = WeinDsColors.scale02;

  // Status colors (refer to [WeinDsColors] for details)
  /// The background color for circular cards with a warning status.
  static const Color cardCircularBgColor = WeinDsColors.statusWarning;

  /// The background color for informational elements.
  static const Color infoBgColor = WeinDsColors.statusSuccess;

  /// The background color for warning elements.
  static const Color warningBgColor = WeinDsColors.statusWarning;

  /// The background color for success elements. (alias for infoBgColor)
  static const Color succcessBgColor = WeinDsColors.statusSuccess;

  /// The background color for danger elements. (alias for errorBgColor)
  static const Color dangerBgColor = WeinDsColors.statusError;

  /// The background color for error elements.
  static const Color errorBgColor = WeinDsColors.statusError;
}