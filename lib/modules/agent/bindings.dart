import 'package:bibaho_sheba/modules/agent/controllers.dart';
import 'package:get/get.dart';

class CreateAgentBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CreateAgentController());
  }
}
