import 'package:dio/dio.dart';
final dio = Dio(BaseOptions(
  baseUrl: 'https://jsonplaceholder.typicode.com',
  connectTimeout: const Duration(seconds: 10), // Tiempo máximo de conexión
  receiveTimeout: const Duration(seconds: 10), // Tiempo máximo de espera de respuesta
  headers: {
    'Content-Type': 'application/json',
  },
)
);
