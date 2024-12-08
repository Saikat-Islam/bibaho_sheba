import 'package:bibaho_sheba/modules/notifications/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsScreen extends GetView<NotificationsScreenController> {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
