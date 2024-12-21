import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signingup_data/views.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  var isPasswordHidden = true.obs;
  showPassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  final isLoading = false.obs;
  final errorMessage = "".obs;

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signUpUsesr() async {
    isLoading.value = true;
    errorMessage.value = "";

    try {
      if (emailController.text.isEmpty ||
          passController.text.isEmpty ||
          nameController.text.isEmpty) {
        Get.snackbar('Oops!', "Please enter email or password",
            backgroundColor: Colors.green.shade700, colorText: Colors.white);
      } else {
        UserCredential userCredential =
            await auth.createUserWithEmailAndPassword(
                email: emailController.text.trim(),
                password: passController.text.trim());

        Get.snackbar(
          "Success",
          "Sign up successfully!",
          backgroundColor: Colors.green,colorText: Colors.white

        );
        Get.to(() => SigningUP(emailController.text, nameController.text));
      }
    } catch (e) {
      errorMessage.value = e.toString();
      Get.snackbar("Error", "Failed to save data: $errorMessage",
          backgroundColor: Colors.red, colorText: Colors.white);
    } finally {
      isLoading.value = false;
    }
  }
}
