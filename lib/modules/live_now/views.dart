import 'package:flutter/material.dart';

class LiveNowPage extends StatelessWidget {
  const LiveNowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Live Now',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
