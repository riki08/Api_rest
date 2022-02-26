import 'package:get/get.dart';
import 'package:molova_app/src/pages/category/category_binding.dart';
import 'package:molova_app/src/pages/category/category_page.dart';
import 'package:molova_app/src/pages/brand-profile/brand_profile_binding.dart';
import 'package:molova_app/src/pages/brand-profile/brand_profile_page.dart';
import 'package:molova_app/src/pages/details-inspired/details_inspired_binding.dart';
import 'package:molova_app/src/pages/details-inspired/details_inspired_page.dart';
import 'package:molova_app/src/pages/details-product/details_product_binding.dart';
import 'package:molova_app/src/pages/details-product/details_product_page.dart';
import 'package:molova_app/src/pages/edit-profile/edit_profile_binding.dart';
import 'package:molova_app/src/pages/edit-profile/edit_profile_page.dart';
import 'package:molova_app/src/pages/favorites/favorites_binding.dart';
import 'package:molova_app/src/pages/favorites/favorites_page.dart';
import 'package:molova_app/src/pages/home/home_binding.dart';
import 'package:molova_app/src/pages/home/home_page.dart';
import 'package:molova_app/src/pages/inspired/inspired_binding.dart';
import 'package:molova_app/src/pages/inspired/inspired_page.dart';
import 'package:molova_app/src/pages/login/login_binding.dart';
import 'package:molova_app/src/pages/login/login_page.dart';
import 'package:molova_app/src/pages/onboarding/onboarding_binding.dart';
import 'package:molova_app/src/pages/onboarding/onboarding_page.dart';
import 'package:molova_app/src/pages/profile/profile_binding.dart';
import 'package:molova_app/src/pages/profile/profile_page.dart';
import 'package:molova_app/src/pages/register/register_binding.dart';
import 'package:molova_app/src/pages/register/register_page.dart';
import 'package:molova_app/src/pages/reset-password/reset_password_binding.dart';
import 'package:molova_app/src/pages/reset-password/reset_password_page.dart';
import 'package:molova_app/src/pages/splash/splah_binding.dart';
import 'package:molova_app/src/pages/splash/splash_page.dart';
import 'package:molova_app/src/pages/trends/trends_binding.dart';
import 'package:molova_app/src/pages/trends/trends_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.forget,
      page: () => ResetPasswordPage(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: AppRoutes.detailsProduct,
      page: () => DetailsProductPage(),
      binding: DetailsProductBinding(),
    ),
    GetPage(
      name: AppRoutes.category,
      page: () => CategoryPage(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.editProfile,
      page: () => EditProfilePage(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.trends,
      page: () => TrendsPage(),
      binding: TrendsBinding(),
    ),
    GetPage(
      name: AppRoutes.brandProfile,
      page: () => const BrandProfilePage(),
      binding: BrandProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.favorites,
      page: () => const FavoritesPage(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: AppRoutes.inspired,
      page: () => const InspiredPage(),
      binding: InspiredBinding(),
    ),
    GetPage(
      name: AppRoutes.detailsInspired,
      page: () => const DetailsInspiredPage(),
      binding: DetailsInspiredBinding(),
    ),
  ];
}
