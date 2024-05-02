import 'package:app/config/routes/app_routes.dart';
import 'package:app/screens/atoms.dart';
import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:weinds/foundations/themes/weinds_themes.dart';

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ligthThemeWeincode,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.home:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case AppRoutes.atoms:
            return MaterialPageRoute(builder: (context) => const AtomsPage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}
