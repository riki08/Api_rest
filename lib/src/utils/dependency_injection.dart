import 'dart:io';

import 'package:api_rest/src/data/providers/character_api.dart';
import 'package:api_rest/src/data/repositories/character_repository.dart';
import 'package:api_rest/src/utils/config_reader.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'package:get/get.dart';

class DependencyInjection {
  static Future<void> init() async {
    try {
      Dio dio =
          Dio(BaseOptions(baseUrl: ConfigReader.getNameConfig('API_URL')));
      dio.options.headers['Accept'] = 'application/json';
      dio.options.headers['Content-Type'] = 'application/json';
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      dio.interceptors.add(LogInterceptor(responseBody: true));
      Get.put<Dio>(dio);

      // // Provider
      Get.put<CharacterAPI>(CharacterAPI());

      // // Repositories
      Get.put<CharacterRepository>(CharacterRepository());
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
