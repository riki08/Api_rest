import 'package:flutter/material.dart';

class VerifyCode extends StatefulWidget {
  VerifyCode({Key? key}) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verificaciòn de Còdigo'),
      ),
    );
  }
}
