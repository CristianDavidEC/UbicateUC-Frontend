import 'package:flutter/material.dart';
import 'package:front_ubicate_uc/widgets/widgets.dart';
import '../Services/api.dart' as api;
import '../Services/api.dart';
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

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "nombre": "",
      "descripcion": "",
      "latitud": "",
      "longitud": "",
      "tipo": "",
      "sede": "",
      "estado": "",
      "bloque": "",
      "piso": ""
    };

    final void Function(String, String) onChangedField = (formProperty, value) {
      formValues[formProperty] = value;
    };

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image(
                            image: AssetImage('lib/assets/CreateSite.jpg'),
                            width: 200,
                            height: 200,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Crear Sitio',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 59, 112, 100)),
                        ),
                      ]),
                  CustominputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del sitio a crear',
                    formProperty: 'nombre',
                    onChanged: onChangedField,
                  ),
                  const SizedBox(height: 30),
                  CustominputField(
                    labelText: 'Descripción',
                    hintText: 'Descripción del sitio a crear',
                    formProperty: 'descripcion',
                    onChanged: onChangedField,
                  ),
                  const SizedBox(height: 30),
                  CustominputField(
                      labelText: 'Latitud',
                      formProperty: 'latitud',
                      onChanged: onChangedField),
                  const SizedBox(height: 30),
                  CustominputField(
                    labelText: 'Longitud',
                    formProperty: 'longitud',
                    onChanged: onChangedField,
                  ),
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
                    onChanged: (value) {
                      onChangedField('estado', value!);
                    },
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
                    onChanged: (value) {
                      onChangedField('tipo', value!);
                    },
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
                    onChanged: (value) {
                      onChangedField('sede', value!);
                    },
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
                    onChanged: (value) {
                      onChangedField('bloque', value!);
                    },
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
                    onChanged: (value) {
                      onChangedField('piso', value!);
                    },
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20)),
                        ElevatedButton(
                          onPressed: () {
                            print(formValues);
                            postHttp(formValues);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 5, 150, 24)),
                          ),
                          child: const SizedBox(
                              width: 140,
                              child: Center(child: Text('Guardar'))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 248, 97, 97)),
                          ),
                          child: const SizedBox(
                            width: 140,
                            child: Center(child: Text('Cancelar')),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ));
  }
}
