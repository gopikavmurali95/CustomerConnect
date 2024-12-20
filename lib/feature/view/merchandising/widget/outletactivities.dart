import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/merchcusactcount/merch_cus_act_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/merchdisplaycount/merchdisplaycount_bloc.dart';
import 'package:customer_connect/feature/state/bloc/merchsurveycount/merch_survey_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/merchtaskcount/merch_task_count_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/outletactivitiessection/outactcustomeractivities.dart';
import 'package:customer_connect/feature/view/merchandising/outletactivitiessection/outactdisplayagreementscreen.dart';
import 'package:customer_connect/feature/view/merchandising/outletactivitiessection/outactvtysurveyscreen.dart';
import 'package:customer_connect/feature/view/merchandising/outletactivitiessection/outactvtytaskscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutletAcivitiesWidget extends StatefulWidget {
  final TextEditingController fromdatecontroller;
  final TextEditingController todatecontroller;
  const OutletAcivitiesWidget(
      {super.key,
      required this.fromdatecontroller,
      required this.todatecontroller});

  @override
  State<OutletAcivitiesWidget> createState() => _OutletAcivitiesWidgetState();
}

class _OutletAcivitiesWidgetState extends State<OutletAcivitiesWidget> {
  @override
  void initState() {
    context.read<MerchTaskCountBloc>().add(const TaskCountClearEvent());
    context.read<MerchTaskCountBloc>().add(GetTaskCountEvent(
        fromDate: widget.fromdatecontroller.text,
        toDate: widget.todatecontroller.text));
    context.read<MerchSurveyCountBloc>().add(const SurveyCountClearEvent());
    context.read<MerchSurveyCountBloc>().add(GetSurveyCountEvent(
        fromDate: widget.fromdatecontroller.text,
        toDate: widget.todatecontroller.text));

    context.read<MerchCusActCountBloc>().add(const CusActCountClearEvent());
    context.read<MerchCusActCountBloc>().add(GetCusActCountEvent(
        fromDate: widget.fromdatecontroller.text,
        toDate: widget.todatecontroller.text));

    context.read<MerchdisplaycountBloc>().add(const DisplayCountClearEvent());
    context.read<MerchdisplaycountBloc>().add(GetDisplayCountEvent(
        fromDate: widget.fromdatecontroller.text,
        toDate: widget.todatecontroller.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    Platform.isIOS
                        ? CupertinoPageRoute(
                            builder: (context) =>
                                const OutletActivityTaskHeaderScreen())
                        : MaterialPageRoute(
                            builder: (context) =>
                                const OutletActivityTaskHeaderScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 1.5,
                              blurRadius: 2)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/task@2x.png',
                                height: 28,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppLocalizations.of(context)!.tasks,
                                  style: kfontstyle(
                                      fontSize: 9.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                ),
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
                                AppLocalizations.of(context)!.assignedTasks,
                                style: kfontstyle(
                                    fontSize: 8.sp,
                                    color: Colors.grey.shade600),
                              ),
                              BlocBuilder<MerchTaskCountBloc,
                                  MerchTaskCountState>(
                                builder: (context, state) {
                                  return state.when(
                                    getTaskCountState: (taskcount) =>
                                        taskcount == null
                                            ? Text(
                                                "0",
                                                style: countHeading(),
                                              )
                                            : Text(
                                                "${taskcount.assignedTasks}"),
                                    taskCountFailedState: () => Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  );
                                },
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
                                AppLocalizations.of(context)!.completedTasks,
                                style: kfontstyle(
                                    fontSize: 8.sp,
                                    color: Colors.grey.shade600),
                              ),
                              BlocBuilder<MerchTaskCountBloc,
                                  MerchTaskCountState>(
                                builder: (context, state) {
                                  return state.when(
                                    getTaskCountState: (taskcount) =>
                                        taskcount == null
                                            ? Text(
                                                "0",
                                                style: countHeading(),
                                              )
                                            : Text(
                                                "${taskcount.completedTasks}"),
                                    taskCountFailedState: () => Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    Platform.isIOS
                        ? CupertinoPageRoute(
                            builder: (context) =>
                                const OutActvitySurveyHeaderScreen())
                        : MaterialPageRoute(
                            builder: (context) =>
                                const OutActvitySurveyHeaderScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 1.5,
                              blurRadius: 2)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/survey@2x.png',
                                height: 28,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppLocalizations.of(context)!.survey,
                                  style: kfontstyle(
                                      fontSize: 9.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                ),
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
                                AppLocalizations.of(context)!.assignedSurveys,
                                style: kfontstyle(
                                    fontSize: 8.sp,
                                    color: Colors.grey.shade600),
                              ),
                              BlocBuilder<MerchSurveyCountBloc,
                                  MerchSurveyCountState>(
                                builder: (context, state) {
                                  return state.when(
                                    getSurveyCountState: (survey) =>
                                        survey == null
                                            ? Text(
                                                "0",
                                                style: countHeading(),
                                              )
                                            : Text("${survey.assignedSurvey}"),
                                    surveyCountFailedState: () => Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  );
                                },
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
                                AppLocalizations.of(context)!.completedSurveys,
                                style: kfontstyle(
                                    fontSize: 8.sp,
                                    color: Colors.grey.shade600),
                              ),
                              BlocBuilder<MerchSurveyCountBloc,
                                  MerchSurveyCountState>(
                                builder: (context, state) {
                                  return state.when(
                                    getSurveyCountState: (survey) =>
                                        survey == null
                                            ? Text(
                                                "0",
                                                style: countHeading(),
                                              )
                                            : Text("${survey.completedSurvey}"),
                                    surveyCountFailedState: () => Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    Platform.isIOS
                        ? CupertinoPageRoute(
                            builder: (context) =>
                                const OutActDisplayAgreementScreen())
                        : MaterialPageRoute(
                            builder: (context) =>
                                const OutActDisplayAgreementScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 1.5,
                              blurRadius: 2)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/displayagreement@2x.png',
                                height: 28,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .displayAgreement,
                                  style: kfontstyle(
                                      fontSize: 9.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                ),
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
                                AppLocalizations.of(context)!.newAgreements,
                                style: kfontstyle(
                                    fontSize: 8.sp,
                                    color: Colors.grey.shade600),
                              ),
                              BlocBuilder<MerchdisplaycountBloc,
                                  MerchdisplaycountState>(
                                builder: (context, state) {
                                  return state.when(
                                    getDisplayCountState: (discount) =>
                                        discount == null
                                            ? Text(
                                                "0",
                                                style: countHeading(),
                                              )
                                            : Text("${discount.neww}"),
                                    dispalyCountFailedState: () => Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  );
                                },
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
                                AppLocalizations.of(context)!.activeAgreements,
                                style: kfontstyle(
                                    fontSize: 8.sp,
                                    color: Colors.grey.shade600),
                              ),
                              BlocBuilder<MerchdisplaycountBloc,
                                  MerchdisplaycountState>(
                                builder: (context, state) {
                                  return state.when(
                                    getDisplayCountState: (discount) =>
                                        discount == null
                                            ? Text(
                                                "0",
                                                style: countHeading(),
                                              )
                                            : Text("${discount.active}"),
                                    dispalyCountFailedState: () => Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    Platform.isIOS
                        ? CupertinoPageRoute(
                            builder: (context) =>
                                const OutActCustomerActivityScreen())
                        : MaterialPageRoute(
                            builder: (context) =>
                                const OutActCustomerActivityScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 1.5,
                              blurRadius: 2)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/activity@2x.png',
                                height: 28,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .customerActivities,
                                  style: kfontstyle(
                                      fontSize: 9.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                ),
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
                                AppLocalizations.of(context)!.openActivities,
                                style: kfontstyle(
                                    fontSize: 8.sp,
                                    color: Colors.grey.shade600),
                              ),
                              BlocBuilder<MerchCusActCountBloc,
                                  MerchCusActCountState>(
                                builder: (context, state) {
                                  return state.when(
                                    getCusActCountState: (cuscount) =>
                                        cuscount == null
                                            ? Text(
                                                "0",
                                                style: countHeading(),
                                              )
                                            : Text("${cuscount.total}"),
                                    cusActCountFailedState: () => Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  );
                                },
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
                                AppLocalizations.of(context)!
                                    .completedActivities,
                                style: kfontstyle(
                                    fontSize: 8.sp,
                                    color: Colors.grey.shade600),
                              ),
                              BlocBuilder<MerchCusActCountBloc,
                                  MerchCusActCountState>(
                                builder: (context, state) {
                                  return state.when(
                                    getCusActCountState: (cuscount) =>
                                        cuscount == null
                                            ? Text(
                                                "0",
                                                style: countHeading(),
                                              )
                                            : Text("${cuscount.actionTaken}"),
                                    cusActCountFailedState: () => Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
