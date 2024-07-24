import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/widgets.dart';
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
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
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
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                child: Row(
                  children: [
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(243, 244, 242, 100),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Total Cash",
                              style: kfontstyle(fontSize: 8.sp),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2, left: 10),
                            child: Text(
                              "7,300.00",
                              style: kfontstyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 5, top: 2),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hard Cash",
                                    style: kfontstyle(fontSize: 10.sp),
                                  ),
                                  Text("3,800.00",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, right: 5),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Online Payment",
                                    style: kfontstyle(fontSize: 10.sp),
                                  ),
                                  Text("1,000.00",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, right: 5),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "POS",
                                    style: kfontstyle(fontSize: 10.sp),
                                  ),
                                  Text("2,500.00",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 180,
                        //width: MediaQuery.of(context).size.width/3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfff3fbeb)
                            // color: const Color.fromARGB(255, 207, 243, 209)
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Text(
                                "Collected",
                                style: kfontstyle(fontSize: 8.sp),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(
                                "7,000.00",
                                style: kfontstyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text("3,800.00",
                                  style: kfontstyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text("1,000.00",
                                  style: kfontstyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text("2,500.00",
                                  style: kfontstyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 180,
                        //width: MediaQuery.of(context).size.width/3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xfffef2f2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Text(
                                "Variance",
                                style: kfontstyle(fontSize: 8.sp),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(
                                "300.00",
                                style: kfontstyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text("300.00",
                                  style: kfontstyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text("00.00",
                                  style: kfontstyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text("00.00",
                                  style: kfontstyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Variance Limit',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 137, 10, 3),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      )),
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
                  Text('200.00',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 137, 10, 3),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 227, 225, 225),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                //SizedBox(width: 05,),
                Text(
                  "Total Checks",
                  style: countHeading(),
                ),
                Text(
                  "4/1200.00",
                  style: countHeading(),
                ),
              ]),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        // shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 237, 194, 227),
                                            child: Center(
                                              child: Text(
                                                "${index}",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 200.w,
                                                  child: Text(
                                                    "6735278782",
                                                    //'${spHeader[index].prhName}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                    style: kfontstyle(
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Emirates MBD,Abu Dhabi",
                                                  // '${spHeader[index].startDate} To ${spHeader[index].endDate}',
                                                  style: subTextStyle(),
                                                ),
                                                Text(
                                                  "16 May 2024",
                                                  //'${spHeader[index].prhCode}',
                                                  style: subTextStyle(),
                                                ),
                                                Text(
                                                  "199521 - Carrefour Hypermarket",
                                                  //'${spHeader[index].prhCode}',
                                                  style: subTextStyle(),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            '120.00',
                                            style: TextStyle(fontSize: 10.sp),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        const Text(
                                          "AR",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 0, top: 0
                                    // top: 10,bottom: 10
                                    ),
                                child: Divider(
                                  color: Colors.grey.shade300,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(width: ,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.red.shade300,
                    onPressed: () {},
                    child: const Text("Reject"))),
            const SizedBox(
              width: 5,
            ),
            Expanded(
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.green.shade300,
                    onPressed: () {},
                    child: const Text("Approve")))
          ],
        ),
      ),
    );
  }
}
