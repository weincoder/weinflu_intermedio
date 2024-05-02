
import 'package:flutter/material.dart';
import 'package:weinds/foundations/typo.dart'; // Assuming this imports the WeinDsFoundation class
import 'package:weinds/tokens/colors.dart'; // Assuming this imports the WeinDsColors class

/// A customizable text button widget with primary and secondary styles.
enum TextButtonType {
  /// Represents a primary text button with underlined text in the primary color.
  primary,

  /// Represents a secondary text button with underlined text in the secondary color.
  secondary,
}

class WeinDsTextButton extends StatelessWidget {
  /// Creates a customizable text button widget.
  const WeinDsTextButton({
    super.key,
    /// The text displayed on the button.
    required this.text,
    /// The type of button (primary or secondary).
    required this.type,
    /// The callback function triggered when the button is pressed.
    this.onPressed,
  });

  final String text;
  final TextButtonType type;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      ),
      child: Text(
        text,
        style: _getTextStyle(type),
      ),
    );
  }

  TextStyle _getTextStyle(TextButtonType type) {
    switch (type) {
      case TextButtonType.primary:
        return const TextStyle(
          fontFamily: 'Cocogoose',
          color: WeinDsColors.primaryColor,
          fontSize: WeinDsFoundation.fontSizeH5,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: WeinDsColors.primaryColor,
        );
      case TextButtonType.secondary:
        return const TextStyle(
          fontFamily: 'Cocogoose',
          color: WeinDsColors.secondaryColor,
          fontSize: WeinDsFoundation.fontSizeH5,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: WeinDsColors.secondaryColor,
        );
    }
  }
}