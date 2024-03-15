import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';

// ignore: non_constant_identifier_names
Widget WhiteContainer(String count, String routes, String status, Image image) {
  return Container(
    height: 60,
    width: 102,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 3, bottom: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("10", style: countHeading()),
          Text("(6 Routes)", style: subTextStyle()),
          Row(
            children: [
              SvgPicture.asset("assets/svg/pending.svg"),
              const SizedBox(
                width: 2,
              ),
              //Icon(Icons.note_add_outlined,size: 12,),
              Text("Not Started", style: statusTextStyle()),
            ],
          )
        ],
      ),
    ),
  );
}
