import 'package:flutter/material.dart';
import 'package:front_ubicate_uc/widgets/widgets.dart';

class CreatePlaceScreen extends StatelessWidget {
  const CreatePlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Crear lugar'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const CustominputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del lugar a crear',
                    formProperty: 'Name_place',
                  ),
                  const SizedBox(height: 30),
                  const CustominputField(
                      labelText: 'Descripción',
                      hintText: 'Descripción del lugar a crear',
                      formProperty: 'description_place'),
                  const SizedBox(height: 30),
                  const CustominputField(
                      labelText: 'Latitud', formProperty: 'latitude_place'),
                  const SizedBox(height: 30),
                  const CustominputField(
                      labelText: 'Longitud', formProperty: 'longitude_place'),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'Disponible',
                        child: Text('Disponible'),
                      ),
                      DropdownMenuItem(
                        value: 'inhabilitado',
                        child: Text('inhabilitado'),
                      )
                    ],
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'Salon',
                        child: Text('Salón'),
                      ),
                      DropdownMenuItem(
                        value: 'Auditorio',
                        child: Text('Auditorio'),
                      ),
                      DropdownMenuItem(
                        value: 'Cafeteria',
                        child: Text('Cafetería'),
                      ),
                      DropdownMenuItem(
                        value: 'Baño',
                        child: Text('Baño'),
                      ),
                      DropdownMenuItem(
                        value: 'Laboratorio',
                        child: Text('Laboratorio'),
                      ),
                      DropdownMenuItem(
                        value: 'Oficina',
                        child: Text('Oficina'),
                      )
                    ],
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    
                    items: const [
                      DropdownMenuItem(
                        value: 'Sede principal',
                        child: Text('Sede principal'),
                      ),
                      DropdownMenuItem(
                        value: 'Sede Bellas Artes',
                        child: Text('Sede Bellas Artes'),
                      ),
                      DropdownMenuItem(
                        value: 'Sede Palogrande',
                        child: Text('Sede Palogrande'),
                      ),
                      DropdownMenuItem(
                        value: 'Sede Sancancio',
                        child: Text('Sede Sancancio'),
                      ),
                      DropdownMenuItem(
                        value: 'Sede Versalles',
                        child: Text('Sede Versalles'),
                      ),
                      DropdownMenuItem(
                        value: 'Sede Bicentenario',
                        child: Text('Sede Bicentenario'),
                      )
                    ],
                    onChanged: (value) {},
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        child: const SizedBox(
                            width: 140, child: Center(child: Text('Guardar'))),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: const SizedBox(
                            width: 140, child: Center(child: Text('Cancelar'))),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
