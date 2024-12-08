import 'package:bibaho_sheba/modules/chats/controllers.dart';
import 'package:get/get.dart';

class ChatScreenBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ChatScreenController());
  }
}
