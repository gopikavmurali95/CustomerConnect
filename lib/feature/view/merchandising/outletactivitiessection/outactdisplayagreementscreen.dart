// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/merchandisingstatusfiltermodel/merchandisingstatusfiltermodel.dart';
import 'package:customer_connect/feature/state/bloc/merchdisplayagreement/merch_display_agreement_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/merchandising.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutActDisplayAgreementScreen extends StatefulWidget {
  const OutActDisplayAgreementScreen({
    super.key,
  });

  @override
  State<OutActDisplayAgreementScreen> createState() =>
      _PriceChangeHeaderState();
}

List<MerchandisingStatusFilterModel> filterDisplayAgreement = [
  MerchandisingStatusFilterModel(statusName: "All", mode: 'AL'),
  MerchandisingStatusFilterModel(statusName: "New", mode: 'NW'),
  MerchandisingStatusFilterModel(statusName: "Approved", mode: 'AP'),
  MerchandisingStatusFilterModel(statusName: "Active", mode: 'AC'),
];

Timer? debounce;
TextEditingController _dispAgreementSearchCtrl = TextEditingController();
String selecteddispAgreementMode = 'AL';

class _PriceChangeHeaderState extends State<OutActDisplayAgreementScreen> {
  @override
  void initState() {
    selecteddispAgreementMode = 'AL';
    _dispAgreementSearchCtrl.clear();
    filterDisplayAgreement = [
      MerchandisingStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en' ? "All" : "اكل شئ",
          mode: 'AL'),
      MerchandisingStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en' ? "New" : "جديد",
          mode: 'NW'),
      MerchandisingStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == "en" ? "Approved" : "مصدق عليه",
          mode: 'AP'),
      MerchandisingStatusFilterModel(
          statusName: selectedLocale?.languageCode == "en" ? "Active" : "نشيط",
          mode: 'AC'),
    ];
    context
        .read<MerchDisplayAgreementBloc>()
        .add(const ClearMerchDisplayAgreementData());
    context.read<MerchDisplayAgreementBloc>().add(GetMerchDisplayAgreementEvent(
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
          AppLocalizations.of(context)!.displayAgreement,
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
                  controller: _dispAgreementSearchCtrl,
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
                                if (_dispAgreementSearchCtrl.text.isNotEmpty) {
                                  _dispAgreementSearchCtrl.clear();

                                  context.read<MerchDisplayAgreementBloc>().add(
                                      const ClearMerchDisplayAgreementData());
                                  context.read<MerchDisplayAgreementBloc>().add(
                                      GetMerchDisplayAgreementEvent(
                                          fromDate: fromdateController.text,
                                          toDate: todateController.text,
                                          status: selecteddispAgreementMode,
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
                      context.read<MerchDisplayAgreementBloc>().add(
                          GetMerchDisplayAgreementEvent(
                              fromDate: fromdateController.text,
                              toDate: todateController.text,
                              status: selecteddispAgreementMode,
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
                  value: filterDisplayAgreement[0].mode,
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
                  items: filterDisplayAgreement
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    selecteddispAgreementMode = value!;
                    context
                        .read<MerchDisplayAgreementBloc>()
                        .add(const ClearMerchDisplayAgreementData());
                    context.read<MerchDisplayAgreementBloc>().add(
                        GetMerchDisplayAgreementEvent(
                            fromDate: fromdateController.text,
                            toDate: todateController.text,
                            status: value,
                            searchQuery: _dispAgreementSearchCtrl.text));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: BlocBuilder<MerchDisplayAgreementBloc,
                  MerchDisplayAgreementState>(
                builder: (context, state) {
                  return state.when(
                      getMerchDisplayAgreementDataState: (dispData) =>
                          dispData == null
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
                              : dispData.isEmpty
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
                                                selecteddispAgreementMode ==
                                                        'AL'
                                                    ? AppLocalizations.of(
                                                            context)!
                                                        .allAgreements
                                                    : selecteddispAgreementMode ==
                                                            'NW'
                                                        ? AppLocalizations.of(
                                                                context)!
                                                            .newAgreements
                                                        : selecteddispAgreementMode ==
                                                                'AP'
                                                            ? AppLocalizations
                                                                    .of(
                                                                        context)!
                                                                .approvedAgreements
                                                            : AppLocalizations
                                                                    .of(context)!
                                                                .activeAgreements,
                                                style: countHeading(),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5.0),
                                                child: Text(
                                                  dispData.length.toString(),
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
                                                                    dispData[index]
                                                                            .number ??
                                                                        '',
                                                                    style:
                                                                        blueTextStyle()),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          overflow: TextOverflow.ellipsis,
                                                                          selectedLocale?.languageCode == "en" ? dispData[index].type ?? '' : dispData[index].arType ?? '',
                                                                          // dispData[index]
                                                                          //         .type ??
                                                                          //     '',
                                                                          style: subTitleTextStyle()),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  selectedLocale
                                                                              ?.languageCode ==
                                                                          "en"
                                                                      ? dispData[index]
                                                                              .cusName ??
                                                                          ''
                                                                      : dispData[index]
                                                                              .cusArName ??
                                                                          '',
                                                                  //"${dispData[index].cusCode}-${dispData[index].cusName}",
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          12.sp,
                                                                      color: const Color(
                                                                          0xff413434)),
                                                                ),
                                                                Text(
                                                                  "${AppLocalizations.of(context)!.start}: ${dispData[index].startDate} | ${AppLocalizations.of(context)!.end}: ${dispData[index].endDate}",
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
                                                              color: dispData[index]
                                                                          .status! ==
                                                                      "New"
                                                                  // AppLocalizations.of(
                                                                  //         context)!
                                                                  //  .neww
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
                                                                    ? dispData[index]
                                                                            .status ??
                                                                        ''
                                                                    : dispData[index]
                                                                            .arStatus ??
                                                                        '',
                                                                // dispData[index]
                                                                //         .status ??
                                                                //     '',
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
                                              itemCount: dispData.length),
                                        ))
                                      ],
                                    ),
                      getMerchDisplayAgreementDataFailed: () => Center(
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
