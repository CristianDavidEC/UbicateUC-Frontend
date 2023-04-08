import 'package:dio/dio.dart';

final dio = Dio();

getHttp() async {
  final response = await dio.get('http://127.0.0.1:8000/sitios');
  return response.data;
}

postHttp( data ) async {
  final response = await dio.post('http://127.0.0.1:8000/sitios', data: data);
  return response.data;
}
