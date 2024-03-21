import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/widgets/insightspecialpricelist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomerInsightSpecialPricing extends StatelessWidget {
  const CustomerInsightSpecialPricing({super.key});

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
          "Special Pricing ",
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 10,
                  decoration: BoxDecoration(
                      color: const Color(0xfffee8e0),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'A025206 ',
                            style: kfontstyle(
                              fontSize: 12.sp,
                              color: const Color(0xff413434),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              'Tromp, Muller and Mitchell',
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff413434)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '199525 - ',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                color: const Color(0xff413434)),
                          ),
                          Expanded(
                            child: Text(
                              'Carrefour Hypermarket',
                              overflow: TextOverflow.ellipsis,
                              style: kfontstyle(fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Virtual | Supermarket | Dubai ',
                        style: kfontstyle(fontSize: 10.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xff00000050),
                              blurRadius: 0.4,
                              spreadRadius: 0.4)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search special pricing ",
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
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //SizedBox(width: 05,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                child: Text(
                  "All ",
                  style: countHeading(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                child: Text(
                  "7",
                  style: countHeading(),
                ),
              ),
              // SizedBox(width: ,),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          const Expanded(child: InsightSpecialPriceList()),
          SizedBox(
            height: 8.h,
          )
        ],
      ),
    );
  }
}
