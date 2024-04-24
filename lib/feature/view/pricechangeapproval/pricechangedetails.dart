import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';

class PriceChangeDetails extends StatelessWidget {
  const PriceChangeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Price Change Details ",
          style: appHeading(),
        ),
      ),
    );
  }
}
