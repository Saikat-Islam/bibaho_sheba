import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signingup_data/views.dart';

class UserInfoController extends GetxController {
  final isLoading = false.obs;
  final errorMessage = "".obs;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveUserData({
    required String name,
    required String email,
    required String gender,
    required String height,
    required String homeDistrict,
    required String profession,
    required String income,
    required String education,
    required String maritalStatus,
    required String profile,
    required String age,
    required String presentDistrict,
    required String religion,
  }) async {
    isLoading.value = true;
    errorMessage.value = "";

    try {
      await _firestore
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        'name': name,
        'email': email,
        'userId': FirebaseAuth.instance.currentUser!.uid,
        'profile': profile,
        'gender': gender,
        'height': height,
        'age': age,
        'religion': religion,
        'presentDistrict': presentDistrict,
        'homeDistrict': homeDistrict,
        'profession': profession,
        'income': income,
        'education': education,
        'maritalStatus': maritalStatus,
        'createdAt': Timestamp.now(),
      });
      Get.snackbar("Success", "User data saved successfully!",
      // backgroundColor: Colors.
          );
      // Get.offAllNamed(Routes.SIGNING_UP);
                    Get.to(() => const SelectType());

    } catch (e) {
      errorMessage.value = e.toString();
      Get.snackbar("Error", "Failed to save data: $errorMessage",
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
