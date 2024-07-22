import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettlementApprovalDetailScreen extends StatefulWidget {
  const SettlementApprovalDetailScreen({super.key});

  @override
  State<SettlementApprovalDetailScreen> createState() =>
      _SettlementApprovalDetailScreenState();
}

class _SettlementApprovalDetailScreenState
    extends State<SettlementApprovalDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        // leading: SizedBox(
        //   height: 05,
        //   width: 04,
        //   child: SvgPicture.asset("assets/svg/path.svg",height: 60,fit: BoxFit.scaleDown,),
        // ),
        title: Text(
          "Settlement Approval Detail",
          style: appHeading(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Column(
              children: [
                Row(
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
                        child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tfsh003 - RTL route 03',
                              style: kfontstyle(
                                fontSize: 12.sp,
                                color: const Color(0xff2C6B9E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    'Tfsh03U03 - Fayis M ',
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    '31 May 2024 | 10:35',
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Sales Route',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.grey),
                            ),
                          ],
                        ))
                      ],
                    )),
                    /* Container(
                          height: 55.h,
                          width: 1.w,
                          color: Colors.grey.shade300,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: const CheckboxThemeData(
                                side: BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),
                            child: Checkbox(
                              activeColor: Colors.green.shade300,
                              checkColor: Colors.white,
                              value: _isCheckedList[index],
                              onChanged: (bool? value) {
                                setState(() {
                                  _isCheckedList[index] = value!;
                                });
                              },
                            ),
                          ),
                        ), */
                  ],
                ),
                Divider(
                  color: Colors.grey[300],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cash Invoices  ',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    DottedLine(
                      dashColor: Colors.grey.shade300,
                    )
                  ],
                )),
                Text(
                  ' 200.00',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'AR Collection Cash ',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    DottedLine(
                      dashColor: Colors.grey.shade300,
                    )
                  ],
                )),
                Text(
                  ' 385.00',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Advance Collection Cash  ',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    DottedLine(
                      dashColor: Colors.grey.shade300,
                    )
                  ],
                )),
                Text(
                  ' 200.00',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Inventory Variance - Debit Note  ',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    DottedLine(
                      dashColor: Colors.grey.shade300,
                    )
                  ],
                )),
                Text(
                  ' 200.00',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cumulative Variance  ',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    DottedLine(
                      dashColor: Colors.grey.shade300,
                    )
                  ],
                )),
                Text(
                  ' 200.00',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Petty Cash ',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    DottedLine(
                      dashColor: Colors.grey.shade300,
                    )
                  ],
                )),
                Text(
                  ' 200.00',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cash  ',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    DottedLine(
                      dashColor: Colors.grey.shade300,
                    )
                  ],
                )),
                Text(
                  'AED 7,300.00',
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
