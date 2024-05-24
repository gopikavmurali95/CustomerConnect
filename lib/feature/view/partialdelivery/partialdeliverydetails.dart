import 'package:customer_connect/constants/fonts.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PArtialDeliveryDetails extends StatefulWidget {
  const PArtialDeliveryDetails({super.key});

  @override
  State<PArtialDeliveryDetails> createState() => _PArtialDeliveryDetailsState();
}

class _PArtialDeliveryDetailsState extends State<PArtialDeliveryDetails> {
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
          "Partial Delivery Detail",
          style: appHeading(),
        ),
      ),
    );
  }
}
