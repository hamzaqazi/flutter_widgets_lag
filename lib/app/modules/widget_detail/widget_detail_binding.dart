// widget detail binding file
//
import 'package:flutter_widgets_lab/app/modules/widget_detail/widget_detail_controller.dart';
import 'package:get/get.dart';

class WidgetDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WidgetDetailController>(() => WidgetDetailController());
  }
}
