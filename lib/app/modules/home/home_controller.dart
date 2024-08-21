// homecontroller.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_lab/app/modules/widget_detail/data/widget_item.dart';
import 'package:flutter_widgets_lab/app/modules/widgets_source/overlayloader_with_app_icon.dart';
import 'package:get/get.dart';

// HomeController with getx state management
class HomeController extends GetxController {
  final List<WidgetItem> widgetItems = [
    WidgetItem(
        title: 'Loader With App Icon',
        description:
            'A flutter widget that shows a beautiful overlay loader with appIcon when initiating an async call.',
        previewWidget: OverlayLoaderWithAppIcon(
            isLoading: true,
            appIcon: Icon(CupertinoIcons.flag_slash),
            // default primary color of the app
            circularProgressColor: Theme.of(Get.context!).primaryColor,
            child: const Center(
              child: Text(
                'This is the main content',
                style: TextStyle(color: Colors.white),
              ),
            ))),
    WidgetItem(
      title: 'Widget 2',
      description: 'This is widget 2 description',
      previewWidget: Center(child: Text('Preview of Widget 2')),
    ),
    // Add more items as needed
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
