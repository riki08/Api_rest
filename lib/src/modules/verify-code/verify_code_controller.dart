import 'dart:async';

import 'package:get/get.dart';

class VerifyCodeController extends GetxController {
  final _isValid = false.obs;
  get isValid => _isValid.value;
  set isValid(value) => _isValid.value = value;

  Future<bool> validateCode(String code) async {
    if (code == (12345).toString()) {
      return true;
    }
    return false;
  }
}
