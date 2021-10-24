import 'package:dio/dio.dart';

const String _baseUrl = 'https://random-data-api.com/api';

class NumbersService {
  factory NumbersService.filled() {
    final Dio dio = Dio(BaseOptions(
      baseUrl: _baseUrl,
    ));
    return NumbersService._(dio);
