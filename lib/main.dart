import 'package:api_rest/src/repository/modules/verify-code/verify_code.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ApiRest());
}

class ApiRest extends StatelessWidget {
  const ApiRest({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Api rest',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VerifyCode(),
    );
  }
}
