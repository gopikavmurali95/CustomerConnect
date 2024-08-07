import 'dart:async';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/state/bloc/merchcustomerrequest/merch_customer_request_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerRequestScreen extends StatefulWidget {
  final TextEditingController fromDateCtrl;
  final TextEditingController toDateCtrl;
  const CustomerRequestScreen({
    super.key,
    required this.fromDateCtrl,
    required this.toDateCtrl,
  });

  @override
  State<CustomerRequestScreen> createState() => _PriceChangeHeaderState();
}

List<ApprovalStatusFilterModel> filterFieldsPriceChange = [
  ApprovalStatusFilterModel(statusName: "All Requests", mode: 'AL'),
  ApprovalStatusFilterModel(statusName: "Responded Requests", mode: 'RS'),
  ApprovalStatusFilterModel(statusName: "New Requests", mode: 'OP'),
];

Timer? debounce;
TextEditingController _customerReqSearchCtrl = TextEditingController();
TextEditingController _customerReqFilter = TextEditingController();

class _PriceChangeHeaderState extends State<CustomerRequestScreen> {
  @override
  void initState() {
    context
        .read<MerchCustomerRequestBloc>()
        .add(const ClearMerchCustomerRequestEvent());

    context.read<MerchCustomerRequestBloc>().add(GetMerchCustomerRequestEvent(
        fromDate: widget.fromDateCtrl.text,
        toDate: widget.toDateCtrl.text,
        status: "AL",
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
          "Customer Request",
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
                  controller: _customerReqSearchCtrl,
                  style: kfontstyle(
                      fontSize: 12.sp, color: const Color(0xff413434)),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Search here..',
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                ApprovalStatusFilterModel data =
                                    filterFieldsPriceChange
                                        .where((element) =>
                                            element.statusName ==
                                            _customerReqFilter.text)
                                        .first;
                                context.read<MerchCustomerRequestBloc>().add(
                                    const ClearMerchCustomerRequestEvent());

                                context.read<MerchCustomerRequestBloc>().add(
                                    GetMerchCustomerRequestEvent(
                                        fromDate: widget.fromDateCtrl.text,
                                        toDate: widget.toDateCtrl.text,
                                        status: data.mode,
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
                          milliseconds: 300,
                        ), () async {
                      ApprovalStatusFilterModel data = filterFieldsPriceChange
                          .where((element) =>
                              element.statusName == _customerReqFilter.text)
                          .first;

                      context.read<MerchCustomerRequestBloc>().add(
                          GetMerchCustomerRequestEvent(
                              fromDate: widget.fromDateCtrl.text,
                              toDate: widget.toDateCtrl.text,
                              status: data.mode,
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
                    ApprovalStatusFilterModel data = filterFieldsPriceChange
                        .where((element) => element.mode == value)
                        .first;
                    _customerReqFilter.text = data.statusName;
                    context
                        .read<MerchCustomerRequestBloc>()
                        .add(const ClearMerchCustomerRequestEvent());

                    context.read<MerchCustomerRequestBloc>().add(
                        GetMerchCustomerRequestEvent(
                            fromDate: widget.fromDateCtrl.text,
                            toDate: widget.toDateCtrl.text,
                            status: value ?? '',
                            searchQuery: ''));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: BlocBuilder<MerchCustomerRequestBloc,
                        MerchCustomerRequestState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              state.when(
                                getMerchCustomerRequestHeadersState:
                                    (headers) => headers == null
                                        ? "All Requests"
                                        : _customerReqFilter.text,
                                merchCustomerRequestsFailedState: () =>
                                    'All Requests',
                              ),
                              // _selectedPriceChangeMode == 'P'
                              //     ? 'Pending Approvals'
                              //     : 'Approved Requests',
                              style: countHeading(),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                state.when(
                                  getMerchCustomerRequestHeadersState:
                                      (headers) => headers == null
                                          ? '0'
                                          : headers.length.toString(),
                                  merchCustomerRequestsFailedState: () => '0',
                                ),
                                style: countHeading(),
                              ),
                            )
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
                    child: BlocBuilder<MerchCustomerRequestBloc,
                        MerchCustomerRequestState>(
                      builder: (context, state) {
                        return state.when(
                          getMerchCustomerRequestHeadersState: (headers) =>
                              headers == null
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
                                  : headers.isEmpty
                                      ? Center(
                                          child: Text(
                                            'No Data Available',
                                            style: kfontstyle(),
                                          ),
                                        )
                                      : ListView.builder(
                                          itemBuilder:
                                              (context, index) =>
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Column(
                                                      children: [
                                                        Row(
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
                                                                      "${headers[index].reqCode}",
                                                                      style:
                                                                          blueTextStyle()),
                                                                  Row(
                                                                    children: [
                                                                      Text(
                                                                        "${headers[index].cusCode} -",
                                                                        style:
                                                                            kfontstyle(
                                                                          fontSize:
                                                                              11.sp,
                                                                          color:
                                                                              const Color(0xff2C6B9E),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child: Text(
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            ' ${headers[index].cusName}',
                                                                            style: subTitleTextStyle()),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  // Text(
                                                                  //   overflow:
                                                                  //       TextOverflow
                                                                  //           .ellipsis,
                                                                  //  "",
                                                                  //   style: kfontstyle(
                                                                  //       fontSize: 12.sp,
                                                                  //       color: const Color(
                                                                  //           0xff413434)),
                                                                  // ),
                                                                  Text(
                                                                    headers[index]
                                                                            .date ??
                                                                        '',
                                                                    style: kfontstyle(
                                                                        fontSize: 9
                                                                            .sp,
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
                                                                color: headers[index]
                                                                            .status ==
                                                                        'Responded'
                                                                    ? const Color(
                                                                        0xffe3f7e2)
                                                                    : const Color(
                                                                        0xfff7f4e2),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  10,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        5,
                                                                    vertical:
                                                                        3),
                                                                child: Text(
                                                                  headers[index]
                                                                          .status ??
                                                                      '',
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          8.sp),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Divider(
                                                          color:
                                                              Colors.grey[300],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                          itemCount: headers.length),
                          merchCustomerRequestsFailedState: () => SizedBox(
                            height: MediaQuery.of(context).size.height - 200,
                            child: Center(
                              child: Text(
                                'No Data Available',
                                style: kfontstyle(),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
