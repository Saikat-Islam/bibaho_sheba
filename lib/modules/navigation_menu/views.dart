import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/modules/navigation_menu/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends GetView<NavigationMenuController> {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 70,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (value) =>
                controller.selectedIndex.value = value,
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Iconsax.home5,
                    color: AppColors.primaryColor,
                  ),
                  label: "Home"),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.lovely5,
                    color: AppColors.primaryColor,
                  ),
                  label: "My Interests"),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.profile_circle5,
                    color: AppColors.primaryColor,
                  ),
                  label: "Verified Users"),
              NavigationDestination(
                  icon: Icon(
                    Iconsax.crown5,
                    color: AppColors.primaryColor,
                  ),
                  label: "Buy Packages"),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
