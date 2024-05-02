import 'package:weinds/weinds.dart';


/// A class that consolidates foundation design elements for the app.
class WeinDsFoundation {
  WeinDsFoundation._(); // Private constructor to prevent instantiation.

  // Fonts
  /// The primary font family used for headings throughout the app.
  static const String familyHeadings = WeincodeTypography.familyCocogose;

  // Text sizes
  /// The font size for H1 headings (refer to [WeincodeTypography] for details).
  static const double fontSizeH1 = WeincodeTypography.h1;

  /// The font size for H2 headings (refer to [WeincodeTypography] for details).
  static const double fontSizeH2 = WeincodeTypography.h2;

  /// The font size for H3 headings (refer to [WeincodeTypography] for details).
  static const double fontSizeH3 = WeincodeTypography.h3;

  /// The font size for H4 headings (refer to [WeincodeTypography] for details).
  static const double fontSizeH4 = WeincodeTypography.h4;

  /// The font size for H5 headings (refer to [WeincodeTypography] for details).
  static const double fontSizeH5 = WeincodeTypography.h5;

  /// The font size for H6 headings (refer to [WeincodeTypography] for details).
  static const double fontSizeH6 = WeincodeTypography.h6;

  /// The base font size for body text (refer to [WeincodeTypography] for details).
  static const double fontSizeBodyText = WeincodeTypography.body;
}