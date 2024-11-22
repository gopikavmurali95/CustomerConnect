import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/void_transacrtion_approval_in_model/void_transacrtion_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/void_transaction_json_model/void_transaction_json_model.dart';
import 'package:customer_connect/feature/state/bloc/voidtransactionapproval/void_transaction_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/voidtransactionheader/void_transaction_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/voidtransactionrejection/void_transaction_rejection_bloc.dart';
import 'package:customer_connect/feature/state/cubit/voidtransactionselection/void_transaction_selection_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VoidTranscactioHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const VoidTranscactioHeaderScreen({super.key, required this.user});

  @override
  State<VoidTranscactioHeaderScreen> createState() =>
      _VoidTranscactioHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterVoidTransaction = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Approved", mode: 'A'),
  ApprovalStatusFilterModel(statusName: "Rejected", mode: 'R'),
];
TextEditingController _voidTranHeaderSearchCtrl = TextEditingController();
Timer? debounce;
String selectedVoidTransactionMode = 'P';
List<VoidTransactionJsonModel> voidTransactionJsonstriongList = [];
bool isTransactionProcessed = false;

class _VoidTranscactioHeaderScreenState
    extends State<VoidTranscactioHeaderScreen> {
  @override
  void initState() {
    selectedVoidTransactionMode = 'P';
    _voidTranHeaderSearchCtrl.clear();
    ddfilterVoidTransaction = [
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Pending" : "قيد الانتظار",
          mode: 'P'),
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Approved" : "موافقة",
          mode: 'A'),
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == "en" ? "Rejected" : "مرفوض",
          mode: 'R'),
    ];
    context
        .read<VoidTransactionHeaderBloc>()
        .add(const ClearVoidTransactionHeader());
    context.read<VoidTransactionHeaderBloc>().add(
        const GetVoidTransactionHeaderEvent(statusValue: "P", searchQuery: ''));
    voidTransactionJsonstriongList.clear();
    context.read<VoidTransactionSelectionCubit>().selectedHeadersList([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.voidTransaction,
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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 30.h,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: _voidTranHeaderSearchCtrl,
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
                            if (_voidTranHeaderSearchCtrl.text.isNotEmpty) {
                              _voidTranHeaderSearchCtrl.clear();

                              context
                                  .read<VoidTransactionHeaderBloc>()
                                  .add(const ClearVoidTransactionHeader());
                              context.read<VoidTransactionHeaderBloc>().add(
                                  GetVoidTransactionHeaderEvent(
                                      statusValue: selectedVoidTransactionMode,
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
                  context.read<VoidTransactionHeaderBloc>().add(
                      GetVoidTransactionHeaderEvent(
                          statusValue: selectedVoidTransactionMode,
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
              value: selectedVoidTransactionMode,
              dropdownColor: Colors.white,
              style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
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
              items: ddfilterVoidTransaction
                  .map(
                    (e) => DropdownMenuItem(
                      value: e.mode,
                      child: Text(e.statusName),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                selectedVoidTransactionMode = value!;
                if (selectedVoidTransactionMode != 'P') {
                  voidTransactionJsonstriongList.clear();
                  setState(() {});
                }
                context
                    .read<VoidTransactionHeaderBloc>()
                    .add(const ClearVoidTransactionHeader());
                context.read<VoidTransactionHeaderBloc>().add(
                    GetVoidTransactionHeaderEvent(
                        statusValue: value,
                        searchQuery: _voidTranHeaderSearchCtrl.text));
                // setState(() {});
              },
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: BlocBuilder<VoidTransactionHeaderBloc,
              VoidTransactionHeaderState>(builder: (context, state) {
            return state.when(
              getvoidTransactionHeaderState: (headers) => headers == null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => ShimmerContainers(
                              height: 60.h, width: double.infinity),
                          separatorBuilder: (context, index) => Divider(
                                color: Colors.grey[300],
                              ),
                          itemCount: 10),
                    )
                  : headers.isEmpty
                      ? Center(
                          child: Text(
                            AppLocalizations.of(context)!.noDataAvailable,
                            style: kfontstyle(),
                          ),
                        )
                      : Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    selectedVoidTransactionMode == 'P'
                                        ? AppLocalizations.of(context)!
                                            .pendingApprovals
                                        : selectedVoidTransactionMode == 'A'
                                            ? AppLocalizations.of(context)!
                                                .approvedTransaction
                                            : AppLocalizations.of(context)!
                                                .rejectedTransaction,
                                    style: countHeading(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
                                      headers.length.toString(),
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
                              child: ListView.separated(
                                //physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: headers.length,
                                itemBuilder: (context, index) => Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
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
                                                  headers[index].trnNumber ??
                                                      '',
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff2C6B9E),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 2,
                                                        '${headers[index].rotCode} - ${selectedLocale?.languageCode == "en" ? headers[index].rotName : headers[index].rotArName}',
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
                                                        selectedLocale?.languageCode ==
                                                                "en"
                                                            ? headers[index]
                                                                    .type ??
                                                                ''
                                                            : headers[index]
                                                                    .artype ??
                                                                '',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xff413434)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  headers[index].createdDate ??
                                                      '',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ))
                                          ],
                                        )),
                                        selectedVoidTransactionMode != 'P'
                                            ? const SizedBox.shrink()
                                            : IntrinsicHeight(
                                                child: Row(
                                                  children: [
                                                    VerticalDivider(
                                                      color: Colors.grey[300],
                                                      thickness: 1,
                                                    ),
                                                    BlocBuilder<
                                                        VoidTransactionSelectionCubit,
                                                        VoidTransactionSelectionState>(
                                                      builder:
                                                          (context, state) {
                                                        return state.when(
                                                            voidTransactionSelectedState:
                                                                (selected) =>
                                                                    Checkbox(
                                                                      value: voidTransactionJsonstriongList
                                                                          .where((element) =>
                                                                              element.trnNumber ==
                                                                              headers[index].trnNumber)
                                                                          .isNotEmpty,
                                                                      side: BorderSide(
                                                                          color:
                                                                              Colors.grey[500]!),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4)),
                                                                      activeColor: Colors
                                                                          .green
                                                                          .shade300,
                                                                      onChanged:
                                                                          (value) {
                                                                        if (voidTransactionJsonstriongList
                                                                            .where((element) =>
                                                                                element.trnNumber ==
                                                                                headers[index].trnNumber)
                                                                            .isEmpty) {
                                                                          voidTransactionJsonstriongList.add(VoidTransactionJsonModel(
                                                                              vtaId: headers[index].vtaId,
                                                                              type: headers[index].type == "Order"
                                                                                  ? 'OR'
                                                                                  : headers[index].type == "Sales"
                                                                                      ? 'SL'
                                                                                      : 'AR',
                                                                              trnNumber: headers[index].trnNumber,
                                                                              udpId: headers[index].udpID,
                                                                              userId: widget.user.usrId));
                                                                        } else {
                                                                          voidTransactionJsonstriongList.removeWhere((element) =>
                                                                              element.trnNumber ==
                                                                              headers[index].trnNumber);
                                                                        }
                                                                        setState(
                                                                            () {
                                                                          log(jsonEncode(
                                                                              voidTransactionJsonstriongList));
                                                                        });
                                                                      },
                                                                    ));
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              )
                                      ],
                                    ),
                                  ],
                                ),
                                separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                              ),
                            ),
                          ],
                        ),
              voidTransactionHeaderFailure: () => Center(
                child: Text(
                  AppLocalizations.of(context)!.noDataAvailable,
                  style: kfontstyle(),
                ),
              ),
            );
          }),
        ))
      ]),
      bottomNavigationBar: voidTransactionJsonstriongList.isEmpty ||
              selectedVoidTransactionMode != 'P' ||
              isTransactionProcessed
          ? null
          : SizedBox(
              height: 42.h,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: BlocConsumer<VoidTransactionRejectionBloc,
                              VoidTransactionRejectionState>(
                            listener: (context, state) {
                              state.when(
                                voidTranctionRejectingState: (resp) {
                                  if (resp != null) {
                                    // Set the processed state
                                    setState(() {
                                      isTransactionProcessed = true;
                                    });

                                    _voidTranHeaderSearchCtrl.clear();
                                    context
                                        .read<VoidTransactionHeaderBloc>()
                                        .add(
                                            const ClearVoidTransactionHeader());
                                    context
                                        .read<VoidTransactionHeaderBloc>()
                                        .add(GetVoidTransactionHeaderEvent(
                                            statusValue:
                                                selectedVoidTransactionMode,
                                            searchQuery: ""));
                                    voidTransactionJsonstriongList.clear();
                                    context
                                        .read<VoidTransactionSelectionCubit>()
                                        .selectedHeadersList([]);
                                    Navigator.pop(context);
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          if (Platform.isIOS) {
                                            return CupertinoAlertDialog(
                                              title: Text(
                                                  AppLocalizations.of(context)!
                                                      .alert),
                                              content: Text(
                                                  AppLocalizations.of(context)!
                                                      .rejectedSuccessfully),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .ok),
                                                ),
                                              ],
                                            );
                                          } else {
                                            return AlertDialog(
                                              title: Text(
                                                  AppLocalizations.of(context)!
                                                      .alert),
                                              content: Text(
                                                  AppLocalizations.of(context)!
                                                      .rejectedSuccessfully),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .ok),
                                                ),
                                              ],
                                            );
                                          }
                                        });
                                  }
                                },
                                voidTransactionRejectionFailed: () {
                                  Navigator.pop(context);
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        if (Platform.isIOS) {
                                          return CupertinoAlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: Text(
                                                AppLocalizations.of(context)!
                                                    .somethingWentWrong),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .ok),
                                              ),
                                            ],
                                          );
                                        } else {
                                          return AlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: Text(
                                                AppLocalizations.of(context)!
                                                    .somethingWentWrong),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .ok),
                                              ),
                                            ],
                                          );
                                        }
                                      });
                                },
                              );
                            },
                            builder: (context, state) {
                              return MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.red.shade300,
                                onPressed: () {
                                  if (selectedVoidTransactionMode == 'P') {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          if (Platform.isIOS) {
                                            return CupertinoAlertDialog(
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
                                                      AppLocalizations.of(
                                                              context)!
                                                          .cancel),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    context
                                                        .read<
                                                            VoidTransactionApprovalBloc>()
                                                        .add(
                                                            const VoidTransactionLoadingEvent());

                                                    context
                                                        .read<
                                                            VoidTransactionRejectionBloc>()
                                                        .add(VoidTransactionRejectingEvent(
                                                            rejecting:
                                                                VoidTransacrtionApprovalInModel(
                                                                    jsonString:
                                                                        voidTransactionJsonstriongList)));
                                                  },
                                                  child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .proceed),
                                                ),
                                              ],
                                            );
                                          } else {
                                            return AlertDialog(
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
                                                      AppLocalizations.of(
                                                              context)!
                                                          .cancel),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    context
                                                        .read<
                                                            VoidTransactionApprovalBloc>()
                                                        .add(
                                                            const VoidTransactionLoadingEvent());

                                                    context
                                                        .read<
                                                            VoidTransactionRejectionBloc>()
                                                        .add(VoidTransactionRejectingEvent(
                                                            rejecting:
                                                                VoidTransacrtionApprovalInModel(
                                                                    jsonString:
                                                                        voidTransactionJsonstriongList)));
                                                  },
                                                  child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .proceed),
                                                ),
                                              ],
                                            );
                                          }
                                        });
                                  }
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.rejectSelected,
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: BlocConsumer<VoidTransactionApprovalBloc,
                                VoidTransactionApprovalState>(
                              listener: (context, state) {
                                state.when(
                                  voidTransactionApprovingState: (resp) {
                                    if (resp != null) {
                                      // Set the processed state
                                      setState(() {
                                        isTransactionProcessed = true;
                                      });

                                      _voidTranHeaderSearchCtrl.clear();
                                      context
                                          .read<VoidTransactionHeaderBloc>()
                                          .add(
                                              const ClearVoidTransactionHeader());
                                      context
                                          .read<VoidTransactionHeaderBloc>()
                                          .add(GetVoidTransactionHeaderEvent(
                                              statusValue:
                                                  selectedVoidTransactionMode,
                                              searchQuery: ""));
                                      voidTransactionJsonstriongList.clear();
                                      context
                                          .read<VoidTransactionSelectionCubit>()
                                          .selectedHeadersList([]);
                                      Navigator.pop(context);
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            if (Platform.isIOS) {
                                              return CupertinoAlertDialog(
                                                title: Text(AppLocalizations.of(
                                                        context)!
                                                    .alert),
                                                content: Text(
                                                    AppLocalizations.of(
                                                            context)!
                                                        .approvedSuccessfully),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .ok),
                                                  ),
                                                ],
                                              );
                                            } else {
                                              return AlertDialog(
                                                title: Text(AppLocalizations.of(
                                                        context)!
                                                    .alert),
                                                content: Text(
                                                    AppLocalizations.of(
                                                            context)!
                                                        .approvedSuccessfully),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .ok),
                                                  ),
                                                ],
                                              );
                                            }
                                          });
                                    }
                                  },
                                  voidTransactionApprovalFailed: () {
                                    Navigator.pop(context);
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          if (Platform.isIOS) {
                                            return CupertinoAlertDialog(
                                              title: Text(
                                                  AppLocalizations.of(context)!
                                                      .alert),
                                              content: Text(
                                                  AppLocalizations.of(context)!
                                                      .somethingWentWrong),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .ok),
                                                ),
                                              ],
                                            );
                                          } else {
                                            return AlertDialog(
                                              title: Text(
                                                  AppLocalizations.of(context)!
                                                      .alert),
                                              content: Text(
                                                  AppLocalizations.of(context)!
                                                      .somethingWentWrong),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .ok),
                                                ),
                                              ],
                                            );
                                          }
                                        });
                                  },
                                  voidTransactionLoadingState: () {
                                    showCupertinoModalPopup(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => SizedBox(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: const PopScope(
                                                canPop: true,
                                                child:
                                                    CupertinoActivityIndicator(
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
                                return MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: selectedVoidTransactionMode == 'P'
                                      ? Colors.green.shade300
                                      : Colors.grey[300],
                                  onPressed: () {
                                    if (selectedVoidTransactionMode == 'P') {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            if (Platform.isIOS) {
                                              return CupertinoAlertDialog(
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
                                                      Navigator.pop(context);
                                                      context
                                                          .read<
                                                              VoidTransactionApprovalBloc>()
                                                          .add(
                                                              const VoidTransactionLoadingEvent());

                                                      context
                                                          .read<
                                                              VoidTransactionApprovalBloc>()
                                                          .add(VoidTransactionApprovingEvent(
                                                              approving:
                                                                  VoidTransacrtionApprovalInModel(
                                                                      jsonString:
                                                                          voidTransactionJsonstriongList)));
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .proceed),
                                                  ),
                                                ],
                                              );
                                            } else {
                                              return AlertDialog(
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
                                                      Navigator.pop(context);
                                                      context
                                                          .read<
                                                              VoidTransactionApprovalBloc>()
                                                          .add(
                                                              const VoidTransactionLoadingEvent());

                                                      context
                                                          .read<
                                                              VoidTransactionApprovalBloc>()
                                                          .add(VoidTransactionApprovingEvent(
                                                              approving:
                                                                  VoidTransacrtionApprovalInModel(
                                                                      jsonString:
                                                                          voidTransactionJsonstriongList)));
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .proceed),
                                                  ),
                                                ],
                                              );
                                            }
                                          });
                                    }
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .approveSelected,
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                );
                              },
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),

      /* bottomNavigationBar: voidTransactionJsonstriongList.isEmpty ||
              selectedVoidTransactionMode != 'P' || buttonsVisible
          ? null
          : SizedBox(
              height: 42.h,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: BlocConsumer<VoidTransactionRejectionBloc,
                              VoidTransactionRejectionState>(
                            listener: (context, state) {
                              state.when(
                                voidTranctionRejectingState: (resp) {
                                  if (resp != null) {
                                    _voidTranHeaderSearchCtrl.clear();
                                    context
                                        .read<VoidTransactionHeaderBloc>()
                                        .add(
                                            const ClearVoidTransactionHeader());

                                    context
                                        .read<VoidTransactionHeaderBloc>()
                                        .add(GetVoidTransactionHeaderEvent(
                                            statusValue:
                                                selectedVoidTransactionMode,
                                            searchQuery: ""));
                                    voidTransactionJsonstriongList.clear();
                                    context
                                        .read<VoidTransactionSelectionCubit>()
                                        .selectedHeadersList([]);
                                    Navigator.pop(context);
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(
                                            AppLocalizations.of(context)!
                                                .rejectedSuccessfully),
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
                                  }
                                },
                                voidTransactionRejectionFailed: () {
                                  Navigator.pop(context);
                                  showCupertinoDialog(
                                    context: context,
                                    builder: (context) => CupertinoAlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .somethingWentWrong),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                              AppLocalizations.of(context)!.ok),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            builder: (context, state) {
                              return MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.red.shade300,
                                onPressed: () {
                                  if (selectedVoidTransactionMode == 'P') {
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
                                              Navigator.pop(context);
                                              context
                                                  .read<
                                                      VoidTransactionApprovalBloc>()
                                                  .add(
                                                      const VoidTransactionLoadingEvent());

                                              context
                                                  .read<
                                                      VoidTransactionRejectionBloc>()
                                                  .add(VoidTransactionRejectingEvent(
                                                      rejecting:
                                                          VoidTransacrtionApprovalInModel(
                                                              jsonString:
                                                                  voidTransactionJsonstriongList)));
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .proceed),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.rejectSelected,
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: BlocConsumer<VoidTransactionApprovalBloc,
                                VoidTransactionApprovalState>(
                              listener: (context, state) {
                                state.when(
                                  voidTransactionApprovingState: (resp) {
                                    if (resp != null) {
                                      _voidTranHeaderSearchCtrl.clear();
                                      context
                                          .read<VoidTransactionHeaderBloc>()
                                          .add(
                                              const ClearVoidTransactionHeader());

                                      context
                                          .read<VoidTransactionHeaderBloc>()
                                          .add(GetVoidTransactionHeaderEvent(
                                              statusValue:
                                                  selectedVoidTransactionMode,
                                              searchQuery: ""));
                                      voidTransactionJsonstriongList.clear();
                                      context
                                          .read<VoidTransactionSelectionCubit>()
                                          .selectedHeadersList([]);
                                      Navigator.pop(context);
                                      showCupertinoDialog(
                                        context: context,
                                        builder: (context) =>
                                            CupertinoAlertDialog(
                                          title: Text(
                                              AppLocalizations.of(context)!
                                                  .alert),
                                          content: Text(
                                              AppLocalizations.of(context)!
                                                  .approvedSuccessfully),
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
                                    }
                                  },
                                  voidTransactionApprovalFailed: () {
                                    Navigator.pop(context);
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(
                                            AppLocalizations.of(context)!
                                                .somethingWentWrong),
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
                                  },
                                  voidTransactionLoadingState: () {
                                    showCupertinoModalPopup(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => SizedBox(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: const PopScope(
                                                canPop: true,
                                                child:
                                                    CupertinoActivityIndicator(
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
                                return MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: selectedVoidTransactionMode == 'P'
                                      ? Colors.green.shade300
                                      : Colors.grey[300],
                                  onPressed: () {
                                    if (selectedVoidTransactionMode == 'P') {
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
                                                Navigator.pop(context);
                                                context
                                                    .read<
                                                        VoidTransactionApprovalBloc>()
                                                    .add(
                                                        const VoidTransactionLoadingEvent());

                                                context
                                                    .read<
                                                        VoidTransactionApprovalBloc>()
                                                    .add(VoidTransactionApprovingEvent(
                                                        approving:
                                                            VoidTransacrtionApprovalInModel(
                                                                jsonString:
                                                                    voidTransactionJsonstriongList)));
                                              },
                                              child: Text(
                                                  AppLocalizations.of(context)!
                                                      .proceed),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .approveSelected,
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                );
                              },
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ), */
    );
  }
}
