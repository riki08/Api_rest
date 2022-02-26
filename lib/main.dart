import 'package:api_rest/src/modules/verify-code/verify_code_binding.dart';
import 'package:api_rest/src/modules/verify-code/verify_code_page.dart';
import 'package:api_rest/src/routes/app_pages.dart';
import 'package:api_rest/src/utils/config_reader.dart';
import 'package:api_rest/src/utils/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  await DependencyInjection.init();
  runApp(const ApiRest());
}

class ApiRest extends StatelessWidget {
  const ApiRest({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Api rest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VerifyCodePage(),
      initialBinding: VerifyCodeBinding(),
      getPages: AppPages.pages,
    );
  }
}
