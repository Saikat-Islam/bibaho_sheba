import 'package:bibaho_sheba/modules/settings/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingsScreen extends GetView<AccountSettingsController> {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SettingsView',style: Theme.of(context).textTheme.bodyLarge,),),
    );
  }
}