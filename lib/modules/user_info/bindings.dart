
import 'package:bibaho_sheba/modules/user_info/controllers.dart';
import 'package:get/get.dart';

class UserInfoBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => UserInfoController());
  }
}
