import 'package:bibaho_sheba/modules/main/controllers.dart';
import 'package:bibaho_sheba/modules/navigation_menu/controllers.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MainHomePageBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MainHomePageController());
    Get.lazyPut(() => ZoomDrawerController());
    
  }
}
