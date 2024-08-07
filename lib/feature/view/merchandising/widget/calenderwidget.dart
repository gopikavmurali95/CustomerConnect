import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/merchcusactcount/merch_cus_act_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/merchcusservicecount/merch_cus_service_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/merchdisplaycount/merchdisplaycount_bloc.dart';
import 'package:customer_connect/feature/state/bloc/merchsurveycount/merch_survey_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/merchtaskcount/merch_task_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/outofstockcount/outofstockcount_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/merchandising.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  Timer? debounce;
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
                                      DateFormat('yyyy-MM-dd').format(value);
                                  setState(() {});
                                  debounce = Timer(
                                      const Duration(
                                        milliseconds: 300,
                                      ), () async {
                                    // log("datesss ${fromdateController.text}---${widget.toDateController.text}");
                                    context
                                        .read<OutofstockcountBloc>()
                                        .add(GetOutOfStockCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchTaskCountBloc>()
                                        .add(GetTaskCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchSurveyCountBloc>()
                                        .add(GetSurveyCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchdisplaycountBloc>()
                                        .add(GetDisplayCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchCusActCountBloc>()
                                        .add(GetCusActCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchCusServiceCountBloc>()
                                        .add(GetCusserviceCountEvent(
                                          fromdate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                  });
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
                                      DateFormat('yyyy-MM-dd').format(value);
                                  setState(() {});

                                  debounce = Timer(
                                      const Duration(
                                        milliseconds: 300,
                                      ), () async {
                                    context
                                        .read<OutofstockcountBloc>()
                                        .add(GetOutOfStockCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchTaskCountBloc>()
                                        .add(GetTaskCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchSurveyCountBloc>()
                                        .add(GetSurveyCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchdisplaycountBloc>()
                                        .add(GetDisplayCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchCusActCountBloc>()
                                        .add(GetCusActCountEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                    context
                                        .read<MerchCusServiceCountBloc>()
                                        .add(GetCusserviceCountEvent(
                                          fromdate: fromdateController.text,
                                          toDate: todateController.text,
                                        ));
                                  });
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
