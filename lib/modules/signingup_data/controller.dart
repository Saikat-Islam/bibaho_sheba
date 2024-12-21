import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SigningUpController extends GetxController {
  static SigningUpController get instanse => Get.find();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  RxString selectedAccountType = ''.obs;

  Future<void> saveAccountType(String accountType) async {
    try {
      selectedAccountType.value = accountType;

      await _firestore
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        'accountType': accountType,
        'updatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
      Get.offAllNamed(Routes.ZOOM_DRAWER);

      // Get.snackbar('Success', 'Account type saved successfully!');
    } catch (e) {
      Get.snackbar('Error', 'Failed to save account type: $e');
    }
  }
}
