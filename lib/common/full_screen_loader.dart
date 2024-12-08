import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenLoader {
  static void openLoadingDialogue(String text) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
              canPop: false,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(children: [
                    Text("Loading...")
                ],),
              ),
            ));
  }
}
