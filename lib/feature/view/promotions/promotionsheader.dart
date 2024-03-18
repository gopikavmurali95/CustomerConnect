import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/promotions/promotioncustomer.dart';
import 'package:customer_connect/feature/view/promotions/promotiondetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PromotionHeader extends StatelessWidget {
  const PromotionHeader({super.key});

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
          "Promotions ",
          style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(100, 50),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.4,
                          spreadRadius: 0.2)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      hintText: "Search promotions",
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      isDense: true,
                      counterText: "",
                      contentPadding: const EdgeInsets.all(15.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none)),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  maxLength: 20,
                  // controller: _locationNameTextController,
                )),
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All promotions',
                      style: countHeading(),
                    ),
                    Text(
                      '7',
                      style: countHeading(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            //color: Colors.red,
                            height: 60,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color(0xffB3DAF7),
                                        child: Center(
                                          child: Text(
                                            'AL',
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
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const PromotionCustomer()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Amount Off Line item',
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
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PromotionDetails()));
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        'Details',
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
                          const Divider()
                        ],
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
