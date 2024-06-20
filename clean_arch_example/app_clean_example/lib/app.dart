import 'package:app_clean_example/config/providers/user_provider.dart';
import 'package:app_clean_example/config/routes/app_routes.dart';
import 'package:app_clean_example/infraestructure/driven-adapters/api/user_api.dart';
import 'package:app_clean_example/infraestructure/driven-adapters/api/user_fake.dart';
import 'package:app_clean_example/ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import 'package:weinds/foundations/themes/weinds_themes.dart';

class CleanArchExample extends StatelessWidget {
  const CleanArchExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(userGateway: UserFake()),
      child: MaterialApp(
        theme: ligthThemeWeincode,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case AppRoutes.home:
              return MaterialPageRoute(builder: (context) =>  const HomePage());
            default:
              return MaterialPageRoute(builder: (context) =>  const HomePage());
          }
        },
      ),
    );
  }
}
