import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController tokenController = TextEditingController();

  RxBool isLoading = false.obs;
  final errorMessage = "".obs;

 

  Future<void> resetPassword() async {
    isLoading.value = true;
    errorMessage.value = "";

    try {
      if (emailController.text.isEmpty) {
        Get.snackbar('Oops!', "Please enter email",
            backgroundColor: Colors.green.shade700, colorText: Colors.white);
      } else {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: emailController.text.trim());
        Get.snackbar('Success', 'Check your email for Password Reset Link',
            colorText: Colors.white, backgroundColor: Colors.green.shade500);

        Get.toNamed(Routes.LOGIN);

      }
    } catch (e) {
      errorMessage.value = e.toString();
      Get.snackbar("Error", "Failed to login: $errorMessage",
          backgroundColor: Colors.red, colorText: Colors.white);
    } finally {
      isLoading.value = false;
    }
  }
}
