import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmheader/inventory_reconfirm_header_bloc.dart';
import 'package:customer_connect/feature/view/inventoryreconfirm/inventoryreconfirmationdetail.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InventoryReconfirmHeadersScreen extends StatefulWidget {
  final LoginUserModel user;
  const InventoryReconfirmHeadersScreen({super.key, required this.user});

  @override
  State<InventoryReconfirmHeadersScreen> createState() =>
      _InventoryReconfirmHeadersScreenState();
}

Timer? debounce;
TextEditingController inventoryReConfirmHSearchCtrl = TextEditingController();
String _selectedMode = 'A';
List<ApprovalStatusFilterModel> ddfilterFieldsVanToVan = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'A'),
  ApprovalStatusFilterModel(statusName: "Action taken", mode: 'AT'),
];

class _InventoryReconfirmHeadersScreenState
    extends State<InventoryReconfirmHeadersScreen> {
  @override
  void initState() {
    _selectedMode = "A";
    inventoryReConfirmHSearchCtrl.clear();

    ddfilterFieldsVanToVan = [
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Pending" : "قيد الانتظار",
          mode: 'A'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Action Taken"
              : "طلبات الإجراءات المتخذة",
          mode: 'AT'),
    ];
    context
        .read<InventoryReconfirmHeaderBloc>()
        .add(const ClearInventoryReconfirmHeaders());
    context.read<InventoryReconfirmHeaderBloc>().add(
        const GetInventoryReconfirmHeadersEvent(mode: "A", searchQuery: ''));
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
          AppLocalizations.of(context)!.inventoryReconfirmation,
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
              child: Container(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  /*  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: .5,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ], */
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: inventoryReConfirmHSearchCtrl,
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
                                if (inventoryReConfirmHSearchCtrl
                                    .text.isNotEmpty) {
                                  inventoryReConfirmHSearchCtrl.clear();

                                  context
                                      .read<InventoryReconfirmHeaderBloc>()
                                      .add(GetInventoryReconfirmHeadersEvent(
                                          mode: _selectedMode,
                                          searchQuery: ""));
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
                      context.read<InventoryReconfirmHeaderBloc>().add(
                          GetInventoryReconfirmHeadersEvent(
                              mode: _selectedMode,
                              searchQuery: inventoryReConfirmHSearchCtrl.text));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: ButtonTheme(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: 30.h,
                      maxWidth: MediaQuery.of(context).size.width - 20),
                  child: DropdownButtonFormField(
                    elevation: 0,
                    value: ddfilterFieldsVanToVan[0].mode,
                    dropdownColor: Colors.white,
                    style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                    decoration: InputDecoration(
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
                    items: ddfilterFieldsVanToVan
                        .map(
                          (e) => DropdownMenuItem(
                            value: e.mode,
                            child: Text(e.statusName),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      _selectedMode = value!;

                      context
                          .read<InventoryReconfirmHeaderBloc>()
                          .add(const ClearInventoryReconfirmHeaders());
                      context.read<InventoryReconfirmHeaderBloc>().add(
                          GetInventoryReconfirmHeadersEvent(
                              mode: _selectedMode,
                              searchQuery: inventoryReConfirmHSearchCtrl.text));
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<InventoryReconfirmHeaderBloc,
                      InventoryReconfirmHeaderState>(
                    builder: (context, state) {
                      return Text(
                        state.when(
                          getInventoryReconfirmHeaderState: (headers) =>
                              _selectedMode == 'A'
                                  ? AppLocalizations.of(context)!
                                      .pendingApprovals
                                  : AppLocalizations.of(context)!
                                      .actionTakenRequests,
                          inventoryReconfirmheaderFailedState: () =>
                              _selectedMode == 'A'
                                  ? AppLocalizations.of(context)!
                                      .pendingApprovals
                                  : AppLocalizations.of(context)!
                                      .actionTakenRequests,
                        ),
                        style: countHeading(),
                      );
                    },
                  ),
                  BlocBuilder<InventoryReconfirmHeaderBloc,
                      InventoryReconfirmHeaderState>(
                    builder: (context, state) {
                      return Text(
                        state.when(
                          getInventoryReconfirmHeaderState: (headers) =>
                              headers == null ? "0" : headers.length.toString(),
                          inventoryReconfirmheaderFailedState: () => "0",
                        ),
                        style: countHeading(),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: BlocBuilder<InventoryReconfirmHeaderBloc,
                  InventoryReconfirmHeaderState>(
                builder: (context, state) {
                  return state.when(
                      getInventoryReconfirmHeaderState: (inventory) =>
                          inventory == null
                              ? Padding(
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
                                )
                              : inventory.isEmpty
                                  ? Center(
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .noDataAvailable,
                                        style: kfontstyle(),
                                      ),
                                    )
                                  : Column(
                                      children: [
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: ListView.separated(
                                              itemBuilder:
                                                  (context, index) =>
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              Platform.isIOS
                                                                  ? CupertinoPageRoute(
                                                                      builder: (context) => InventoryReconfirmationDetailScreen(
                                                                          user: widget
                                                                              .user,
                                                                          header: inventory[
                                                                              index],
                                                                          currentMode:
                                                                              _selectedMode))
                                                                  : MaterialPageRoute(
                                                                      builder: (context) =>
                                                                          InventoryReconfirmationDetailScreen(
                                                                            header:
                                                                                inventory[index],
                                                                            user:
                                                                                widget.user,
                                                                            currentMode:
                                                                                _selectedMode,
                                                                          )));
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              height: 70,
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
                                                                    '${inventory[index].iahTransId}',
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
                                                                  /*  Row(
                                                                    children: [
                                                                      Text(
                                                                        '${inventory[index].rotName} - ',
                                                                        style:
                                                                            kfontstyle(
                                                                          fontSize:
                                                                              11.sp,
                                                                          color:
                                                                              const Color(0xff2C6B9E),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          "${selectedLocale?.languageCode == 'en' ? inventory[index].usrName : inventory[index].arusrName}",
                                                                          style: kfontstyle(
                                                                              fontSize: 12.sp,
                                                                              color: const Color(0xff413434)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ), */
                                                                  RichText(
                                                                    text: TextSpan(
                                                                        style: DefaultTextStyle.of(context).style.copyWith(
                                                                              fontWeight: FontWeight.normal,
                                                                              decoration: TextDecoration.none,
                                                                            ),
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                '${inventory[index].rotName} - ',
                                                                            style:
                                                                                kfontstyle(
                                                                              fontSize: 11.sp,
                                                                              color: const Color(0xff2C6B9E),
                                                                            ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                "${selectedLocale?.languageCode == 'en' ? inventory[index].usrName : inventory[index].arusrName}",
                                                                            style:
                                                                                kfontstyle(fontSize: 12.sp, color: const Color(0xff413434)),
                                                                          )
                                                                        ]),
                                                                  ),
                                                                  /*Text(
                                                        overflow: TextOverflow.ellipsis,
                                                        "${pChange[index].status}",
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xff413434)),
                                                      ),*/
                                                                  Text(
                                                                    '${inventory[index].createdDate} ',
                                                                    style: kfontstyle(
                                                                        fontSize: 10
                                                                            .sp,
                                                                        color: Colors
                                                                            .grey),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: inventory[index]
                                                                            .iahStatus!
                                                                            .isEmpty ||
                                                                        inventory[index].iahStatus !=
                                                                            'Action Taken'
                                                                    ? inventory[index].iahStatus ==
                                                                            'Rejected'
                                                                        ? Colors.red[
                                                                            300]
                                                                        : const Color(
                                                                            0xfff7f4e2)
                                                                    : const Color(
                                                                        0xffe3f7e2),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  20,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8,
                                                                    vertical:
                                                                        5),
                                                                child: Text(
                                                                  selectedLocale
                                                                              ?.languageCode ==
                                                                          'en'
                                                                      ? inventory[index]
                                                                              .iahStatus ??
                                                                          ''
                                                                      : inventory[index]
                                                                              .ariahStatus ??
                                                                          '',
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          10.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: inventory[index].iahStatus ==
                                                                              'Rejected'
                                                                          ? Colors
                                                                              .white54
                                                                          : Colors
                                                                              .black54),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                              separatorBuilder:
                                                  (context, index) => Divider(
                                                        color: Colors.grey[300],
                                                      ),
                                              itemCount: inventory.length),
                                        ))
                                      ],
                                    ),
                      inventoryReconfirmheaderFailedState: () => Center(
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
