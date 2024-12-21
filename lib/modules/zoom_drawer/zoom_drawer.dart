import 'package:bibaho_sheba/common/custom_btn.dart';
import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_images.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/navigation_menu/views.dart';
import 'package:bibaho_sheba/modules/settings/views.dart';
import 'package:bibaho_sheba/modules/zoom_drawer/controllers.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
      menuScreen: const MenuScreen(),
      mainScreen: const NavigationMenu(),
    );
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
    late String _currentUserName = '';
  // late String _currentUserEmail = '';
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

    @override
  void initState() {
    super.initState();
    _getCurrentUserData();
  }

  Future<void> _getCurrentUserData() async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      DocumentSnapshot userSnapshot =
          await _firestore.collection('users').doc(uid).get();

      setState(() {
        // _currentUserImageUrl = userSnapshot['image_url'] ?? '';
        _currentUserName = userSnapshot['name'] ?? '';
        // _currentUserEmail = userSnapshot['email'] ?? '';
      });
    } catch (e) {
      print('Error fetching user data: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
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
                      // image: AssetImage(AppImages.profileImage)
                      image: NetworkImage(FirebaseAuth
                              .instance.currentUser?.photoURL
                              .toString() ??
                          '')),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              // title: const Text('UUID12345'),
              // title: Text(
              //     FirebaseAuth.instance.currentUser?.displayName.toString() ??
              //         ''),

              title: Text(_currentUserName),
              titleTextStyle: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
              subtitleTextStyle:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
              subtitle: InkWell(
                onTap: () {
                  
                },
                child: Row(
                  children: [
                    const Text('Edit Profile'),
                    Icon(Icons.edit, size: 18, color: AppColors.primaryColor)
                  ],
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => const AccountSettingsScreen());
              },
              icon: Iconsax.people5,
              text: 'Partner Preferences',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => const AccountSettingsScreen());
              },
              icon: Iconsax.search_favorite,
              text: 'Search by Keywords',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => const AccountSettingsScreen());
              },
              icon: Icons.block_flipped,
              text: 'Blocked / Ignored Profiles',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => const AccountSettingsScreen());
              },
              icon: Iconsax.setting,
              text: 'Account & Settings',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => const AccountSettingsScreen());
              },
              icon: Iconsax.like_1,
              text: 'Rate Us',
            ),
            DrawerCustomListTile(
              ontap: () {
                Get.to(() => const AccountSettingsScreen());
              },
              icon: Icons.help_center,
              text: 'Help & Support',
            ),
            DrawerCustomListTile(
              ontap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text(
                            "Are you sure?",
                            style: GoogleFonts.kameron(
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          content: Text(
                            "Click Confirm if you want to Log out of the app",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.kameron(
                                textStyle: const TextStyle(
                              fontSize: 14,
                            )),
                          ),
                          actions: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.red,
                                  ),
                                  child: Text("Cancel",
                                      style: GoogleFonts.kameron(
                                          textStyle: const TextStyle(
                                              color: Colors.white))),
                                )),
                            GestureDetector(
                                onTap: () async {
                                  await FirebaseAuth.instance.signOut();
                                  Get.offAllNamed(Routes.LOGIN);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: const Color(0xFF2C663D),
                                  ),
                                  child: Text("Confirm",
                                      style: GoogleFonts.kameron(
                                        textStyle: const TextStyle(
                                            color: Colors.white),
                                      )),
                                ))
                          ],
                        ));
              },
              icon: Icons.logout,
              text: 'Logout',
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
                  const SizedBox(
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
