import 'package:bibaho_sheba/modules/notifications/controllers.dart';
import 'package:get/get.dart';

class NotificationsScreenBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NotificationsScreenController());
  }
}
