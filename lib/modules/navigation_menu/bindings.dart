import 'package:bibaho_sheba/modules/navigation_menu/controllers.dart';
import 'package:bibaho_sheba/modules/zoom_drawer/controllers.dart';
import 'package:get/get.dart';

class NavigationMenuBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies''
    Get.lazyPut(() => NavigationMenuController());
    Get.lazyPut(() => ZomDrawerController());
    
  }
}
