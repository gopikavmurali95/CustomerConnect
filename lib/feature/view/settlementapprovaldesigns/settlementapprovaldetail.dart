import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
// import 'package:customer_connect/feature/data/models/approve_price_changein_model/approve_price_changein_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/price_change_header_model/price_change_header_model.dart';
import 'package:customer_connect/feature/data/models/price_change_prd_model/price_change_prd_model.dart';
import 'package:customer_connect/feature/data/models/price_change_reason_model/price_change_reason_model.dart';
// import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart';
// import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart';
// import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart';
// import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart';
// import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
// import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
// import 'package:customer_connect/feature/widgets/shimmer.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettlementApprovalDetails extends StatefulWidget {
  final PriceChangeHeaderModel priceChangeApprovel;
  final LoginUserModel user;
  final String currentMode;
  const SettlementApprovalDetails(
      {super.key,
      required this.priceChangeApprovel,
      required this.user,
      required this.currentMode});

  @override
  State<SettlementApprovalDetails> createState() => _PriceChangeDetailState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
int loadingCount = 0;
bool isLoading = false;
int _approvedCount = 0;
List<PriceChangePrdModel?> _procechangeapproved = [];
int _totalcount = 0;
TextEditingController _searchctrls = TextEditingController();
Timer? debounce;

List<PriceChangeReasonModel> availableresons = [];

class _PriceChangeDetailState extends State<SettlementApprovalDetails> {
  @override
  void initState() {
    _searchctrls.clear();
    _procechangeapproved.clear();
    _approvedCount = 0;
    _totalcount = 0;
    loadingCount = 0;
    context.read<PriceChangeDetailsBloc>().add(const ClearPriceChangeDetails());
    context.read<PriceChangeDetailsBloc>().add(GetPriceChangeDetailsEvent(
        pchID: widget.priceChangeApprovel.pchId!, searchQuery: ''));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(jsonEncode(_procechangeapproved));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          titleSpacing: 0.5,
          leading: IconButton(
            onPressed: () {
              // log(_approvedCount.toString());
              // if (_approvedCount != 0 && _approvedCount != _totalcount) {
              //   Future.delayed(const Duration(microseconds: 100), () {
              //     showPopAlert(context);
              //   });
              // } else {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 20,
            ),
          ),
          title: Text(
            "Settlement Approval Detail",
            style: appHeading(),
          ),
        ),
        body: Column(
          children: [
            Expanded(
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
                        height: 60,
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
                            Text(
                              "Ttfsh",
                              // '${widget.loadrequest.lrhNumber}h',
                              style: kfontstyle(
                                fontSize: 12.sp,
                                color: const Color(0xff2C6B9E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "rotcode",
                                  //'${widget.loadrequest.rotCode}- ',
                                  style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff2C6B9E),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    "username",
                                    // overflow: TextOverflow.ellipsis,
                                    //"${widget.loadrequest.usrName}",
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Exp Date : ',
                                  style: kfontstyle(
                                    fontSize: 10.sp,
                                    color: const Color(0xff2C6B9E),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    "reqdate",
                                    // "${widget.loadrequest.lrhLoadReqDate}",
                                    style: kfontstyle(
                                        fontSize: 10.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "crete date",
                              //'${widget.loadrequest.createdDate}',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ));
  }

  bool checkrejectedstatus() {
    log(jsonEncode(_procechangeapproved));
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
