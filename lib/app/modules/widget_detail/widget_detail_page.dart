// widget detail page file
//
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget_detail_controller.dart';

class WidgetDetailPage extends GetView<WidgetDetailController> {
  const WidgetDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.title)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image representing how the widget looks
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: controller
                  .previewWidget, // Replace this with a static image if necessary
            ),
            const SizedBox(height: 20),

            // Description of the widget
            Obx(() => Text(
                  controller.description,
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(height: 20),

            // Switch to toggle source code visibility
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Show Source Code', style: TextStyle(fontSize: 16)),
                Obx(() => Switch(
                      value: controller.showSourceCode,
                      onChanged: (value) => controller.toggleSourceCode(),
                    )),
              ],
            ),
            const SizedBox(height: 20),

            // Display source code if the switch is on
            Obx(() {
              if (controller.showSourceCode) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '// Your widget source code here',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'monospace'),
                  ),
                );
              }
              return Container();
            }),
            const SizedBox(height: 20),

            // Button to show the widget in a live preview
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.dialog(
                    Dialog(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Live Preview',
                                style: TextStyle(fontSize: 20)),
                            const SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: controller.previewWidget,
                            ),
                            // Display the widget preview here
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () => Get.back(),
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Text('Show Live Preview'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
