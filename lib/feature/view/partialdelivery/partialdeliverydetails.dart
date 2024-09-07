import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_approval_model/partial_delivery_approval_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_header_model/partial_delivery_header_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_product_model/partial_delivery_product_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_reason_model/partial_delivery_reason_model.dart';

import 'package:customer_connect/feature/state/bloc/partialdeliveryapproval/partial_delivery_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/partialdeliverydetailsbloc/partial_delivery_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/partialdeliveryreasons/partial_delivery_reason_bloc.dart';

import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';

import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PArtialDeliveryDetails extends StatefulWidget {
  final PartialDeliveryHeaderModel header;
  final LoginUserModel user;
  final String currentMode;
  const PArtialDeliveryDetails(
      {super.key,
      required this.user,
      required this.header,
      required this.currentMode});

  @override
  State<PArtialDeliveryDetails> createState() => _PArtialDeliveryDetails();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
int loadingCount = 0;
bool isLoading = false;
int approvedCount = 0;
List<PartialDeliveryProductModel?> _partialdeliveryapproved = [];
int _totalcount = 0;
TextEditingController _searchctrls = TextEditingController();
Timer? debounce;

List<PartialDeliveryReasonModel> availableresons = [];

class _PArtialDeliveryDetails extends State<PArtialDeliveryDetails> {
  @override
  void initState() {
    _partialdeliveryapproved.clear();
    approvedCount = 0;
    _totalcount = 0;
    loadingCount = 0;
    context
        .read<PartialDeliveryDetailsBloc>()
        .add(const ClearPartialDeliveryDetails());
    context.read<PartialDeliveryDetailsBloc>().add(
        GetPartialDeliveryDetailsEvent(
            reqID: widget.header.dahId!, searchQuery: ''));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // log(jsonEncode(_partialdeliveryapproved));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            context.read<PartialDeliveryHeaderBloc>().add(
                GetPartialDeliveryHeaderEvent(
                    userID: widget.user.usrId!,
                    mode: widget.currentMode,
                    searchQuery: ''));
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "${AppLocalizations.of(context)!.partial_delivery} ${AppLocalizations.of(context)!.details}",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        canPop: true,
        onPopInvoked: (didPop) {
          // if (_approvedCount != 0 && _approvedCount != _totalcount) {
          //   Future.delayed(const Duration(microseconds: 100), () {
          //     showPopAlert(context);
          //   });
          // } else {
          context.read<PartialDeliveryHeaderBloc>().add(
              GetPartialDeliveryHeaderEvent(
                  userID: widget.user.usrId!,
                  mode: widget.currentMode,
                  searchQuery: ''));
          // context.read<NavigatetoBackCubit>().popFromScreen(true);
          // }
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 10,
                    decoration: BoxDecoration(
                        color: const Color(0xfffee8e0),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${widget.header.orderId}',
                            style: blueTextStyle()),
                        /* Row(
                          children: [
                            Text('${widget.header.cusCode} - ',
                                style: blueTextStyle()),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  selectedLocale?.languageCode == 'en'
                                      ? "${widget.header.cusName}"
                                      : widget.header.arcusName ?? '',
                                  style: subTitleTextStyle()),
                            ),
                          ],
                        ), */
                        RichText(
                          text: TextSpan(
                              style:
                                  DefaultTextStyle.of(context).style.copyWith(
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none,
                                      ),
                              children: [
                                TextSpan(
                                    text: '${widget.header.cusCode} - ',
                                    style: blueTextStyle()),
                                TextSpan(
                                    text: selectedLocale?.languageCode == 'en'
                                        ? "${widget.header.cusName}"
                                        : widget.header.arcusName ?? '',
                                    style: subTitleTextStyle())
                              ]),
                        ),
                        Text(
                          '${widget.header.createdDate} ',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: _searchctrls,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
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
                                      .read<PartialDeliveryDetailsBloc>()
                                      .add(GetPartialDeliveryDetailsEvent(
                                          reqID: widget.header.dahId!,
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
                      context.read<PartialDeliveryDetailsBloc>().add(
                          GetPartialDeliveryDetailsEvent(
                              reqID: widget.header.dahId!,
                              searchQuery: value.trim()));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            BlocListener<PartialDeliveryApprovalBloc,
                PartialDeliveryApprovalState>(
              listener: (context, state) {
                state.when(
                  getPartialDeliveryApprovalState: (response) {
                    if (response != null) {
                      Navigator.pop(context);
                      isLoading = false;

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
                  partialDeliveryApprovalLoading: () {
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
                  partialDeliveryApprovslFailed: () {
                    statuslist = List.generate(_totalcount, (index) => null);
                    setState(() {});
                    Navigator.pop(context);
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(AppLocalizations.of(context)!.alert),
                        content: Text(
                            AppLocalizations.of(context)!.somethingWentWrong),
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
                );
              },
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 30.h,
                      width: double.infinity,
                      color: const Color(0xfff5f5f5),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Text(
                                AppLocalizations.of(context)!.item,
                                style: boxHeading(),
                              ),
                            ),
                            /* SizedBox(
                              width: 135.w,
                            ), */
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Text(
                                AppLocalizations.of(context)!.ordQty,
                                style: boxHeading(),
                              ),
                            ),
                            /*  SizedBox(
                              width: 60.w,
                            ), */
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 0,
                              child: Text(
                                AppLocalizations.of(context)!.del_qty,
                                style: boxHeading(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    BlocConsumer<PartialDeliveryDetailsBloc,
                        PartialDeliveryDetailsState>(
                      listener: (context, state) {
                        state.when(
                          getAllPartialDetliveryState: (pdet) {
                            if (pdet != null) {
                              _partialdeliveryapproved =
                                  List.generate(pdet.length, (index) => null);
                              _totalcount = pdet.length;
                              context.read<PartialDeliveryReasonBloc>().add(
                                  const GetPartialDeliveryEvent(rsnType: ''));
                              statuslist.clear();

                              statuslist /* length = details.length; */
                                  = List.generate(pdet.length, (index) => null);

                              for (int i = 0; i < pdet.length; i++) {
                                if (widget
                                    .header.dahApprovalStatus!.isNotEmpty) {
                                  if (pdet[i].detStatus == 'Approved') {
                                    statuslist[i] = true;
                                  } else if (pdet[i].detStatus == 'Rejected') {
                                    statuslist[i] = false;
                                  } else {
                                    statuslist[i] = null;
                                  }
                                }
                              }
                            }
                          },
                          partialDeliveryDetailsFailedState: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.when(
                          getAllPartialDetliveryState: (pdet) => pdet == null
                              ? Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
                                  ),
                                )
                              : ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            selectedLocale?.languageCode == 'en'
                                                ? 10
                                                : 45,
                                        right: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    pdet[index].prdCode ?? '',
                                                    style: loadTextStyle(),
                                                  ),
                                                  Text(
                                                      selectedLocale
                                                                  ?.languageCode ==
                                                              'en'
                                                          ? pdet[index]
                                                                  .prdName ??
                                                              ''
                                                          : pdet[index]
                                                                  .arprdName ??
                                                              '',
                                                      style:
                                                          subTitleTextStyle()),
                                                ],
                                              ),
                                            ),
                                            // SizedBox(
                                            //   width: 145.w,
                                            // ),
                                            Column(
                                              children: [
                                                Text(
                                                  pdet[index]
                                                              .orderedHQty!
                                                              .isEmpty ||
                                                          pdet[index]
                                                                  .orderedHQty ==
                                                              null
                                                      ? "-"
                                                      : pdet[index]
                                                              .orderedHQty ??
                                                          '',
                                                  style: subTitleTextStyle(),
                                                ),
                                                Text(
                                                  pdet[index]
                                                              .orderedLQty!
                                                              .isEmpty ||
                                                          pdet[index]
                                                                  .orderedLQty ==
                                                              null
                                                      ? "-"
                                                      : pdet[index]
                                                              .orderedLQty ??
                                                          '',
                                                  style: subTitleTextStyle(),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: selectedLocale
                                                          ?.languageCode ==
                                                      'en'
                                                  ? 75.w
                                                  : 60.w,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  pdet[index].deliveringHQty ==
                                                              '0' ||
                                                          pdet[index]
                                                                  .deliveringHQty ==
                                                              null
                                                      ? "0"
                                                      : pdet[index]
                                                              .deliveringHQty ??
                                                          '0',
                                                  style: subTitleTextStyle(),
                                                ),
                                                Text(
                                                  pdet[index].deliveringLQty ==
                                                              '0' ||
                                                          pdet[index]
                                                                  .deliveringLQty ==
                                                              null
                                                      ? "0"
                                                      : pdet[index]
                                                              .deliveringLQty ??
                                                          '0',
                                                  style: subTitleTextStyle(),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        widget.header.dahApprovalStatus ==
                                                    'Pending' ||
                                                widget.header
                                                        .dahApprovalStatus ==
                                                    ''
                                            ? Transform.scale(
                                                scale: .9,
                                                origin: const Offset(450, 0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: BlocConsumer<
                                                          PartialDeliveryReasonBloc,
                                                          PartialDeliveryReasonState>(
                                                        listener:
                                                            (context, state) {
                                                          state.when(
                                                            getPArtialDeliveryReasonsState:
                                                                (resons) {
                                                              if (resons !=
                                                                  null) {
                                                                selectedresons
                                                                    .clear();

                                                                availableresons
                                                                    .clear();
                                                                availableresons =
                                                                    [
                                                                  PartialDeliveryReasonModel(
                                                                    rsnId: '-1',
                                                                    rsnName: selectedLocale?.languageCode ==
                                                                            'en'
                                                                        ? 'Select reason'
                                                                        : AppLocalizations.of(context)!
                                                                            .selectReason,
                                                                    rsnArName: AppLocalizations.of(
                                                                            context)!
                                                                        .selectReason,
                                                                  )
                                                                ];

                                                                selectedresons =
                                                                    List.generate(
                                                                        pdet
                                                                            .length,
                                                                        (index) =>
                                                                            '-1');
                                                                availableresons
                                                                    .addAll(
                                                                        resons);
                                                              }
                                                            },
                                                            partialDeliveryFailedState:
                                                                () {},
                                                          );
                                                        },
                                                        builder:
                                                            (context, state) {
                                                          return state.when(
                                                            getPArtialDeliveryReasonsState:
                                                                (resons) => resons ==
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
                                                                          height:
                                                                              30.h,
                                                                          // width: MediaQuery.of(context).size.width / 3,
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
                                                                              DropdownButtonFormField(
                                                                            elevation:
                                                                                0,
                                                                            dropdownColor:
                                                                                Colors.white,
                                                                            value:
                                                                                availableresons[0].rsnId ?? '',
                                                                            style:
                                                                                kfontstyle(color: Colors.black),
                                                                            isExpanded:
                                                                                true,
                                                                            decoration:
                                                                                InputDecoration(
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
                                                                            items:
                                                                                availableresons.map((PartialDeliveryReasonModel item) {
                                                                              return DropdownMenuItem(
                                                                                value: item.rsnId,
                                                                                child: Text(
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  selectedLocale?.languageCode == 'en' ? item.rsnName ?? '' : item.rsnArName ?? '',
                                                                                  style: kfontstyle(fontSize: 9.sp),
                                                                                ),
                                                                              );
                                                                            }).toList(),
                                                                            onChanged:
                                                                                (value) {
                                                                              selectedresons[index] = value ?? '';
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                            partialDeliveryFailedState:
                                                                () =>
                                                                    const SizedBox(),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    BlocBuilder<
                                                        AapprovalOrRejectRadioCubit,
                                                        AapprovalOrRejectRadioState>(
                                                      builder:
                                                          (context, state) {
                                                        return AbsorbPointer(
                                                          absorbing: widget
                                                                  .header
                                                                  .dahApprovalStatus!
                                                                  .isNotEmpty
                                                              ? true
                                                              : false,
                                                          child: Row(
                                                            children: [
                                                              Transform.scale(
                                                                scale: 0.8,
                                                                origin:
                                                                    const Offset(
                                                                        -120,
                                                                        0),
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      statuslist[
                                                                              index] =
                                                                          true;
                                                                      loadingCount =
                                                                          0;
                                                                      setState(
                                                                          () {});

                                                                      _partialdeliveryapproved[index] = PartialDeliveryProductModel(
                                                                          dadId: pdet[index]
                                                                              .dadId,
                                                                          reason: selectedresons[
                                                                              index],
                                                                          status:
                                                                              'A');
                                                                    });
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Radio(
                                                                        fillColor: MaterialStateProperty.resolveWith<
                                                                            Color>((Set<
                                                                                MaterialState>
                                                                            states) {
                                                                          return (statuslist[index] == true)
                                                                              ? Colors.green.shade300
                                                                              : Colors.grey;
                                                                        }),
                                                                        /* activeColor: isselected == true
                                                                                                                                                                                                    ? const Color(0xff0075ff)
                                                                                                                                                                                                    : Colors.grey, */
                                                                        value: statuslist[index] ==
                                                                                null
                                                                            ? false
                                                                            : statuslist[index] == true
                                                                                ? true
                                                                                : false,
                                                                        groupValue:
                                                                            true,
                                                                        onChanged:
                                                                            (value) {
                                                                          statuslist[index] =
                                                                              true;
                                                                          loadingCount =
                                                                              0;
                                                                          setState(
                                                                              () {});

                                                                          _partialdeliveryapproved[index] = PartialDeliveryProductModel(
                                                                              dadId: pdet[index].dadId,
                                                                              reason: selectedresons[index],
                                                                              status: 'A');
                                                                        },
                                                                      ),
                                                                      Text(
                                                                        AppLocalizations.of(context)!
                                                                            .approve,
                                                                        style:
                                                                            kfontstyle(),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Transform.scale(
                                                                scale: 0.8,
                                                                origin:
                                                                    const Offset(
                                                                        -120,
                                                                        0),
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      statuslist[
                                                                              index] =
                                                                          false;

                                                                      loadingCount =
                                                                          0;
                                                                      setState(
                                                                          () {});
                                                                      _partialdeliveryapproved[index] = PartialDeliveryProductModel(
                                                                          dadId: pdet[index]
                                                                              .dadId,
                                                                          reason: selectedresons[
                                                                              index],
                                                                          status:
                                                                              "R");
                                                                    });
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Radio(
                                                                        fillColor: MaterialStateProperty.resolveWith<
                                                                            Color>((Set<
                                                                                MaterialState>
                                                                            states) {
                                                                          return (statuslist[index] != null && !statuslist[index]!)
                                                                              ? Colors.red.shade300
                                                                              : Colors.grey;
                                                                        }),
                                                                        /*  activeColor: isselected == false
                                                                                                                                                                                                    ? const Color(0xff0075ff)
                                                                                                                                                                                                    : Colors.grey, */
                                                                        value: statuslist[index] ==
                                                                                null
                                                                            ? true
                                                                            : statuslist[index] == true
                                                                                ? true
                                                                                : false,
                                                                        groupValue:
                                                                            false,
                                                                        onChanged:
                                                                            (value) {
                                                                          statuslist[index] =
                                                                              false;

                                                                          loadingCount =
                                                                              0;
                                                                          setState(
                                                                              () {});
                                                                          _partialdeliveryapproved[index] = PartialDeliveryProductModel(
                                                                              dadId: pdet[index].dadId,
                                                                              reason: selectedresons[index],
                                                                              status: "R");
                                                                        },
                                                                      ),
                                                                      Text(
                                                                        AppLocalizations.of(context)!
                                                                            .reject,
                                                                        style:
                                                                            kfontstyle(),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    )
                                                  ],
                                                ),
                                              )
                                            : Transform.scale(
                                                scale: .9,
                                                origin: const Offset(450, 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Expanded(
                                                        child: pdet[index]
                                                                    .detStatus ==
                                                                'Rejected'
                                                            ? Transform.scale(
                                                                scale: 0.8,
                                                                child:
                                                                    Container(
                                                                  height: 30.h,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      border: Border.all(
                                                                          color: Colors
                                                                              .grey
                                                                              .shade200),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
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
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                        .symmetric(
                                                                        vertical:
                                                                            7,
                                                                        horizontal:
                                                                            10),
                                                                    child: Text(selectedLocale?.languageCode ==
                                                                            'en'
                                                                        ? pdet[index].reason ??
                                                                            ''
                                                                        : pdet[index].arReason ??
                                                                            ''),
                                                                  ),
                                                                ),
                                                              )
                                                            : const SizedBox()),
                                                    BlocBuilder<
                                                        AapprovalOrRejectRadioCubit,
                                                        AapprovalOrRejectRadioState>(
                                                      builder:
                                                          (context, state) {
                                                        return Row(
                                                          children: [
                                                            Transform.scale(
                                                              scale: 0.8,
                                                              origin:
                                                                  const Offset(
                                                                      -120, 0),
                                                              child: Row(
                                                                children: [
                                                                  Radio(
                                                                    fillColor: MaterialStateProperty.resolveWith<
                                                                        Color>((Set<
                                                                            MaterialState>
                                                                        states) {
                                                                      return (statuslist[index] ==
                                                                              true)
                                                                          ? Colors
                                                                              .green
                                                                              .shade300
                                                                          : Colors
                                                                              .grey;
                                                                    }),
                                                                    value: statuslist[index] ==
                                                                            null
                                                                        ? false
                                                                        : statuslist[index] ==
                                                                                true
                                                                            ? true
                                                                            : false,
                                                                    groupValue:
                                                                        true,
                                                                    onChanged:
                                                                        (value) {},
                                                                  ),
                                                                  Text(
                                                                    AppLocalizations.of(
                                                                            context)!
                                                                        .approve,
                                                                    style:
                                                                        kfontstyle(),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Transform.scale(
                                                              scale: 0.8,
                                                              origin:
                                                                  const Offset(
                                                                      -120, 0),
                                                              child: Row(
                                                                children: [
                                                                  Radio(
                                                                    fillColor: MaterialStateProperty.resolveWith<
                                                                        Color>((Set<
                                                                            MaterialState>
                                                                        states) {
                                                                      return (statuslist[index] != null &&
                                                                              !statuslist[
                                                                                  index]!)
                                                                          ? Colors
                                                                              .red
                                                                              .shade300
                                                                          : Colors
                                                                              .grey;
                                                                    }),
                                                                    value: statuslist[index] ==
                                                                            null
                                                                        ? true
                                                                        : statuslist[index] ==
                                                                                true
                                                                            ? true
                                                                            : false,
                                                                    groupValue:
                                                                        false,
                                                                    onChanged:
                                                                        (value) {},
                                                                  ),
                                                                  Text(
                                                                    AppLocalizations.of(
                                                                            context)!
                                                                        .reject,
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
                                  separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                                  itemCount: pdet.length,
                                ),
                          partialDeliveryDetailsFailedState: () => Center(
                            child: Text(
                              AppLocalizations.of(context)!.noDataAvailable,
                              style: kfontstyle(),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Flexible(
                            flex: 1, fit: FlexFit.tight, child: SizedBox()),
                        SizedBox(
                          width: 10.w,
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Visibility(
                            visible:
                                widget.header.dahApprovalStatus == 'Pending' ||
                                        widget.header.dahApprovalStatus!.isEmpty
                                    ? true
                                    : false,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: widget.header.dahApprovalStatus ==
                                          'Pending' ||
                                      widget.header.dahApprovalStatus!.isEmpty
                                  ? Colors.green.shade300
                                  : Colors.grey[300],
                              onPressed: () {
                                if (widget.header.dahApprovalStatus ==
                                        'Pending' ||
                                    widget.header.dahApprovalStatus!.isEmpty) {
                                  if (_partialdeliveryapproved.contains(null)) {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(AppLocalizations.of(
                                                context)!
                                            .pleaseMakeSureToApproveAndReject),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              // Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else if (checkrejectedstatus() == false) {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(
                                            AppLocalizations.of(context)!
                                                .selectReason),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
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
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(
                                            AppLocalizations.of(context)!
                                                .doyouWantToProceed),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .cancel),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              loadingCount = 0;
                                              setState(() {});
                                              Navigator.pop(context);

                                              context
                                                  .read<
                                                      PartialDeliveryApprovalBloc>()
                                                  .add(
                                                      const PartialDeliveryLoadingEvent());

                                              context
                                                  .read<
                                                      PartialDeliveryApprovalBloc>()
                                                  .add(GetPartialDeliveryApprovalEvent(
                                                      approvalin:
                                                          PartialDeliveryApprovalModel(
                                                              products:
                                                                  _partialdeliveryapproved,
                                                              returnId:
                                                                  widget.header
                                                                      .dahId,
                                                              userId: widget
                                                                  .user
                                                                  .usrId)));
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .proceed),
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
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool checkrejectedstatus() {
    // log(jsonEncode(_procechangeapproved));
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
