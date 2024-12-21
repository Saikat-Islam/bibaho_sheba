import 'package:bibaho_sheba/modules/agent/bindings.dart';
import 'package:bibaho_sheba/modules/agent/views.dart';
import 'package:bibaho_sheba/modules/agent_dashboard/bindings.dart';
import 'package:bibaho_sheba/modules/agent_dashboard/views.dart';
import 'package:bibaho_sheba/modules/chats/bindings.dart';
import 'package:bibaho_sheba/modules/chats/views.dart';
import 'package:bibaho_sheba/modules/filtering/bindings.dart';
import 'package:bibaho_sheba/modules/filtering/views.dart';
import 'package:bibaho_sheba/modules/forget_password/bindings.dart';
import 'package:bibaho_sheba/modules/forget_password/view.dart';
import 'package:bibaho_sheba/modules/signingup_data/bindings.dart';
import 'package:bibaho_sheba/modules/signingup_data/views.dart';
import 'package:bibaho_sheba/modules/live_now/bindings.dart';
import 'package:bibaho_sheba/modules/live_now/views.dart';
import 'package:bibaho_sheba/modules/main/bindings.dart';
import 'package:bibaho_sheba/modules/main/views.dart';
import 'package:bibaho_sheba/modules/navigation_menu/bindings.dart';
import 'package:bibaho_sheba/modules/navigation_menu/views.dart';
import 'package:bibaho_sheba/modules/notifications/bindings.dart';
import 'package:bibaho_sheba/modules/notifications/views.dart';
import 'package:bibaho_sheba/modules/user_info/bindings.dart';
import 'package:bibaho_sheba/modules/user_info/views.dart';
import 'package:bibaho_sheba/modules/user_profile/bindings.dart';
import 'package:bibaho_sheba/modules/user_profile/views.dart';
import 'package:bibaho_sheba/modules/zoom_drawer/bindings.dart';
import 'package:bibaho_sheba/modules/zoom_drawer/zoom_drawer.dart';
import 'package:bibaho_sheba/modules/login/bindings.dart';
import 'package:bibaho_sheba/modules/login/views.dart';
import 'package:bibaho_sheba/modules/settings/bindings.dart';
import 'package:bibaho_sheba/modules/settings/views.dart';
import 'package:bibaho_sheba/modules/signup/bindings.dart';
import 'package:bibaho_sheba/modules/signup/views.dart';
import 'package:bibaho_sheba/modules/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: _Paths.SPLASH, page: () => const SplashView()),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupScreen(),
      binding: SignupBindings(),
    ),
    GetPage(
        name: _Paths.FORGET_PASSWORD,
        page: () => const ForgetPassword(),
        binding: ForgetPasswordBindings()),
    GetPage(
        name: _Paths.RESET_PASSWORD,
        page: () => const ResetPassword(),
        binding: ForgetPasswordBindings()),
    GetPage(
        name: _Paths.RESET_CODE,
        page: () => const ResetCode(),
        binding: ForgetPasswordBindings()),
    GetPage(
        name: _Paths.SIGNING_UP,
        page: () => SignupScreen(),
        binding: SignupBindings()),
    GetPage(
        name: _Paths.CREATE_AGENT,
        page: () => const CreateAgentView(),
        binding: CreateAgentBindings()),
    GetPage(
        name: _Paths.AGENT_DASHBOARD,
        page: () => const AgentDashboard(),
        binding: AgentDashboardBindings()),
    GetPage(
        name: _Paths.MAIN_PAGE,
        page: () => const MainHomePage(),
        binding: MainHomePageBindings()),
    GetPage(
        name: _Paths.NAVIGATION_MENU,
        page: () => const NavigationMenu(),
        binding: NavigationMenuBindings()),
    GetPage(
        name: _Paths.FILTERING_PROFILE,
        page: () => const FilteringProfiles(),
        binding: FilteringProfilesBindings()),
    GetPage(
        name: _Paths.CHAT,
        page: () => const ChatScreen(),
        binding: ChatScreenBindings()),
    GetPage(
        name: _Paths.ACCOUNT_AND_SETTINGS,
        page: () => const AccountSettingsScreen(),
        binding: AccountSettingsBindings()),
    GetPage(
        name: _Paths.NOTIFICATIONS_PAGE,
        page: () => const NotificationsScreen(),
        binding: NotificationsScreenBindings()),
    GetPage(
        name: _Paths.ZOOM_DRAWER,
        page: () => const ZomDrawer(),
        binding: ZoomDrawerBindings()),
    // GetPage(
    //     name: _Paths.SIGNING_UP,
    //     page: () => const SigningUP(),
    //     binding: FuckingBindings()),
    GetPage(
        name: _Paths.USER_PROFILE,
        page: () => const UserProfile(),
        binding: UserProfileBindings()),
    GetPage(
        name: _Paths.USERINFO_SUBMIT,
        page: () => const UserInfoSubmit(),
        binding: UserInfoBindings()),
  ];
}
