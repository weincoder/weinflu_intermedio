import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/config/providers/cat.dart';
import 'package:provider_example/config/providers/shopping_list.dart';
import 'package:provider_example/config/routes/app_routes.dart';
import 'package:provider_example/screens/cat_page.dart';
import 'package:provider_example/screens/home.dart';
import 'package:weinds/foundations/themes/weinds_themes.dart';

class ProviderExampleApp extends StatelessWidget {
  const ProviderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CatProvider()),
        ChangeNotifierProvider(create: (context) => ShoppingListProvider()),
      ],
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
