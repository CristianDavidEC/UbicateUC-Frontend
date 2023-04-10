import 'package:flutter/material.dart';
import 'package:front_ubicate_uc/widgets/widgets.dart';
import '../Services/api.dart' as api;
import '../models/site.dart';

class CreatePlaceScreen extends StatelessWidget {
  CreatePlaceScreen({Key? key}) : super(key: key);

  final Site site = Site(
      nombre: '',
      descripcion: '',
      tipo: '',
      estado: '',
      sede: '',
      bloque: '',
      piso: '',
      latitud: '',
      longitud: '');

  final List bloques = ["A", "B", "C", "D", "E", "U"];

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerDescription = TextEditingController();
  final TextEditingController _controllerType = TextEditingController();
  final TextEditingController _controllerState = TextEditingController();
  final TextEditingController _controllerCampus = TextEditingController();
  final TextEditingController _controllerBlock = TextEditingController();
  final TextEditingController _controllerFloor = TextEditingController();
  final TextEditingController _controllerLatitude = TextEditingController();
  final TextEditingController _controllerLongitude = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Crear sitio'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const CustominputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del sitio a crear',
                    formProperty: 'Name_place',
                  ),
                  const SizedBox(height: 30),
                  const CustominputField(
                      labelText: 'Descripción',
                      hintText: 'Descripción del sitio a crear',
                      formProperty: 'description_place'),
                  const SizedBox(height: 30),
                  const CustominputField(
                      labelText: 'Latitud', formProperty: 'latitude_place'),
                  const SizedBox(height: 30),
                  const CustominputField(
                      labelText: 'Longitud', formProperty: 'longitude_place'),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    hint: const Text("Seleccione la disponibilidad"),
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
                    hint: const Text("Seleccione el tipo"),
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
                    hint: const Text("Seleccione una sede"),
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
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    hint: const Text("Seleccione el bloque"),
                    items: const [
                      DropdownMenuItem(
                        value: 'A',
                        child: Text('Bloque A'),
                      ),
                      DropdownMenuItem(
                        value: 'B',
                        child: Text('Bloque B'),
                      ),
                      DropdownMenuItem(
                        value: 'C',
                        child: Text('Bloque C'),
                      ),
                      DropdownMenuItem(
                        value: 'D',
                        child: Text('Bloque D'),
                      ),
                      DropdownMenuItem(
                        value: 'U',
                        child: Text('Bloque U'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    hint: const Text("Seleccione el piso"),
                    items: const [
                      DropdownMenuItem(
                        value: 'primero',
                        child: Text('Primer piso'),
                      ),
                      DropdownMenuItem(
                        value: 'segundo',
                        child: Text('Segundo piso'),
                      ),
                      DropdownMenuItem(
                        value: 'tercero',
                        child: Text('Tercer piso'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 40)),
                        ElevatedButton(
                          onPressed: () {},
                          child: const SizedBox(
                              width: 140,
                              child: Center(child: Text('Guardar'))),
                        ),
                        ElevatedButton(
                          child: const SizedBox(
                              width: 140,
                              child: Center(child: Text('Cancelar'))),
                          onPressed: () {},
                        )
                      ]),
                ],
              ),
            ),
          ),
        ));
  }
}
