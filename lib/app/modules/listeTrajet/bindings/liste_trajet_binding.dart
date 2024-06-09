import 'package:get/get.dart';

import '../controllers/liste_trajet_controller.dart';

class ListeTrajetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListeTrajetController>(
      () => ListeTrajetController(),
    );
  }
}
