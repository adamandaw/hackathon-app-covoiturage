import 'package:get/get.dart';

import '../controllers/page_up_one_screen_controller.dart';

class PageUpOneScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageUpOneScreenController>(
      () => PageUpOneScreenController(),
    );
  }
}
