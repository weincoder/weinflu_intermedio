
import 'package:flutter/material.dart';
import 'package:weinds/atoms/weinds_asset_image.dart';

/// A class that displays an illustration from the asset bundle based on a specified type.
enum WeinDsIllustrationType {
  /// Illustration representing space.
  space,

  /// Illustration representing love.
  love,

  /// Illustration representing technology exploration (text in Spanish).
  explorarTecnologia,

  /// Illustration representing an atom.
  atom,

  /// Illustration representing molecules.
  molecules,

  /// Illustration representing organisms.
  organisms,

  /// Illustration representing programming.
  programando,

  /// Illustration representing design.
  design,

  /// Illustration representing design with a white theme.
  designWhite,

  /// Illustration representing consulting services.
  asesoria,

  /// Illustration representing templates.
  templates,

  /// Illustration representing action.
  action,
}

// A map that associates each [WeinDsIllustrationType] with its corresponding asset path.
const Map<WeinDsIllustrationType, String> _illustrationPaths = {
  WeinDsIllustrationType.space: 'assets/images/illustrations/space.png',
  WeinDsIllustrationType.love: 'assets/images/illustrations/love.png',
  WeinDsIllustrationType.explorarTecnologia:
      'assets/images/illustrations/explorar tecnologia.png',
  WeinDsIllustrationType.atom: 'assets/images/illustrations/atom.png',
  WeinDsIllustrationType.molecules: 'assets/images/illustrations/molecules.png',
  WeinDsIllustrationType.organisms: 'assets/images/illustrations/organisms.png',
  WeinDsIllustrationType.programando:
      'assets/images/illustrations/programando.png',
  WeinDsIllustrationType.design: 'assets/images/illustrations/design.png',
  WeinDsIllustrationType.designWhite:
      'assets/images/illustrations/design-white.png',
  WeinDsIllustrationType.asesoria: 'assets/images/illustrations/asesoria.png',
  WeinDsIllustrationType.templates: 'assets/images/illustrations/templates.png',
  WeinDsIllustrationType.action: 'assets/images/illustrations/action.png',
};

/// A widget that displays an illustration from the asset bundle.

class WeinDsIllustration extends StatelessWidget {
  /// Creates a widget that displays an illustration from the asset bundle.

  const WeinDsIllustration({
    super.key,

    /// The type of illustration to display.
    required this.type,
    /// The desired width of the illustration.
    required this.widthImage,
  });

  final WeinDsIllustrationType type;
  final double widthImage;

  @override
  Widget build(BuildContext context) {
    return WeinDsAssetImage(
        path: _illustrationPaths[type]!, widthImage: widthImage);
  }
}