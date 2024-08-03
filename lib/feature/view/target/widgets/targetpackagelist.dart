import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';

class TargetPackageListItems extends StatefulWidget {
  const TargetPackageListItems({super.key});

  @override
  State<TargetPackageListItems> createState() => _TargetPackageListItemsState();
}

class _TargetPackageListItemsState extends State<TargetPackageListItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
          shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          itemCount: 13,
          itemBuilder: (context, index) => Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '40047977',
                                style: loadTextStyle(),
                              ),
                              Text(
                                'Divelle Farfelle Farfelle Pasta 500g Offer Pack',
                                style: subTitleTextStyle(),
                              )
                            ],
                          )),
                      Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Text(
                            '2.00',
                            style: subTitleTextStyle(),
                          )),
                      Flexible(
                          fit: FlexFit.tight,
                          flex: 0,
                          child: Text(
                            '2.00',
                            style: subTitleTextStyle(),
                          ))
                    ],
                  ),
                  Divider(
                    color: Colors.grey[200],
                  ),
                ],
              )),
    );
  }
}
