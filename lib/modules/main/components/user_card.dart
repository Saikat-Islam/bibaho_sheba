import 'dart:ui';

import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePageUserProfiles extends StatelessWidget {
  const HomePageUserProfiles({
    super.key,
    required this.userName,
    required this.activity,
    required this.age,
    required this.maritalStatus,
    required this.height,
    required this.religion,
    required this.occupation,
    required this.salary,
    required this.district,
    required this.education,
    required this.image,
    this.imageOntap,
    this.nameOntap,
    this.sendInterestBtn,
    this.phoneBtn,
    this.chatBtn,
    required this.verifiedUser,
    required this.showImage,
  });

  final bool activity, verifiedUser, showImage;

  final String userName,
      age,
      maritalStatus,
      height,
      religion,
      occupation,
      salary,
      district,
      image,
      education;

  final VoidCallback? imageOntap, nameOntap, sendInterestBtn, phoneBtn, chatBtn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              InkWell(
                onTap: nameOntap,
                child: Text(
                  userName,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              verifiedUser
                  ? Row(
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
                  : const Text('')
            ],
          ),
          subtitle: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  activity ? 'online' : 'last seen 12:00 AM',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Age: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        age,
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
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        maritalStatus,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Height: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        height,
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
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        religion,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Occupation: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          occupation,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ' Annual Income: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        salary,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'District: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 80,
                        child: Text(
                          district,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ' Education Qualification: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        education,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: imageOntap,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image))),
            height: AppSizes.height / 3,
            width: AppSizes.width,
            child: ClipRRect(
              child: BackdropFilter(
                filter: showImage
                    ? ImageFilter.blur()
                    : ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: showImage
                      ? Colors.transparent
                      : Colors.white.withOpacity(0.5),
                  child: Stack(children: [
                    Positioned(
                      bottom: -20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: UserProfileActionBTN(
                              ontap: sendInterestBtn,
                              icon: Iconsax.lovely,
                              text: 'Send Proposal',
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: UserProfileActionBTN(
                              ontap: phoneBtn,
                              icon: Iconsax.call,
                              text: 'Phone',
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: UserProfileActionBTN(
                              ontap: chatBtn,
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
            ),
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
    );
  }
}

class UserProfileActionBTN extends StatelessWidget {
  const UserProfileActionBTN({
    super.key,
    required this.icon,
    required this.text,
    this.ontap,
  });
  final IconData icon;
  final String text;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
