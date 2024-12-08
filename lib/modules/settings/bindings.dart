import 'package:bibaho_sheba/modules/settings/controllers.dart';
import 'package:get/get.dart';

class AccountSettingsBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AccountSettingsController());
  }
}
