import 'package:flutter/material.dart';

import 'package:front_ubicate_uc/screens/screens.dart';
import '../models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'CrearSitio',
        name: 'Crear sitio',
        screen: CreatePlaceScreen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'ConsultarSitio',
        name: 'Consultar sitio',
        screen: const LookPlaceScreen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'VerLugar',
        name: 'ver lugar',
        screen: const LookPlaceScreen(),
        icon: Icons.list_rounded),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}
