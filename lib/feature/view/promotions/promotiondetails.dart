import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart';
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart';
import 'package:customer_connect/feature/view/promotions/promotioncustomer.dart';

import 'package:customer_connect/feature/view/promotions/widget/promotiondetailslist.dart';
import 'package:customer_connect/feature/view/qualificationgroup/qualificationgroup.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionDetails extends StatelessWidget {
  const PromotionDetails({super.key});

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
          "Promotion Detail ",
          style: appHeading(),
        ),
        // bottom: PreferredSize(
        //   preferredSize: const Size(100, 230),
        //   child:
        // ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffB3DAF7),
                              child: Center(
                                child: Text(
                                  'FG',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Free Good Promotion',
                                  style: blueTextStyle(),
                                ),
                                Text(
                                  '21 Feb 2021 to 24 Feb 2021',
                                  style: subTextStyle(),
                                ),
                                Text(
                                  'PR10021',
                                  style: subTextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<PromotionCustomerBloc>()
                              .add(const ClearOromotionCustomer());
                          context.read<PromotionCustomerBloc>().add(
                              const GetPromotionCustomerEvent(
                                  id: '1', searchQuery: ''));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PromotionCustomer()));
                        },
                        child: Row(
                          children: [
                            Text(
                              'Customers',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<QualificationGroupBloc>()
                        .add(const ClearGroupData());
                    context
                        .read<QualificationGroupBloc>()
                        .add(const GetGroupWiseDataEvent(id: "1", mode: " "));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QualificationGroup()));
                  },
                  child: Container(
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          blurStyle: BlurStyle.normal,
                          spreadRadius: 0.4,
                        ),
                      ],
                      // border: Border.all(
                      //     color: Colors.grey.withOpacity(0.1))),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Qualification Group',
                                style: kfontstyle(fontSize: 12.sp),
                              ),
                              Text(
                                '10023',
                                style: kfontstyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Text('View Items'),
                              Icon(Icons.keyboard_arrow_right)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<QualificationGroupBloc>()
                        .add(const ClearGroupData());
                    context
                        .read<QualificationGroupBloc>()
                        .add(const GetGroupWiseDataEvent(id: "1", mode: " "));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QualificationGroup()));
                  },
                  child: Container(
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          blurStyle: BlurStyle.normal,
                          spreadRadius: 0.4,
                        )
                      ],
                      // border: Border.all(
                      //     color: Colors.grey.withOpacity(0.1))),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Assignment Group',
                                style: kfontstyle(fontSize: 12.sp),
                              ),
                              Text(
                                '10025',
                                style: kfontstyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Text('View Items'),
                              Icon(Icons.keyboard_arrow_right)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Min Qua. Qty",
                    style: boxHeading(),
                  ),
                  Text(
                    "Max Qua. Qty",
                    style: boxHeading(),
                  ),
                  Text(
                    "Ass. Qty",
                    style: boxHeading(),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: PromotionDetailsList())
        ],
      ),
    );
  }
}
