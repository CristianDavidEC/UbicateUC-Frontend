import 'package:flutter/material.dart';
import 'package:front_ubicate_uc/widgets/site_card.dart';
import '../Services/api.dart' as api;

class LookPlaceScreen extends StatefulWidget {
  const LookPlaceScreen({super.key});

  @override
  State<LookPlaceScreen> createState() => _LookPlaceScreen();
}

class _LookPlaceScreen extends State<LookPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            },
          )
        ],
      ),
      body: const RenderSites(options: ''),
    );
  }
}

class RenderSites extends StatelessWidget {
  final String options;

  const RenderSites({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.getHttp(options),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return SiteCard(
                site: snapshot.data[index],
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null), //cerrar barra de busqueda,
      );
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];
  @override
  Widget buildResults(BuildContext context) => RenderSites(options: query);

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      'Sala',
      'Baño',
      'Auditorio',
    ];
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: ((context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      }),
    );
  }
}
