import 'package:flutter/material.dart';

class MoreMenuWidget extends StatelessWidget {
  const MoreMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Menu'),
      ),
      body: const Center(
        child: Text('This is the More Menu screen.'),
      ),
    );
  }
}
