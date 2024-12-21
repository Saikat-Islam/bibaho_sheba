import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/core/app_texts.dart';
import 'package:bibaho_sheba/modules/forget_password/controllers.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends GetView<ForgetPasswordController> {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: InkWell(
          onTap:() {
            Get.back();
          },child:  Icon(Icons.arrow_back_ios,color: Colors.white,)),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Forget Password',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 22),
          child: Column(
            children: [
              SizedBox(
                height: Get.height*.12,
              ),
              Text(
                  'Don\'t worry sometimes people can forget\n too. Enter your E-mail address and we\n will sent you password reset link.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(
                height: Get.height*.05,
              ),
              TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  hintText: "E-mail ID",
                ),
              ),
              const SizedBox(height: 20),
              Obx(() {
                return controller.isLoading.value
                    ? const Center(
                        child:
                            CircularProgressIndicator(
                              color: Colors.green,
                            )) // Show loader if loading
                    :   CustomButton(
                text: "SEND CODE",
                ontap: () {
                  // Get.toNamed(Routes.RESET_CODE);
                  controller.resetPassword();
                },
                height: 45,
                width: AppSizes.width,
              );})
            ],
          ),
        ),
      ),
    );
  }
}

class ResetCode extends GetView<ForgetPasswordController> {
  const ResetCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Enter Code',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
              child: Text(AppTexts.resetCode,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: AppSizes.width / 4,
                child: TextFormField(
                  controller: controller.tokenController,
                  textAlign: TextAlign.center,
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                )),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                text: "SUBMIT",
                ontap: () {
                  Get.toNamed(Routes.RESET_PASSWORD);
                },
                height: 45,
                width: AppSizes.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResetPassword extends GetView<ForgetPasswordController> {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reset Password',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
            child: Text(AppTexts.resetPass,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextFormField(
              controller: controller.passController,
              decoration: const InputDecoration(
                hintText: "Enter new password",
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextFormField(
              controller: controller.passController,
              decoration: const InputDecoration(
                hintText: "Retype new password",
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomButton(
              text: "DONE",
              ontap: () {
                Get.offAllNamed(Routes.LOGIN);
              },
              height: 45,
              width: AppSizes.width,
            ),
          ),
        ],
      ),
    );
  }
}
