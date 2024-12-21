import 'package:bibaho_sheba/modules/agent_dashboard/controllers.dart';
import 'package:get/get.dart';

class AgentDashboardBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AgentDashboardController());
  }
}
