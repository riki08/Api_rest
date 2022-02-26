import 'package:api_rest/src/modules/verify-code/verify_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodePage extends GetView<VerifyCodeController> {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verificaciòn de Còdigo'),
      ),
    );
  }
}
