import 'package:bibaho_sheba/modules/main/controllers.dart';
import 'package:bibaho_sheba/modules/main/views.dart';
import 'package:bibaho_sheba/modules/navigation_menu/controllers.dart';
import 'package:bibaho_sheba/modules/zoom_drawer/controllers.dart';
import 'package:bibaho_sheba/modules/zoom_drawer/zoom_drawer.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class NavigationMenuBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies''
    Get.lazyPut(() => NavigationMenuController());
    Get.lazyPut(() => ZomDrawerController());
    
  }
}
