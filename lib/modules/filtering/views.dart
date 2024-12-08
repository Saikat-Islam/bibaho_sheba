import 'package:bibaho_sheba/modules/filtering/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilteringProfiles extends GetView<FilteringProfilesController> {
  const FilteringProfiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter Profile',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
