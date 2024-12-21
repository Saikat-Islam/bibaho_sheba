import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  // @override
  // void initState() {
  //   super.initState();
  //   controller.forward();
  //   controller.addListener(
  //     () {
  //       if (controller.isCompleted) {
  //         Get.offAllNamed(Routes.LOGIN);
  //         FirebaseAuth.instance.currentUser != null
  //             ? Get.offNamed(Routes.ZOOM_DRAWER)
  //             : Get.offNamed(Routes.LOGIN);
  //       }
  //     },
  //   );
  // }

  @override
void initState() {
  super.initState();
  controller.forward();
  controller.addListener(() async {
    if (controller.isCompleted) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        final userDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
        if (userDoc.exists) {
          Get.offAllNamed(Routes.ZOOM_DRAWER); // Go to dashboard
        } else {
          Get.offAllNamed(Routes.SIGNING_UP); // Go to user info submission
        }
      } else {
        Get.offAllNamed(Routes.LOGIN); // Go to login screen
      }
    }
  });
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
