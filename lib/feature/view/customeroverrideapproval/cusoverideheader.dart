import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';

import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusoverrideapproval/customer_override_approval_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customeroverrideapprovreject/override_approve_reject_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerOverrideApprovalHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const CustomerOverrideApprovalHeaderScreen({super.key, required this.user});

  @override
  State<CustomerOverrideApprovalHeaderScreen> createState() =>
      _CustomerOverrideApprovalHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterCustomerOverride = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Approved", mode: 'A'),
  ApprovalStatusFilterModel(statusName: "Rejected", mode: 'R'),
];

List<bool?> statuslist = [];
String _selectedCustomerOverride = 'P';
int loadingCount = 0;

TextEditingController cusOverAddCtrl = TextEditingController();
Timer? debounce;

class _CustomerOverrideApprovalHeaderScreenState
    extends State<CustomerOverrideApprovalHeaderScreen> {
  @override
  void initState() {
    cusOverAddCtrl.clear();
    loadingCount = 0;
    ddfilterCustomerOverride = [
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Pending Requests"
              : "قيد الانتظار",
          mode: 'P'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Approved Requests"
              : "الطلبات الموافق عليها",
          mode: 'A'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Rejected Requests"
              : "تم رفض الطلبات",
          mode: 'R'),
    ];
    context
        .read<CustomerOverrideApprovalBlocBloc>()
        .add(const ClearCusOverrideEvent());

    context.read<CustomerOverrideApprovalBlocBloc>().add(GetCusOverrideEvent(
        statusvalue: 'P',
        searchQuery: '',
        ooaID: '',
        userID: '${widget.user.usrId}'
        //userId: widget.user.usrId ?? '', searchQuery: ''
        ));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
          "Customer Override Approval",
          // AppLocalizations.of(context)!.add_assets,
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context.read<CustomerOverrideApprovalBlocBloc>().add(
              GetCusOverrideEvent(
                  userID: widget.user.usrId ?? '',
                  statusvalue: '',
                  ooaID: '',
                  searchQuery: ''));
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: cusOverAddCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: AppLocalizations.of(context)!.searchHere,
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (cusOverAddCtrl.text.isNotEmpty) {
                                  cusOverAddCtrl.clear();

                                  context
                                      .read<CustomerOverrideApprovalBlocBloc>()
                                      .add(const GetCusOverrideEvent(
                                          searchQuery: '',
                                          // userId: widget.user.usrId ?? ''
                                          statusvalue: '',
                                          ooaID: '',
                                          userID: ''));
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
                      context
                          .read<CustomerOverrideApprovalBlocBloc>()
                          .add(GetCusOverrideEvent(
                            searchQuery: value.trim(), statusvalue: '',
                            ooaID: '', userID: '',
                            // userId: widget.user.usrId ?? ''
                          ));
                    });
                  },
                ),
              ),
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
                  value: ddfilterCustomerOverride[0].mode,
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
                  items: ddfilterCustomerOverride
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    _selectedCustomerOverride = value!;
                    context
                        .read<CustomerOverrideApprovalBlocBloc>()
                        .add(const ClearCusOverrideEvent());

                    context.read<CustomerOverrideApprovalBlocBloc>().add(
                          GetCusOverrideEvent(
                              // userID: widget.user.usrId ?? '',
                              // mode: value,
                              searchQuery: '',
                              statusvalue: value,
                              ooaID: '',
                              userID: ''),
                        );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<CustomerOverrideApprovalBlocBloc,
                  CustomerOverrideApprovalBlocState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.when(
                          getCusOverrideApprovalState: (headers) =>
                              _selectedCustomerOverride == "P"
                                  ? AppLocalizations.of(context)!
                                      .pendingApprovals
                                  : _selectedCustomerOverride == "A"
                                      ? AppLocalizations.of(context)!
                                          .approvedRequests
                                      : AppLocalizations.of(context)!
                                          .rejectedRequests,
                          cusOverrideApprovalFailedState: () =>
                              _selectedCustomerOverride == "P"
                                  ? AppLocalizations.of(context)!
                                      .pendingApprovals
                                  : _selectedCustomerOverride == "AT"
                                      ? AppLocalizations.of(context)!
                                          .approvedRequests
                                      : AppLocalizations.of(context)!
                                          .rejectedRequests,
                        ),
                        style: countHeading(),
                      ),
                      Text(
                        state.when(
                          getCusOverrideApprovalState: (headers) =>
                              headers == null ? "0" : headers.length.toString(),
                          cusOverrideApprovalFailedState: () => "0",
                        ),
                        style: countHeading(),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: BlocListener<CustomerOverrideApprovalBlocBloc,
                    CustomerOverrideApprovalBlocState>(
              listener: (context, state) {
                state.when(
                  cusOverrideApprovalFailedState: () {},
                  getCusOverrideApprovalState: (cusoverride) {
                    if (cusoverride != null) {
                      statuslist =
                          List.generate(cusoverride.length, (index) => null);
                    }
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: BlocBuilder<CustomerOverrideApprovalBlocBloc,
                    CustomerOverrideApprovalBlocState>(
                  builder: (context, state) {
                    return state.when(
                      getCusOverrideApprovalState: (cusoverride) =>
                          cusoverride == null
                              ? Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 0),
                                  child: ListView.separated(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                              : ListView.separated(
                                  itemBuilder:
                                      (context, index) => GestureDetector(
                                            onTap: () {
                                              /*  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DisputeNoteDetailScreen(
                                                        disputenote: headers[index],
                                                        user: widget.user,
                                                      ),
                                                    ),
                                                  ); */
                                            },
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 80,
                                                  width: 10,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xfffee8e0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
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
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "${cusoverride[index].cusCode} - ${cusoverride[index].cusName}  ",
                                                              //'${cusoverride[index].ooaType}  ',

                                                              // selectedLocale
                                                              //             ?.languageCode ==
                                                              //         "en"
                                                              //     ? headers[index]
                                                              //             .rsnName ??
                                                              //         ''
                                                              //     : headers[index]
                                                              //             .rsnArName ??
                                                              //         '',
                                                              style: kfontstyle(
                                                                fontSize: 12.sp,
                                                                color: const Color(
                                                                    0xff2C6B9E),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            /* Row(
                                                              children: [
                                                                Text(
                                                                  '${headers[index].astCode} - ',
                                                                  style: kfontstyle(
                                                                      fontSize: 12.sp,
                                                                      color: const Color(
                                                                        0xff2C6B9E,
                                                                      ),
                                                                      fontWeight: FontWeight.w500),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    selectedLocale?.languageCode ==
                                                                            "en"
                                                                        ? /* headers[index].astName ?? */
                                                                            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                                                                        : headers[index].astArName ??
                                                                            '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ), */
                                                            RichText(
                                                              text: TextSpan(
                                                                style: DefaultTextStyle.of(
                                                                        context)
                                                                    .style,
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        "Total Inv Amt : ",
                                                                    //'${cusoverride[index].ooaCusId} - ',
                                                                    style: kfontstyle(
                                                                        fontSize: 12.sp,
                                                                        color: const Color(
                                                                          0xff2C6B9E,
                                                                        ),
                                                                        fontWeight: FontWeight.w500),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '${cusoverride[index].totalInvAmt}  ',
                                                                    // "- Cus Name",
                                                                    // text: selectedLocale?.languageCode ==
                                                                    //         'en'
                                                                    //     ? "${headers[index].astName}"
                                                                    //     : headers[index].astArName ??
                                                                    //         '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                    // overflow: TextOverflow.ellipsis,
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'Avl Credit Limit : ',
                                                                    // "- Cus Name",
                                                                    // text: selectedLocale?.languageCode ==
                                                                    //         'en'
                                                                    //     ? "${headers[index].astName}"
                                                                    //     : headers[index].astArName ??
                                                                    //         '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12.sp,
                                                                        color: const Color(
                                                                          0xff2C6B9E,
                                                                        ),
                                                                        fontWeight: FontWeight.w500),
                                                                    // overflow: TextOverflow.ellipsis,
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '${cusoverride[index].availableCreditLimit}  ',
                                                                    // "- Cus Name",
                                                                    // text: selectedLocale?.languageCode ==
                                                                    //         'en'
                                                                    //     ? "${headers[index].astName}"
                                                                    //     : headers[index].astArName ??
                                                                    //         '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                    // overflow: TextOverflow.ellipsis,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            /* Row(
                                                              children: [
                                                                Text(
                                                                  '${headers[index].cusCode} - ',
                                                                  style:
                                                                      kfontstyle(
                                                                    fontSize:
                                                                        12.sp,
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
                                                                            "en"
                                                                        ? /* headers[index].cusName ?? */
                                                                            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                                                                        : headers[index].cusArName ??
                                                                            "",
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ), */
                                                            RichText(
                                                              text: TextSpan(
                                                                style: DefaultTextStyle.of(
                                                                        context)
                                                                    .style,
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        "Total Credit Lmt : ",
                                                                    // '${cusoverride[index].flexiField2}  ',
                                                                    //  "Cred Lmt Amt:",
                                                                    // '${headers[index].cusCode} - ',
                                                                    style: kfontstyle(
                                                                        fontSize: 10
                                                                            .sp,
                                                                        color: const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            89,
                                                                            89,
                                                                            89)),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '${cusoverride[index].totalCreditLimit}  ',
                                                                    // " 1234.6787",
                                                                    // '${headers[index].cusCode} - ',
                                                                    style:
                                                                        kfontstyle(
                                                                      fontSize:
                                                                          10.sp,
                                                                      color: const Color(
                                                                          0xff413434),
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                      text:
                                                                          ' | Total Outstanding :  ',
                                                                      // " | Availabla Amt:",
                                                                      // text: selectedLocale?.languageCode ==
                                                                      //         'en'
                                                                      //     ? "${headers[index].cusName}"
                                                                      //     : headers[index].cusArName ??
                                                                      //         '',
                                                                      style: kfontstyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              89,
                                                                              89,
                                                                              89))
                                                                      // overflow: TextOverflow.ellipsis,
                                                                      ),
                                                                  TextSpan(
                                                                    text:
                                                                        '${cusoverride[index].totalOutstanding}  ',
                                                                    //   " 0000.00",
                                                                    // text: selectedLocale?.languageCode ==
                                                                    //         'en'
                                                                    //     ? "${headers[index].cusName}"
                                                                    //     : headers[index].cusArName ??
                                                                    //         '',
                                                                    style:
                                                                        kfontstyle(
                                                                      fontSize:
                                                                          10.sp,
                                                                      color: const Color(
                                                                          0xff413434),
                                                                      // overflow: TextOverflow.ellipsis,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            RichText(
                                                              text: TextSpan(
                                                                style: DefaultTextStyle.of(
                                                                        context)
                                                                    .style,
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        "Total Credit Days:",
                                                                    // '${headers[index].cusCode} - ',
                                                                    style: kfontstyle(
                                                                        fontSize: 10
                                                                            .sp,
                                                                        color: const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            89,
                                                                            89,
                                                                            89)),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ' ${cusoverride[index].totalCreditDays}  ',
                                                                    // " 98765.90 ",
                                                                    // '${headers[index].cusCode} - ',
                                                                    style:
                                                                        kfontstyle(
                                                                      fontSize:
                                                                          10.sp,
                                                                      color: const Color(
                                                                          0xff413434),
                                                                    ),
                                                                  ),
                                                                  // TextSpan(
                                                                  //   text:
                                                                  //       "| Credit Days:",
                                                                  //   // text: selectedLocale?.languageCode ==
                                                                  //   //         'en'
                                                                  //   //     ? "${headers[index].cusName}"
                                                                  //   //     : headers[index].cusArName ??
                                                                  //   //         '',
                                                                  //   style: kfontstyle(
                                                                  //       fontSize: 10
                                                                  //           .sp,
                                                                  //       color: Colors
                                                                  //           .grey),

                                                                  //   // overflow: TextOverflow.ellipsis,
                                                                  // ),
                                                                  // TextSpan(
                                                                  //   text:'${cusoverride[index].ooaWfmId}  ',
                                                                  //   // " 10",
                                                                  //   // '${headers[index].cusCode} - ',
                                                                  //   style:
                                                                  //       kfontstyle(
                                                                  //     fontSize:
                                                                  //         10.sp,
                                                                  //     color: const Color(
                                                                  //         0xff413434),
                                                                  //   ),
                                                                  // ),
                                                                ],
                                                              ),
                                                            ),
                                                            Text(
                                                              "${cusoverride[index].rotCode} | ${cusoverride[index].rotName} | ${cusoverride[index].createdDate} ",
                                                              //'${cusoverride[index].ooaRotId} |${cusoverride[index].createdDate}',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      89,
                                                                      89,
                                                                      89)),
                                                            ),
                                                            cusoverride[index]
                                                                        .ooaApprovalStatus !=
                                                                    'Pending'
                                                                ? const SizedBox
                                                                    .shrink()
                                                                : BlocConsumer<
                                                                    OverrideApproveRejectBloc,
                                                                    OverrideApproveRejectState>(
                                                                    listener:
                                                                        (context,
                                                                            state) {
                                                                      state
                                                                          .when(
                                                                        getOverrideApprovalState:
                                                                            (approve) {
                                                                          if (approve !=
                                                                              null) {
                                                                            Navigator.pop(context);
                                                                            // if (isApproval) {
                                                                            showDialog(
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  if (Platform.isIOS) {
                                                                                    return CupertinoAlertDialog(
                                                                                      title: Text(selectedLocale?.languageCode == 'en' ? 'Success' : 'نجاح'),
                                                                                      content: Text(selectedLocale?.languageCode == 'en' ? 'Customer override request actioned successfully' : 'تم تنفيذ طلب تجاوز العميل بنجاح'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () {
                                                                                            context.read<CustomerOverrideApprovalBlocBloc>().add(const ClearCusOverrideEvent());
                                                                                            context.read<CustomerOverrideApprovalBlocBloc>().add(GetCusOverrideEvent(statusvalue: _selectedCustomerOverride, searchQuery: '', ooaID: '', userID: widget.user.usrId??''));
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Text(AppLocalizations.of(context)!.ok),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  } else {
                                                                                    return AlertDialog(
                                                                                      title: Text(selectedLocale?.languageCode == 'en' ? 'Success' : 'نجاح'),
                                                                                      content: Text(selectedLocale?.languageCode == 'en' ? 'Customer override request actioned successfully' : 'تم تنفيذ طلب تجاوز العميل بنجاح'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () {
                                                                                            context.read<AssetAddInApprovalHeaderBloc>().add(GetallAssetAddingRequestHeadersEvent(userId: widget.user.usrId ?? '', searchQuery: ''));
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Text(AppLocalizations.of(context)!.ok),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  }
                                                                                });
                                                                            // }
                                                                          }
                                                                        },
                                                                        overrideCusFailedState:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                          showDialog(
                                                                              context: context,
                                                                              builder: (context) {
                                                                                if (Platform.isIOS) {
                                                                                  return CupertinoAlertDialog(
                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                    content: Text(AppLocalizations.of(context)!.somethingWentWrong),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          context.read<AssetAddInApprovalHeaderBloc>().add(
                                                                                                GetallAssetAddingRequestHeadersEvent(userId: widget.user.usrId ?? ' ', searchQuery: ''),
                                                                                              );
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(AppLocalizations.of(context)!.ok),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                } else {
                                                                                  return AlertDialog(
                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                    content: Text(AppLocalizations.of(context)!.somethingWentWrong),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          context.read<AssetAddInApprovalHeaderBloc>().add(
                                                                                                GetallAssetAddingRequestHeadersEvent(userId: widget.user.usrId ?? ' ', searchQuery: ''),
                                                                                              );
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(AppLocalizations.of(context)!.ok),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                }
                                                                              });
                                                                        },
                                                                        overrideCusLoadingState:
                                                                            () {
                                                                          if (loadingCount ==
                                                                              0) {
                                                                            loadingCount =
                                                                                1;
                                                                            showCupertinoModalPopup(
                                                                                context: context,
                                                                                barrierDismissible: false,
                                                                                builder: (context) => SizedBox(
                                                                                      height: MediaQuery.of(context).size.height,
                                                                                      width: MediaQuery.of(context).size.width,
                                                                                      child: const PopScope(
                                                                                        canPop: true,
                                                                                        child: CupertinoActivityIndicator(
                                                                                          animating: true,
                                                                                          color: Colors.red,
                                                                                          radius: 30,
                                                                                        ),
                                                                                      ),
                                                                                    ));
                                                                          }
                                                                        },
                                                                      );
                                                                    },
                                                                    builder:
                                                                        (context,
                                                                            state) {
                                                                      return Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Transform
                                                                              .scale(
                                                                            scale:
                                                                                0.8,
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () {
                                                                                setState(() {
                                                                                  {
                                                                                    showDialog(
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          if (Platform.isIOS) {
                                                                                            return CupertinoAlertDialog(
                                                                                              title: Text(AppLocalizations.of(context)!.alert),
                                                                                              content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    setState(() {});
                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                ),
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    statuslist[index] = true;
                                                                                                    loadingCount = 0;
                                                                                                    setState(() {});
                                                                                                    context.read<OverrideApproveRejectBloc>().add(const LoadingOverideApproveRejectEvent());
                                                                                                    context.read<OverrideApproveRejectBloc>().add(
                                                                                                          GetOverrideApproveRejectEvent(ooaID: '${cusoverride[index].ooaId}', userId: '${widget.user.usrId}', status: 'A'
                                                                                                              // approve: AssetAddApprovalInModel
                                                                                                              // (reqId: headers[index].aahId,
                                                                                                              // serialNum: _slNoCtrls[index].text,
                                                                                                              //  userId: widget.user.usrId),
                                                                                                              ),
                                                                                                        );

                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          } else {
                                                                                            return AlertDialog(
                                                                                              title: Text(AppLocalizations.of(context)!.alert),
                                                                                              content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    setState(() {});
                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                ),
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    statuslist[index] = true;
                                                                                                    loadingCount = 0;
                                                                                                    setState(() {});
                                                                                                    context.read<OverrideApproveRejectBloc>().add(const LoadingOverideApproveRejectEvent());
                                                                                                    context.read<OverrideApproveRejectBloc>().add(
                                                                                                          GetOverrideApproveRejectEvent(ooaID: '${cusoverride[index].ooaId}', userId: '${widget.user.usrId}', status: 'A'
                                                                                                              // approve: AssetAddApprovalInModel
                                                                                                              // (reqId: headers[index].aahId,
                                                                                                              // serialNum: _slNoCtrls[index].text,
                                                                                                              //  userId: widget.user.usrId),
                                                                                                              ),
                                                                                                        );

                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          }
                                                                                        });
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Row(
                                                                                children: [
                                                                                  Radio(
                                                                                    fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                                      return (statuslist[index] == true) ? Colors.green.shade300 : Colors.grey;
                                                                                    }),
                                                                                    /* activeColor: isselected == true
                                                                                                                                                                                                                            ? const Color(0xff0075ff)
                                                                                                                                                                                                                            : Colors.grey, */
                                                                                    value: statuslist[index] == null
                                                                                        ? false
                                                                                        : statuslist[index] == true
                                                                                            ? true
                                                                                            : false,
                                                                                    groupValue: true,
                                                                                    onChanged: (value) {
                                                                                      // if (_slNoCtrls[index].text.isEmpty) {
                                                                                      //   showCupertinoDialog(
                                                                                      //     context: context,
                                                                                      //     builder: (context) => CupertinoAlertDialog(
                                                                                      //       title: Text(AppLocalizations.of(context)!.alert),
                                                                                      //       content: Text(AppLocalizations.of(context)!.pleaseEnterSlNo),
                                                                                      //       actions: [
                                                                                      //         TextButton(
                                                                                      //           onPressed: () {
                                                                                      //             // setState(() {});
                                                                                      //             Navigator.pop(context);
                                                                                      //           },
                                                                                      //           child: Text(AppLocalizations.of(context)!.ok),
                                                                                      //         ),
                                                                                      //       ],
                                                                                      //     ),
                                                                                      //   );
                                                                                      // }
                                                                                      {
                                                                                        showDialog(
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              if (Platform.isIOS) {
                                                                                                return CupertinoAlertDialog(
                                                                                                  title: Text(AppLocalizations.of(context)!.alert),
                                                                                                  content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () {
                                                                                                        setState(() {});
                                                                                                        Navigator.pop(context);
                                                                                                      },
                                                                                                      child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                    ),
                                                                                                    TextButton(
                                                                                                      onPressed: () {
                                                                                                        statuslist[index] = true;
                                                                                                        loadingCount = 0;
                                                                                                        setState(() {});
                                                                                                        context.read<OverrideApproveRejectBloc>().add(const LoadingOverideApproveRejectEvent());
                                                                                                        context.read<OverrideApproveRejectBloc>().add(
                                                                                                              GetOverrideApproveRejectEvent(ooaID: '${cusoverride[index].ooaId}', userId: '${widget.user.usrId}', status: 'A'),
                                                                                                            );

                                                                                                        Navigator.pop(context);
                                                                                                      },
                                                                                                      child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              } else {
                                                                                                return AlertDialog(
                                                                                                  title: Text(AppLocalizations.of(context)!.alert),
                                                                                                  content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () {
                                                                                                        setState(() {});
                                                                                                        Navigator.pop(context);
                                                                                                      },
                                                                                                      child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                    ),
                                                                                                    TextButton(
                                                                                                      onPressed: () {
                                                                                                        statuslist[index] = true;
                                                                                                        loadingCount = 0;
                                                                                                        setState(() {});
                                                                                                        context.read<OverrideApproveRejectBloc>().add(const LoadingOverideApproveRejectEvent());
                                                                                                        context.read<OverrideApproveRejectBloc>().add(
                                                                                                              GetOverrideApproveRejectEvent(ooaID: '${cusoverride[index].ooaId}', userId: '${widget.user.usrId}', status: 'A'),
                                                                                                            );

                                                                                                        Navigator.pop(context);
                                                                                                      },
                                                                                                      child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              }
                                                                                            });
                                                                                      }
                                                                                    },
                                                                                  ),
                                                                                  Text(
                                                                                    AppLocalizations.of(context)!.approve,
                                                                                    style: kfontstyle(),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Transform
                                                                              .scale(
                                                                            scale:
                                                                                0.8,
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () {
                                                                                setState(() {
                                                                                  showDialog(
                                                                                      context: context,
                                                                                      builder: (context) {
                                                                                        if (Platform.isIOS) {
                                                                                          return CupertinoAlertDialog(
                                                                                            title: Text(AppLocalizations.of(context)!.alert),
                                                                                            content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () {
                                                                                                  setState(() {});
                                                                                                  Navigator.pop(context);
                                                                                                },
                                                                                                child: Text(AppLocalizations.of(context)!.cancel),
                                                                                              ),
                                                                                              TextButton(
                                                                                                onPressed: () {
                                                                                                  statuslist[index] = false;
                                                                                                  loadingCount = 0;
                                                                                                  setState(() {});
                                                                                                  context.read<OverrideApproveRejectBloc>().add(const LoadingOverideApproveRejectEvent());
                                                                                                  context.read<OverrideApproveRejectBloc>().add(
                                                                                                        GetOverrideApproveRejectEvent(ooaID: '${cusoverride[index].ooaId}', userId: '${widget.user.usrId}', status: 'R'
                                                                                                            // approve: AssetAddApprovalInModel
                                                                                                            // (reqId: headers[index].aahId,
                                                                                                            // serialNum: _slNoCtrls[index].text,
                                                                                                            //  userId: widget.user.usrId),
                                                                                                            ),
                                                                                                      );

                                                                                                  Navigator.pop(context);
                                                                                                },
                                                                                                child: Text(AppLocalizations.of(context)!.proceed),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        } else {
                                                                                          return AlertDialog(
                                                                                            title: Text(AppLocalizations.of(context)!.alert),
                                                                                            content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () {
                                                                                                  setState(() {});
                                                                                                  Navigator.pop(context);
                                                                                                },
                                                                                                child: Text(AppLocalizations.of(context)!.cancel),
                                                                                              ),
                                                                                              TextButton(
                                                                                                onPressed: () {
                                                                                                  statuslist[index] = false;
                                                                                                  loadingCount = 0;
                                                                                                  setState(() {});
                                                                                                  context.read<OverrideApproveRejectBloc>().add(const LoadingOverideApproveRejectEvent());
                                                                                                  context.read<OverrideApproveRejectBloc>().add(
                                                                                                        GetOverrideApproveRejectEvent(ooaID: '${cusoverride[index].ooaId}', userId: '${widget.user.usrId}', status: 'R'
                                                                                                            // approve: AssetAddApprovalInModel
                                                                                                            // (reqId: headers[index].aahId,
                                                                                                            // serialNum: _slNoCtrls[index].text,
                                                                                                            //  userId: widget.user.usrId),
                                                                                                            ),
                                                                                                      );

                                                                                                  Navigator.pop(context);
                                                                                                },
                                                                                                child: Text(AppLocalizations.of(context)!.proceed),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        }
                                                                                      });
                                                                                });
                                                                              },
                                                                              child: Row(
                                                                                children: [
                                                                                  Radio(
                                                                                    fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                                      return (statuslist[index] != null && !statuslist[index]!) ? Colors.red.shade300 : Colors.grey;
                                                                                    }),
                                                                                    /*  activeColor: isselected == false
                                                                                                                                                                                                                            ? const Color(0xff0075ff)
                                                                                                                                                                                                                            : Colors.grey, */
                                                                                    value: statuslist[index] == null
                                                                                        ? true
                                                                                        : statuslist[index] == true
                                                                                            ? true
                                                                                            : false,
                                                                                    groupValue: false,
                                                                                    onChanged: (value) {
                                                                                      showDialog(
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            if (Platform.isIOS) {
                                                                                              return CupertinoAlertDialog(
                                                                                                title: Text(AppLocalizations.of(context)!.alert),
                                                                                                content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () {
                                                                                                      setState(() {});
                                                                                                      Navigator.pop(context);
                                                                                                    },
                                                                                                    child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                  ),
                                                                                                  TextButton(
                                                                                                    onPressed: () {
                                                                                                      statuslist[index] = false;
                                                                                                      loadingCount = 0;
                                                                                                      setState(() {});
                                                                                                      context.read<OverrideApproveRejectBloc>().add(const LoadingOverideApproveRejectEvent());
                                                                                                      context.read<OverrideApproveRejectBloc>().add(const ClearOverrideApproveRejectEvent());
                                                                                                      context.read<OverrideApproveRejectBloc>().add(
                                                                                                            GetOverrideApproveRejectEvent(ooaID: '${cusoverride[index].ooaId}', userId: '${widget.user.usrId}', status: 'R'
                                                                                                                // approve: AssetAddApprovalInModel(
                                                                                                                //   reqId: headers[index].aahId,
                                                                                                                //   serialNum: null,
                                                                                                                //   userId: widget.user.usrId,
                                                                                                                // ),
                                                                                                                ),
                                                                                                          );
                                                                                                      Navigator.pop(context);
                                                                                                    },
                                                                                                    child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                  ),
                                                                                                ],
                                                                                              );
                                                                                            } else {
                                                                                              return AlertDialog(
                                                                                                title: Text(AppLocalizations.of(context)!.alert),
                                                                                                content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () {
                                                                                                      setState(() {});
                                                                                                      Navigator.pop(context);
                                                                                                    },
                                                                                                    child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                  ),
                                                                                                  TextButton(
                                                                                                    onPressed: () {
                                                                                                      statuslist[index] = false;
                                                                                                      loadingCount = 0;
                                                                                                      setState(() {});
                                                                                                      context.read<OverrideApproveRejectBloc>().add(const LoadingOverideApproveRejectEvent());
                                                                                                      context.read<OverrideApproveRejectBloc>().add(const ClearOverrideApproveRejectEvent());
                                                                                                      context.read<OverrideApproveRejectBloc>().add(
                                                                                                            GetOverrideApproveRejectEvent(ooaID: '${cusoverride[index].ooaId}', userId: '${widget.user.usrId}', status: 'R'
                                                                                                                // approve: AssetAddApprovalInModel(
                                                                                                                //   reqId: headers[index].aahId,
                                                                                                                //   serialNum: null,
                                                                                                                //   userId: widget.user.usrId,
                                                                                                                // ),
                                                                                                                ),
                                                                                                          );
                                                                                                      Navigator.pop(context);
                                                                                                    },
                                                                                                    child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                  ),
                                                                                                ],
                                                                                              );
                                                                                            }
                                                                                          });
                                                                                    },
                                                                                  ),
                                                                                  Text(
                                                                                    AppLocalizations.of(context)!.reject,
                                                                                    style: kfontstyle(),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      );
                                                                    },
                                                                  ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                  separatorBuilder: (context, index) => Divider(
                                        color: Colors.grey[300],
                                      ),
                                  itemCount: cusoverride.length),
                      cusOverrideApprovalFailedState: () => Center(
                        child: Text(
                          AppLocalizations.of(context)!.noDataAvailable,
                          style: kfontstyle(),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
