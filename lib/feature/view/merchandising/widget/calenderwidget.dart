import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class MerchandisingCalender extends StatefulWidget {
  final TextEditingController fromDateController;
  final TextEditingController toDateController;
  const MerchandisingCalender(
      {super.key,
      required this.fromDateController,
      required this.toDateController});

  @override
  State<MerchandisingCalender> createState() => _ReturnInvoiceCalenderState();
}

class _ReturnInvoiceCalenderState extends State<MerchandisingCalender> {
  late DateTime fromDate;
  late DateTime toDate;
  TextEditingController fromDateController = TextEditingController(
      text: DateFormat('dd-MM-yyyy')
          .format(DateTime.now().subtract(const Duration(days: 30))));
  TextEditingController toDateController = TextEditingController(
      text: DateFormat('dd-MM-yyyy').format(DateTime.now()));

  @override
  void initState() {
    super.initState();
    fromDate = DateTime.now();
    toDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () async {
              final selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2025),
              );

              if (selectedDate != null && selectedDate != fromDate) {
                setState(() {
                  fromDate = selectedDate;
                  fromDateController.text =
                      DateFormat('dd-MM-yyyy').format(selectedDate);
                });
              }
            },
            child: Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1.5,
                          blurRadius: 2)
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'From',
                        style: kfontstyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '| ',
                        style: kfontstyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[300],
                        ),
                      ),
                      Text(
                        fromDateController.text,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SvgPicture.asset(
                        'assets/svg/calendar.svg',
                        height: 14.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () async {
              final selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2025),
              );

              if (selectedDate != null && selectedDate != fromDate) {
                setState(() {
                  toDate = selectedDate;
                  widget.fromDateController.text =
                      DateFormat('dd-MM-yyyy').format(selectedDate);
                });
              }
            },
            child: Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1.5,
                          blurRadius: 2)
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'To',
                        style: kfontstyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '| ',
                        style: kfontstyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[300],
                        ),
                      ),
                      Text(
                        toDateController.text,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SvgPicture.asset(
                        'assets/svg/calendar.svg',
                        height: 14.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // Expanded(
        //   flex: 4,
        //   child: GestureDetector(
        //     onTap: () async {
        //       final selectedDate = await showDatePicker(
        //         context: context,
        //         initialDate: DateTime.now(),
        //         firstDate: DateTime(2020),
        //         lastDate: DateTime.now(),
        //       );

        //       if (selectedDate != null && selectedDate != toDate) {
        //         setState(() {
        //           toDate = selectedDate;
        //           toDateController.text =
        //               DateFormat('dd/MM/yyyy').format(selectedDate);
        //         });
        //       }
        //     },
        //     child: Flexible(
        //       flex: 2,
        //       fit: FlexFit.tight,
        //       child: Container(
        //         height: 30.h,
        //         decoration: BoxDecoration(
        //             color: Colors.white,
        //             border: Border.all(color: Colors.white.withOpacity(0.4)),
        //             borderRadius: BorderRadius.circular(10.0),
        //             boxShadow: [
        //               BoxShadow(
        //                   color: Colors.grey.shade200,
        //                   spreadRadius: 1.5,
        //                   blurRadius: 2)
        //             ]),
        //         child: Padding(
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Text(
        //                 'To',
        //                 style: kfontstyle(
        //                   fontSize: 10.sp,
        //                   fontWeight: FontWeight.w400,
        //                   color: Colors.grey,
        //                 ),
        //               ),
        //               Text(
        //                 '| ',
        //                 style: kfontstyle(
        //                   fontSize: 18.sp,
        //                   fontWeight: FontWeight.w400,
        //                   color: Colors.grey[300],
        //                 ),
        //               ),

        //               //SizedBox(width: 5.w),
        //               Text(
        //                 toDateController.text,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                   fontSize: 12.sp,
        //                   color: Colors.grey.withOpacity(0.9),
        //                 ),
        //               ),
        //               SizedBox(width: 10.w),
        //               SvgPicture.asset(
        //                 'assets/svg/calendar.svg',
        //                 height: 14.sp,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // SizedBox(width: 10.w),
      ],
    );
  }
}
