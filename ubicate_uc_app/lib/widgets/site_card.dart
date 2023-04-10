import 'package:flutter/material.dart';
import 'package:front_ubicate_uc/models/site.dart';

class SiteCard extends StatelessWidget {
  final Site site;
  const SiteCard({super.key, required this.site});
  
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
                    Text(
                      site.nombre,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      site.descripcion,
                      style: const TextStyle(
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
                              children: [
                                const Icon(
                                  Icons.build,
                                  color: Colors.blueAccent,
                                ),
                                const Text('Tipo: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text(site.tipo , style: const TextStyle(fontSize: 16)),
                              ],
                            ),

                            Row(
                              children:  [
                                const Icon(
                                  Icons.place,
                                  color: Colors.blueAccent,
                                ),
                                const Text('Sede: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text(site.sede , style: const TextStyle(fontSize: 16)),
                              ],
                            ),

                            Row(
                              children: [
                                const Icon(
                                  Icons.flourescent_outlined,
                                  color: Colors.blueAccent,
                                ),
                                const Text('Bloque: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text( site.bloque , style: const TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.format_line_spacing_rounded,
                                  color: Colors.blueAccent,
                                ),
                                const Text('Piso: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text(site.piso , style: const TextStyle(fontSize: 16)),
                              ],
                            ),

                            Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  color: Colors.blueAccent,
                                ),
                                const Text('Estado: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text(site.estado , style: const TextStyle(fontSize: 16)),
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
