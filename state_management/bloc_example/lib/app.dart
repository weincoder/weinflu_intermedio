import 'package:bloc_example/config/bloc/shopping_bloc.dart';
import 'package:bloc_example/config/cubit/cat_cubit.dart';
import 'package:bloc_example/config/routes/app_routes.dart';
import 'package:bloc_example/screens/cat_page.dart';
import 'package:bloc_example/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weinds/foundations/themes/weinds_themes.dart';

class BlocExampleApp extends StatelessWidget {
  const BlocExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ShoppingBloc()),
        BlocProvider(create: (_) => CatCubit()),
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
