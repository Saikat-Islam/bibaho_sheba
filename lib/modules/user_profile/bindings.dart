import 'package:bibaho_sheba/modules/user_profile/controllers.dart';
import 'package:get/get.dart';

class UserProfileBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => UserProfileController());
  }
}
