import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAgentController extends GetxController {
  static CreateAgentController get instanse => CreateAgentController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
}
