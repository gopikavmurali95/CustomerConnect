import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/route_model/route_model.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_approval_in_model/scheduled_return_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_prd_model/scheduled_return_prd_model.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_header_model/sheduled_return_header_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheduledreturnapproval/schduled_return_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_headerscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScheduledReturnDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final SheduledReturnHeaderModel scheduledreturn;
  final String currentMode;
  const ScheduledReturnDetailScreen(
      {super.key,
      required this.user,
      required this.scheduledreturn,
      required this.currentMode});

  @override
  State<ScheduledReturnDetailScreen> createState() =>
      _ScheduledReturnDetailScreenState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
bool isLoading = false;

int loadingCount = 0;
List<ApprovalResonModel> availableresons = [];

List<RouteModel> availableroutes = [];
int _approvedCount = 0;
// int _totalcount = 0;
String selectedRoute = '-1';
List<ScheduledReturnPrdModel?> approvedProducts = [];
TextEditingController _searchctrls = TextEditingController();
Timer? debounce;

class _ScheduledReturnDetailScreenState
    extends State<ScheduledReturnDetailScreen> {
  @override
  void initState() {
    _searchctrls.clear();
    _approvedCount = 0;
    loadingCount = 0;

    availableresons.clear();
    availableroutes.clear();
    _searchctrls.clear();
    context
        .read<ScheduledReturnDetailsBloc>()
        .add(const ClearScheduledReturnDetailsEvent());
    context.read<ScheduledReturnDetailsBloc>().add(
        GetAllScheduledReturnDetailsEvent(
            reqID: widget.scheduledreturn.rrhId ?? '', searchQuery: ''));

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
            log(_approvedCount.toString());
            context.read<SchduledReturnHeaderBloc>().add(
                GetAllScheduledReturnHeadersEvent(
                    userID: widget.user.usrId ?? '',
                    mode: widget.currentMode,
                    searchQuery: ''));
            Navigator.pop(context);
            // }
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "${AppLocalizations.of(context)!.scheduled_return} ${AppLocalizations.of(context)!.details}",
          style: appHeading(),
        ),
      ),
      body: PopScope(
         canPop:
              /* _approvedCount == 0 || _approvedCount == _totalcount ? true : */ true,
          onPopInvoked: (didPop) {
            _searchctrls.clear();
            searchCtrl.clear();
            context.read<SchduledReturnHeaderBloc>().add(
                GetAllScheduledReturnHeadersEvent(
                    userID: widget.user.usrId ?? '',
                    mode: widget.currentMode,
                    searchQuery: ''));
            /* if (_approvedCount != 0 && _approvedCount != _totalcount) {
              Future.delayed(const Duration(microseconds: 100), () {
                showPopAlert(context);
              });
            } else {
              context.read<NavigatetoBackCubit>().popFromScreen(true);
            } */
          },
        child: BlocListener<NavigatetoBackCubit, NavigatetoBackState>(
          listener: (context, state) {
            state.when(
              navigateToBackScreen: (popfromscreen) {
                log(popfromscreen.toString());
                if (popfromscreen == true) {
                  Navigator.pop(context);
                  // context.read<NavigatetoBackCubit>().cancelPop(false);
                }
              },
            );
          },
          child: BlocConsumer<SchduledReturnApprovalBloc,
              SchduledReturnApprovalState>(
            listener: (context, state) {
              state.when(
                scheduledReturnApprovalStatusStates: (status) {
                  if (status != null) {
                    _approvedCount++;
                    Navigator.pop(context);
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(AppLocalizations.of(context)!.alert),
                        content: Text(
                            " ${selectedLocale?.languageCode == 'en' ? 'Your request has been successfully actioned' : 'لقد تم تنفيذ طلبك بنجاح'} "),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: Text(AppLocalizations.of(context)!.ok),
                          ),
                        ],
                      ),
                    );
                  }
                },
                schduledReturnApprovalFailedState: () {
                  Navigator.pop(context);
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text(AppLocalizations.of(context)!.alert),
                      content: Text(
                        AppLocalizations.of(context)!.somethingWentWrong,
                        style: kfontstyle(),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(AppLocalizations.of(context)!.ok),
                        ),
                      ],
                    ),
                  );
                },
                scheduledReturnLoadingState: () {
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
                },
              );
            },
            builder: (context, state) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
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
                                        widget.scheduledreturn
                                                .rrhRequestNumber ??
                                            '',
                                        style: blueTextStyle()),
                                    /* Row(
                                      children: [
                                        Text(
                                            '${widget.scheduledreturn.cusCode} - ',
                                            style: blueTextStyle()),
                                        Expanded(
                                          child: Text(
                                              overflow: TextOverflow.ellipsis,
                                              selectedLocale?.languageCode ==
                                                      'en'
                                                  ? widget.scheduledreturn
                                                          .cusName ??
                                                      ''
                                                  : widget.scheduledreturn
                                                          .arcusName ??
                                                      '',
                                              style: subTitleTextStyle()),
                                        ),
                                      ],
                                    ), */
                                    RichText(
                                      text: TextSpan(
                                          style: DefaultTextStyle.of(context)
                                              .style
                                              .copyWith(
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                          children: [
                                            TextSpan(
                                                text:
                                                    '${widget.scheduledreturn.cusCode} - ',
                                                style: blueTextStyle()),
                                            TextSpan(
                                                text:
                                                    selectedLocale
                                                                ?.languageCode ==
                                                            'en'
                                                        ? widget.scheduledreturn
                                                                .cusName ??
                                                            ''
                                                        : widget.scheduledreturn
                                                                .arcusName ??
                                                            '',
                                                style: subTitleTextStyle())
                                          ]),
                                    ),
                                    Text(
                                      widget.scheduledreturn.createdDate ?? '',
                                      style: kfontstyle(
                                          fontSize: 10.sp, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      widget.scheduledreturn.status!.isEmpty ||
                                              widget.scheduledreturn.status !=
                                                  'Action Taken'
                                          ? widget.scheduledreturn.status ==
                                                  'Rejected'
                                              ? Colors.red[300]
                                              : const Color(0xfff7f4e2)
                                          : const Color(0xffe3f7e2),
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: Text(
                                    selectedLocale?.languageCode == 'en'
                                        ? widget.scheduledreturn.status ?? ''
                                        : widget.scheduledreturn.arStatus ?? '',
                                    style: kfontstyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        color: widget.scheduledreturn.status ==
                                                'Rejected'
                                            ? Colors.white54
                                            : Colors.black54),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: 30.h,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        controller: _searchctrls,
                        style:
                            kfontstyle(fontSize: 13.sp, color: Colors.black87),
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: AppLocalizations.of(context)!.searchhere,
                          suffix: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      if (_searchctrls.text.isNotEmpty) {
                                        _searchctrls.clear();
          
                                        context
                                            .read<ScheduledReturnDetailsBloc>()
                                            .add(
                                                GetAllScheduledReturnDetailsEvent(
                                                    reqID: widget
                                                            .scheduledreturn
                                                            .rrhId ??
                                                        '',
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
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
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
                            context.read<ScheduledReturnDetailsBloc>().add(
                                GetAllScheduledReturnDetailsEvent(
                                    reqID: widget.scheduledreturn.rrhId ?? '',
                                    searchQuery: value.trim()));
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 30.h,
                    width: double.infinity,
                    color: const Color(0xfff5f5f5),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppLocalizations.of(context)!.item,
                              style: boxHeading()),
                          SizedBox(
                            width: 10.w,
                          ),
                          Row(
                            children: [
                              Text(AppLocalizations.of(context)!.uom,
                                  style: boxHeading()),
                              SizedBox(
                                width: 40.w,
                              ),
                              Text(AppLocalizations.of(context)!.qty,
                                  style: boxHeading())
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: BlocConsumer<ScheduledReturnDetailsBloc,
                        ScheduledReturnDetailsState>(
                      listener: (context, state) {
                        state.when(
                          getScheduledReturnDetailState: (details) {
                            if (details != null) {
                              // Navigator.pop(context);
          
                              // _totalcount = details.length;
          
                              approvedProducts = List.generate(
                                  details.length, (index) => null);
                              statuslist.clear();
                              context
                                  .read<RouteForScCubit>()
                                  .getavailableroutes();
          
                              statuslist /* length = details.length; */
                                  = List.generate(
                                      details.length, (index) => null);
                              context.read<ApprovalReasonsBloc>().add(
                                  const GetApprovalReasonsEvent(
                                      rsnType: 'rsnType'));
                              selectedRoute = '-1';
          
                              for (int i = 0; i < details.length; i++) {
                                if (details[i].status!.isNotEmpty) {
                                  if (details[i].status == 'Approved') {
                                    statuslist[i] = true;
                                  } else if (details[i].status == 'Rejected') {
                                    statuslist[i] = false;
                                  } else {
                                    statuslist[i] = null;
                                  }
                                }
                              }
                            }
                          },
                          scheduledReturnDetailFailedState: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.when(
                          getScheduledReturnDetailState: (details) =>
                              details == null
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0),
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
                                  : details.isEmpty
                                      ? Center(
                                          child: Text(
                                              AppLocalizations.of(context)!
                                                  .noDataFound),
                                        )
                                      : ListView.separated(
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) =>
                                              Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              details[index]
                                                                      .prdCode ??
                                                                  '',
                                                              style:
                                                                  loadTextStyle()),
                                                          Text(
                                                              selectedLocale
                                                                          ?.languageCode ==
                                                                      'en'
                                                                  ? details[index]
                                                                          .prdName ??
                                                                      ''
                                                                  : details[index]
                                                                          .arprdName ??
                                                                      '',
                                                              style:
                                                                  subTitleTextStyle()),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Text(
                                                                details[index]
                                                                            .rrdHuom!
                                                                            .isEmpty ||
                                                                        details[index].rrdHuom ==
                                                                            null
                                                                    ? "-"
                                                                    : details[index]
                                                                            .rrdHuom ??
                                                                        '',
                                                                style:
                                                                    subTitleTextStyle()),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Text(
                                                                details[index]
                                                                            .rrdLuom!
                                                                            .isEmpty ||
                                                                        details[index].rrdLuom ==
                                                                            null
                                                                    ? "-"
                                                                    : details[index]
                                                                            .rrdLuom ??
                                                                        '',
                                                                style:
                                                                    subTitleTextStyle()),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 50.w,
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                                details[index].hQty ==
                                                                            '0' ||
                                                                        details[index].hQty ==
                                                                            null
                                                                    ? "0"
                                                                    : details[index]
                                                                            .hQty ??
                                                                        '0',
                                                                style:
                                                                    subTitleTextStyle()),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Text(
                                                                details[index].lQty ==
                                                                            '0' ||
                                                                        details[index].lQty ==
                                                                            null
                                                                    ? "0"
                                                                    : details[index]
                                                                            .lQty ??
                                                                        '0',
                                                                style:
                                                                    subTitleTextStyle()),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                widget.scheduledreturn.status ==
                                                        'Pending'
                                                    ? Transform.scale(
                                                        scale: .9,
                                                        origin: const Offset(
                                                            450, 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Expanded(
                                                              child: BlocConsumer<
                                                                  ApprovalReasonsBloc,
                                                                  ApprovalReasonsState>(
                                                                listener:
                                                                    (context,
                                                                        state) {
                                                                  state.when(
                                                                    getApprovalResonsState:
                                                                        (resons) {
                                                                      if (resons !=
                                                                          null) {
                                                                        selectedresons
                                                                            .clear();
                                                                        availableresons
                                                                            .clear();
                                                                        availableresons =
                                                                            [
                                                                          ApprovalResonModel(
                                                                              rsnId: '-1',
                                                                              rsnName: selectedLocale?.languageCode == 'en' ? 'Select reason' : AppLocalizations.of(context)!.selectReason,
                                                                              rsnArName: AppLocalizations.of(context)!.selectReason,
                                                                              rsnType: 'null')
                                                                        ];
          
                                                                        selectedresons = List.generate(
                                                                            details
                                                                                .length,
                                                                            (index) =>
                                                                                '-1');
          
                                                                        availableresons
                                                                            .addAll(resons);
                                                                      }
                                                                    },
                                                                    getReasonsFailedState:
                                                                        () {},
                                                                  );
                                                                },
                                                                builder:
                                                                    (context,
                                                                        state) {
                                                                  return state
                                                                      .when(
                                                                    getApprovalResonsState: (resons) => resons ==
                                                                                null ||
                                                                            availableresons
                                                                                .isEmpty
                                                                        ? const ShimmerContainers(
                                                                            height:
                                                                                30,
                                                                            width:
                                                                                80,
                                                                          )
                                                                        : Transform
                                                                            .scale(
                                                                            scale:
                                                                                0.8,
                                                                            child:
                                                                                Container(
                                                                              height: 30.h,
                                                                              // width: MediaQuery.of(context)
                                                                              //         .size
                                                                              //         .width /
                                                                              //     3,
          
                                                                              decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey.shade200), borderRadius: BorderRadius.circular(10.0), boxShadow: const [
                                                                                BoxShadow(
                                                                                    // ignore: use_full_hex_values_for_flutter_colors
                                                                                    color: Color(0xff00000050),
                                                                                    blurRadius: 0.4,
                                                                                    spreadRadius: 0.4)
                                                                              ]),
                                                                              child: DropdownButtonFormField(
                                                                                elevation: 0,
                                                                                // isExpanded:
                                                                                //     true,
          
                                                                                dropdownColor: Colors.white,
                                                                                value: availableresons[0].rsnId ?? '',
                                                                                style: kfontstyle(color: Colors.black),
                                                                                isExpanded: true,
                                                                                decoration: InputDecoration(
                                                                                  filled: true,
                                                                                  fillColor: Colors.white,
                                                                                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                                                                  border: OutlineInputBorder(
                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                    borderSide: const BorderSide(color: Colors.transparent),
                                                                                  ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                    borderSide: const BorderSide(color: Colors.transparent),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                    borderSide: const BorderSide(color: Colors.transparent),
                                                                                  ),
                                                                                ),
                                                                                items: availableresons.map((ApprovalResonModel item) {
                                                                                  return DropdownMenuItem(
                                                                                    value: item.rsnId,
                                                                                    child: Text(
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      selectedLocale?.languageCode == 'en' ? item.rsnName ?? '' : item.rsnArName ?? '',
                                                                                      style: kfontstyle(fontSize: 10.sp),
                                                                                    ),
                                                                                  );
                                                                                }).toList(),
                                                                                onChanged: (value) {
                                                                                  selectedresons[index] = value ?? '';
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                    getReasonsFailedState:
                                                                        () =>
                                                                            const SizedBox(),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            // SizedBox(
                                                            //   width: 10.w,
                                                            // ),
          
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                BlocBuilder<
                                                                    AapprovalOrRejectRadioCubit,
                                                                    AapprovalOrRejectRadioState>(
                                                                  builder:
                                                                      (context,
                                                                          state) {
                                                                    return Row(
                                                                      children: [
                                                                        Transform
                                                                            .scale(
                                                                          scale:
                                                                              0.8,
                                                                          origin: const Offset(
                                                                              -120,
                                                                              0),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () {
                                                                              setState(() {
                                                                                statuslist[index] = true;
                                                                                loadingCount = 0;
                                                                                setState(() {});
                                                                                approvedProducts[index] = ScheduledReturnPrdModel(
                                                                                  reason: selectedresons[index],
                                                                                  rrdId: details[index].rrdId,
                                                                                  status: "A",
                                                                                );
                                                                              });
                                                                            },
                                                                            child:
                                                                                Row(
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
                                                                                    statuslist[index] = true;
                                                                                    loadingCount = 0;
                                                                                    setState(() {});
                                                                                    approvedProducts[index] = ScheduledReturnPrdModel(
                                                                                      reason: selectedresons[index],
                                                                                      rrdId: details[index].rrdId,
                                                                                      status: "A",
                                                                                    );
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
                                                                          origin: const Offset(
                                                                              -120,
                                                                              0),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () {
                                                                              setState(() {
                                                                                statuslist[index] = false;
                                                                                loadingCount = 0;
                                                                                setState(() {});
                                                                                approvedProducts[index] = ScheduledReturnPrdModel(
                                                                                  reason: selectedresons[index],
                                                                                  rrdId: details[index].rrdId,
                                                                                  status: "R",
                                                                                );
                                                                              });
                                                                            },
                                                                            child:
                                                                                Row(
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
                                                                                    statuslist[index] = false;
                                                                                    loadingCount = 0;
                                                                                    setState(() {});
                                                                                    approvedProducts[index] = ScheduledReturnPrdModel(
                                                                                      reason: selectedresons[index],
                                                                                      rrdId: details[index].rrdId,
                                                                                      status: "R",
                                                                                    );
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
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    : Transform.scale(
                                                        scale: .9,
                                                        origin: const Offset(
                                                            450, 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Expanded(
                                                                child: details[index]
                                                                            .status ==
                                                                        'R'
                                                                    ? Transform
                                                                        .scale(
                                                                        scale:
                                                                            0.8,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              30.h,
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
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                                                                            child:
                                                                                Text(details[index].rsnName ?? ''),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    : const SizedBox()),
                                                            BlocBuilder<
                                                                AapprovalOrRejectRadioCubit,
                                                                AapprovalOrRejectRadioState>(
                                                              builder: (context,
                                                                  state) {
                                                                return Row(
                                                                  children: [
                                                                    Transform
                                                                        .scale(
                                                                      scale:
                                                                          0.8,
                                                                      origin: const Offset(
                                                                          -120,
                                                                          0),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          details[index].status == 'Rejected'
                                                                              ? Container(
                                                                                  height: 30.h,
                                                                                  width: 110.w,
                                                                                  decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey.shade200), borderRadius: BorderRadius.circular(10.0), boxShadow: const [
                                                                                    BoxShadow(
                                                                                        // ignore: use_full_hex_values_for_flutter_colors
                                                                                        color: Color(0xff00000050),
                                                                                        blurRadius: 0.4,
                                                                                        spreadRadius: 0.4)
                                                                                  ]),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                                                                                    child: Text(details[index].rsnName ?? ''),
                                                                                  ),
                                                                                )
                                                                              : const SizedBox(),
                                                                          Radio(
                                                                            fillColor:
                                                                                MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                              return (statuslist[index] == true) ? Colors.green.shade300 : Colors.grey;
                                                                            }),
                                                                            value: statuslist[index] == null
                                                                                ? false
                                                                                : statuslist[index] == true
                                                                                    ? true
                                                                                    : false,
                                                                            groupValue:
                                                                                true,
                                                                            onChanged:
                                                                                (value) {},
                                                                          ),
                                                                          Text(
                                                                            AppLocalizations.of(context)!.approve,
                                                                            style:
                                                                                kfontstyle(),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Transform
                                                                        .scale(
                                                                      scale:
                                                                          0.8,
                                                                      origin: const Offset(
                                                                          -120,
                                                                          0),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Radio(
                                                                            fillColor:
                                                                                MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                              return (statuslist[index] != null && !statuslist[index]!) ? Colors.red.shade300 : Colors.grey;
                                                                            }),
                                                                            value: statuslist[index] == null
                                                                                ? true
                                                                                : statuslist[index] == true
                                                                                    ? true
                                                                                    : false,
                                                                            groupValue:
                                                                                false,
                                                                            onChanged:
                                                                                (value) {},
                                                                          ),
                                                                          Text(
                                                                            AppLocalizations.of(context)!.reject,
                                                                            style:
                                                                                kfontstyle(),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                );
                                                              },
                                                            )
                                                          ],
                                                        ),
                                                      )
                                              ],
                                            ),
                                          ),
                                          separatorBuilder: (context, index) =>
                                              Divider(
                                            color: Colors.grey[300],
                                          ),
                                          itemCount: details.length,
                                        ),
                          scheduledReturnDetailFailedState: () => Center(
                            child: Text(
                              AppLocalizations.of(context)!.noDataAvailable,
                              style: kfontstyle(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    width: double.infinity,
                    child: Column(
                      children: [
                        /*  Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            controller: _remarksctrls,
                            enabled: widget.disputenote.status == 'Pending'
                                ? true
                                : false,
                            decoration: InputDecoration(
                              hintText: 'Remarks',
                              hintStyle: kfontstyle(
                                fontSize: 12.sp,
                                color: widget.disputenote.status == 'Pending'
                                    ? Colors.red.shade300
                                    : Colors.grey,
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[300]!),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[300]!),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[300]!),
                              ),
                            ),
                          ),
                        ), */
          
                        /* widget.scheduledreturn.status == "Pending"
                            ? Expanded(
                                child: 
                              )
                            : /* const SizedBox(height: ,) */ const Spacer(), */
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Visibility(
                            visible: widget.scheduledreturn.status == 'Pending'
                                ? true
                                : false,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: BlocConsumer<RouteForScCubit,
                                      RouteForScState>(
                                    listener: (context, state) {
                                      state.when(
                                        getAllRoutesForScReturnState: (routes) {
                                          availableroutes.clear();
          
                                          availableroutes = [
                                            RouteModel(
                                                rotId: '-1',
                                                rotName: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? 'Select a Route'
                                                    : 'حدد الطريق')
                                          ];
          
                                          if (routes != null) {
                                            availableroutes.addAll(routes);
                                          }
                                        },
                                        getRoutesFailedState: () {
                                          availableroutes.clear();
          
                                          availableroutes = [
                                            RouteModel(
                                                rotId: '-1',
                                                rotName: AppLocalizations.of(
                                                        context)!
                                                    .noRoutesAvailable)
                                          ];
                                        },
                                      );
                                    },
                                    builder: (context, state) {
                                      return Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 0,
                                          ),
                                          child: state.when(
                                            getAllRoutesForScReturnState:
                                                (routes) => routes == null ||
                                                        availableroutes.isEmpty
                                                    ? const ShimmerContainers(
                                                        height: 30,
                                                        width: double.infinity,
                                                      )
                                                    : Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 0),
                                                        child: Container(
                                                          height: 30.h,
                                                          // width: MediaQuery.of(context)
                                                          //         .size
                                                          //         .width /
                                                          //     3,
          
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade200),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                    // ignore: use_full_hex_values_for_flutter_colors
                                                                    color: Color(
                                                                        0xff00000050),
                                                                    blurRadius:
                                                                        0.4,
                                                                    spreadRadius:
                                                                        0.4)
                                                              ]),
                                                          child:
                                                              DropdownButtonFormField(
                                                            isExpanded: true,
                                                            elevation: 0,
                                                            // isExpanded:
                                                            //     true,
          
                                                            dropdownColor:
                                                                Colors.white,
          
                                                            decoration:
                                                                InputDecoration(
                                                              filled: true,
                                                              fillColor:
                                                                  Colors.white,
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          8),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .transparent),
                                                              ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .transparent),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .transparent),
                                                              ),
                                                            ),
                                                            value:
                                                                availableroutes[
                                                                        0]
                                                                    .rotId,
                                                            style: kfontstyle(
                                                                color: Colors
                                                                    .black),
                                                            menuMaxHeight:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
          
                                                            items: availableroutes
                                                                .map((RouteModel
                                                                    item) {
                                                              return DropdownMenuItem(
                                                                value:
                                                                    item.rotId,
                                                                child: Text(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  item.rotName ??
                                                                      '',
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          10.sp),
                                                                ),
                                                              );
                                                            }).toList(),
                                                            onChanged: (value) {
                                                              selectedRoute =
                                                                  value ?? '-1';
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                            getRoutesFailedState: () =>
                                                const SizedBox(),
                                          ));
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: widget.scheduledreturn.status ==
                                            'Pending'
                                        ? Colors.green.shade300
                                        : Colors.grey[300],
                                    onPressed: () {
                                      if (widget.scheduledreturn.status ==
                                          'Pending') {
                                        if (selectedRoute != '-1') {
                                          if (approvedProducts.contains(null)) {
                                            showCupertinoDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CupertinoAlertDialog(
                                                title: Text(AppLocalizations.of(
                                                        context)!
                                                    .alert),
                                                content: Text(AppLocalizations
                                                        .of(context)!
                                                    .pleaseMakeSureToApproveAndReject),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      // Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .ok),
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else if (checkrejectedstatus() ==
                                              false) {
                                            showCupertinoDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CupertinoAlertDialog(
                                                title: Text(AppLocalizations.of(
                                                        context)!
                                                    .alert),
                                                content: Text(AppLocalizations
                                                        .of(context)!
                                                    .youShouldApproveOrRejectAndSpecifyReason),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      // Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .ok),
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else {
                                            showCupertinoDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CupertinoAlertDialog(
                                                title: Text(AppLocalizations.of(
                                                        context)!
                                                    .alert),
                                                content: Text(
                                                    AppLocalizations.of(
                                                            context)!
                                                        .doyouWantToProceed),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      setState(() {});
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .cancel),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      loadingCount = 0;
                                                      setState(() {});
                                                      Navigator.pop(context);
                                                      context
                                                          .read<
                                                              SchduledReturnApprovalBloc>()
                                                          .add(
                                                              const AddScheduledReturnApprovalLoadingEvent());
          
                                                      context
                                                          .read<
                                                              SchduledReturnApprovalBloc>()
                                                          .add(
                                                            APProveOrRejectScheduledReturnEvent(
                                                              approve:
                                                                  ScheduledReturnApprovalInModel(
                                                                returnId: widget
                                                                    .scheduledreturn
                                                                    .rrhId,
                                                                routeId:
                                                                    selectedRoute,
                                                                products:
                                                                    approvedProducts,
                                                                userId: widget
                                                                    .scheduledreturn
                                                                    .userID,
                                                              ),
                                                            ),
                                                          );
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .proceed),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        } else {
                                          showCupertinoDialog(
                                            context: context,
                                            builder: (context) =>
                                                CupertinoAlertDialog(
                                              title: Text(
                                                  AppLocalizations.of(context)!
                                                      .alert),
                                              content: Text(
                                                  AppLocalizations.of(context)!
                                                      .selectRoute),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    // Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .ok),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                      }
                                    },
                                    child: Text(
                                      AppLocalizations.of(context)!.confirm,
                                      style: kfontstyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  bool checkrejectedstatus() {
    log(jsonEncode(approvedProducts));
    int index = statuslist.indexWhere((element) => element == false);
    if (index < 0) {
      return true;
    } else if (selectedresons[index].isNotEmpty &&
        selectedresons[index] != "-1") {
      return true;
    } else {
      return false;
    }
  }
}

const ddvalues = [
  DropdownMenuItem(
    value: '0',
    child: Text('Select Reason'),
  ),
  DropdownMenuItem(
    value: '1',
    child: Text('reason1'),
  ),
  DropdownMenuItem(
    value: '2',
    child: Text('reason2'),
  )
];
List<ApprovalResonModel> ddtest = [
  ApprovalResonModel(rsnId: '-1', rsnName: 'Select route', rsnType: 'null'),
  ApprovalResonModel(rsnId: '1', rsnName: 'route 1', rsnType: 'null'),
  ApprovalResonModel(rsnId: '2', rsnName: 'route 2', rsnType: 'null')
];

showPopAlert(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text('Alert'),
      content: const Text(
          "Please make sure you have approved or rejected all the items"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.pop(context);
          },
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}

showPopAlertConfrom(BuildContext context, LoginUserModel user) {
  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text('Alert'),
      content: const Text("Confirm going back from the screen"),
      actions: [
        TextButton(
          onPressed: () {
            // Navigator.popUntil(context, (route) => false);
            Navigator.pop(context);
          },
          child: const Text('cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.pop(context);

            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduledReturnHEaderScreen(user: user),
                ));
          },
          child: const Text('confirm'),
        ),
      ],
    ),
  );
}
