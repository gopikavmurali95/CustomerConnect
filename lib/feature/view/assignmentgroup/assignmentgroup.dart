import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/promotion_header_model/promotion_header_model.dart';
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart';
import 'package:customer_connect/feature/view/qualificationgroup/widgets/qualificationgrouplist.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AssignmentGroup extends StatefulWidget {
  final PromotionHeaderModel promotion;
  const AssignmentGroup({super.key, required this.promotion});

  @override
  State<AssignmentGroup> createState() => _QualificationGroupState();
}

final _groupProdctrl = TextEditingController();
Timer? debounce;

class _QualificationGroupState extends State<AssignmentGroup> {
  @override
  void initState() {
    _groupProdctrl.clear();
    context.read<QualificationGroupBloc>().add(const ClearGroupData());
    context.read<QualificationGroupBloc>().add(GetGroupWiseDataEvent(
        id: widget.promotion.aid!, mode: 'A', searchQuery: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        titleSpacing: 0.5,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Transform.flip(
            flipX: selectedLocale?.languageCode == "en" ? false : true,
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 20,
            ),
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.assignmentgroup,
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: Size(100, 135.h),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 75,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffB3DAF7),
                              child: Center(
                                child: Text(
                                  widget.promotion.pName!.split('').toList()[0],
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.promotion.pName!,
                                  style: blueTextStyle(),
                                ),
                                Text(
                                  widget.promotion.dateRange!,
                                  style: subTextStyle(),
                                ),
                                Text(
                                  widget.promotion.pCode!,
                                  style: subTextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${AppLocalizations.of(context)!.noDataAvailable}:",
                      style: kfontstyle(fontSize: 12.sp),
                    ),
                    Text(
                      ' ${widget.promotion.aCode}',
                      style: kfontstyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    height: 40,
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
                    child: TextFormField(
                      controller: _groupProdctrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 200,
                          ),
                          () async {
                            context
                                .read<QualificationGroupBloc>()
                                .add(const ClearGroupData());
                            context.read<QualificationGroupBloc>().add(
                                GetGroupWiseDataEvent(
                                    id: widget.promotion.aid!,
                                    mode: " ",
                                    searchQuery: value.trim()));
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          suffix: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 5.h),
                              Expanded(
                                child: IconButton(
                                  onPressed: () {
                                    _groupProdctrl.clear();
                                    context.read<QualificationGroupBloc>().add(
                                        GetGroupWiseDataEvent(
                                            id: widget.promotion.aid!,
                                            mode: " ",
                                            searchQuery: ''));
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    size: 13.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          hintText: AppLocalizations.of(context)!.searchItems,
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: QualificationGroupList()),
    );
  }
}
