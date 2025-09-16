import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/state/bloc/activityreviewheader/activity_review_header_bloc.dart';
import 'package:customer_connect/feature/view/activityreview/dailyactivityreviewscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ActivityReviewHeaderScreen extends StatefulWidget {
  const ActivityReviewHeaderScreen({super.key});

  @override
  State<ActivityReviewHeaderScreen> createState() =>
      _ActivityReviewHeaderScreenState();
}

List<ApprovalStatusFilterModel> activtyreview = [
  ApprovalStatusFilterModel(statusName: "All Route Types", mode: 'AL'),
  ApprovalStatusFilterModel(statusName: "Sales", mode: 'SL'),
  ApprovalStatusFilterModel(statusName: "Order", mode: 'OR'),
  ApprovalStatusFilterModel(statusName: "AR", mode: 'AR'),
  ApprovalStatusFilterModel(statusName: "Order & AR", mode: 'OA'),
  ApprovalStatusFilterModel(statusName: "Delivery", mode: 'DL'),
  ApprovalStatusFilterModel(statusName: "Merchandising", mode: 'MER'),
  ApprovalStatusFilterModel(statusName: "Field Service", mode: 'FS'),
];
String selectedActivityFilter = 'AL';
TextEditingController activityreviewHeaderctrl = TextEditingController();
Timer? debounce;

class _ActivityReviewHeaderScreenState
    extends State<ActivityReviewHeaderScreen> {
  @override
  void initState() {
    selectedActivityFilter = 'AL';
    activityreviewHeaderctrl.clear();
    activtyreview = [
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "All Route Types"
              : "جميع أنواع الطرق",
          mode: 'AL'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en' ? "Sales" : "مبيعات",
          mode: 'SL'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == "en" ? "Order" : "طلب",
          mode: 'OR'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en' ? "AR" : "AR",
          mode: 'AR'),
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Order & AR" : "طلب & AR",
          mode: 'OA'),
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Delivery" : "توصيل",
          mode: 'DL'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Merchandising"
              : "عمل في التجارة",
          mode: 'MER'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Field Service"
              : "الخدمة الميدانية",
          mode: 'FS'),
    ];
    context
        .read<ActivityReviewHeaderBloc>()
        .add(const ClearActivityReviewHeaderEvent());

    context.read<ActivityReviewHeaderBloc>().add(
        const GetActivityReviewHeadersEvent(rotTyp: 'AL ', searchQuery: ''));
    super.initState();
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
            context
                .read<ActivityReviewHeaderBloc>()
                .add(const ClearActivityReviewHeaderEvent());

            context.read<ActivityReviewHeaderBloc>().add(
                const GetActivityReviewHeadersEvent(
                    rotTyp: 'AL ', searchQuery: ''));
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color(0xff00000050),
                          blurRadius: 0.4,
                          spreadRadius: 0.4)
                    ]),
                child: TextFormField(
                  controller: activityreviewHeaderctrl,
                  onChanged: (value) {
                    debounce = Timer(
                        const Duration(
                          milliseconds: 200,
                        ), () async {
                      context.read<ActivityReviewHeaderBloc>().add(
                          GetActivityReviewHeadersEvent(
                              rotTyp: selectedActivityFilter,
                              searchQuery: value.trim()));
                    });
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      suffix: InkWell(
                        onTap: () {
                          activityreviewHeaderctrl.clear();
                          context
                              .read<ActivityReviewHeaderBloc>()
                              .add(const ClearActivityReviewHeaderEvent());

                          context.read<ActivityReviewHeaderBloc>().add(
                              GetActivityReviewHeadersEvent(
                                  rotTyp: selectedActivityFilter,
                                  searchQuery: ''));
                        },
                        child: const Icon(
                          Icons.close,
                          size: 14,
                        ),
                      ),
                      hintText: "${AppLocalizations.of(context)!.searchHere}..",
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      isDense: true,
                      counterText: "",
                      contentPadding: const EdgeInsets.all(15.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none)),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  maxLength: 20,
                  // controller: activityreviewHeaderctrl,
                )),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width - 20,
              child: DropdownButtonFormField(
                elevation: 0,
                value: activtyreview[0].mode,
                dropdownColor: Colors.white,
                style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  border: /* InputBorder
                              .none  */
                      OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
                items: activtyreview
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.mode,
                        child: Text(e.statusName),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  selectedActivityFilter = value ?? 'AL';
                  context
                      .read<ActivityReviewHeaderBloc>()
                      .add(const ClearActivityReviewHeaderEvent());

                  context.read<ActivityReviewHeaderBloc>().add(
                      GetActivityReviewHeadersEvent(
                          rotTyp: value ?? 'AL',
                          searchQuery: activityreviewHeaderctrl.text));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocBuilder<ActivityReviewHeaderBloc,
                ActivityReviewHeaderState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.pendingReview,
                      style: countHeading(),
                    ),
                    Text(
                      state.when(
                        getActivityRevewHeadersState: (headers) =>
                            headers == null ? '0' : headers.length.toString(),
                        actvityReviewHeaderFailedState: () => '0',
                      ),
                      style: countHeading(),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<ActivityReviewHeaderBloc,
                  ActivityReviewHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getActivityRevewHeadersState: (headers) => headers == null
                        ? ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ShimmerContainers(
                                height: 60.h, width: double.infinity),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: 10)
                        : headers.isEmpty
                            ? Center(
                                child: Text(
                                  AppLocalizations.of(context)!.noDataAvailable,
                                ),
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount: headers.length,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        Platform.isIOS
                                            ? CupertinoPageRoute(
                                                builder: (context) =>
                                                    DailyActivityReviewDetailScreen(
                                                        header: headers[index]))
                                            : MaterialPageRoute(
                                                builder: (context) =>
                                                    DailyActivityReviewDetailScreen(
                                                      header: headers[index],
                                                    )));
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 50.h,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: const Color(0xfffee8e0),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Expanded(
                                              child: Row(
                                            children: [
                                              Expanded(
                                                  child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${headers[index].rotName}',
                                                    style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          '${headers[index].usrName}',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          '${AppLocalizations.of(context)!.start}: ${headers[index].startTime} | ${AppLocalizations.of(context)!.end} : ${headers[index].endTime}',
                                                          style: kfontstyle(
                                                              fontSize: 9.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    "${selectedLocale?.languageCode == "en" ? headers[index].rotType ?? '' : headers[index].rotArType ?? ''}  ${AppLocalizations.of(context)!.route}",
                                                    //'${headers[index].rotType} ${AppLocalizations.of(context)!.route}',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ))
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
                    actvityReviewHeaderFailedState: () => Center(
                      child:
                          Text(AppLocalizations.of(context)!.noDataAvailable),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
