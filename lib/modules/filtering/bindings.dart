import 'package:bibaho_sheba/modules/filtering/controllers.dart';
import 'package:get/get.dart';

class FilteringProfilesBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FilteringProfilesController());
  }
}
