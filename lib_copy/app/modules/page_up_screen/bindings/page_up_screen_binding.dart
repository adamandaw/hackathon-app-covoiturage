import 'package:get/get.dart';

import '../controllers/page_up_screen_controller.dart';

class PageUpScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageUpScreenController>(
      () => PageUpScreenController(),
    );
  }
}
