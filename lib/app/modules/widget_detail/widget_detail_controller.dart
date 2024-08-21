// widget detail controller file
//
import 'package:flutter/material.dart';
import 'package:flutter_widgets_lab/app/modules/widget_detail/data/widget_item.dart';
import 'package:get/get.dart';

class WidgetDetailController extends GetxController {
  // Rx variables
  final RxString _title = ''.obs;
  get title => _title.value;

  final RxString _description = ''.obs;
  String get description => _description.value;

  final Rx<Widget> _previewWidget = Rx<Widget>(Container());
  Widget get previewWidget => _previewWidget.value;

  final RxBool _showSourceCode = false.obs;
  bool get showSourceCode => _showSourceCode.value;

  void toggleSourceCode() {
    _showSourceCode.value = !_showSourceCode.value;
  }

  @override
  void onInit() {
    // get the arguments passed from the previous screen
    final args = Get.arguments as WidgetItem;

    // set the values of the Rx variables
    _title.value = args.title;
    _description.value = args.description;
    _previewWidget.value = args.previewWidget;

    super.onInit();
  }
}
