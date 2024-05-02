

import 'package:flutter/material.dart';
import 'package:weinds/atoms/weinds_button.dart';
import 'package:weinds/atoms/weinds_illustration.dart';

/// A styled card widget with an illustration, title, and a secondary button.
class WeinDsStyledCard extends StatelessWidget {
  /// Creates a styled card widget with an illustration, title, and a secondary button.

  const WeinDsStyledCard({
    super.key,
    /// The title displayed on the card.
    required this.title,
    /// The text displayed on the button.
    required this.buttonText,
    /// The callback function triggered when the button is pressed.
    required this.onPressed,
    /// The type of illustration to display.
    required this.illustrationType,
  });

  final String title;
  final String buttonText;
  final Function()? onPressed;
  final WeinDsIllustrationType illustrationType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg/bg-categories.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WeinDsIllustration(type: illustrationType, widthImage: 85),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          WeinDsButton(
            type: ButtonType.secondary,
            text: buttonText,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}