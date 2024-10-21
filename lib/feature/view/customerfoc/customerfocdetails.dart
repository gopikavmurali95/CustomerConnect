import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/customer_foc_approval_in_model/customer_foc_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/customer_foc_header_model/customer_foc_header_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customerfocapprovalbloc/customer_foc_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customerfocdetailbloc/customer_foc_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customerfocheaderbloc/customer_foc_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customerfocrejection/cusromer_foc_rejection_bloc.dart';
import 'package:customer_connect/feature/state/cubit/customerfocapprovalselection/customer_foc_approval_selection_cubit.dart';
import 'package:customer_connect/feature/view/customerfoc/customerfocheader.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerFocDetailScreen extends StatefulWidget {
  final CustomerFocHeaderModel header;
  final LoginUserModel user;
  const CustomerFocDetailScreen(
      {super.key, required this.header, required this.user});

  @override
  State<CustomerFocDetailScreen> createState() =>
      _CustomerFocDetailScreenState();
}

Timer? debounce;
TextEditingController focDetailSearchCtrl = TextEditingController();

class _CustomerFocDetailScreenState extends State<CustomerFocDetailScreen> {
  @override
  void initState() {
    context.read<CustomerFocDetailBloc>().add(const ClearCustomerFocDetails());

    context.read<CustomerFocDetailBloc>().add(GetCustomerFocDetailEvent(
        headerId: widget.header.cfhId ?? '', searchQuery: ''));
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
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          'Customer FOC Detail',
          // AppLocalizations.of(context)!.mustSellDetail,
          style: appHeading(),
        ),
      ),
      body: PopScope(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
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
                          widget.header.cfhRtnId ?? '',
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
                                '${widget.header.rotCode} - ${widget.header.rotName} ${AppLocalizations.of(context)!.route}',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                            ),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none,
                                ),
                            children: [
                              TextSpan(
                                text: '${widget.header.cusCode} - ',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                              TextSpan(
                                text: widget.header.cusName,
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          widget.header.createdDate ?? '',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ))
                  ],
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                // controller: mustSellDetailSearchCtrl,
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
                              focDetailSearchCtrl.clear();

                              context.read<CustomerFocDetailBloc>().add(
                                  GetCustomerFocDetailEvent(
                                      headerId: widget.header.cfhId ?? '',
                                      searchQuery: ''));
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
                    context.read<CustomerFocDetailBloc>().add(
                        GetCustomerFocDetailEvent(
                            headerId: widget.header.cfhId ?? '',
                            searchQuery: value.trim()));
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                height: 30.h,
                width: double.infinity,
                color: const Color(0xfff5f5f5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.item,
                        style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        children: [
                          Text(
                            'Total qty',
                            style: kfontstyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            'Bal Qty',
                            style: kfontstyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(child:
                  BlocBuilder<CustomerFocDetailBloc, CustomerFocDetailState>(
                builder: (context, details) {
                  return details.when(
                      getCustomerFocDetailsState: (detailsData) =>
                          detailsData == null
                              ? ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      ShimmerContainers(
                                    height: 60.h,
                                    width: double.infinity,
                                  ),
                                  itemCount: 10,
                                )
                              : ListView.builder(
                                  itemCount: detailsData.length,
                                  itemBuilder: (context, index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        detailsData[index]
                                                                .prdCode ??
                                                            '',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: const Color(
                                                              0xff7b70ac),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Text(
                                                        detailsData[index]
                                                                .prdName ??
                                                            '',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      detailsData[index]
                                                              .cfaTotalQty ??
                                                          ''
                                                      /* details[index].huom!.isEmpty ||
                                                                    details[index].huom ==
                                                                        null
                                                                ? "-"
                                                                : details[index].huom ?? "" */
                                                      ,
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                    SizedBox(width: 50.w),
                                                    Text(
                                                      detailsData[index]
                                                              .cfaBalanceQty ??
                                                          '',
                                                      /* details[index].msdHQty!.isEmpty ||
                                                                    details[index].msdHQty ==
                                                                        null
                                                                ? "0"
                                                                : details[index].msdHQty ??
                                                                    "", */
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      width: 20.w,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            index == detailsData.length - 1
                                                ? const SizedBox.shrink()
                                                : Divider(
                                                    color: Colors.grey[300],
                                                  ),
                                          ],
                                        ),
                                      )),
                      customerFocDetailFailedState: () => const Center(
                            child: Text('No data available'),
                          ));
                },
              ))
            ],
          ))
        ],
      )),
      bottomNavigationBar: selectedCustomerFocMode == 'AT'
          ? null
          : SizedBox(
              height: 42.h,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: BlocConsumer<CusromerFocRejectionBloc,
                              CusromerFocRejectionState>(
                            listener: (context, state) {
                              state.when(focRejectionState: (rejectionResp) {
                                if (rejectionResp != null) {
                                  focDetailSearchCtrl.clear();
                                  context
                                      .read<CustomerFocHeaderBloc>()
                                      .add(const ClearCustomerFocHeader());
                                  context.read<CustomerFocHeaderBloc>().add(
                                      GetCustomerFocHeaderEvent(
                                          statusValue: selectedCustomerFocMode,
                                          searchQuery: ''));
                                  focJsonstriongList.clear();
                                  context
                                      .read<CustomerFocApprovalSelectionCubit>()
                                      .selectedHeadersList([]);
                                  Navigator.pop(context);
                                  showCupertinoDialog(
                                    context: context,
                                    builder: (context) => CupertinoAlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content:
                                          const Text("Rejected successfully"),
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
                                }
                              }, focFailedState: () {
                                Navigator.pop(context);
                                showCupertinoDialog(
                                  context: context,
                                  builder: (context) => CupertinoAlertDialog(
                                    title: Text(
                                        AppLocalizations.of(context)!.alert),
                                    content: const Text(
                                        'Customer Foc Rejection Failed'),
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
                              });
                            },
                            builder: (context, state) {
                              return MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.red.shade300,
                                onPressed: () {
                                  showCupertinoDialog(
                                    context: context,
                                    builder: (context) => CupertinoAlertDialog(
                                      title:
                                          const Text('Do you want to reject?'),
                                      content: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          const Text(
                                              'Response Remark (if any)'),
                                          CupertinoTextField(
                                            controller: remarkCtrl,
                                            // placeholder: 'Enter your remark here',
                                            padding: const EdgeInsets.all(12),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.grey,
                                                  width: 1.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.pop(context);
                                            context
                                                .read<CustomerFocApprovalBloc>()
                                                .add(
                                                    const CustomerFocLoadingEvent());
                                            context
                                                .read<
                                                    CusromerFocRejectionBloc>()
                                                .add(FocRejectionEvent(
                                                    rejectionIn:
                                                        CustomerFocApprovalInModel(
                                                            remarks:
                                                                remarkCtrl.text,
                                                            userId: widget
                                                                .user.usrId,
                                                            headerId: '',
                                                            jsonString:
                                                                focJsonstriongList)));
                                          },
                                          child: Text(
                                              AppLocalizations.of(context)!.ok),
                                        ),
                                      ],
                                    ),
                                  );
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
                          child: BlocConsumer<CustomerFocApprovalBloc,
                              CustomerFocApprovalState>(
                            listener: (context, state) {
                              state.when(
                                customerFocApproval: (approvalresp) {
                                  if (approvalresp != null) {
                                    customerFocHeaderSearchCtrl.clear();
                                    context
                                        .read<CustomerFocHeaderBloc>()
                                        .add(const ClearCustomerFocHeader());
                                    context.read<CustomerFocHeaderBloc>().add(
                                        GetCustomerFocHeaderEvent(
                                            statusValue:
                                                selectedCustomerFocMode,
                                            searchQuery: ''));
                                    focJsonstriongList.clear();
                                    context
                                        .read<
                                            CustomerFocApprovalSelectionCubit>()
                                        .selectedHeadersList([]);
                                    Navigator.pop(context);
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content:
                                            const Text("Approved successfully"),
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
                                customerFocApprovalFailed: () {
                                  Navigator.pop(context);
                                  showCupertinoDialog(
                                    context: context,
                                    builder: (context) => CupertinoAlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: const Text(
                                          'Customer Foc Approval Failed'),
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
                                customerFocApprovalLoadingState: () {
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
                              return MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.green.shade300,
                                onPressed: () {
                                  if (selectedCustomerFocMode == 'A') {
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
                                                      CustomerFocApprovalBloc>()
                                                  .add(const CustomerFocApprovalEvent
                                                      .customerFocLoadingEvent());
                                              context
                                                  .read<
                                                      CustomerFocApprovalBloc>()
                                                  .add(CustomerFocApprovalEvent
                                                      .customerFocApprovalEvent(
                                                          approveInpara:
                                                              CustomerFocApprovalInModel(
                                                                  remarks: '',
                                                                  userId: widget
                                                                      .user
                                                                      .usrId,
                                                                  headerId: '',
                                                                  jsonString:
                                                                      focJsonstriongList)));
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
                                  AppLocalizations.of(context)!.approveSelected,
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
