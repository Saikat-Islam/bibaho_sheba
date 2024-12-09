import 'package:bibaho_sheba/modules/signingup_data/controller.dart';
import 'package:bibaho_sheba/modules/signingup_data/views.dart';
import 'package:bibaho_sheba/modules/login/views.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:bibaho_sheba/utils/errors/firebase_auth_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instanse => Get.find();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

  }
}
