import 'package:bibaho_sheba/modules/user_profile/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfile extends GetView<UserProfileController> {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile', style: Theme.of(context).textTheme.headlineSmall,),
      ),
    );
  }
}