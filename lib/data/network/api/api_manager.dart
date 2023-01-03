import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as a;

import '../../config/dio_singleton.dart';
import '../../config/interceptor_dio.dart';
import '../model_json/abstract_json_resource.dart';

abstract class ApiManager {
  final DioSingleton dioSingleton = DioSingleton();

  String apiUrl();

  AbstractJsonResource fromJson(data);

  InterceptorDio interceptorDio = InterceptorDio();

  Future<AbstractJsonResource> getData() async {
    AbstractJsonResource jsonList;
    var data;
    dioSingleton.dio.interceptors.add(interceptorDio);
    await dioSingleton.dio.get(apiUrl()).then((value) {
      print(value);
      data = value.data;
    });
    jsonList = fromJson(data);

    return jsonList;
  }
}
