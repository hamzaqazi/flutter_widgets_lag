// homecontroller.dart

import 'package:get/get.dart';

// HomeController with getx state management
class HomeController extends GetxController {
  // Counter variable
  var counter = 0.obs;

  // Increment counter
  void increment() {
    counter++;
  }
}
