import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/activity_review_header_model/activity_review_header_model.dart';
import 'package:customer_connect/feature/state/bloc/activityreviewdetail/activity_review_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/activityreviewtarget/activity_review_targets_bloc.dart';
import 'package:customer_connect/feature/state/bloc/activitysalesdata/activity_review_sales_data_bloc.dart';
import 'package:customer_connect/feature/state/cubit/dailyactivityexpansion/daily_activity_expansion_cubit.dart';
import 'package:customer_connect/feature/view/activityreview/widgets/dailytargetcontainer.dart';
import 'package:customer_connect/feature/view/activityreview/widgets/todayssaleswidget.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DailyActivityReviewDetailScreen extends StatefulWidget {
  final ActivityReviewHeaderModel header;
  const DailyActivityReviewDetailScreen({super.key, required this.header});

  @override
  State<DailyActivityReviewDetailScreen> createState() =>
      _DailyActivityReviewDetailScreenState();
}

class _DailyActivityReviewDetailScreenState
    extends State<DailyActivityReviewDetailScreen> {
  @override
  void initState() {
    callActivityReviewDetailBlocs();
    super.initState();
  }

  callActivityReviewDetailBlocs() async {
    context
        .read<ActivityReviewTargetsBloc>()
        .add(const ClearActivitytargetEvent());
    context
        .read<ActivityReviewTargetsBloc>()
        .add(GetActivityTargetEvent(udpID: widget.header.udpId ?? ''));

    context
        .read<ActivityReviewSalesDataBloc>()
        .add(const ClearActivitySalesEvent());
    context
        .read<ActivityReviewSalesDataBloc>()
        .add(GetActivitySalesEvent(udpID: widget.header.udpId ?? ''));

    context
        .read<ActivityReviewDetailBloc>()
        .add(const ClearActivityReviewDetailEvent());

    context
        .read<ActivityReviewDetailBloc>()
        .add(GetActivityReviewDetailEvent(udpID: widget.header.udpId ?? ''));

    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          AppLocalizations.of(context)!.dailyActivityReview,
          // "Daily Activity Reviews",
          style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
      body: RefreshIndicator.adaptive(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: 60,
        onRefresh: () => callActivityReviewDetailBlocs(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50.h,
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
                                  widget.header.rotName ?? '',
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
                                        widget.header.usrName ?? '',
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
                                         "${AppLocalizations.of(context)!.start}${widget.header.startTime} |${AppLocalizations.of(context)!.end}: ${widget.header.endTime}",
                                       // 'Start: ${widget.header.startTime} | End ${widget.header.endTime}',
                                        style: kfontstyle(
                                            fontSize: 9.sp,
                                            color: const Color(0xff413434)),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "${AppLocalizations.of(context)!.duration}:  ${widget.header.duration}",
                                 // 'Duration: ${widget.header.duration}  ',
                                  style: kfontstyle(
                                      fontSize: 10.sp, color: Colors.grey),
                                ),
                              ],
                            ))
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              const DailyTargetContainer(),
              SizedBox(
                height: 8.h,
              ),
              const TodaysSalesWidget(),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: BlocBuilder<ActivityReviewDetailBloc,
                    ActivityReviewDetailState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.visits,
                          style: countHeading(),
                        ),
                        Text(
                          state.when(
                            getActivityReviewDetailState: (details) =>
                                details != null
                                    ? details.length.toString()
                                    : '0',
                            activityReviewDetailFailedState: () => '0',
                          ),
                          style: countHeading(),
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: BlocBuilder<DailyActivityExpansionCubit,
                    DailyActivityExpansionState>(
                  builder: (context, state) {
                    return BlocConsumer<ActivityReviewDetailBloc,
                        ActivityReviewDetailState>(
                      listener: (context, state) {
                        state.when(
                          getActivityReviewDetailState: (details) {
                            if (details != null) {
                              context
                                  .read<DailyActivityExpansionCubit>()
                                  .expandTile(details.length, -1, false);
                            }
                          },
                          activityReviewDetailFailedState: () {},
                        );
                      },
                      builder: (context, detail) {
                        return detail.when(
                          getActivityReviewDetailState: (details) =>
                              details == null
                                  ? ListView.separated(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) =>
                                          ShimmerContainers(
                                              height: 50.h,
                                              width: double.infinity),
                                      separatorBuilder: (context, index) =>
                                          Divider(
                                            color: Colors.grey[300],
                                          ),
                                      itemCount: 10)
                                  : ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: details.length,
                                      itemBuilder: (context, index) =>
                                          GestureDetector(
                                        onTap: () {
                                          bool isAlreadyExpanded =
                                              state.expandedList[index];

                                          context
                                              .read<
                                                  DailyActivityExpansionCubit>()
                                              .expandTile(details.length, index,
                                                  isAlreadyExpanded);
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AnimatedSize(
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.easeInOut,
                                                  reverseDuration:
                                                      const Duration(
                                                          milliseconds: 300),
                                                  child: Container(
                                                    height: state.expandedList[
                                                                index] ==
                                                            true
                                                        ? 125.h
                                                        : 40.h,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfffee8e0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Expanded(
                                                    child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                details[index]
                                                                        .cusName ??
                                                                    '',
                                                                style:
                                                                    kfontstyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: const Color(
                                                                      0xff2C6B9E),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                              "${AppLocalizations.of(context)!.start}:${details[index].startTime}|${AppLocalizations.of(context)!.end}:${details[index].endTime}",
                                                                     // 'Start: ${details[index].startTime} | End ${details[index].endTime}',
                                                                      style: kfontstyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color:
                                                                              const Color(0xff413434)),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                       "${AppLocalizations.of(context)!.duration}: ${details[index].duration}",
                                                                      //'Duration : ${details[index].duration}',
                                                                      style: kfontstyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color:
                                                                              const Color(0xff413434)),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              AnimatedSize(
                                                                duration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            300),
                                                                curve: Curves
                                                                    .easeInOut,
                                                                reverseDuration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            300),
                                                                child:
                                                                    Visibility(
                                                                  visible: state
                                                                          .expandedList[
                                                                      index],
                                                                  child: Column(
                                                                    children: [
                                                                      SizedBox(
                                                                        height:
                                                                            6.h,
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Flexible(
                                                                            flex:
                                                                                3,
                                                                            fit:
                                                                                FlexFit.tight,
                                                                            child:
                                                                                Container(
                                                                              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), color: Color.fromARGB(255, 219, 242, 222)),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(8.0),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.sales,
                                                                                      style: TextStyle(color: const Color(0xff6d9d6a), fontSize: 10.sp),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 5.h,
                                                                                    ),
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.cash,
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    Text(
                                                                                      details[index].salesCs ?? '0.00',
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 5.h,
                                                                                    ),
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.credit,
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    Text(
                                                                                      details[index].saleCr ?? '0.00',
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                6.w,
                                                                          ),
                                                                          Flexible(
                                                                            flex:
                                                                                3,
                                                                            fit:
                                                                                FlexFit.tight,
                                                                            child:
                                                                                Container(
                                                                              decoration: const BoxDecoration(
                                                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                                                                color: Color(0xfffbf4f4),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(8.0),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.returns,
                                                                                      style: TextStyle(color: const Color(0xffc78080), fontSize: 10.sp),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 5.h,
                                                                                    ),
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.cash,
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    Text(
                                                                                      details[index].returnCs ?? '0.00',
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 5.h,
                                                                                    ),
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.credit,
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    Text(
                                                                                      details[index].returnCr ?? '0.00',
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                6.w,
                                                                          ),
                                                                          Flexible(
                                                                            flex:
                                                                                3,
                                                                            fit:
                                                                                FlexFit.tight,
                                                                            child:
                                                                                Container(
                                                                              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), color: Color(0xfff4f8fb)),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(8.0),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.collection,
                                                                                      style: TextStyle(color: const Color(0xff9fadd2), fontSize: 10.sp),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 5.h,
                                                                                    ),
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.cash,
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    Text(
                                                                                      details[index].collectCs ?? '',
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 5.h,
                                                                                    ),
                                                                                    Text(
                                                                                      "${AppLocalizations.of(context)!.cheque} & ${AppLocalizations.of(context)!.online}",

                                                                                      // 'Cheque & online',
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    ),
                                                                                    Text(
                                                                                      details[index].collectCr ?? '',
                                                                                      style: TextStyle(fontSize: 9.sp, color: Colors.black54),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                              ],
                                            ),
                                            Divider(
                                              color: Colors.grey[300],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                          activityReviewDetailFailedState: () => Center(
                            child: Text(
                              AppLocalizations.of(context)!.noDataAvailable,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
