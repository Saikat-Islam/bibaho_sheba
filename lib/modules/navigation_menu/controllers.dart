import 'package:bibaho_sheba/modules/live_now/views.dart';
import 'package:bibaho_sheba/modules/main/views.dart';
import 'package:bibaho_sheba/modules/notifications/controllers.dart';
import 'package:bibaho_sheba/modules/notifications/views.dart';
import 'package:bibaho_sheba/modules/settings/views.dart';
import 'package:bibaho_sheba/modules/user_profile/views.dart';
import 'package:get/get.dart';

class NavigationMenuController extends GetxController {
  final Rx selectedIndex = 0.obs;

  final screens = [
    // AccountSettingsScreen(),
    MainHomePage(),
    UserProfile(),
    LiveNowPage(),
    NotificationsScreen()
  ];
}
