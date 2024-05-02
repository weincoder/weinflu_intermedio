import 'package:flutter/material.dart';
import 'package:weinds/weinds.dart';

final ligthThemeWeincode = ThemeData(
    primaryColor: WeinDsColorsFoundation.primaryColor,
    primarySwatch: WeinDsColorsFoundation.primaryColorMat,
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
      fontFamily: WeincodeTypography.familyCocogose,
      fontSize: WeinDsFoundation.fontSizeH4,
    ),
    bodyMedium: TextStyle(
      fontFamily: WeincodeTypography.familyCocogose,
      fontSize: WeinDsFoundation.fontSizeH5,
    ),
    bodySmall: TextStyle(
      fontFamily: WeincodeTypography.familyCocogose,
      fontSize: WeinDsFoundation.fontSizeH6,
    ),
    ));

final darkThemeWeincode = ThemeData(
  primaryColor: WeinDsColorsFoundation.primaryColor,
  primarySwatch: WeinDsColorsFoundation.primaryColorMat,
  textTheme: const TextTheme(
        bodyLarge: TextStyle(
      fontFamily: 'Cocogoose',
      fontSize: WeinDsFoundation.fontSizeH4,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Cocogoose',
      fontSize: WeinDsFoundation.fontSizeH5,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Cocogoose',
      fontSize: WeinDsFoundation.fontSizeH6,
    )),
);
