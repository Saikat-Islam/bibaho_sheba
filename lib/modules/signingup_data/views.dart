import 'package:bibaho_sheba/common/account_type_container.dart';
import 'package:bibaho_sheba/common/custom_bibaho_sheba.dart';
import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_images.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/signingup_data/controller.dart';
import 'package:bibaho_sheba/modules/user_info/views.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SigningUP extends GetView<SigningUpController> {
  const SigningUP({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppSizes.height / 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: Get.back, icon: const Icon(Iconsax.arrow_left)),
                  const CustomBibahoShebaText(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Sign Up",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 10,
            ),
            Image(height: 50, image: NetworkImage(user?.photoURL ?? ''),),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Welcome, ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "${user?.displayName ?? 'User'}!",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.primaryColor, fontWeight: FontWeight.bold),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create an account as: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18)),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                            color: const Color.fromARGB(80, 140, 137, 137)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          user?.email ?? 'No email',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 18),
                        ),
                        const Icon(
                          Iconsax.lock5,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Checkbox(
                    activeColor: AppColors.secondaryColor,
                    value: true,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    side: const BorderSide(color: Colors.grey)),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      softWrap: true,
                      maxLines: 2,
                      "I agree to Bibaho Sheba User Agreement &",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      softWrap: true,
                      maxLines: 2,
                      "Privacy Policy",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomButton(
                  width: double.infinity,
                  text: 'Join Bibaho Sheba',
                  ontap: () {
                    Get.to(() => const SelectType());
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class SelectType extends StatelessWidget {
  const SelectType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppSizes.height / 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: Get.back, icon: const Icon(Iconsax.arrow_left)),
                  const CustomBibahoShebaText()
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Select Account Type',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'Don\'t worry, this can be changed later.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Get.to(() => const UserInfoSubmit());
              },
              child: AccountTypeContainer(
                  image: AppImages.groom, text: 'I Want Groom'),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(() => const UserInfoSubmit());
              },
              child: AccountTypeContainer(
                  image: AppImages.bride, text: 'I Want Bride'),
            ),
          ],
        ),
      ),
    );
  }
}
