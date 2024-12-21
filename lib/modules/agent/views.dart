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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppSizes.width / 2.8,
                    child: TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        hintText: "First Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppSizes.width / 2.8,
                    child: TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        hintText: "Last Name",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  hintText: "Enter New Email",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: controller.passController,
                  decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                  )),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: controller.passController,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 10,
                  ),
                  Text(
                    'Upload your personal document for verification',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Choose File'), Icon(Iconsax.arrow_down_1)],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: AppColors.secondaryColor,
                      value: true,
                      onChanged: (value) {},
                      checkColor: Colors.white,
                      side: const BorderSide(color: Colors.grey)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        softWrap: true,
                        maxLines: 2,
                        "I agree to Bibaho Sheba User Agreement &",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        softWrap: true,
                        maxLines: 2,
                        "Privacy Policy",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.primaryColor),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Continue",
                ontap: () {
                  Get.toNamed(Routes.AGENT_DASHBOARD);
                },
                height: 45,
                width: AppSizes.width,
              )
            ],
          ),
        ),
      ),
    );
  }
}
