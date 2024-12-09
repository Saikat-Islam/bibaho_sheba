import 'package:bibaho_sheba/common/custom_bibaho_sheba.dart';
import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/common/custom_divider.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_images.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/forget_password/view.dart';
import 'package:bibaho_sheba/modules/signingup_data/views.dart';
import 'package:bibaho_sheba/modules/login/controller.dart';
import 'package:bibaho_sheba/modules/signup/views.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: AppSizes.width / 3,
                  width: AppSizes.width,
                  child: Image(image: AssetImage(AppImages.appLogo))),
              const CustomBibahoShebaText(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  // try {
                  //   print("continue with google");
                  //   UserCredential userCredential =
                  //       await controller.signInWithGoogle();
                  //   // Navigate to the home page or desired screen
                  //   Get.toNamed(Routes.FUCKING_SCREEN);
                  // } catch (e) {
                  //   // Handle errors
                  //   print('Error signing in with Google: $e');
                  // }
                },
                child: LoginMethodContainer(
                  text: 'Continue with Google',
                  image: AppImages.google,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: LoginMethodContainer(
                  height: 45,
                  text: 'Continue with Facebook',
                  image: AppImages.facebook,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomDivider(),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  hintText: "E-mail ID / Matrimony ID",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Obx(
                () => TextFormField(
                  controller: controller.passController,
                  obscureText: controller.isPasswordHidden.value,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                          onPressed: controller.showPassword,
                          icon: controller.isPasswordHidden.value
                              ? const Icon(
                                  Iconsax.eye_slash5,
                                  color: Colors.black,
                                )
                              : const Icon(Iconsax.eye4, color: Colors.black))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.FORGET_PASSWORD);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.redAccent),
                  )),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                text: "LOGIN",
                ontap: () {},
                height: 45,
                width: AppSizes.width,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: AppSizes.width,
                child: Divider(
                  color: Colors.grey[300],
                  thickness: 1.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const SignupScreen());
                    },
                    child: Text('Sign up',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: AppColors.secondaryColor)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Need Agent? ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text('Create Agent',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: AppColors.secondaryColor)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginMethodContainer extends StatelessWidget {
  const LoginMethodContainer({
    super.key,
    this.height,
    this.width,
    required this.text,
    required this.image,
  });

  final double? height;
  final double? width;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromARGB(80, 140, 137, 137))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage(image)),
            Padding(
              padding: EdgeInsets.only(right: AppSizes.width / 5),
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
