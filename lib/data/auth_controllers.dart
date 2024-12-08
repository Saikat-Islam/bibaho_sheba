import 'package:bibaho_sheba/modules/fucking_data/controller.dart';
import 'package:bibaho_sheba/modules/fucking_data/views.dart';
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

  final deviceStorage = GetStorage();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn googleSignin = GoogleSignIn(scopes: ["email"]);
  // Rx<User> _firebaseUser = Rx<User>();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    // _firebaseUser.bindStream(_auth.authStateChanges());
  }

  // void googleSignin() async {
  //   final GoogleSignInAccount googleUser = await googleSignin.signIn();
  // }

  // Future<UserCredential?> signinWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //     final GoogleSignInAuthentication? googleAuth =
  //         await googleUser?.authentication;

  //     print('fuck');
  //     final credentials = GoogleAuthProvider.credential(
  //         accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

  //     print(credentials.idToken);

  //     return await _auth.signInWithCredential(credentials);
  //   } on FirebaseAuthException catch (e) {
  //     print('Error');
  //     throw CustomFirebaseAuthException(e.code);
  //   } catch (e) {
  //     if (kDebugMode) print('Something went wrong!');
  //     return null;
  //   }
  // }

  // //redirect user
  // void screenRedirect() async {
  //   final user = _auth.currentUser;

  //   if (user != null) {
  //     if (user.emailVerified) {
  //       Get.offAll(Routes.MAIN_PAGE);
  //     } else {
  //       Get.to(() => const FuckingScreen());
  //     }
  //   } else {
  //     deviceStorage.writeIfNull('isFirstTime', true);
  //   }
  // }

  // Future<void> logOut() async {
  //   try {
  //     await GoogleSignIn().signOut();
  //     await FirebaseAuth.instance.signOut();
  //     Get.offAll(() => const LoginScreen());
  //   } on FirebaseAuthException catch (e) {
  //     throw CustomFirebaseAuthException(e.code).message;
  //   } catch (e) {
  //     throw 'Something went wrong.';
  //   }
  // }
}
