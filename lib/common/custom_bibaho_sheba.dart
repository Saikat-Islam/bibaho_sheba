import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBibahoShebaText extends StatelessWidget {
  const CustomBibahoShebaText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Bibaho ',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontFamily: "DancingScript-VariableFont.ttf",
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 3),
        ),
        Text(
          'Sheba',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
              color: AppColors.primaryColor,
              fontFamily: "DancingScript-VariableFont.ttf",
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 3),
        )
      ],
    );
  }
}