import 'package:bibaho_sheba/modules/chats/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends GetView<ChatScreenController> {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chats',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}