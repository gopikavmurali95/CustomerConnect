import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';

class QualificationGroupList extends StatelessWidget {
  const QualificationGroupList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '40047977',
                style: loadTextStyle(),
              ),
              Text(
                'divella farfalle farfell pasta',
                style: subTitleTextStyle(),
              ),
              Text(
                'Offer Packs',
                style: subTitleTextStyle(),
              ),
              const Divider()
            ],
          );
        });
  }
}
