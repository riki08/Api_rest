import 'package:get/get.dart';

import 'package:api_rest/src/modules/verify-code/verify_code_binding.dart';
import 'package:api_rest/src/modules/verify-code/verify_code_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.verifyCode,
        page: () => const VerifyCodePage(),
        binding: VerifyCodeBinding()),
    // GetPage(
    //   name: AppRoutes.onboarding,
    //   page: () => OnboardingPage(),
    //   binding: OnboardingBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.login,
    //   page: () => LoginPage(),
    //   binding: LoginBinding(),
    // ),
  ];
}
