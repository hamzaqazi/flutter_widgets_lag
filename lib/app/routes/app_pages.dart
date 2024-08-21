// app_pages.dart

import 'package:flutter_widgets_lab/app/modules/home/home_binding.dart';
import 'package:flutter_widgets_lab/app/modules/home/home_page.dart';
import 'package:flutter_widgets_lab/app/modules/widget_detail/widget_detail_binding.dart';
import 'package:flutter_widgets_lab/app/modules/widget_detail/widget_detail_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: AppRoutes.widgetDetail,
        page: () => const WidgetDetailPage(),
        binding: WidgetDetailBinding()),
  ];
}
