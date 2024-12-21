// import 'dart:ui';

// import 'package:bibaho_sheba/core/app_colors.dart';
// import 'package:bibaho_sheba/core/app_images.dart';
// import 'package:bibaho_sheba/core/app_sizes.dart';
// import 'package:bibaho_sheba/modules/main/controllers.dart';
// import 'package:bibaho_sheba/modules/zoom_drawer/zoom_drawer.dart';
// import 'package:bibaho_sheba/routes/app_pages.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// import 'components/user_card.dart';

// class MainHomePage extends GetView<MainHomePageController> {
//   const MainHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      // appBar: AppBar(
      //   flexibleSpace: Padding(
      //     padding:
      //         const EdgeInsets.only(top: 35.0, right: 90, left: 50, bottom: 10),
      //     child: SizedBox(
      //       child: InkWell(
      //         onTap: () => Get.toNamed(Routes.FILTERING_PROFILE),
      //         child: Container(
      //           // padding: EdgeInsets.all(10),
      //           height: 60,

      //           decoration: BoxDecoration(
      //               color: Colors.grey[100],
      //               borderRadius: BorderRadius.circular(20)),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Icon(
      //                 Iconsax.search_normal,
      //                 color: AppColors.primaryColor,
      //               ),
      //               Text(
      //                 'Search your favourite partner',
      //                 style: Theme.of(context)
      //                     .textTheme
      //                     .bodySmall!
      //                     .copyWith(color: Colors.grey),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     Stack(children: [
      //       IconButton(
      //           onPressed: () {
      //             Get.toNamed(Routes.NOTIFICATIONS_PAGE);
      //           },
      //           icon: const Icon(Iconsax.notification)),
      //       Positioned(
      //         left: 25,
      //         top: 12,
      //         child: Container(
      //           height: 15,
      //           width: 15,
      //           decoration: BoxDecoration(
      //               color: AppColors.secondaryColor,
      //               borderRadius: BorderRadius.circular(50)),
      //           child: Align(
      //             child: Text(
      //               '10',
      //               style: Theme.of(context)
      //                   .textTheme
      //                   .bodySmall!
      //                   .copyWith(color: Colors.white),
      //             ),
      //           ),
      //         ),
      //       )
      //     ]),
      //     IconButton(
      //         onPressed: () {
      //           Get.toNamed(Routes.CHAT);
      //         },
      //         icon: const Icon(Iconsax.message_favorite)),
      //   ],
      //   leading: IconButton(
      //       onPressed: () {
      //         ZoomDrawer.of(context)!.toggle();
      //       },
      //       icon: const Icon(Icons.menu)),
      //   // title: InkWell(
      //   //   onTap: () => Get.toNamed(Routes.FILTERING_PROFILE),
      //   //   child: Container(
      //   //     // padding: EdgeInsets.all(10),
      //   //     height: 45,

      //   //     decoration: BoxDecoration(
      //   //         color: Colors.grey[100],
      //   //         borderRadius: BorderRadius.circular(10)),
      //   //     child: Row(
      //   //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   //       children: [
      //   //         Icon(
      //   //           Iconsax.search_normal,
      //   //           color: AppColors.primaryColor,
      //   //         ),
      //   //         Text(
      //   //           'Search your favourite partner',
      //   //           style: Theme.of(context)
      //   //               .textTheme
      //   //               .bodySmall!
      //   //               .copyWith(color: Colors.grey),
      //   //         )
      //   //       ],
      //   //     ),
      //   //   ),
      //   // ),
      // ),
//       body: SingleChildScrollView(
//           child: Column(children: [
//         CarouselSlider(
//             items: [
//               CarouselImages(
//                 image: AppImages.rollsRoyce,
//               ),
//               CarouselImages(
//                 image: AppImages.mercedes,
//               ),
//               CarouselImages(
//                 image: AppImages.supra,
//               )
//             ],
//             options: CarouselOptions(
//               autoPlay: true,
//               viewportFraction: 1,
//               aspectRatio: 16 / 6,
//               onPageChanged: (index, _) =>
//                   controller.updatePageIndicator(index),
//             )),
//         Obx(
//           () => Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               for (int i = 0; i < 3; i++)
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 2,
//                     width: 20,
//                     decoration: BoxDecoration(
//                         color: controller.carouselCurrentIndex.value == i
//                             ? AppColors.secondaryColor
//                             : Colors.grey[300],
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     'Live Now',
//                     style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                         color: AppColors.secondaryColor,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                     child: Container(
//                       height: 10,
//                       width: 10,
//                       decoration: BoxDecoration(
//                           color: AppColors.primaryColor,
//                           borderRadius: BorderRadius.circular(50)),
//                     ),
//                   ),
//                 ],
//               ),
//               TextButton(
//                   onPressed: () {
//                     Get.toNamed(Routes.LIVE_NOW_PAGE);
//                   },
//                   child: Text(
//                     'See All',
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyLarge!
//                         .copyWith(color: AppColors.secondaryColor),
//                   ))
//             ],
//           ),
//         ),
//         SizedBox(
//           height: AppSizes.height / 4,
//           child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               shrinkWrap: true,
//               itemCount: 6,
//               itemBuilder: (_, index) => Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                     child: LiveNowProfiles(
//                       image: AppImages.people,
//                       uuid: 'UUID1234',
//                       age: '22',
//                       district: 'Dhaka',
//                       maritalStatus: 'Single',
//                       profession: 'Engineer',
//                       religion: 'Muslim',
//                       height: '5.2 ft',
//                       salary: '300K - 500K',
//                       ontap: () {
//                         Get.toNamed(Routes.USER_PROFILE);
//                       },
//                       icon: Iconsax.eye_slash,
//                       showImage: false,
//                     ),
//                   )),
//         ),
//         const Divider(
//           indent: 10,
//           endIndent: 10,
//         ),
//         SizedBox(
//           height: 333,
        //   child: StreamBuilder<QuerySnapshot>(
        //     stream: FirebaseFirestore.instance.collection('users').snapshots(),
        //     builder: (context, snapshot) {
        //       if (!snapshot.hasData) {
        //         return CircularProgressIndicator(
        //           color: AppColors.primaryColor,
        //         );
        //       }
          
        //       // List<QueryDocumentSnapshot> allUsers =
        //       //     snapshot.data!.docs;
          
        //       // List<QueryDocumentSnapshot> matchingUsers =
        //       //     allUsers.where((user) {
        //       //   String userGender = user['gender'];
          
        //       //   return _currentUserGender.isNotEmpty &&
        //       //       userGender != _currentUserGender;
        //       // }).toList();
          
        //       // if (matchingUsers.isEmpty) {
        //       //   return const Text('No matching users found.');
        //       // }
          
        //       return SizedBox(
        //         height: 333,
        //         child: ListView.builder(
        //           itemCount: snapshot.data?.docs.length ?? 0,
        //           // shrinkWrap: true,
        //           physics: BouncingScrollPhysics(),
        //           itemBuilder: (context, index) {
        //             final data = snapshot.data!.docs[index];
                
                        
        //             return Container(
        //               padding: const EdgeInsets.symmetric(
        //                 vertical: 12,
        //               ),
        //               decoration: const BoxDecoration(
        //                 color: Colors.white,
        //               ),
        //               child: Column(
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Row(
        //                       children: [
        //                         InkWell(
        //                           child: Text(
        //                             data['name'],
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .titleMedium!
        //                                 .copyWith(fontWeight: FontWeight.bold),
        //                           ),
        //                         ),
        //                         const SizedBox(
        //                           width: 10,
        //                         ),
        //                         Row(
        //                           children: [
        //                             Text(
        //                               'Verified',
        //                               style: Theme.of(context)
        //                                   .textTheme
        //                                   .bodyMedium!
        //                                   .copyWith(
        //                                       fontWeight: FontWeight.bold,
        //                                       color: AppColors.primaryColor),
        //                             ),
        //                             Icon(
        //                               Iconsax.tick_circle5,
        //                               color: AppColors.primaryColor,
        //                               size: 15,
        //                             )
        //                           ],
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.symmetric(horizontal:8),
        //                     child: Column(
        //                       children: [
        //                         Align(
        //                           alignment: Alignment.centerLeft,
        //                           child: Text(
        //                             data['activity'] ?? 'online',
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyMedium!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.bold,
        //                                     color: AppColors.primaryColor),
        //                           ),
        //                         ),
        //                         Row(
        //                           mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                           children: [
        //                             Row(
        //                               children: [
        //                                 Text(
        //                                   'Age: ',
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyMedium!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.bold),
        //                                 ),
        //                                 Text(
        //                                   data['age'],
        //                                 )
        //                               ],
        //                             ),
        //                             Row(
        //                               children: [
        //                                 Text(
        //                                   ' Marital Status: ',
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyMedium!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.bold),
        //                                 ),
        //                                 Text(
        //                                   data['maritalStatus'],
        //                                 )
        //                               ],
        //                             ),
        //                           ],
        //                         ),
        //                         Row(
        //                           mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                           children: [
        //                             Row(
        //                               children: [
        //                                 Text(
        //                                   'Height: ',
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyMedium!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.bold),
        //                                 ),
        //                                 Text(
        //                                   data['height'],
        //                                 )
        //                               ],
        //                             ),
        //                             Row(
        //                               children: [
        //                                 Text(
        //                                   ' Religion: ',
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyMedium!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.bold),
        //                                 ),
        //                                 Text(
        //                                   data['religion'],
        //                                 )
        //                               ],
        //                             ),
        //                           ],
        //                         ),
        //                         Row(
        //                           mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                           children: [
        //                             Row(
        //                               children: [
        //                                 Text(
        //                                   'Occupation: ',
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyMedium!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.bold),
        //                                 ),
        //                                 SizedBox(
        //                                   width: 100,
        //                                   child: Text(
        //                                     data['profession'],
        //                                   ),
        //                                 )
        //                               ],
        //                             ),
        //                             Row(
        //                               children: [
        //                                 Text(
        //                                   'Income: ',
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyMedium!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.bold),
        //                                 ),
        //                                 Text(
        //                                   data['income'],
        //                                 )
        //                               ],
        //                             ),
        //                           ],
        //                         ),
        //                         Row(
        //                           mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                           children: [
        //                             Row(
        //                               children: [
        //                                 Text(
        //                                   'District: ',
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyMedium!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.bold),
        //                                 ),
        //                                 SizedBox(
        //                                   width: 80,
        //                                   child: Text(
        //                                     data['homeDistrict'],
        //                                   ),
        //                                 )
        //                               ],
        //                             ),
        //                             Row(
        //                               children: [
        //                                 Text(
        //                                   ' Education: ',
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyMedium!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.bold),
        //                                 ),
        //                                 Text(
        //                                   data['education'],
        //                                 )
        //                               ],
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                   const SizedBox(
        //                     height: 16,
        //                   ),
        //                   Container(
        //                     decoration: BoxDecoration(
        //                         image: DecorationImage(
        //                             fit: BoxFit.cover,
        //                             image: AssetImage(AppImages.people))),
        //                     height: AppSizes.height / 3,
        //                     width: AppSizes.width,
        //                     child: ClipRRect(
        //                       child: Stack(children: [
        //                         Positioned(
        //                           bottom: -20,
        //                           child: Row(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceAround,
        //                             children: [
        //                               Padding(
        //                                 padding: const EdgeInsets.symmetric(
        //                                     horizontal: 10.0),
        //                                 child: UserProfileActionBTN(
        //                                   ontap: () {},
        //                                   icon: Iconsax.lovely,
        //                                   text: 'Send Proposal',
        //                                 ),
        //                               ),
        //                               Padding(
        //                                 padding: const EdgeInsets.symmetric(
        //                                     horizontal: 10.0),
        //                                 child: UserProfileActionBTN(
        //                                   ontap: () {},
        //                                   icon: Iconsax.call,
        //                                   text: 'Phone',
        //                                 ),
        //                               ),
        //                               Padding(
        //                                 padding: const EdgeInsets.symmetric(
        //                                     horizontal: 10.0),
        //                                 child: UserProfileActionBTN(
        //                                   ontap: () {},
        //                                   icon: Iconsax.message_add,
        //                                   text: 'Chat',
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ]),
        //                     ),
        //                   ),
        //                   const SizedBox(
        //                     height: 10,
        //                   ),
        //                   const Divider(
        //                     endIndent: 10,
        //                     indent: 10,
        //                   )
        //                 ],
        //               ),
        //             );
        //           },
        //         ),
        //       );
        //     },
        //   ),
        // ),
//         // HomePageUserProfiles(
//         //   nameOntap: () {
//         //     Get.toNamed(Routes.USER_PROFILE);
//         //   },
//         //   imageOntap: () => Get.toNamed(Routes.USER_PROFILE),
//         //   sendInterestBtn: () {},
//         //   phoneBtn: () {},
//         //   chatBtn: () {},
//         //   userName: 'User Name',
//         //   activity: false,
//         //   age: '22',
//         //   maritalStatus: 'Single',
//         //   height: '5.4 ft',
//         //   religion: 'Muslim',
//         //   occupation: 'Student',
//         //   salary: '300K - 500K',
//         //   district: 'Dhaka',
//         //   education: 'BSc in CSE',
//         //   image: AppImages.people,
//         //   verifiedUser: false,
//         //   showImage: false,
//         // ),
//         // HomePageUserProfiles(
//         //   nameOntap: () {
//         //     Get.toNamed(Routes.USER_PROFILE);
//         //   },
//         //   imageOntap: () => Get.toNamed(Routes.USER_PROFILE),
//         //   sendInterestBtn: () {},
//         //   phoneBtn: () {},
//         //   chatBtn: () {},
//         //   userName: 'User Name',
//         //   activity: true,
//         //   age: '22',
//         //   maritalStatus: 'Single',
//         //   height: '5.4 ft',
//         //   religion: 'Muslim',
//         //   occupation: 'Enginner',
//         //   salary: '300K - 500K',
//         //   district: 'Dhaka',
//         // education: 'BSc in CSE',
//         //   image: AppImages.people,
//         //   verifiedUser: true,
//         //   showImage: true,
//         // ),
//       ])),
//     );
//   }
// }


import 'dart:ui';

import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_images.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/modules/main/controllers.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'components/user_card.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
    // late String _currentUserImageUrl = '';
  // late String _currentUserName = '';
  late String _currentUserGender = '';
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
        // _currentUserName = userSnapshot['name'] ?? '';
        _currentUserGender = userSnapshot['gender'] ?? '';
      });
    } catch (e) {
      print('Error fetching user data: $e');
    }
  }

  MainHomePageController controller = Get.put(MainHomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        flexibleSpace: Padding(
          padding:
              const EdgeInsets.only(top: 35.0, right: 90, left: 50, bottom: 10),
          child: SizedBox(
            child: InkWell(
              onTap: () => Get.toNamed(Routes.FILTERING_PROFILE),
              child: Container(
                // padding: EdgeInsets.all(10),
                height: 60,

                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Iconsax.search_normal,
                      color: AppColors.primaryColor,
                    ),
                    Text(
                      'Search your favourite partner',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        actions: [
          Stack(children: [
            IconButton(
                onPressed: () {
                  Get.toNamed(Routes.NOTIFICATIONS_PAGE);
                },
                icon: const Icon(Iconsax.notification)),
            Positioned(
              left: 25,
              top: 12,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Align(
                  child: Text(
                    '10',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            )
          ]),
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.CHAT);
              },
              icon: const Icon(Iconsax.message_favorite)),
        ],
        leading: IconButton(
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
            icon: const Icon(Icons.menu)),
       
      ),
      body: CustomScrollView(
        slivers: [
        
          SliverList(
            delegate: SliverChildListDelegate([
              CarouselSlider(
                items: [
                  CarouselImages(
                    image: AppImages.rollsRoyce,
                  ),
                  CarouselImages(
                    image: AppImages.mercedes,
                  ),
                  CarouselImages(
                    image: AppImages.supra,
                  )
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  aspectRatio: 16 / 6,
                  onPageChanged: (index, _) => controller.updatePageIndicator(index),
                ),
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 2,
                          width: 20,
                          decoration: BoxDecoration(
                              color: controller.carouselCurrentIndex.value == i
                                  ? AppColors.secondaryColor
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Live Now',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.LIVE_NOW_PAGE);
                        },
                        child: Text(
                          'See All',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: AppColors.secondaryColor),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.height / 4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: LiveNowProfiles(
                            image: AppImages.people,
                            uuid: 'UUID1234',
                            age: '22',
                            district: 'Dhaka',
                            maritalStatus: 'Single',
                            profession: 'Engineer',
                            religion: 'Muslim',
                            height: '5.2 ft',
                            salary: '300K - 500K',
                            ontap: () {
                              Get.toNamed(Routes.USER_PROFILE);
                            },
                            icon: Iconsax.eye_slash,
                            showImage: false,
                          ),
                        )),
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: 444,
                child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('users').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return SizedBox(
                  height: 44,
                  width: 44,
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                );
              }
          
           
                      List<QueryDocumentSnapshot> allUsers =
                          snapshot.data!.docs;

                      List<QueryDocumentSnapshot> matchingUsers =
                          allUsers.where((user) {
                        String userGender = user['gender'];

                        return _currentUserGender.isNotEmpty &&
                            userGender != _currentUserGender;
                      }).toList();

                      if (matchingUsers.isEmpty) {
                        return const Text('No matching users found.');
                      }

          
              return SizedBox(
                height: 333,
                child: ListView.builder(
                  itemCount: matchingUsers.length,
                  // shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final data = matchingUsers[index];
                
                        
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                InkWell(
                                  child: Text(
                                    data['name'],
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Verified',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.primaryColor),
                                    ),
                                    Icon(
                                      Iconsax.tick_circle5,
                                      color: AppColors.primaryColor,
                                      size: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                     'online',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.primaryColor),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Age: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['age'],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          ' Marital Status: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['maritalStatus'],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Height: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['height'],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          ' Religion: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['religion'],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Occupation: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: Text(
                                            data['profession'],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Income: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['income'],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'District: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 80,
                                          child: Text(
                                            data['homeDistrict'],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          ' Education: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['education'],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(AppImages.people))),
                            height: AppSizes.height / 3,
                            width: AppSizes.width,
                            child: ClipRRect(
                              child: Stack(children: [
                                Positioned(
                                  bottom: -20,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: UserProfileActionBTN(
                                          ontap: () {},
                                          icon: Iconsax.lovely,
                                          text: 'Send Proposal',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: UserProfileActionBTN(
                                          ontap: () {},
                                          icon: Iconsax.call,
                                          text: 'Phone',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: UserProfileActionBTN(
                                          ontap: () {},
                                          icon: Iconsax.message_add,
                                          text: 'Chat',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            endIndent: 10,
                            indent: 10,
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


class LiveNowProfiles extends StatelessWidget {
  const LiveNowProfiles({
    super.key,
    required this.image,
    required this.uuid,
    required this.age,
    required this.district,
    required this.maritalStatus,
    required this.profession,
    required this.religion,
    required this.height,
    required this.salary,
    required this.ontap,
    this.icon,
    required this.showImage,
  });

  final String image,
      uuid,
      age,
      district,
      maritalStatus,
      profession,
      religion,
      height,
      salary;

  final VoidCallback ontap;
  final IconData? icon;
  final bool showImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
              height: AppSizes.height / 6,
              width: AppSizes.width / 3,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.secondaryColor,
                        blurRadius: 3,
                        offset: const Offset(0, 2))
                  ],
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image))),
              child: ClipRect(
                child: showImage
                    ? null
                    : BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          color: Colors.white.withOpacity(0.5),
                          child: Center(
                            child: showImage ? null : Icon(icon),
                          ),
                        ),
                      ),
              )),
          SizedBox(
            width: AppSizes.width / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '$uuid, $age',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
                Text('$district, $maritalStatus, $profession'),
                Text('$religion, $height, $salary'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CarouselImages extends StatelessWidget {
  const CarouselImages({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: AppSizes.width,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
    );
  }
}
