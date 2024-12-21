import 'dart:io';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';

class CreateAgentController extends GetxController {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isChecked = false.obs;
  Rx<File?> selectedFile = Rx<File?>(null);

  Future<void> selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.single.path != null) {
      selectedFile.value = File(result.files.single.path!);
      Get.snackbar('File Selected', 'File: ${result.files.single.name}',
          backgroundColor: Colors.green, colorText: Colors.white);
    } else {
      Get.snackbar('Error', 'No file selected',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  Future<void> createAgent() async {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        phoneController.text.isEmpty 
        // ||
        // selectedFile.value == null
        ) {
      Get.snackbar('Error', 'All fields are required',
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    isLoading.value = true;

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim());

      await FirebaseFirestore.instance
          .collection('agents')
          .doc(userCredential.user!.uid)
          .set({
        'firstName': firstNameController.text.trim(),
        'lastName': lastNameController.text.trim(),
        'email': emailController.text.trim(),
        'phone': phoneController.text.trim(),
        'fileName': selectedFile.value?.path.split('/').last,
        'createdAt': FieldValue.serverTimestamp(),
      });

      Get.snackbar('Success', 'Agent account created successfully',
          colorText: Colors.white, backgroundColor: Colors.green);

      firstNameController.clear();
      lastNameController.clear();
      emailController.clear();
      phoneController.clear();
      passwordController.clear();
      selectedFile.value = null;
      isChecked.value = false;

      Get.offAllNamed(Routes.AGENT_DASHBOARD);
    } catch (e) {
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    } finally {
      isLoading.value = false;
    }
  }
}