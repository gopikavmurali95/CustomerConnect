import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/customer_foc_approval_in_model/customer_foc_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/customer_foc_approval_json_model/customer_foc_approval_json_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customerfocapprovalbloc/customer_foc_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customerfocheaderbloc/customer_foc_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customerfocrejection/cusromer_foc_rejection_bloc.dart';
import 'package:customer_connect/feature/state/cubit/customerfocapprovalselection/customer_foc_approval_selection_cubit.dart';
import 'package:customer_connect/feature/view/customerfoc/customerfocdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerFocHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const CustomerFocHeaderScreen({super.key, required this.user});

  @override
  State<CustomerFocHeaderScreen> createState() =>
      _CustomerFocHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterCustomerFoc = [
  ApprovalStatusFilterModel(statusName: "Pending Approvals", mode: 'A'),
  ApprovalStatusFilterModel(statusName: "Action Taken ", mode: 'AT'),
];

String selectedCustomerFocMode = 'A';
TextEditingController customerFocHeaderSearchCtrl = TextEditingController();
Timer? debounce;
List<CustomerFocApprovalJsonModel> focJsonstriongList = [];
TextEditingController remarkCtrl = TextEditingController();

class _CustomerFocHeaderScreenState extends State<CustomerFocHeaderScreen> {
  @override
  void initState() {
    selectedCustomerFocMode = 'A';

    ddfilterCustomerFoc = [
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

    remarkCtrl.clear();
    context.read<CustomerFocHeaderBloc>().add(const ClearCustomerFocHeader());
    context.read<CustomerFocHeaderBloc>().add(
        const GetCustomerFocHeaderEvent(statusValue: 'A', searchQuery: ''));
    focJsonstriongList.clear();
    context.read<CustomerFocApprovalSelectionCubit>().selectedHeadersList([]);
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
          'Customer FOC Approval' /* AppLocalizations.of(context)!.mustSell */,
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: customerFocHeaderSearchCtrl,
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
                              if (customerFocHeaderSearchCtrl.text.isNotEmpty) {
                                customerFocHeaderSearchCtrl.clear();
                                context
                                    .read<CustomerFocHeaderBloc>()
                                    .add(const ClearCustomerFocHeader());
                                context.read<CustomerFocHeaderBloc>().add(
                                    GetCustomerFocHeaderEvent(
                                        statusValue: selectedCustomerFocMode,
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
                    context.read<CustomerFocHeaderBloc>().add(
                        GetCustomerFocHeaderEvent(
                            statusValue: selectedCustomerFocMode,
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
                  value: selectedCustomerFocMode,
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
                  items: ddfilterCustomerFoc
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    selectedCustomerFocMode = value!;
                    context
                        .read<CustomerFocHeaderBloc>()
                        .add(const ClearCustomerFocHeader());
                    context.read<CustomerFocHeaderBloc>().add(
                        GetCustomerFocHeaderEvent(
                            statusValue: value,
                            searchQuery: customerFocHeaderSearchCtrl.text));
                  }),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocBuilder<CustomerFocHeaderBloc, CustomerFocHeaderState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state.when(
                        getCustomerFocHeaderState: (header) =>
                            selectedCustomerFocMode == 'A'
                                ? AppLocalizations.of(context)!.pendingApprovals
                                : 'Action taken',
                        customerFocHeaderFailedState: () =>
                            selectedCustomerFocMode == 'A'
                                ? AppLocalizations.of(context)!.pendingApprovals
                                : 'Action taken',
                      ),
                      style: countHeading(),
                    ),
                    Text(
                      state.when(
                          getCustomerFocHeaderState: (header) =>
                              header == null ? '0' : header.length.toString(),
                          customerFocHeaderFailedState: () => '0'),
                      style: countHeading(),
                    ),
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
            child: BlocBuilder<CustomerFocHeaderBloc, CustomerFocHeaderState>(
              builder: (context, header) {
                return header.when(
                    getCustomerFocHeaderState: (headerdata) => headerdata ==
                            null
                        ? ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ShimmerContainers(
                              height: 60.h,
                              width: double.infinity,
                            ),
                            itemCount: 10,
                          )
                        : ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,Platform.isIOS?CupertinoPageRoute(builder: (context)=>
                                      CustomerFocDetailScreen(header: headerdata[index], user: widget.user)):
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CustomerFocDetailScreen(
                                                header: headerdata[index],
                                                user: widget.user,
                                              )),
                                    );
                                  },
                                  child: Row(
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
                                                    headerdata[index]
                                                            .cfhRtnId ??
                                                        '' /* | ${selectedLocale?.languageCode == "en" ? headers[index].type : headers[index].artype} */,
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
                                                          '${headerdata[index].rotCode} - ${headerdata[index].rotName} ${AppLocalizations.of(context)!.route}',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style:
                                                          DefaultTextStyle.of(
                                                                  context)
                                                              .style,
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              '${headerdata[index].cusCode} - ',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              headerdata[index]
                                                                  .cusName,
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                          // overflow: TextOverflow.ellipsis,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    headerdata[index]
                                                            .modifiedDate ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      selectedCustomerFocMode == 'AT'
                                          ? const SizedBox.shrink()
                                          : IntrinsicHeight(
                                              child: Row(
                                                children: [
                                                  VerticalDivider(
                                                    color: Colors.grey[300],
                                                    thickness: 1,
                                                  ),
                                                  BlocBuilder<
                                                      CustomerFocApprovalSelectionCubit,
                                                      CustomerFocApprovalSelectionState>(
                                                    builder: (context, state) {
                                                      return state.when(
                                                        focApprovalSelectionState:
                                                            (selected) =>
                                                                Checkbox(
                                                          side: BorderSide(
                                                              color: Colors
                                                                  .grey[500]!),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                          activeColor: Colors
                                                              .green.shade300,
                                                          value: focJsonstriongList
                                                              .where((element) =>
                                                                  element
                                                                      .cfhId ==
                                                                  headerdata[
                                                                          index]
                                                                      .cfhId)
                                                              .isNotEmpty,
                                                          onChanged: (value) {
                                                            if (focJsonstriongList
                                                                .where((element) =>
                                                                    element
                                                                        .cfhId ==
                                                                    headerdata[
                                                                            index]
                                                                        .cfhId)
                                                                .isEmpty) {
                                                              focJsonstriongList.add(
                                                                  CustomerFocApprovalJsonModel(
                                                                      cfhId: headerdata[
                                                                              index]
                                                                          .cfhId));
                                                            } else {
                                                              focJsonstriongList
                                                                  .removeWhere((element) =>
                                                                      element
                                                                          .cfhId ==
                                                                      headerdata[
                                                                              index]
                                                                          .cfhId);
                                                            }
                                                            setState(() {});
                                                            log(jsonEncode(
                                                                focJsonstriongList));
                                                          },
                                                        ),
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
                            itemCount: headerdata.length),
                    customerFocHeaderFailedState: () =>
                        const Center(child: Text('No data available')));
              },
            ),
          ))
        ],
      ),
      bottomNavigationBar: focJsonstriongList.isEmpty ||
              selectedCustomerFocMode == 'AT'
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
                                  customerFocHeaderSearchCtrl.clear();
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
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      if(Platform.isIOS)
                                      {
                                        return CupertinoAlertDialog(
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
                                    );
                                      }
                                      else{
                                        return AlertDialog(
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
                                        );
                                      }
                                    }
                                  );
                                }
                              }, focFailedState: () {
                                Navigator.pop(context);
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    if(Platform.isIOS)
                                    {
                                      return CupertinoAlertDialog(
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
                                  );
                                    }
                                    else {
                                      return AlertDialog(
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
                                      );
                                    }
                                  }
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
                                  if (focJsonstriongList.isEmpty) {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        if(Platform.isIOS)
                                        {
                                          return CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: const Text(
                                            'Please Select atleast one item'),
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
                                      );
                                        }
                                        else{
                                          return AlertDialog(
                                             title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: const Text(
                                            'Please Select atleast one item'),
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
                                          );
                                        }
                                      }
                                          
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        if(Platform.isIOS)
                                        {
                                          return CupertinoAlertDialog(
                                        title: const Text(
                                            'Do you want to reject?'),
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
                                                  .add(
                                                      const CustomerFocLoadingEvent());
                                              context
                                                  .read<
                                                      CusromerFocRejectionBloc>()
                                                  .add(FocRejectionEvent(
                                                      rejectionIn: CustomerFocApprovalInModel(
                                                          remarks:
                                                              remarkCtrl.text,
                                                          userId:
                                                              widget.user.usrId,
                                                          headerId: '',
                                                          jsonString:
                                                              focJsonstriongList)));
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok),
                                          ),
                                        ],
                                      );
                                        }
                                        else
                                        {
                                          return AlertDialog(
                                            title: const Text(
                                            'Do you want to reject?'),
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
                                                  .add(
                                                      const CustomerFocLoadingEvent());
                                              context
                                                  .read<
                                                      CusromerFocRejectionBloc>()
                                                  .add(FocRejectionEvent(
                                                      rejectionIn: CustomerFocApprovalInModel(
                                                          remarks:
                                                              remarkCtrl.text,
                                                          userId:
                                                              widget.user.usrId,
                                                          headerId: '',
                                                          jsonString:
                                                              focJsonstriongList)));
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok),
                                          ),
                                        ],
                                          );
                                        }
                                      }
                                          
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
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        if(Platform.isIOS)
                                        {
                                          return CupertinoAlertDialog(
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
                                      );
                                        }
                                        else
                                        {
                                          return AlertDialog(
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
                                          );
                                        }
                                      }
                                          
                                    );
                                  }
                                },
                                customerFocApprovalFailed: () {
                                  Navigator.pop(context);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      if(Platform.isIOS)
                                      {
                                        return CupertinoAlertDialog(
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
                                    );
                                      }
                                      else
                                      {
                                        return AlertDialog(
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
                                        );
                                      }
                                    }
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
                                  if (focJsonstriongList.isEmpty) {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        if(Platform.isIOS)
                                        {
                                          return CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: const Text(
                                            'Please Select atleast one item'),
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
                                      );
                                        }
                                        else{
                                          return AlertDialog(
                                            title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: const Text(
                                            'Please Select atleast one item'),
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
                                          );
                                        }
                                      }
                                          
                                    );
                                  } else {
                                    if (selectedCustomerFocMode == 'A') {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          if(Platform.isIOS)
                                          {
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
                                                                    headerId:
                                                                        '',
                                                                    jsonString:
                                                                        focJsonstriongList)));
                                              },
                                              child: Text(
                                                  AppLocalizations.of(context)!
                                                      .proceed),
                                            ),
                                          ],
                                        );
                                          }
                                          else {
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
                                                                    headerId:
                                                                        '',
                                                                    jsonString:
                                                                        focJsonstriongList)));
                                              },
                                              child: Text(
                                                  AppLocalizations.of(context)!
                                                      .proceed),
                                            ),
                                          ],
                                          );
                                          }
                                        }
                                            
                                      );
                                    }
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
