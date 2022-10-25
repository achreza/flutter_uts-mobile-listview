import 'package:get/get.dart';

import 'package:uts_mobile/app/modules/detail_page/bindings/detail_page_binding.dart';
import 'package:uts_mobile/app/modules/detail_page/views/detail_page_view.dart';
import 'package:uts_mobile/app/modules/home/bindings/home_binding.dart';
import 'package:uts_mobile/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PAGE,
      page: () => DetailPageView(),
      binding: DetailPageBinding(),
    ),
  ];
}
