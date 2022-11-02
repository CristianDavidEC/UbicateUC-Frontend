import 'package:flutter/material.dart';
import 'package:front_ubicate_uc/router/app_routers.dart';
import 'package:front_ubicate_uc/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOption;
    return Scaffold(
      appBar: AppBar(
        title: const Text('UbicateUC'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, i) => ListTile(
            leading: Icon(
              menuOptions[i].icon,
              color: Apptheme.primary,
            ),
            title: Text(menuOptions[i].name),
            onTap: () {
              //final route = MaterialPageRoute(
              //builder: (context) => const Listview1Screen(),
              // );
              //Navigator.push(context, route);
              Navigator.pushNamed(context, menuOptions[i].route);
            }),
        itemBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
