import 'package:bibaho_sheba/modules/signup/controllers.dart';
import 'package:get/get.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SignupController());
  }
}
