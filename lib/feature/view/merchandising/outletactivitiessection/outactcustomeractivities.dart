import 'dart:async';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/merchandisingstatusfiltermodel/merchandisingstatusfiltermodel.dart';
import 'package:customer_connect/feature/state/bloc/merchcustomeractivities/merch_customer_activities_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/merchandising.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OutActCustomerActivityScreen extends StatefulWidget {
  const OutActCustomerActivityScreen({
    super.key,
  });

  @override
  State<OutActCustomerActivityScreen> createState() =>
      _PriceChangeHeaderState();
}

List<MerchandisingStatusFilterModel> filterCusActivity = [
  MerchandisingStatusFilterModel(statusName: "All", mode: 'AL'),
  MerchandisingStatusFilterModel(statusName: "Completed", mode: 'C'),
  MerchandisingStatusFilterModel(statusName: "Pending", mode: 'P'),
];

Timer? debounce;
TextEditingController _cusActivitySearchCtrl = TextEditingController();
String selectedcusActivityMode = 'AL';

class _PriceChangeHeaderState extends State<OutActCustomerActivityScreen> {
  @override
  void initState() {
    selectedcusActivityMode = 'AL';
    _cusActivitySearchCtrl.clear();
    filterCusActivity = [
      MerchandisingStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en' ? "All" : "اكل شئ",
          mode: 'AL'),
      MerchandisingStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Completed" : "مكتمل",
          mode: 'C'),
      MerchandisingStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == "en" ? "Pending" : "قيد الانتظار",
          mode: 'P'),
    ];
    context
        .read<MerchCustomerActivitiesBloc>()
        .add(const ClearMerchCustomerActivitiesData());
    context.read<MerchCustomerActivitiesBloc>().add(
        GetMerchCustomerActivitiesData(
            fromDate: fromdateController.text,
            toDate: todateController.text,
            status: 'AL',
            searchQuery: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          AppLocalizations.of(context)!.customerActivities,
          //"Customer Activity",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: _cusActivitySearchCtrl,
                  style: kfontstyle(
                      fontSize: 12.sp, color: const Color(0xff413434)),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: AppLocalizations.of(context)!.searchHere,
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (_cusActivitySearchCtrl.text.isNotEmpty) {
                                  _cusActivitySearchCtrl.clear();

                                  context.read<MerchCustomerActivitiesBloc>().add(
                                      const ClearMerchCustomerActivitiesData());
                                  context
                                      .read<MerchCustomerActivitiesBloc>()
                                      .add(GetMerchCustomerActivitiesData(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                          status: selectedcusActivityMode,
                                          searchQuery: ''));
                                }
                              },
                              icon: Icon(
                                Icons.clear,
                                size: 10.sp,
                              )),
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 14.sp,
                    ),
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
                  onChanged: (value) {
                    debounce = Timer(
                        const Duration(
                          milliseconds: 500,
                        ), () async {
                      context.read<MerchCustomerActivitiesBloc>().add(
                          GetMerchCustomerActivitiesData(
                              fromDate: fromdateController.text,
                              toDate: todateController.text,
                              status: selectedcusActivityMode,
                              searchQuery: value.trim()));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonFormField(
                  elevation: 0,
                  value: filterCusActivity[0].mode,
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
                  items: filterCusActivity
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    selectedcusActivityMode = value!;
                    context
                        .read<MerchCustomerActivitiesBloc>()
                        .add(const ClearMerchCustomerActivitiesData());
                    context.read<MerchCustomerActivitiesBloc>().add(
                        GetMerchCustomerActivitiesData(
                            fromDate: fromdateController.text,
                            toDate: todateController.text,
                            status: value,
                            searchQuery: _cusActivitySearchCtrl.text));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: BlocBuilder<MerchCustomerActivitiesBloc,
                  MerchCustomerActivitiesState>(
                builder: (context, state) {
                  return state.when(
                      getMerchCustomerActivitiesDataState: (activityData) =>
                          activityData == null
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: ListView.separated(
                                      //physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) =>
                                          ShimmerContainers(
                                              height: 60.h,
                                              width: double.infinity),
                                      separatorBuilder: (context, index) =>
                                          Divider(
                                            color: Colors.grey[300],
                                          ),
                                      itemCount: 10),
                                )
                              : activityData.isEmpty
                                  ? Center(
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .noDataAvailable,
                                      ),
                                    )
                                  : Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                selectedcusActivityMode == 'AL'
                                                    ? AppLocalizations.of(
                                                            context)!
                                                        .allActivities
                                                    : selectedcusActivityMode ==
                                                            'C'
                                                        ? AppLocalizations.of(
                                                                context)!
                                                            .completedActivities
                                                        : AppLocalizations.of(
                                                                context)!
                                                            .pendingActivities,
                                                style: countHeading(),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5.0),
                                                child: Text(
                                                  activityData.length
                                                      .toString(),
                                                  style: countHeading(),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: ListView.separated(
                                              itemBuilder:
                                                  (context, index) => Row(
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xfffee8e0),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20)),
                                                          ),
                                                          SizedBox(
                                                            width: 10.w,
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    selectedLocale?.languageCode ==
                                                                            "en"
                                                                        ? activityData[index].actName ??
                                                                            ''
                                                                        : activityData[index].actArName ??
                                                                            '',
                                                                    // "${activityData[index].cusCode}-${activityData[index].actName}",
                                                                    style:
                                                                        blueTextStyle()),
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      "${activityData[index].cusCode}-",
                                                                      style:
                                                                          kfontstyle(
                                                                        fontSize:
                                                                            11.sp,
                                                                        color: const Color(
                                                                            0xff2C6B9E),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          overflow: TextOverflow.ellipsis,
                                                                          selectedLocale?.languageCode == "en" ? activityData[index].cusName ?? '' : activityData[index].cusrName ?? '',
                                                                          // "${activityData[index].cusName}",
                                                                          style: subTitleTextStyle()),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  "${AppLocalizations.of(context)!.dueon}: ${activityData[index].startDate} | ${AppLocalizations.of(context)!.completedon}: ${activityData[index].endDate}4",
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          9.sp,
                                                                      color: Colors
                                                                          .grey),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            // height: 10.h,
                                                            // width: 10.h,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: activityData[
                                                                              index]
                                                                          .status! ==
                                                                      "Pending"
                                                                  // AppLocalizations.of(context)!.pending
                                                                  ? const Color(
                                                                      0xfff7f4e2)
                                                                  : const Color(
                                                                      0xffe3f7e2),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                10,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          5,
                                                                      vertical:
                                                                          3),
                                                              child: Text(
                                                                selectedLocale?.languageCode ==
                                                                        "en"
                                                                    ? activityData[index]
                                                                            .status ??
                                                                        ''
                                                                    : activityData[index]
                                                                            .arstatus ??
                                                                        '',
                                                                style: kfontstyle(
                                                                    fontSize:
                                                                        8.sp),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                              separatorBuilder:
                                                  (context, index) => Divider(
                                                        color: Colors.grey[300],
                                                      ),
                                              itemCount: activityData.length),
                                        ))
                                      ],
                                    ),
                      getMerchCustomerActivitiesDataFailed: () => Center(
                            child: Text(
                              AppLocalizations.of(context)!.noDataAvailable,
                            ),
                          ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
