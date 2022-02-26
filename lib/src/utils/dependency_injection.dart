import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:molova_app/src/data/models/hive/like.dart';
import 'package:molova_app/src/data/providers/auth_api.dart';
import 'package:molova_app/src/data/providers/home_api.dart';
import 'package:molova_app/src/data/providers/local/local_auth.dart';
import 'package:molova_app/src/data/repositories/auth_repository.dart';
import 'package:molova_app/src/data/repositories/home_repository.dart';
import 'package:molova_app/src/data/repositories/local/local_auth_repository.dart';
import 'package:molova_app/src/utils/config_reader.dart';
import 'package:molova_app/src/utils/firebase_controller.dart';
import 'package:path_provider/path_provider.dart' as path;

class DependencyInjection {
  static Future<void> init() async {
    try {
      Get.put<FlutterSecureStorage>(const FlutterSecureStorage());

      final appDocumentDir = await path.getApplicationDocumentsDirectory();

      Hive.init(appDocumentDir.path);
      Hive.registerAdapter(LikeAdapter());

      await Hive.openBox<Like>('like');
      await Hive.openBox<Like>('latest_products');

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

      // Provider
      Get.put<AuthenticationAPI>(AuthenticationAPI());
      Get.put<LocalAuth>(LocalAuth());
      Get.put<HomeApi>(HomeApi());

      // Repositories
      Get.put<AuthenticationRepository>(AuthenticationRepository());
      Get.put<LocalAuthRepository>(LocalAuthRepository());
      Get.put<HomeRepository>(HomeRepository());

      // external controller
      Get.put<FirebaseController>(FirebaseController());
    } catch (e) {
      // print(e.toString());
    }
  }
}
