import 'package:get/get.dart';
import 'package:getx_store/controllers/store_controller.dart';
import 'package:getx_store/controllers/theme_controller.dart';

class StoreBindings extends Bindings {
  void dependencies() {
    Get.lazyPut(() => StoreController());
    Get.lazyPut(() => ThemeController());
  }
}
