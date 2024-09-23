// import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/feature/data/models/ar_header_model/ar_header_model.dart';
import 'package:flutter/material.dart';

class ArImagePreviewScreen extends StatelessWidget {
  final ArHeaderModel arheader;
  const ArImagePreviewScreen({super.key, required this.arheader});

  @override
  Widget build(BuildContext context) {
    // log("imagesss ${/* arheader.image! */ baseUrl.replaceAll('WS/', '') + arheader.image!.split(',').toList()[1]}");
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
          "Image preview",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: arheader.image == null
                ? const Center(
                    child: Text('Image loading Failed'),
                  )
                : PageView.builder(
                    itemCount: arheader.image?.split(',').toList().length,
                    itemBuilder: (context, index) => Image.network(
                      index == 0
                          ? arheader.image!.split(',').toList()[index]
                          : baseUrl.replaceAll('WS/', '') +
                              arheader.image!.split(',').toList()[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const SizedBox(
                              child: Center(
                        child: Text('Image loading Failed'),
                      )),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
