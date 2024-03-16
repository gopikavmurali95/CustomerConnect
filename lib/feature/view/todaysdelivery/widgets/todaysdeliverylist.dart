import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/todaysdelivery/todaysdeliverydetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/widgets.dart';

class TodaysDeliveryList extends StatelessWidget {
  const TodaysDeliveryList({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const TodaysDeliveryDetails()));
      },
      child: ListView.builder(
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
                            builder: (context) =>
                                const TodaysDeliveryDetails()));
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 80,
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
                                child: Image.asset(
                                  "assets/images/listicon.png",
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
                                  Text(
                                    'MO86764',
                                    style: TextStyle(
                                        color: const Color(0xff2C6B9E),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
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
                                    style: subTextStyle(),
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
                            color: const Color(0xffBDF1B7),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Center(
                              child: Text(
                            'DE',
                            style: TextStyle(fontSize: 11),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider()
              ],
            );
          },
          //separatorBuilder: (context, index) => Divider(),
          itemCount: 3),
    );
  }
}
