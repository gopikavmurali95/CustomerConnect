import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 4,
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
              padding: const EdgeInsets.only(left: 8),
              child: InkWell(
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        color: Colors.white,
                        height: 250,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Done',
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: CupertinoDatePicker(
                                initialDateTime: DateTime(
                                  DateTime.now().year,
                                  DateTime.now().month,
                                  1,
                                ),
                                maximumDate: DateTime.now(),
                                onDateTimeChanged: (value) {
                                  widget.fromDateController.text =
                                      "${value.day}-${value.month}-${value.year}";

                                  /* context
                                                    .read<CusInsTrnCountBloc>()
                                                    .add(GettrnCountsEvent(
                                                        userId:
                                                            widget.user.usrId ??
                                                                '',
                                                        cusId: widget.customer
                                                                .cusId ??
                                                            '',
                                                        fDate: widget
                                                            .fromdatectrl.text,
                                                        toDate: widget
                                                            .todatectrl.text)); */
                                  setState(() {});
                                },
                                use24hFormat: true,
                                mode: CupertinoDatePickerMode.date,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'From ',
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
                    Expanded(
                      child: Text(
                        widget.fromDateController.text,
                        style: kfontstyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(
                        'assets/svg/calendar.svg',
                        height: 15.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Flexible(
          flex: 4,
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
              padding: const EdgeInsets.only(left: 8),
              child: InkWell(
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        color: Colors.white,
                        height: 250,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Done',
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: CupertinoDatePicker(
                                initialDateTime: DateTime.now(),
                                maximumDate: DateTime.now(),
                                onDateTimeChanged: (value) {
                                  widget.toDateController.text =
                                      "${value.day}-${value.month}-${value.year}";
                                  setState(() {});
                                },
                                use24hFormat: true,
                                mode: CupertinoDatePickerMode.date,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'To  ',
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
                    Expanded(
                      child: Text(
                        widget.toDateController.text,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(
                        'assets/svg/calendar.svg',
                        height: 15.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
