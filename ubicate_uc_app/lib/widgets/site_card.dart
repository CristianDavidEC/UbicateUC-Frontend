import 'package:flutter/material.dart';

class SiteCard extends StatelessWidget {
  const SiteCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 165,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.network(
                'https://picsum.photos/250',
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            // Widget del texto de descripción
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nombre del sitio',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Descripción del sitio esta LookPlaceScreen es una prueba para ver si funciona el widget de la tarjeta de los sitios',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text('Tipo: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text('Tipo...' , style: TextStyle(fontSize: 16)),
                              ],
                            ),

                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text('Sede: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text('Sede...' , style: TextStyle(fontSize: 16)),
                              ],
                            ),

                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text('Bloque: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text('Bloque...' , style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text('Piso: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text('Piso...' , style: TextStyle(fontSize: 16)),
                              ],
                            ),

                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text('Estado: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text('Activo' , style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
