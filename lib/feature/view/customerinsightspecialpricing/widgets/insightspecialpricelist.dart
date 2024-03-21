import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/cusinsightspdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InsightSpecialPriceList extends StatelessWidget {
  const InsightSpecialPriceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: 05, right: 05,
          //top: 10,
          //  bottom: 10
        ),
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const CustomerInsightSpecialPriceDetails()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: const Color(0xffA4C8E9),
                            child: Image.asset(
                              "assets/images/listicon.png",
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Special Pricing 0${index + 1}",
                                    style: blueTextStyle(),
                                  ),
                                  Text(
                                    "21 Feb 2021 to 24 Feb 2024 ",
                                    style: subTitleTextStyle(),
                                  ),
                                  Text(
                                    "PR12001",
                                    style: subTitleTextStyle(),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Details   ",
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          size: 18,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
            ],
          );
        },
      ),
    );
  }
}
