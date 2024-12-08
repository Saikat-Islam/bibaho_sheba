import 'package:bibaho_sheba/modules/forget_password/controllers.dart';
import 'package:get/get.dart';

class ForgetPasswordBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ForgetPasswordController());
  }
}
