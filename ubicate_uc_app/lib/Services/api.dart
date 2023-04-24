import 'package:dio/dio.dart';

import '../models/site.dart';

final dio = Dio();

getHttp(String options) async {
  List<Site> sites = [];
  final response = await dio.get('http://127.0.0.1:8000/sitios?nombre=$options');
  sites = response.data.map<Site>((json) => Site.fromJson(json)).toList();
  return sites;
}

postHttp( data ) async {
  final response = await dio.post('http://127.0.0.1:8000/sitios', data: data);
  return response.data;
}
