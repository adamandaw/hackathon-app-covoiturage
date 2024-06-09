import 'package:get/get.dart';

import '../controllers/page_up_two_screen_controller.dart';

class PageUpTwoScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageUpTwoScreenController>(
      () => PageUpTwoScreenController(),
    );
  }
}
