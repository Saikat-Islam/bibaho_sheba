import 'package:bibaho_sheba/modules/signingup_data/views.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  var isPasswordHidden = true.obs;
  showPassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  RxBool isLoading = false.obs;
  final errorMessage = "".obs;

  final auth = FirebaseAuth.instance;
  void loginWithGoogle() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await auth.signInWithCredential(credential);

      // Check if user info exists
      final userId = FirebaseAuth.instance.currentUser!.uid;
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      if (userDoc.exists) {
        Get.toNamed(Routes.ZOOM_DRAWER); // Navigate to dashboard
      } else {
        // Get.toNamed(Routes.SIGNING_UP); // Navigate to user info submission
        Get.to(() => SigningUP(FirebaseAuth.instance.currentUser!.email,
            FirebaseAuth.instance.currentUser!.displayName));
      }

      Get.snackbar(
        'Success',
        'Login successfully',
        backgroundColor: const Color(0xff00C236),
        colorText: Colors.white,
      );
    } catch (ex) {
      print('errrrrrrrrrrrrr   $ex');
      Get.snackbar(
        'Error',
        ex.toString(),
        backgroundColor: const Color(0xffF24E1E),
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loginUsesr() async {
    isLoading.value = true;
    errorMessage.value = "";

    try {
      if (emailController.text.isEmpty || passController.text.isEmpty) {
        Get.snackbar('Oops!', "Please enter email or password",
            backgroundColor: Colors.green.shade700, colorText: Colors.white);
      } else {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text.trim(),
                password: passController.text.trim());
            Get.offAllNamed(Routes.ZOOM_DRAWER);


        // if (userCredential.user != null) {
        //   String uid = userCredential.user!.uid;

        //   DocumentSnapshot userDoc = await FirebaseFirestore.instance
        //       .collection('users')
        //       .doc(uid)
        //       .get();

        //   if (userDoc.exists) {
        //     // progressDialog.dismiss();

        //     Get.offAllNamed(Routes.ZOOM_DRAWER);
        //   } else {
        //     Get.snackbar('Oops!', "User not found in database",
        //         backgroundColor: Colors.green.shade700,
        //         colorText: Colors.white);

        //     await FirebaseAuth.instance.signOut();
        //   }
        // }
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
