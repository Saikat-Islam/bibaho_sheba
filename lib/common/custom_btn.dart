import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.width,
    this.height,
    required this.ontap,
  });

  final String text;
  final double? width, height;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextButton(
          onPressed: ontap,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          )),
    );
  }
}
