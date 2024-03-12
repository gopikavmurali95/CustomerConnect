import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ARDetailInvoiceWidget extends StatelessWidget {
  const ARDetailInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30.h,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xfff5f5f5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Invoice No.',
                  style: kfontstyle(fontSize: 12.sp, color: Colors.grey),
                ),
                Text(
                  'Date',
                  style: kfontstyle(fontSize: 12.sp, color: Colors.grey),
                ),
                Text(
                  'Inv Amt',
                  style: kfontstyle(fontSize: 12.sp, color: Colors.grey),
                ),
                Text(
                  'Alct Amt',
                  style: kfontstyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1234$index',
                            style: kfontstyle(
                                fontSize: 12.sp, color: Colors.black),
                          ),
                          Text(
                            '1 jan 21',
                            style: kfontstyle(
                                fontSize: 12.sp, color: Colors.black),
                          ),
                          Text(
                            '120',
                            style: kfontstyle(
                                fontSize: 12.sp, color: Colors.black),
                          ),
                          Text(
                            '15',
                            style: kfontstyle(
                                fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey[300],
                      )
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(),
            itemCount: 3)
      ],
    );
  }
}
