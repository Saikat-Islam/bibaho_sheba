import 'package:bibaho_sheba/modules/fucking_data/controller.dart';
import 'package:get/get.dart';

class FuckingBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FuckingController());
  }
}
