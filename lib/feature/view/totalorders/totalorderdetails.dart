import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/totalorders/widgets/totalorderdetailslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalOrderDetails extends StatelessWidget {
  const TotalOrderDetails({super.key});

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
          "Order Details",
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
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MO86764',
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: const Color(0xff2C6B9E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'A025206 - ',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  'Tromp, Muller and Mitchell',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      color: const Color(0xff413434)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '199525 - ',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                              Expanded(
                                child: Text(
                                  'Carrefour Hypermarket',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'CR | Route 101 | 16 May 2023 | 10:35',
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 14.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: const Color(0xffe4f7e2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'CO',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff413434)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
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
                          hintText: "Search items ",
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
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('items'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 15.h,
                      ),
                      const Text('Uom'),
                      SizedBox(
                        width: 15.h,
                      ),
                      const Text('Qty'),
                      SizedBox(
                        width: 15.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.h,
          ),
          const Expanded(child: TotalOrderDetailsList()),
        ],
      ),
      bottomNavigationBar: SizedBox(
        //height: MediaQuery.of(context).size.width / 1.8,
        height: 40.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                'AED 1890.00',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
