import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_images.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/main/views.dart';
import 'package:bibaho_sheba/modules/navigation_menu/views.dart';
import 'package:bibaho_sheba/modules/settings/views.dart';
import 'package:bibaho_sheba/modules/zoom_drawer/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ZomDrawer extends GetView<ZomDrawerController> {
  const ZomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      angle: 0,
      showShadow: true,
      mainScreenTapClose: true,
      menuBackgroundColor: AppColors.secondaryColor,
      mainScreenScale: 0.1,
      borderRadius: 20,
      menuScreen: MenuScreen(),
      mainScreen: NavigationMenu(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          height: AppSizes.height / 7,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.secondaryColor,
                  blurRadius: 3,
                )
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      AppColors.secondaryColor, BlendMode.screen),
                  image: AssetImage(AppImages.hiddenDrawerBg))),
          child: Center(
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppImages.profileImage)),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              title: Text('UUID12345'),
              titleTextStyle: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
              subtitleTextStyle: Theme.of(context).textTheme.bodyLarge,
              subtitle: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text('Edit Profile'),
                    Icon(Icons.edit, size: 20, color: AppColors.primaryColor)
                  ],
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => AccountSettingsScreen());
              },
              icon: Iconsax.people5,
              text: 'Partner Preferences',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => AccountSettingsScreen());
              },
              icon: Iconsax.search_favorite,
              text: 'Search by Keywords',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => AccountSettingsScreen());
              },
              icon: Icons.block_flipped,
              text: 'Blocked / Ignored Profiles',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => AccountSettingsScreen());
              },
              icon: Iconsax.setting,
              text: 'Account & Settings',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => AccountSettingsScreen());
              },
              icon: Iconsax.like_1,
              text: 'Rate Us',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => AccountSettingsScreen());
              },
              icon: Icons.help_center,
              text: 'Help & Support',
            ),
            SizedBox(
              height: AppSizes.height / 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Divider(color: Colors.grey[500]),
                  Text(
                    "Flat 46% OFF till 30 Dec",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      width: AppSizes.width,
                      text: 'UPGRADE MEMBERSHIP',
                      ontap: () {}),
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}

class DrawerCustomListTile extends StatelessWidget {
  const DrawerCustomListTile({
    super.key,
    required this.ontap,
    required this.icon,
    required this.text,
  });

  final VoidCallback ontap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      iconColor: AppColors.primaryColor,
      leading: Icon(icon),
      title: Text(text),
    );
  }
}
