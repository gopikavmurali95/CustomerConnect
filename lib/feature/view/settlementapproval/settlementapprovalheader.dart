import 'dart:async';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/settlement_approval_header_bloc.dart';
import 'package:customer_connect/feature/view/settlementapproval/widgets/saheaderlistwidget.dart';
import 'package:customer_connect/feature/view/voidtransaction/voidtransactionheaderscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class SettlementApprovalHeaderScreen extends StatefulWidget {
   final LoginUserModel users;
  const SettlementApprovalHeaderScreen(
      {super.key, required LoginUserModel user, required this.users});
  @override
  State<SettlementApprovalHeaderScreen> createState() =>
      _SettlementApprovalHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterSettlementApproval = [
  ApprovalStatusFilterModel(statusName: "All", mode: 'AL'),
  ApprovalStatusFilterModel(statusName: "Sales", mode: 'SL'),
  ApprovalStatusFilterModel(statusName: "Order", mode: 'OR'),
  ApprovalStatusFilterModel(statusName: "AR", mode: 'AR'),
  ApprovalStatusFilterModel(statusName: "Order & AR", mode: 'OA'),
  ApprovalStatusFilterModel(statusName: "Delivery", mode: 'DL'),
  ApprovalStatusFilterModel(statusName: "Merchandising", mode: 'MER'),
  ApprovalStatusFilterModel(statusName: "Field Service", mode: 'FS'),
];
TextEditingController settlementApprovalHeaderSearchCtrl =
    TextEditingController();
String selectedSettlmtApprovalmode = 'AL';

class _SettlementApprovalHeaderScreenState
    extends State<SettlementApprovalHeaderScreen> {
  @override
  void initState() {
    selectedSettlmtApprovalmode = "AL";
    settlementApprovalHeaderSearchCtrl.clear();
    context
        .read<SettlementApprovalHeaderBloc>()
        .add(const ClearSettlementApprovalHeaderEvent());

    context.read<SettlementApprovalHeaderBloc>().add(
        const GetSettlementApprovalHeaderEvent(
            statusvalue: 'AL', searchQuery: ''));

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
        // leading: SizedBox(
        //   height: 05,
        //   width: 04,
        //   child: SvgPicture.asset("assets/svg/path.svg",height: 60,fit: BoxFit.scaleDown,),
        // ),
        title: Text(
          "Settlement Approval",
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
              controller: settlementApprovalHeaderSearchCtrl,
              style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Search here..',
                suffix: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            if (settlementApprovalHeaderSearchCtrl
                                .text.isNotEmpty) {
                              settlementApprovalHeaderSearchCtrl.clear();
                              context.read<SettlementApprovalHeaderBloc>().add(
                                  const ClearSettlementApprovalHeaderEvent());
                              context.read<SettlementApprovalHeaderBloc>().add(
                                  GetSettlementApprovalHeaderEvent(
                                      searchQuery: "",
                                      statusvalue:
                                          selectedSettlmtApprovalmode));
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
                  context.read<SettlementApprovalHeaderBloc>().add(
                      GetSettlementApprovalHeaderEvent(
                          searchQuery: value.trim(),
                          statusvalue: selectedSettlmtApprovalmode));
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
              value: ddfilterSettlementApproval[0].mode,//selectedSettlmtApprovalmode,//ddfilterSettlementApproval[0].mode,
              dropdownColor: Colors.white,
              style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
              decoration: InputDecoration(
                hintText: "All Route Types",
                hintStyle: kfontstyle(fontSize: 10.sp, color: Colors.black87),
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
              items: ddfilterSettlementApproval
                  .map(
                    (e) => DropdownMenuItem(
                      value: e.mode,
                      child: Text(e.statusName),
                    ),
                  )
                  .toList(),
              // items: <String>['All Route Types', 'Option 2', 'Option 3']
              //     .map((String value) {
              //   return DropdownMenuItem<String>(
              //     value: value,
              //     child: Text(value),
              //   );
              // }).toList(),
              onChanged: (value) {
                selectedSettlmtApprovalmode = value!;
                context
                    .read<SettlementApprovalHeaderBloc>()
                    .add(const ClearSettlementApprovalHeaderEvent());
                context.read<SettlementApprovalHeaderBloc>().add(
                    GetSettlementApprovalHeaderEvent(
                        searchQuery: settlementApprovalHeaderSearchCtrl.text,
                        statusvalue: value));
                       // setState(() {});
              },
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
              Text(
                "Pending Approvals",
                style: countHeading(),
              ),
              BlocBuilder<SettlementApprovalHeaderBloc,
                  SettlementApprovalHeaderState>(
                builder: (context, state) {
                  return Text(
                    state.when(
                      getSettlementApprovalHeader: (headers) =>
                          headers == null ? "0" : headers.length.toString(),
                      settlementApprovalHeaderFailedState: () => "0",
                    ),
                    style: countHeading(),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SettlementApprovalHeaderListWidget(),
        ))
      ]),
    );
  }
}


Future<void> _onRefreshSettlementApprovaalHeaderScreen(
    BuildContext context, LoginUserModel model) async {
  context.read<SettlementApprovalHeaderBloc>().add(const ClearSettlementApprovalHeaderEvent());
  context
      .read<SettlementApprovalHeaderBloc>()
      .add(const  GetSettlementApprovalHeaderEvent(statusvalue: '', searchQuery: ''));
}
