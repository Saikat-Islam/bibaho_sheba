import 'package:bibaho_sheba/core/app_colors.dart';
import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:flutter/material.dart';

class AccountTypeContainer extends StatelessWidget {
  const AccountTypeContainer({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.height / 5,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: AppColors.secondaryColor,
                offset: Offset(-1, 1),
                blurRadius: 3.0)
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(height: 75, image: AssetImage(image)),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 18),
          ),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
