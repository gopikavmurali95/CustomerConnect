import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/totalorders/totalorderdetails.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalOrderList extends StatelessWidget {
  const TotalOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TotalOrderDetails()));
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 315,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffbadb95),
                              child: Image.asset(
                                "assets/images/delivery.png",
                                height: 20,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'AD025206',
                                      style: blueTextStyle(),
                                    ),
                                    Text(
                                      '- Tromp, Muller and Mitchell',
                                      style: subTitleTextStyle(),
                                    ),
                                  ],
                                ),
                                Text(
                                  '199521 - Carrefour Hypermarket',
                                  style: subTitleTextStyle(),
                                ),
                                Text(
                                  'Route 101 | Salesman 101 | 16 May 2023 1 | 10:35',
                                  style: statusTextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 25,
                        decoration: BoxDecoration(
                          color: const Color(0xffECEFBE),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(
                            child: Text(
                          'QN',
                          style: TextStyle(fontSize: 11),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
              )
            ],
          );
        },
        //separatorBuilder: (context, index) => Divider(),
        itemCount: 3);
  }
}
