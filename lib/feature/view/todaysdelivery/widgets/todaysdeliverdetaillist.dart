// import 'package:customer_connect/constants/fonts.dart';
// import 'package:flutter/material.dart';

// class TodaysDeliveryDetailsList extends StatelessWidget {
//   const TodaysDeliveryDetailsList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: 4,
//       shrinkWrap: true,
//       itemBuilder: (BuildContext context, int index) {
//         return Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 15.0, top: 2),
//                   child: SizedBox(
//                     height: 70,
//                     width: 200,
//                     //color: Colors.white,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("400478754", style: loadTextStyle()),
//                         Text(
//                           "Divella Farfelle  Pasta 500g",
//                           style: subTitleTextStyle(),
//                         ),
//                         Text(
//                           "Offer Pack",
//                           style: subTitleTextStyle(),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Column(
//                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   // crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Cs",
//                       style: subTitleTextStyle(),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       "Cs",
//                       style: subTitleTextStyle(),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 5, right: 20.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         "1",
//                         style: subTitleTextStyle(),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         "1",
//                         style: subTitleTextStyle(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 //  SizedBox(width: 0,)
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10),
//                   child: Container(
//                     height: 20,
//                     width: 65,
//                     decoration: BoxDecoration(
//                         color: const Color(0xFFECEFBE),
//                         borderRadius: BorderRadius.circular(10.0)),
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'AED ',
//                           style: TextStyle(fontSize: 10),
//                         ),
//                         Text(
//                           '34.00',
//                           style: TextStyle(fontSize: 12),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             )
//             //  Divider(),
//           ],
//         );
//       },
//       separatorBuilder: (BuildContext context, int index) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 15.0, right: 10),
//           child: Divider(
//             color: Colors.grey.shade300,
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodaysDeliveryDetailsList extends StatelessWidget {
  const TodaysDeliveryDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '40047977',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff6E62A4),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Divella Farfalle farfalle pasta Offer pack',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8.h,
                            ),
                            Column(
                              children: [
                                const Text('CS'),
                                SizedBox(
                                  height: 5.h,
                                ),
                                const Text('CS'),
                              ],
                            ),
                            SizedBox(
                              width: 30.h,
                            ),
                            Column(
                              children: [
                                const Text('1'),
                                SizedBox(
                                  height: 5.h,
                                ),
                                const Text('1'),
                              ],
                            ),
                            SizedBox(
                              width: 45.h,
                            ),
                            Column(
                              children: [
                                const Text('1'),
                                SizedBox(
                                  height: 5.h,
                                ),
                                const Text('1'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              // width: 50.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffECEFBE),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'AED 34.00',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
              itemCount: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Sub Total'), Text('1800.00')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('VAT'), Text('90.00')],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
