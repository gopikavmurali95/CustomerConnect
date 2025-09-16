import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/freesampleheader/free_sample_header_bloc.dart';
import 'package:customer_connect/feature/view/freesample/widgets/freesampleheaderlistwidget.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreeSampleApprovalHeader extends StatefulWidget {
  final LoginUserModel user;
  const FreeSampleApprovalHeader({super.key, required this.user});

  @override
  State<FreeSampleApprovalHeader> createState() =>
      _FreeSampleApprovalHeaderState();
}

Timer? debounce;
List<ApprovalStatusFilterModel> filterFieldsFreeSample = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Action Taken", mode: 'AT'),
];
String freesampleselectedeMode = 'P';
TextEditingController freesampleHeaderSearchctrl = TextEditingController();

class _FreeSampleApprovalHeaderState extends State<FreeSampleApprovalHeader> {
  @override
  void initState() {
    freesampleselectedeMode = 'P';
    freesampleHeaderSearchctrl.clear();
    filterFieldsFreeSample = [
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Pending" : "قيد الانتظار",
          mode: 'P'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Action Taken"
              : "طلبات الإجراءات المتخذة",
          mode: 'AT'),
    ];
    context
        .read<FreeSampleHeaderBloc>()
        .add(const ClearFreeSampleheadersEvent());

    context
        .read<FreeSampleHeaderBloc>()
        .add(const GetFreeSampleHeadersEvent(mode: 'P', searchQuery: ''));
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
            context
                .read<ApprovalCountsBloc>()
                .add(GetApprovalsCountEvent(userID: widget.user.usrId ?? ''));
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Free Sample Approval",
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
                controller: freesampleHeaderSearchctrl,
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
                              context.read<FreeSampleHeaderBloc>().add(
                                  GetFreeSampleHeadersEvent(
                                      mode: freesampleselectedeMode,
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
                    context.read<FreeSampleHeaderBloc>().add(
                        GetFreeSampleHeadersEvent(
                            mode: freesampleselectedeMode,
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
                value: filterFieldsFreeSample[0].mode,
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
                items: filterFieldsFreeSample
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.mode,
                        child: Text(e.statusName),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  freesampleselectedeMode = value ?? '';
                  context
                      .read<FreeSampleHeaderBloc>()
                      .add(const ClearFreeSampleheadersEvent());
                  freesampleHeaderSearchctrl.clear();
                  context.read<FreeSampleHeaderBloc>().add(
                      GetFreeSampleHeadersEvent(
                          mode: value ?? '', searchQuery: ''));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          FreeSampleHeaderListWidget(
            user: widget.user,
            selectedMode: freesampleselectedeMode,
          )
        ],
      ),
    );
  }
}
