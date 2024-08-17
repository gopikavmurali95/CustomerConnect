import 'dart:async';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/view/pricechangeapproval/pricechangedetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PriceChangeHeader extends StatefulWidget {
  final LoginUserModel user;
  const PriceChangeHeader({super.key, required this.user});

  @override
  State<PriceChangeHeader> createState() => _PriceChangeHeaderState();
}

List<ApprovalStatusFilterModel> filterFieldsPriceChange = [
  ApprovalStatusFilterModel(
      statusName:
          selectedLocale?.languageCode == 'en' ? "Pending" : "قيد الانتظار",
      mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Action Taken", mode: 'AT'),
];

String _selectedPriceChangeMode = 'P';

Timer? debounce;
TextEditingController _priceChangeHeaderSearchCtrl = TextEditingController();

class _PriceChangeHeaderState extends State<PriceChangeHeader> {
  @override
  void initState() {
    _priceChangeHeaderSearchCtrl.clear();
    filterFieldsPriceChange = [
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Pending" : "قيد الانتظار",
          mode: 'P'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Action Taken"
              : "طلبات الإجراءات المتخذة",
          mode: 'AT'),
    ];
    context.read<PriceChangeHeaderBloc>().add(const ClearPriceChangeHeader());
    context.read<PriceChangeHeaderBloc>().add(GetPriceChangeHeaderEvent(
        rotID: widget.user.usrId!, mode: 'P', searchQuery: ''));
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
            context
                .read<ApprovalCountsBloc>()
                .add(GetApprovalsCountEvent(userID: widget.user.usrId ?? ''));
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.price_change,
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context
              .read<ApprovalCountsBloc>()
              .add(GetApprovalsCountEvent(userID: widget.user.usrId ?? ''));
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: _priceChangeHeaderSearchCtrl,
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
                                if (_priceChangeHeaderSearchCtrl
                                    .text.isNotEmpty) {
                                  _priceChangeHeaderSearchCtrl.clear();

                                  context.read<PriceChangeHeaderBloc>().add(
                                      GetPriceChangeHeaderEvent(
                                          rotID: widget.user.usrId!,
                                          mode: _selectedPriceChangeMode,
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
                      context.read<PriceChangeHeaderBloc>().add(
                          GetPriceChangeHeaderEvent(
                              rotID: widget.user.usrId!,
                              mode: _selectedPriceChangeMode,
                              searchQuery: value));
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
                  value: filterFieldsPriceChange[0].mode,
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
                  items: filterFieldsPriceChange
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    _selectedPriceChangeMode = value!;
                    context
                        .read<PriceChangeHeaderBloc>()
                        .add(const ClearPriceChangeHeader());

                    context.read<PriceChangeHeaderBloc>().add(
                        GetPriceChangeHeaderEvent(
                            rotID: widget.user.usrId!,
                            mode: value,
                            searchQuery: ''));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: BlocBuilder<PriceChangeHeaderBloc, PriceChangeHeaderState>(
                builder: (context, state) {
                  return state.when(
                      getPriceChangeState: (pChange) => pChange == null
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      ShimmerContainers(
                                          height: 60.h, width: double.infinity),
                                  separatorBuilder: (context, index) => Divider(
                                        color: Colors.grey[300],
                                      ),
                                  itemCount: 10),
                            )
                          : pChange.isEmpty
                              ? Center(
                                  child: Text(AppLocalizations.of(context)!
                                      .noDataFound),
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
                                            _selectedPriceChangeMode == 'P'
                                                ? AppLocalizations.of(context)!
                                                    .pendingApprovals
                                                : AppLocalizations.of(context)!
                                                    .approvedRequests,
                                            style: countHeading(),
                                          ),
                                          Text(
                                            pChange.length.toString(),
                                            style: countHeading(),
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
                                          itemBuilder: (context, index) =>
                                              GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          NavigatetoBackCubit>()
                                                      .popFromScreen(false);
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PriceChangeDetail(
                                                                priceChangeApprovel:
                                                                    pChange[
                                                                        index],
                                                                user:
                                                                    widget.user,
                                                                currentMode:
                                                                    _selectedPriceChangeMode,
                                                              )));
                                                  log(_selectedPriceChangeMode);
                                                },
                                                child: Row(
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
                                                              '${pChange[index].pchReqId}',
                                                              style:
                                                                  blueTextStyle()),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                '${pChange[index].cusCode} - ',
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
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    selectedLocale?.languageCode ==
                                                                            'en'
                                                                        ? "${pChange[index].cusName}"
                                                                        : pChange[index].arcusName ??
                                                                            '',
                                                                    style:
                                                                        subTitleTextStyle()),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            selectedLocale
                                                                        ?.languageCode ==
                                                                    'en'
                                                                ? "${pChange[index].type}"
                                                                : pChange[index]
                                                                        .arType ??
                                                                    '',
                                                            style: kfontstyle(
                                                                fontSize: 12.sp,
                                                                color: const Color(
                                                                    0xff413434)),
                                                          ),
                                                          Text(
                                                            '${pChange[index].createdDate} ',
                                                            style: kfontstyle(
                                                                fontSize: 10.sp,
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // height: 10.h,
                                                      // width: 10.h,
                                                      decoration: BoxDecoration(
                                                        color: pChange[index]
                                                                    .pchApprovalStatus! ==
                                                                "Pending"
                                                            ? const Color(
                                                                0xfff7f4e2)
                                                            : pChange[index]
                                                                        .pchApprovalStatus! ==
                                                                    "Action Taken"
                                                                ? const Color(
                                                                    0xffe3f7e2)
                                                                : Colors
                                                                    .red[300],
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
                                                                horizontal: 5,
                                                                vertical: 3),
                                                        child: Text(
                                                          selectedLocale
                                                                      ?.languageCode ==
                                                                  'en'
                                                              ? pChange[index]
                                                                      .pchApprovalStatus ??
                                                                  ''
                                                              : pChange[index]
                                                                      .arpchApprovalStatus ??
                                                                  '',
                                                          style: kfontstyle(
                                                              fontSize: 8.sp),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                          separatorBuilder: (context, index) =>
                                              Divider(
                                                color: Colors.grey[300],
                                              ),
                                          itemCount: pChange.length),
                                    ))
                                  ],
                                ),
                      priceChangeFailureState: () => Center(
                            child: Text(
                              AppLocalizations.of(context)!.noDataAvailable,
                              style: kfontstyle(),
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
