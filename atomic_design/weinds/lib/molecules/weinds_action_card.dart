
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weinds/atoms/weinds_illustration.dart'; // Assuming this imports the WeinDsIllustration class
import 'package:weinds/atoms/weinds_text_button.dart'; // Assuming this imports the WeinDsTextButton class
import 'package:weinds/foundations/typo.dart'; // Assuming this imports the WeinDsFoundation class
import 'package:weinds/tokens/colors.dart'; // Assuming this imports the WeinDsColors class

enum WeinDsActionCardType {
  /// Represents a primary action card with a secondary color background.
  primary,

  /// Represents a secondary action card with a primary color background.
  secondary,

  /// Represents a tertiary action card with a scale01 color background.
  tertiary,
}

/// A customizable action card with an illustration, title, description, and a text button.
class WeinDsActionCard extends StatelessWidget {
  /// Creates a customizable action card widget.
  final String title;
  final String buttonText;
  final String description;
  final WeinDsIllustrationType illustrationType;
  final WeinDsActionCardType cardType;
  final Function()? onPressed;
  const WeinDsActionCard({
    super.key,
    /// The title displayed on the card.
    required this.title,
    /// The text displayed on the button.
    required this.buttonText,
    /// The description text displayed on the card.
    required this.description,
    /// The type of illustration to display.
    required this.illustrationType,
    /// The type of card (primary, secondary, or tertiary).
    required this.cardType,
    /// The callback function triggered when the button is pressed.
    this.onPressed,
  });

  Color _getCardColor() {
    switch (cardType) {
      case WeinDsActionCardType.primary:
        return WeinDsColors.secondaryColor;
      case WeinDsActionCardType.secondary:
        return WeinDsColors.primaryColor;
      case WeinDsActionCardType.tertiary:
        return WeinDsColors.scale01;
    }
  }
  _getTitleTextStyleColor() {
    switch (cardType) {
      case WeinDsActionCardType.primary:
        return WeinDsColors.strongPrimary;
      case WeinDsActionCardType.secondary:
        return WeinDsColors.secondaryColor;
      case WeinDsActionCardType.tertiary:
        return WeinDsColors.primaryColor;
    }
  }
  _getDescTextStyleColor() {
    switch (cardType) {
      case WeinDsActionCardType.primary:
        return WeinDsColors.strongPrimary;
      case WeinDsActionCardType.secondary:
        return WeinDsColors.light;
      case WeinDsActionCardType.tertiary:
        return WeinDsColors.strongPrimary;
    }
  }
  TextStyle _getDescTextStyle() {
    return TextStyle(
      fontFamily: 'Cocogoose',
      color: _getDescTextStyleColor(),
      fontSize: WeinDsFoundation.fontSizeH6,
      fontWeight: FontWeight.bold,
    );
  }
  TextStyle _getTitleTextStyle() {
    return TextStyle(
      fontFamily: 'Cocogoose',
      color: _getTitleTextStyleColor(),
      fontSize: WeinDsFoundation.fontSizeH5,
      fontWeight: FontWeight.bold,
    );
  }

  TextButtonType _getButtonType(){
    switch (cardType) {
      case WeinDsActionCardType.primary:
        return TextButtonType.primary;
      case WeinDsActionCardType.secondary:
        return TextButtonType.secondary;
      case WeinDsActionCardType.tertiary:
        return TextButtonType.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: _getCardColor(),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WeinDsIllustration(
              type: illustrationType,
              widthImage: 125,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: _getTitleTextStyle(),
                    ),
                    Text(
                      description,
                      style: _getDescTextStyle(),
                    ),
                    Expanded(
                      child: WeinDsTextButton(
                        text: buttonText,
                        type: _getButtonType(),
                        onPressed: onPressed,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
