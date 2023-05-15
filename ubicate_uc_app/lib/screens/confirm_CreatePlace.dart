import 'dart:js';

import 'package:flutter/material.dart';
import 'package:front_ubicate_uc/widgets/widgets.dart';
import '../Services/api.dart' as api;
import '../Services/api.dart';
import '../models/site.dart';


class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => showModal(context),
          child: Text('Mostrar modal'),
        ),
      ),
    );
  }

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Título del modal'),
          content: Text('Contenido del modal'),
          actions: <Widget>[
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                  Navigator.pushNamed(context, 'home');
              },
            ),
          ],
        );
      },
    );
  }
}

