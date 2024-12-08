import 'package:flutter/material.dart';
import 'package:get/get.dart';

showMessage(
    {required BuildContext context,
    required String title,
    required String message}) {
  showDialog(
      context: Get.context!,
      builder: (context) {
        return SimpleDialog(
          title: Text(title, style: const TextStyle(color: Colors.red)),
          contentPadding: const EdgeInsets.all(20),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(message),
            )
          ],
        );
      });
}

showSnackBar(
    {required BuildContext context,
    required String title,
    required String message}) {
  Get.snackbar(title, message,
      duration: const Duration(seconds: 2),
      titleText: Text(title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.red,
              fontFamily: '',
              fontSize: 20,
              fontWeight: FontWeight.bold)),
      messageText: Text(message,
          style:
              Theme.of(context).textTheme.bodyLarge!.copyWith(fontFamily: '')));
}

void closeDialog(BuildContext context) {
  Navigator.pop(context);
}

stopLoading() {
  Navigator.of(Get.context!).pop();
}



Future<void> showCustomDialog(
  BuildContext context, {
  Widget? child,
  bool barrierDismissible = false,
  int delay = 400,
}) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "",
    transitionDuration: Duration(milliseconds: delay),
    pageBuilder: (context, animation, secondaryAnimation) =>
        Align(alignment: Alignment.center, child: child!),
    transitionBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
          .animate(animation),
      child: child,
    ),
  );
}
