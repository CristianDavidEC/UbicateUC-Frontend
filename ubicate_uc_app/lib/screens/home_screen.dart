import 'package:flutter/material.dart';
import 'package:front_ubicate_uc/router/app_routers.dart';
import 'package:front_ubicate_uc/themes/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: const Text('UbicateUC'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'lib/assets/logo.svg', // Ruta de la imagen SVG
              height: 200, // Altura de la imagen
              width: 200, // Ancho de la imagen
            ),
            SizedBox(height: 50), // Espacio entre la imagen y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, 'CrearSitio' );
                  },
                  child: Text('Crear Sitio'),
                ),
                SizedBox(width: 30,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'ConsultarSitio' );
                  },
                  child: Text('Consultar Sitio'),
                ),
              ],
            ),
          ],
        ));
  }
}
