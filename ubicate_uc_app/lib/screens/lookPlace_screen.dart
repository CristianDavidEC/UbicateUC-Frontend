import 'package:flutter/material.dart';

class lookPlaceScreen extends StatelessWidget {
  const lookPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultar sitio'),
      ),
      body: Center(
        child: Text('Ventana para consultar sitio'),
      )
      // floatingActionButton: FloatingActionButton(
      //   onPressed: setMessage,
      //   child: const Icon(Icons.add)
      //   ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
