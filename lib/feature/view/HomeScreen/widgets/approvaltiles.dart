import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
// import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart';
import 'package:customer_connect/feature/view/partialdelivery/partialdeliveryheader.dart';
// import 'package:customer_connect/feature/view/pricechangeapproval/pricechangeheader.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_headerscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApprovalTiles extends StatelessWidget {
  final LoginUserModel user;
  const ApprovalTiles({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Approvals",
                style: boxHeading(),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,Platform.isIOS?CupertinoPageRoute(builder: (context)=>
                      ScheduledReturnHEaderScreen(user: user)):
                      MaterialPageRoute(
                        builder: (context) => ScheduledReturnHEaderScreen(
                          user: user,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    // height: 50,
                    // width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/pro.png",
                            height: 15.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Scheduled Return",
                            style: headTextStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,Platform.isIOS?CupertinoPageRoute(builder: (context)=>
                      PartialDeliveryHeader(user: user)):
                      MaterialPageRoute(
                        builder: (context) => PartialDeliveryHeader(
                          user: user,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    //height: 50,
                    // width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/os.png",
                            height: 15.h,
                          ),
                          // fit: BoxFit.scaleDown,),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Partial Delivery",
                            style: headTextStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
