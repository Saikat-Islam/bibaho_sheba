import 'package:bibaho_sheba/common/custom_bibaho_sheba.dart';
import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/common/full_screen_loader.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_images.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/agent/controllers.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class CreateAgentView extends GetView<CreateAgentController> {
  const CreateAgentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          'Agent',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                  height: AppSizes.width / 3,
                  width: AppSizes.width,
                  child: Image(image: AssetImage(AppImages.appLogo))),
              const CustomBibahoShebaText(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppSizes.width / 2.8,
                    child: TextFormField(
                      controller: controller.firstNameController,
                      decoration: const InputDecoration(
                          hintText: "First Name", isDense: true),
                    ),
                  ),
                  SizedBox(
                    width: AppSizes.width / 2.8,
                    child: TextFormField(
                      controller: controller.lastNameController,
                      decoration: const InputDecoration(
                        isDense: true,
                        hintText: "Last Name",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller.emailController,
                decoration:
                    const InputDecoration(hintText: "Email", isDense: true),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller.phoneController,
                decoration:
                    const InputDecoration(hintText: "Phone", isDense: true),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller.passwordController,
                decoration:
                    const InputDecoration(hintText: "Password", isDense: true),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: controller.selectFile,
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() => Text(
                            controller.selectedFile.value == null
                                ? 'Choose File'
                                : controller.selectedFile.value!.path
                                    .split('/')
                                    .last,
                          )),
                      const Icon(Icons.attach_file),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      activeColor: AppColors.primaryColor,
                      value: controller.isChecked.value,
                      onChanged: (value) {
                        controller.isChecked.value = value!;
                      },
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "I agree to the terms and conditions",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
            
              Obx(() => controller.isLoading.value
                  ?  CircularProgressIndicator(color: AppColors.primaryColor,)
                  : ElevatedButton(
                    
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: controller.isChecked.value
                          ? controller.createAgent
                          : null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Continue",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
