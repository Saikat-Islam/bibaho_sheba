import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: AppSizes.width / 2.6,
          child: Divider(
            color: Colors.grey[300],
            thickness: 1.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Text('OR',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          width: AppSizes.width / 2.6,
          child: Divider(
            color: Colors.grey[300],
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}
