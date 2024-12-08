import 'package:bibaho_sheba/data/auth_controllers.dart';
import 'package:bibaho_sheba/common/full_screen_loader.dart';
import 'package:bibaho_sheba/core/network_manager.dart';
import 'package:bibaho_sheba/data/models.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:bibaho_sheba/utils/errors/firebase_auth_exception.dart';
import 'package:bibaho_sheba/utils/errors/show_error_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["openid"]);

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    print("users $credential");

    return await _auth.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
  // FirebaseAuth _auth = FirebaseAuth.instance;

  // Rx<UserModel> userModel = UserModel().obs;
  // String userCollection = "bibahoUser";

  // GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  // final AuthRepository authController = Get.put(AuthRepository());

  // Rxn<User> fbUser = Rxn<User>();
  // Rxn<User> googleUser = Rxn<User>();
  // final googleSignIn = GoogleSignIn();
  // GoogleSignInAccount? _googleAcc;
  // UserModel? _userModel;

  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  // UserModel? get loggedInUSerModel => _userModel;

  // @override
  // void onReady() {
  //   // TODO: implement onReady
  //   super.onReady();
  //   googleUser = Rxn<User>(_auth.currentUser);
  //   googleUser.bindStream(_auth.userChanges());
  //   ever(googleUser, setInitialScreen);
  // }

  // void googleLogin() async {
  //   final googleUser = await googleSignIn.signIn();
  //   if (googleUser == null) return;
  //   _googleAcc = googleUser;

  //   final googleAuth = await googleUser.authentication;
  //   final credential = GoogleAuthProvider.credential(
  //       idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

  //   try {
  //     await _auth.signInWithCredential(credential).then((res) async {
  //       print("logged in: ${res.user!.displayName.toString()}");
  //       Get.toNamed(Routes.ZOOM_DRAWER);
  //       UserModel newUser = UserModel(
  //         id: res.user!.uid,
  //         email: res.user!.email,
  //       );
  //     });
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     showSnackBar(
  //         context: Get.context!,
  //         title: "Error !",
  //         message: "Sign in failed, try again.");
  //   }
  // }

  // setInitialScreen(User? user) {
  //   if (user == null) {
  //     showSnackBar(
  //         context: Get.context!,
  //         title: "Something went wrong!",
  //         message: "Try again later");
  //   } else {
  //     print("the user is ${user.displayName}");
  //     userModel.bindStream(listenToUser());
  //     Get.toNamed(Routes.FUCKING_SCREEN);
  //   }
  // }

  // void signOut() async {
  //   googleSignIn.signOut();
  //   _auth.signOut();
  // }

  // Stream<UserModel> listenToUser() {
  //   return firebaseFirestore
  //       .collection(userCollection)
  //       .doc(googleUser.value!.uid)
  //       .snapshots()
  //       .map((snapShot) => UserModel.fromSnapshot(snapShot));
  // }

  var isPasswordHidden = true.obs;
  showPassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
}
