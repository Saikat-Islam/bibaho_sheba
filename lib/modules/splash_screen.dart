import 'package:bibaho_sheba/modules/login/views.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  );
  late final Animation<double> animation = CurvedAnimation(
    parent: controller,
    curve: Curves.easeInOut,
  );
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller.forward();
    controller.addListener(
      () {
        if (controller.isCompleted) {
          Get.offAllNamed(Routes.LOGIN);
          // FirebaseAuth.instance.currentUser != null ? Get.offNamed(Routes.HOME) : Get.offNamed(Routes.AUTH);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: const Text(
            "Bibaho Sheba",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
