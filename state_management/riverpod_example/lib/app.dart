import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/config/routes/app_routes.dart';
import 'package:riverpod_example/screens/cat_page.dart';
import 'package:riverpod_example/screens/home.dart';
import 'package:weinds/foundations/themes/weinds_themes.dart';

class RiverpodExampleApp extends StatelessWidget {
  const RiverpodExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: ligthThemeWeincode,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case AppRoutes.home:
              return MaterialPageRoute(builder: (context) => const HomePage());
            case AppRoutes.catState:
              return MaterialPageRoute(
                  builder: (context) => const CatStatePage());
            default:
              return MaterialPageRoute(builder: (context) => const HomePage());
          }
        },
      ),
    );
  }
}
