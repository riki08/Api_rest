import 'package:api_rest/src/modules/verify-code/verify_code_controller.dart';
import 'package:api_rest/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodePage extends GetView<VerifyCodeController> {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bienvenidos'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Bienvenidos a nuestra Aplicacion',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text(
              'Por favor ingresa el codigo que se envio a tu correo registrado',
              style: TextStyle(fontSize: 20),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            OtpTextField(
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
              onSubmit: (String verificationCode) async {
                bool res = await controller.validateCode(verificationCode);

                res
                    ? Get.offNamed(AppRoutes.listItems)
                    : showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text("Correcto"),
                            content: Text(
                                'Tu codigo ha sido validado correctamente'),
                          );
                        });
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
