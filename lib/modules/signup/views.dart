import 'package:bibaho_sheba/common/custom_bibaho_sheba.dart';
import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_images.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/signup/controllers.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatefulWidget {
   SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupController controller=Get.put(SignupController());
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
        title: const Text('SignupView'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
          
               SizedBox(
                    height: AppSizes.width / 3,
                    width: AppSizes.width,
                    child: Image(image: AssetImage(AppImages.appLogo))),
                const CustomBibahoShebaText(),
                const SizedBox(
                  height: 20,
                ),
                 TextFormField(
                    controller: controller.emailController,
                    decoration: const InputDecoration(
                      hintText: "E-mail ID",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                     TextFormField(
                    controller: controller.nameController,
                    decoration: const InputDecoration(
                      hintText: "Name",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                 
                  
                Obx(() {
                return controller.isLoading.value
                    ? Center(
                        child:
                             CircularProgressIndicator(color: Colors.green,)) // Show loader if loading
                    :    CustomButton(
                    text: "SIGNUP",
                    ontap: () {
                      controller.signUpUsesr();
                    },
                    height: 45,
                    width: AppSizes.width,
                  );}),
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
                        'Already have an account? ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text('Sign in',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppColors.secondaryColor)),
                      ),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
