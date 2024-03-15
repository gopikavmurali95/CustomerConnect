import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.values[4],
              children: [
                Text(
                  'Invoice No.',
                  style: kfontstyle(fontSize: 10.sp, color: Colors.black),
                ),
                Text(
                  'Date',
                  style: kfontstyle(fontSize: 10.sp, color: Colors.black),
                ),
                Text(
                  'Inv Amt',
                  style: kfontstyle(fontSize: 10.sp, color: Colors.black),
                ),
                Text(
                  'Alct Amt',
                  style: kfontstyle(fontSize: 10.sp, color: Colors.black),
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
            itemBuilder: (context, index) => Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 6,
                            fit: FlexFit.tight,
                            child: Text(
                              '1234$index',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.black),
                            ),
                          ),
                          Flexible(
                            flex: 6,
                            fit: FlexFit.tight,
                            child: Text(
                              '1 jan 21',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.black),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            fit: FlexFit.tight,
                            child: Text(
                              '120',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.black),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              '15',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Divider(
                        color: Colors.grey[300],
                      ),
                    )
                  ],
                ),
            separatorBuilder: (context, index) => const SizedBox(),
            itemCount: 3)
      ],
    );
  }
}
