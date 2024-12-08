import 'package:bibaho_sheba/modules/live_now/controllers.dart';
import 'package:get/get.dart';

class LiveNowPageBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LiveNowPageController());
  }
}
