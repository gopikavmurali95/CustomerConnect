import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/widgets/cusinsightspdetailslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerInsightSpecialPriceDetails extends StatelessWidget {
  const CustomerInsightSpecialPriceDetails({super.key});

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
          "Special Pricing",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
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
                              fontSize: 11.sp, color: const Color(0xff413434)),
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
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.grey.shade300,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            //color: Colors.red,
            height: 55,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15.w,
                      ),
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
                            'Special Pricing 01',
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
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
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
          ),
          SizedBox(
            height: 15.h,
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
                      const Text('Std Price'),
                      SizedBox(
                        width: 15.h,
                      ),
                      const Text('Spcl Price'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: CustomerInsightSpecialPriceDetailsList())
        ],
      ),
    );
  }
}
