import 'package:api_rest/src/modules/details-item/list_items_binding.dart';
import 'package:api_rest/src/modules/details-item/list_items_page.dart';
import 'package:api_rest/src/modules/list-items/list_items_binding.dart';
import 'package:api_rest/src/modules/list-items/list_items_page.dart';
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
    GetPage(
      name: AppRoutes.listItems,
      page: () => const ListItemsPAge(),
      binding: ListItemsBinding(),
    ),
    GetPage(
      name: AppRoutes.detailsItem,
      page: () => const DetailsItemPAge(),
      binding: DetailsItemBinding(),
    ),
  ];
}
